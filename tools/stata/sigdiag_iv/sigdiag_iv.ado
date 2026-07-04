*! sigdiag_iv 1.0.0  02jul2026
*! Diagnostic command for IV influence checks.

capture program drop sigdiag_iv
capture program drop _sigdiag_iv_eval
capture program drop _sigdiag_iv_eval_rf
capture program drop _sigdiag_iv_combo_recurse

program define _sigdiag_iv_eval, rclass
    version 16.0
    syntax, ///
        Y(varname) ///
        ENDOG(varname) ///
        INSTR(varname) ///
        CONTROLS(string asis) ///
        FE(string asis) ///
        ABSORB(string asis) ///
        UNIT(varname) ///
        SAMPLE(varname) ///
        [CLUSTER(varname) DROPIDS(string asis) DROPVAR(varname)]

    foreach opt in controls fe absorb {
        local `opt' : subinstr local `opt' `"""' "", all
    }
    if "`dropvar'" == "" {
        local dropvar "`unit'"
    }
    local iv_vce ""
    local hdfe_vce ""
    if "`cluster'" != "" {
        local iv_vce "cluster(`cluster')"
        local hdfe_vce "cluster(`cluster')"
    }

    tempvar todrop
    generate byte `todrop' = 0

    local dropids : subinstr local dropids `"""' "", all
    local dropids : list retokenize dropids
    foreach u of local dropids {
        quietly replace `todrop' = 1 if `dropvar' == `u'
    }

    quietly count if (`sample' == 1) & (`todrop' == 1)
    local N_drop = r(N)
    local ifcond "if (`sample' == 1) & (`todrop' == 0)"
    tempname check_b
    tempname b_iv se_iv t_iv p_iv b_fs se_fs t_fs p_fs b_rf se_rf t_rf p_rf ratio
    tempname rc_iv rc_fs rc_rf N_iv N_fs N_rf
    foreach s in b_iv se_iv t_iv p_iv b_fs se_fs t_fs p_fs b_rf se_rf t_rf p_rf ratio N_iv N_fs N_rf {
        scalar ``s'' = .
    }

    capture quietly ivreg2 `y' `controls' `fe' (`endog' = `instr') `ifcond', first `iv_vce'
    scalar `rc_iv' = _rc
    if `rc_iv' == 0 {
        scalar `N_iv' = e(N)
        capture scalar `check_b' = _b[`endog']
        if !_rc {
            scalar `b_iv' = _b[`endog']
            scalar `se_iv' = _se[`endog']
            if `se_iv' < . & `se_iv' != 0 {
                scalar `t_iv' = `b_iv' / `se_iv'
            }
            capture quietly test `endog'
            if !_rc {
                scalar `p_iv' = r(p)
            }
        }
    }

    capture quietly reghdfe `endog' `instr' `controls' `ifcond', absorb(`absorb') `hdfe_vce'
    scalar `rc_fs' = _rc
    if `rc_fs' == 0 {
        scalar `N_fs' = e(N)
        capture scalar `check_b' = _b[`instr']
        if !_rc {
            scalar `b_fs' = _b[`instr']
            scalar `se_fs' = _se[`instr']
            if `se_fs' < . & `se_fs' != 0 {
                scalar `t_fs' = `b_fs' / `se_fs'
            }
            capture quietly test `instr'
            if !_rc {
                scalar `p_fs' = r(p)
            }
        }
    }

    capture quietly reghdfe `y' `instr' `controls' `ifcond', absorb(`absorb') `hdfe_vce'
    scalar `rc_rf' = _rc
    if `rc_rf' == 0 {
        scalar `N_rf' = e(N)
        capture scalar `check_b' = _b[`instr']
        if !_rc {
            scalar `b_rf' = _b[`instr']
            scalar `se_rf' = _se[`instr']
            if `se_rf' < . & `se_rf' != 0 {
                scalar `t_rf' = `b_rf' / `se_rf'
            }
            capture quietly test `instr'
            if !_rc {
                scalar `p_rf' = r(p)
            }
        }
    }

    if `b_rf' < . & `b_fs' < . & `b_fs' != 0 {
        scalar `ratio' = `b_rf' / `b_fs'
    }

    return scalar b_iv = `b_iv'
    return scalar se_iv = `se_iv'
    return scalar t_iv = `t_iv'
    return scalar p_iv = `p_iv'
    return scalar b_fs = `b_fs'
    return scalar se_fs = `se_fs'
    return scalar t_fs = `t_fs'
    return scalar p_fs = `p_fs'
    return scalar b_rf = `b_rf'
    return scalar se_rf = `se_rf'
    return scalar t_rf = `t_rf'
    return scalar p_rf = `p_rf'
    return scalar ratio = `ratio'
    return scalar N_drop = `N_drop'
    return scalar rc_iv = `rc_iv'
    return scalar rc_fs = `rc_fs'
    return scalar rc_rf = `rc_rf'
    return scalar N_iv = `N_iv'
    return scalar N_fs = `N_fs'
    return scalar N_rf = `N_rf'
end

program define _sigdiag_iv_eval_rf, rclass
    version 16.0
    syntax, ///
        Y(varname) ///
        INSTR(varname) ///
        CONTROLS(string asis) ///
        ABSORB(string asis) ///
        UNIT(varname) ///
        SAMPLE(varname) ///
        [CLUSTER(varname) DROPIDS(string asis)]

    foreach opt in controls absorb {
        local `opt' : subinstr local `opt' `"""' "", all
    }
    local hdfe_vce ""
    if "`cluster'" != "" {
        local hdfe_vce "cluster(`cluster')"
    }

    tempvar todrop
    generate byte `todrop' = 0

    local dropids : subinstr local dropids `"""' "", all
    local dropids : list retokenize dropids
    foreach u of local dropids {
        quietly replace `todrop' = 1 if `unit' == `u'
    }

    quietly count if (`sample' == 1) & (`todrop' == 1)
    local N_drop = r(N)
    local ifcond "if (`sample' == 1) & (`todrop' == 0)"

    foreach s in b_rf se_rf t_rf p_rf {
        return scalar `s' = .
    }
    return scalar N_drop = `N_drop'
    return scalar rc_rf = .

    tempname check_b
    capture quietly reghdfe `y' `instr' `controls' `ifcond', absorb(`absorb') `hdfe_vce'
    return scalar rc_rf = _rc
    if !_rc {
        capture scalar `check_b' = _b[`instr']
        if !_rc {
            return scalar b_rf = _b[`instr']
            return scalar se_rf = _se[`instr']
            if _se[`instr'] < . & _se[`instr'] != 0 {
                return scalar t_rf = _b[`instr'] / _se[`instr']
            }
            capture quietly test `instr'
            if !_rc {
                return scalar p_rf = r(p)
            }
        }
    }
end

program define _sigdiag_iv_combo_recurse
    version 16.0
    syntax, ///
        CANDIDATES(string asis) ///
        K(integer) ///
        START(integer) ///
        ALLHANDLE(name) ///
        HITHANDLE(name) ///
        Y(varname) ///
        ENDOG(varname) ///
        INSTR(varname) ///
        CONTROLS(string asis) ///
        FE(string asis) ///
        ABSORB(string asis) ///
        UNIT(varname) ///
        SAMPLE(varname) ///
        ALPHAIV(real) ///
        ALPHARF(real) ///
        COMBOFAST(integer) ///
        PROGRESS(integer) ///
        COUNTER(name) ///
        [CLUSTER(varname) CURRENT(string asis)]

    foreach opt in controls fe absorb {
        local `opt' : subinstr local `opt' `"""' "", all
    }
    foreach opt in candidates current {
        local `opt' : subinstr local `opt' `"""' "", all
        local `opt' : list retokenize `opt'
    }
    local clusteropt ""
    if "`cluster'" != "" {
        local clusteropt "cluster(`cluster')"
    }

    if `k' == 0 {
        local dropids : list retokenize current
        local n_drop_ids = 0
        foreach z of local dropids {
            local ++n_drop_ids
        }

        scalar `counter' = `counter' + 1
        if `progress' > 0 {
            if mod(`counter', `progress') == 0 {
                display as text "  checked " %12.0fc `counter' " combinations..."
            }
        }

        if `combofast' {
            quietly _sigdiag_iv_eval_rf, ///
                y(`y') instr(`instr') controls(`controls') absorb(`absorb') ///
                `clusteropt' unit(`unit') sample(`sample') ///
                dropids(`dropids')

            local rf_N_drop = r(N_drop)
            local rf_b = r(b_rf)
            local rf_se = r(se_rf)
            local rf_t = r(t_rf)
            local rf_p = r(p_rf)

            if missing(`rf_p') | `rf_p' < `alpharf' {
                post `allhandle' ///
                    (`"`dropids'"') (`n_drop_ids') (`rf_N_drop') ///
                    (.) (.) (.) (.) ///
                    (.) (.) (.) (.) ///
                    (`rf_b') (`rf_se') (`rf_t') (`rf_p') ///
                    (.) (0)
                exit
            }
        }

        quietly _sigdiag_iv_eval, ///
            y(`y') endog(`endog') instr(`instr') ///
            controls(`controls') fe(`fe') absorb(`absorb') ///
            `clusteropt' unit(`unit') sample(`sample') ///
            dropids(`dropids')

        local hit = 0
        if r(p_iv) < . & r(p_rf) < . {
            if r(p_iv) < `alphaiv' & r(p_rf) >= `alpharf' {
                local hit = 1
            }
        }

        post `allhandle' ///
            (`"`dropids'"') (`n_drop_ids') (r(N_drop)) ///
            (r(b_iv)) (r(se_iv)) (r(t_iv)) (r(p_iv)) ///
            (r(b_fs)) (r(se_fs)) (r(t_fs)) (r(p_fs)) ///
            (r(b_rf)) (r(se_rf)) (r(t_rf)) (r(p_rf)) ///
            (r(ratio)) (`hit')

        if `hit' {
            post `hithandle' ///
                (`"`dropids'"') (`n_drop_ids') (r(N_drop)) ///
                (r(b_iv)) (r(se_iv)) (r(t_iv)) (r(p_iv)) ///
                (r(b_fs)) (r(se_fs)) (r(t_fs)) (r(p_fs)) ///
                (r(b_rf)) (r(se_rf)) (r(t_rf)) (r(p_rf)) ///
                (r(ratio))
        }
        exit
    }

    local n : word count `candidates'
    local last = `n' - `k' + 1
    forvalues i = `start'/`last' {
        local u : word `i' of `candidates'
        local next "`current' `u'"
        local next : list retokenize next
        _sigdiag_iv_combo_recurse, ///
            candidates(`candidates') k(`=`k' - 1') start(`=`i' + 1') ///
            current(`next') allhandle(`allhandle') hithandle(`hithandle') ///
            y(`y') endog(`endog') instr(`instr') ///
            controls(`controls') fe(`fe') absorb(`absorb') ///
            `clusteropt' unit(`unit') sample(`sample') ///
            alphaiv(`alphaiv') alpharf(`alpharf') ///
            combofast(`combofast') progress(`progress') counter(`counter')
    }
end

program define sigdiag_iv, rclass
    version 16.0
    local 0 : subinstr local 0 "combo_fast" "combofast", all
    syntax, ///
        Y(varname) ///
        ENDOG(varname) ///
        INSTR(varname) ///
        CONTROLS(string asis) ///
        FE(string asis) ///
        ABSORB(string asis) ///
        UNIT(varname) ///
        [CLUSTER(varname) ///
         CANDIDATES(string asis) ///
         NAMES(varlist) ///
         ALPHAIV(real 0.10) ///
         ALPHARF(real 0.10) ///
         TARGETIVP(real -1) ///
         TARGETRFP(real -1) ///
         MAXDROP(integer 6) ///
         MAXSTEPS(integer 8) ///
         PREFIX(string) ///
         OUTDIR(string) ///
         DRYRUN ///
         PROGRESS(integer 0) ///
         SCREENBY(varname) ///
         TOPGROUPS(integer 5) ///
         MAXCAND(integer 12) ///
         COMBOFAST]

    if `"`prefix'"' == "" {
        local prefix "sigdiag_iv"
    }
    if `"`outdir'"' == "" {
        local outdir "."
    }
    capture mkdir `"`outdir'"'
    local stub `"`outdir'/`prefix'"'
    if `targetivp' >= 0 {
        local alphaiv = `targetivp'
    }
    if `targetrfp' >= 0 {
        local alpharf = `targetrfp'
    }
    local combofast = ("`combofast'" != "")
    foreach opt in controls fe absorb {
        local `opt' : subinstr local `opt' `"""' "", all
    }

    capture which ivreg2
    if _rc {
        display as error "ivreg2 is required. Install it with: ssc install ivreg2"
        exit 199
    }
    capture which require
    if _rc {
        display as error "require is required by recent reghdfe versions. Install it with: ssc install require"
        exit 199
    }
    capture which reghdfe
    if _rc {
        display as error "reghdfe is required. Install it with: ssc install reghdfe"
        exit 199
    }
    capture mata: mata mlib index

    capture confirm numeric variable `unit'
    if _rc {
        display as error "unit() must be numeric. If your unit ID is string, encode it before running sigdiag_iv."
        exit 198
    }
    if "`screenby'" != "" {
        capture confirm numeric variable `screenby'
        if _rc {
            display as error "screenby() must be numeric. If your group ID is string, encode it before running sigdiag_iv."
            exit 198
        }
    }
    local iv_vce ""
    local clusteropt ""
    if "`cluster'" != "" {
        local iv_vce "cluster(`cluster')"
        local clusteropt "cluster(`cluster')"
        display as text "Inference mode: clustered by `cluster'"
    }
    else {
        display as text "Inference mode: no clustering"
    }
    display as text "Target: IV p < `alphaiv'; reduced-form p >= `alpharf'"
    display as text "Output stub: `stub'"
    display as text "This is an influence diagnostic. It does not justify deleting observations unless there is an independently documented data error, mismatch, or pre-specified sample rule."

    tempvar sample_iv
    capture quietly ivreg2 `y' `controls' `fe' (`endog' = `instr'), first `iv_vce'
    if _rc {
        local rc = _rc
        display as error "Baseline ivreg2 failed while defining the common IV sample. Return code: `rc'"
        exit `rc'
    }
    generate byte `sample_iv' = e(sample)
    quietly count if `sample_iv'
    local N_common = r(N)
    if `N_common' == 0 {
        display as error "The common IV sample is empty."
        exit 2000
    }

    local auto_candidates = 0
    if `"`candidates'"' == "" {
        local auto_candidates = 1
        quietly levelsof `unit' if `sample_iv', local(candidates)
    }
    local candidates : subinstr local candidates `"""' "", all
    local candidates : list retokenize candidates
    local n_cand : word count `candidates'

    if "`dryrun'" != "" {
        quietly levelsof `unit' if `sample_iv', local(all_units_dry)
        local n_units_dry : word count `all_units_dry'
        local projected_cand = `n_cand'
        if "`screenby'" != "" & `auto_candidates' {
            local projected_cand = min(`maxcand', `n_units_dry')
        }
        local maxk_dry = min(`maxdrop', `projected_cand')
        local combo_total_dry = 0
        if `maxk_dry' >= 1 {
            forvalues kk = 1/`maxk_dry' {
                local combo_total_dry = `combo_total_dry' + comb(`projected_cand', `kk')
            }
        }
        local n_groups_dry = 0
        if "`screenby'" != "" {
            quietly levelsof `screenby' if `sample_iv', local(groups_dry)
            local n_groups_dry : word count `groups_dry'
        }

        display as text "Dry run only. No diagnostic output files written."
        display as text "Common IV sample observations: `N_common'"
        display as text "Units in common sample: `n_units_dry'"
        if "`screenby'" != "" {
            display as text "screenby(`screenby') groups: `n_groups_dry'"
            display as text "Projected final candidates after screenby cap: `projected_cand'"
            display as text "Screening regressions before final diagnostics: about " ///
                (3 * (`n_groups_dry' + `projected_cand'))
        }
        else {
            display as text "Candidate units: `n_cand'"
        }
        display as text "Combination subsets up to maxdrop(`maxdrop'): `combo_total_dry'"
        if `combofast' {
            display as text "combo_fast enabled: RF is checked first; IV/FS are skipped when RF fails alpharf()."
            display as text "Worst-case combo regressions: " (3 * `combo_total_dry')
            display as text "Best-case combo regressions: " `combo_total_dry'
        }
        else {
            display as text "Combo regressions: about " (3 * `combo_total_dry')
        }
        exit
    }

    tempfile namefile
    preserve
        keep if `sample_iv'
        keep `unit' `names'
        bysort `unit': keep if _n == 1
        sort `unit'
        save `"`namefile'"', replace
        save `"`stub'_02_name_table.dta"', replace
        export delimited using `"`stub'_02_name_table.csv"', replace
    restore

    display as text "Common IV sample observations: `N_common'"
    display as text "Candidate units: `n_cand'"

    quietly _sigdiag_iv_eval, ///
        y(`y') endog(`endog') instr(`instr') ///
        controls(`controls') fe(`fe') absorb(`absorb') ///
        `clusteropt' unit(`unit') sample(`sample_iv')

    tempname base_N_drop base_b_iv base_se_iv base_t_iv base_p_iv
    tempname base_b_fs base_se_fs base_t_fs base_p_fs
    tempname base_b_rf base_se_rf base_t_rf base_p_rf base_ratio

    scalar `base_N_drop' = r(N_drop)
    scalar `base_b_iv' = r(b_iv)
    scalar `base_se_iv' = r(se_iv)
    scalar `base_t_iv' = r(t_iv)
    scalar `base_p_iv' = r(p_iv)
    scalar `base_b_fs' = r(b_fs)
    scalar `base_se_fs' = r(se_fs)
    scalar `base_t_fs' = r(t_fs)
    scalar `base_p_fs' = r(p_fs)
    scalar `base_b_rf' = r(b_rf)
    scalar `base_se_rf' = r(se_rf)
    scalar `base_t_rf' = r(t_rf)
    scalar `base_p_rf' = r(p_rf)
    scalar `base_ratio' = r(ratio)

    return scalar b_iv = `base_b_iv'
    return scalar se_iv = `base_se_iv'
    return scalar t_iv = `base_t_iv'
    return scalar p_iv = `base_p_iv'
    return scalar b_fs = `base_b_fs'
    return scalar se_fs = `base_se_fs'
    return scalar t_fs = `base_t_fs'
    return scalar p_fs = `base_p_fs'
    return scalar b_rf = `base_b_rf'
    return scalar se_rf = `base_se_rf'
    return scalar t_rf = `base_t_rf'
    return scalar p_rf = `base_p_rf'
    return scalar ratio = `base_ratio'

    tempfile basefile
    postfile HBASE ///
        str2045 drop_ids double N_drop ///
        b_iv se_iv t_iv p_iv ///
        b_fs se_fs t_fs p_fs ///
        b_rf se_rf t_rf p_rf ratio ///
        using `"`basefile'"', replace
    post HBASE ///
        ("") (`base_N_drop') ///
        (`base_b_iv') (`base_se_iv') (`base_t_iv') (`base_p_iv') ///
        (`base_b_fs') (`base_se_fs') (`base_t_fs') (`base_p_fs') ///
        (`base_b_rf') (`base_se_rf') (`base_t_rf') (`base_p_rf') ///
        (`base_ratio')
    postclose HBASE
    preserve
        use `"`basefile'"', clear
        save `"`stub'_01_baseline.dta"', replace
        export delimited using `"`stub'_01_baseline.csv"', replace
    restore

    if "`screenby'" != "" {
        display as text "Running screenby(`screenby') group screening..."

        quietly levelsof `screenby' if `sample_iv', local(screen_groups)
        tempfile screengroups screenunits

        postfile HSCREEN ///
            group_id N_drop ///
            b_iv se_iv t_iv p_iv d_b_iv d_t_iv d_p_iv ///
            b_fs se_fs t_fs p_fs d_b_fs d_t_fs d_p_fs ///
            b_rf se_rf t_rf p_rf d_b_rf d_t_rf d_p_rf ///
            ratio d_ratio ///
            using `"`screengroups'"', replace

        local screen_i = 0
        foreach g of local screen_groups {
            local ++screen_i
            if `progress' > 0 {
                if mod(`screen_i', `progress') == 0 {
                    display as text "  screened " %9.0fc `screen_i' " groups..."
                }
            }

            quietly _sigdiag_iv_eval, ///
                y(`y') endog(`endog') instr(`instr') ///
                controls(`controls') fe(`fe') absorb(`absorb') ///
                `clusteropt' unit(`unit') sample(`sample_iv') ///
                dropvar(`screenby') dropids(`g')

            local N_drop = r(N_drop)
            local b_iv = r(b_iv)
            local se_iv = r(se_iv)
            local t_iv = r(t_iv)
            local p_iv = r(p_iv)
            local b_fs = r(b_fs)
            local se_fs = r(se_fs)
            local t_fs = r(t_fs)
            local p_fs = r(p_fs)
            local b_rf = r(b_rf)
            local se_rf = r(se_rf)
            local t_rf = r(t_rf)
            local p_rf = r(p_rf)
            local ratio = r(ratio)

            post HSCREEN ///
                (`g') (`N_drop') ///
                (`b_iv') (`se_iv') (`t_iv') (`p_iv') ///
                (`b_iv' - `base_b_iv') (`t_iv' - `base_t_iv') (`p_iv' - `base_p_iv') ///
                (`b_fs') (`se_fs') (`t_fs') (`p_fs') ///
                (`b_fs' - `base_b_fs') (`t_fs' - `base_t_fs') (`p_fs' - `base_p_fs') ///
                (`b_rf') (`se_rf') (`t_rf') (`p_rf') ///
                (`b_rf' - `base_b_rf') (`t_rf' - `base_t_rf') (`p_rf' - `base_p_rf') ///
                (`ratio') (`ratio' - `base_ratio')
        }
        postclose HSCREEN

        local selected_groups ""
        preserve
            use `"`screengroups'"', clear
            rename group_id `screenby'
            save `"`stub'_03_screenby_groups.dta"', replace
            export delimited using `"`stub'_03_screenby_groups.csv"', replace
            keep if d_p_iv < 0
            gsort d_p_iv
            count
            local group_keep = min(`topgroups', r(N))
            if `group_keep' > 0 {
                keep in 1/`group_keep'
                levelsof `screenby', local(selected_groups)
            }
        restore

        if "`selected_groups'" == "" {
            display as text "screenby(): no group had d_p_iv < 0; keeping existing candidate list."
        }
        else {
            display as text "screenby(): selected groups: `selected_groups'"

            local raw_screen_units ""
            preserve
                tempvar in_screen_group
                generate byte `in_screen_group' = 0
                foreach g of local selected_groups {
                    quietly replace `in_screen_group' = 1 if `screenby' == `g'
                }
                quietly levelsof `unit' if `sample_iv' & `in_screen_group', local(raw_screen_units)
            restore

            postfile HUSCREEN ///
                unit_id N_drop ///
                b_iv se_iv t_iv p_iv d_b_iv d_t_iv d_p_iv ///
                b_fs se_fs t_fs p_fs d_b_fs d_t_fs d_p_fs ///
                b_rf se_rf t_rf p_rf d_b_rf d_t_rf d_p_rf ///
                ratio d_ratio ///
                using `"`screenunits'"', replace

            local unit_i = 0
            foreach u of local raw_screen_units {
                local ++unit_i
                if `progress' > 0 {
                    if mod(`unit_i', `progress') == 0 {
                        display as text "  screened " %9.0fc `unit_i' " units inside selected groups..."
                    }
                }

                quietly _sigdiag_iv_eval, ///
                    y(`y') endog(`endog') instr(`instr') ///
                    controls(`controls') fe(`fe') absorb(`absorb') ///
                    `clusteropt' unit(`unit') sample(`sample_iv') ///
                    dropids(`u')

                local N_drop = r(N_drop)
                local b_iv = r(b_iv)
                local se_iv = r(se_iv)
                local t_iv = r(t_iv)
                local p_iv = r(p_iv)
                local b_fs = r(b_fs)
                local se_fs = r(se_fs)
                local t_fs = r(t_fs)
                local p_fs = r(p_fs)
                local b_rf = r(b_rf)
                local se_rf = r(se_rf)
                local t_rf = r(t_rf)
                local p_rf = r(p_rf)
                local ratio = r(ratio)

                post HUSCREEN ///
                    (`u') (`N_drop') ///
                    (`b_iv') (`se_iv') (`t_iv') (`p_iv') ///
                    (`b_iv' - `base_b_iv') (`t_iv' - `base_t_iv') (`p_iv' - `base_p_iv') ///
                    (`b_fs') (`se_fs') (`t_fs') (`p_fs') ///
                    (`b_fs' - `base_b_fs') (`t_fs' - `base_t_fs') (`p_fs' - `base_p_fs') ///
                    (`b_rf') (`se_rf') (`t_rf') (`p_rf') ///
                    (`b_rf' - `base_b_rf') (`t_rf' - `base_t_rf') (`p_rf' - `base_p_rf') ///
                    (`ratio') (`ratio' - `base_ratio')
            }
            postclose HUSCREEN

            local screen_candidates ""
            preserve
                use `"`screenunits'"', clear
                rename unit_id `unit'
                capture merge m:1 `unit' using `"`namefile'"', keep(master match) nogenerate
                save `"`stub'_04_screenby_units.dta"', replace
                export delimited using `"`stub'_04_screenby_units.csv"', replace
                keep if d_p_iv < 0
                gsort p_iv
                count
                local unit_keep = min(`maxcand', r(N))
                if `unit_keep' > 0 {
                    keep in 1/`unit_keep'
                    levelsof `unit', local(screen_candidates)
                }
            restore

            if "`screen_candidates'" != "" {
                local candidates "`screen_candidates'"
                local candidates : list retokenize candidates
                local n_cand : word count `candidates'
                local auto_candidates = 0
                display as text "screenby(): final candidate units: `candidates'"
                display as text "screenby(): final candidate count: `n_cand'"
            }
            else {
                display as text "screenby(): no unit had d_p_iv < 0 inside selected groups; keeping existing candidate list."
            }
        }
    }

    tempfile loofile
    postfile HLOO ///
        unit_id N_drop ///
        b_iv se_iv t_iv p_iv d_b_iv d_t_iv d_p_iv ///
        b_fs se_fs t_fs p_fs d_b_fs d_t_fs d_p_fs ///
        b_rf se_rf t_rf p_rf d_b_rf d_t_rf d_p_rf ///
        ratio d_ratio ///
        using `"`loofile'"', replace

    display as text "Running leave-one-unit-out diagnostics..."
    foreach u of local candidates {
        quietly _sigdiag_iv_eval, ///
            y(`y') endog(`endog') instr(`instr') ///
            controls(`controls') fe(`fe') absorb(`absorb') ///
            `clusteropt' unit(`unit') sample(`sample_iv') ///
            dropids(`u')

        local N_drop = r(N_drop)
        local b_iv = r(b_iv)
        local se_iv = r(se_iv)
        local t_iv = r(t_iv)
        local p_iv = r(p_iv)
        local b_fs = r(b_fs)
        local se_fs = r(se_fs)
        local t_fs = r(t_fs)
        local p_fs = r(p_fs)
        local b_rf = r(b_rf)
        local se_rf = r(se_rf)
        local t_rf = r(t_rf)
        local p_rf = r(p_rf)
        local ratio = r(ratio)

        local d_b_iv = `b_iv' - `base_b_iv'
        local d_t_iv = `t_iv' - `base_t_iv'
        local d_p_iv = `p_iv' - `base_p_iv'
        local d_b_fs = `b_fs' - `base_b_fs'
        local d_t_fs = `t_fs' - `base_t_fs'
        local d_p_fs = `p_fs' - `base_p_fs'
        local d_b_rf = `b_rf' - `base_b_rf'
        local d_t_rf = `t_rf' - `base_t_rf'
        local d_p_rf = `p_rf' - `base_p_rf'
        local d_ratio = `ratio' - `base_ratio'

        post HLOO ///
            (`u') (`N_drop') ///
            (`b_iv') (`se_iv') (`t_iv') (`p_iv') ///
            (`d_b_iv') (`d_t_iv') (`d_p_iv') ///
            (`b_fs') (`se_fs') (`t_fs') (`p_fs') ///
            (`d_b_fs') (`d_t_fs') (`d_p_fs') ///
            (`b_rf') (`se_rf') (`t_rf') (`p_rf') ///
            (`d_b_rf') (`d_t_rf') (`d_p_rf') ///
            (`ratio') (`d_ratio')
    }
    postclose HLOO

    preserve
        use `"`loofile'"', clear
        rename unit_id `unit'
        capture merge m:1 `unit' using `"`namefile'"', keep(master match) nogenerate
        save `"`stub'_05_leave_one_out.dta"', replace
        export delimited using `"`stub'_05_leave_one_out.csv"', replace
    restore

    tempfile greedypath greedychoices
    postfile HPATH ///
        double step chosen_unit N_drop ///
        str2045 drop_ids ///
        b_iv se_iv t_iv p_iv ///
        b_fs se_fs t_fs p_fs ///
        b_rf se_rf t_rf p_rf ratio ///
        using `"`greedypath'"', replace

    postfile HCHOICE ///
        double step unit_id N_drop admissible ///
        str2045 drop_ids ///
        b_iv se_iv t_iv p_iv ///
        b_fs se_fs t_fs p_fs ///
        b_rf se_rf t_rf p_rf ratio ///
        using `"`greedychoices'"', replace

    local dropped ""
    local remaining "`candidates'"
    local step = 0
    local stop_greedy = 0

    display as text "Running greedy deletion path search..."
    while `step' < `maxsteps' & !`stop_greedy' {
        local ++step
        local best_u ""
        local best_piv .
        local best_dropids ""

        foreach u of local remaining {
            local trydrop : list dropped | u

            quietly _sigdiag_iv_eval, ///
                y(`y') endog(`endog') instr(`instr') ///
                controls(`controls') fe(`fe') absorb(`absorb') ///
                `clusteropt' unit(`unit') sample(`sample_iv') ///
                dropids(`trydrop')

            local admissible = 0
            if r(p_rf) < . {
                if r(p_rf) >= `alpharf' {
                    local admissible = 1
                }
            }

            post HCHOICE ///
                (`step') (`u') (r(N_drop)) (`admissible') ///
                (`"`trydrop'"') ///
                (r(b_iv)) (r(se_iv)) (r(t_iv)) (r(p_iv)) ///
                (r(b_fs)) (r(se_fs)) (r(t_fs)) (r(p_fs)) ///
                (r(b_rf)) (r(se_rf)) (r(t_rf)) (r(p_rf)) ///
                (r(ratio))

            if `admissible' & r(p_iv) < . {
                if "`best_u'" == "" | r(p_iv) < `best_piv' {
                    local best_u "`u'"
                    local best_piv = r(p_iv)
                    local best_dropids "`trydrop'"
                    local best_N_drop = r(N_drop)
                    local best_b_iv = r(b_iv)
                    local best_se_iv = r(se_iv)
                    local best_t_iv = r(t_iv)
                    local best_b_fs = r(b_fs)
                    local best_se_fs = r(se_fs)
                    local best_t_fs = r(t_fs)
                    local best_p_fs = r(p_fs)
                    local best_b_rf = r(b_rf)
                    local best_se_rf = r(se_rf)
                    local best_t_rf = r(t_rf)
                    local best_p_rf = r(p_rf)
                    local best_ratio = r(ratio)
                }
            }
        }

        if "`best_u'" == "" {
            local stop_greedy = 1
        }
        else {
            post HPATH ///
                (`step') (`best_u') (`best_N_drop') ///
                (`"`best_dropids'"') ///
                (`best_b_iv') (`best_se_iv') (`best_t_iv') (`best_piv') ///
                (`best_b_fs') (`best_se_fs') (`best_t_fs') (`best_p_fs') ///
                (`best_b_rf') (`best_se_rf') (`best_t_rf') (`best_p_rf') ///
                (`best_ratio')

            local dropped "`best_dropids'"
            local newremaining ""
            foreach u of local remaining {
                if "`u'" != "`best_u'" {
                    local newremaining "`newremaining' `u'"
                }
            }
            local remaining : list retokenize newremaining

            if `best_piv' < `alphaiv' | "`remaining'" == "" {
                local stop_greedy = 1
            }
        }
    }
    postclose HPATH
    postclose HCHOICE

    tempfile pathmerge
    preserve
        use `"`greedypath'"', clear
        rename chosen_unit unit_id
        keep step unit_id
        generate byte chosen = 1
        save `"`pathmerge'"', replace
    restore

    preserve
        use `"`greedychoices'"', clear
        merge m:1 step unit_id using `"`pathmerge'"', keep(master match) nogenerate
        replace chosen = 0 if missing(chosen)
        rename unit_id `unit'
        capture merge m:1 `unit' using `"`namefile'"', keep(master match) nogenerate
        save `"`stub'_07_greedy_all_choices.dta"', replace
        export delimited using `"`stub'_07_greedy_all_choices.csv"', replace
    restore

    preserve
        use `"`greedypath'"', clear
        rename chosen_unit `unit'
        capture merge m:1 `unit' using `"`namefile'"', keep(master match) nogenerate
        save `"`stub'_06_greedy_chosen_path.dta"', replace
        export delimited using `"`stub'_06_greedy_chosen_path.csv"', replace
    restore

    tempfile comboall combohits
    postfile HALL ///
        str2045 drop_ids double n_drop_ids N_drop ///
        b_iv se_iv t_iv p_iv ///
        b_fs se_fs t_fs p_fs ///
        b_rf se_rf t_rf p_rf ratio hit ///
        using `"`comboall'"', replace
    postfile HHIT ///
        str2045 drop_ids double n_drop_ids N_drop ///
        b_iv se_iv t_iv p_iv ///
        b_fs se_fs t_fs p_fs ///
        b_rf se_rf t_rf p_rf ratio ///
        using `"`combohits'"', replace

    local do_combo = 1
    if `n_cand' == 0 {
        local do_combo = 0
    }
    if `maxdrop' < 1 {
        local do_combo = 0
        display as text "Combination search skipped because maxdrop is less than 1."
    }
    if `auto_candidates' & `n_cand' > 12 {
        local do_combo = 0
        display as text "Combination search skipped because candidates were not provided and the common sample has more than 12 units."
    }

    if `do_combo' {
        local maxk = min(`maxdrop', `n_cand')
        local combo_total = 0
        forvalues kk = 1/`maxk' {
            local combo_total = `combo_total' + comb(`n_cand', `kk')
        }
        display as text "Running combination search over `combo_total' subsets..."
        if `combofast' {
            display as text "combo_fast: reduced form is checked first; IV/FS are skipped when RF p < alpharf()."
        }
        tempname combo_counter
        scalar `combo_counter' = 0
        if `maxk' >= 1 {
            forvalues k = 1/`maxk' {
                _sigdiag_iv_combo_recurse, ///
                candidates(`candidates') k(`k') start(1) ///
                    allhandle(HALL) hithandle(HHIT) ///
                    y(`y') endog(`endog') instr(`instr') ///
                    controls(`controls') fe(`fe') absorb(`absorb') ///
                    `clusteropt' unit(`unit') sample(`sample_iv') ///
                    alphaiv(`alphaiv') alpharf(`alpharf') ///
                    combofast(`combofast') progress(`progress') counter(`combo_counter')
            }
        }
    }

    postclose HALL
    postclose HHIT

    preserve
        use `"`comboall'"', clear
        save `"`stub'_08_combo_all_checked.dta"', replace
        export delimited using `"`stub'_08_combo_all_checked.csv"', replace
    restore

    preserve
        use `"`combohits'"', clear
        quietly count
        if r(N) == 0 {
            display as text "No successful combinations found under current constraints."
        }
        save `"`stub'_09_combo_successful_hits.dta"', replace
        export delimited using `"`stub'_09_combo_successful_hits.csv"', replace
    restore

    file open FGUIDE using `"`stub'_00_FILE_GUIDE.txt"', write replace
    file write FGUIDE "sigdiag_iv output guide" _n
    file write FGUIDE "Diagnostic warning: these files describe influence patterns; they do not justify deleting observations without an independent data reason." _n _n
    file write FGUIDE "Target conditions:" _n
    file write FGUIDE "  IV p-value < alphaiv/targetivp = `alphaiv'" _n
    file write FGUIDE "  Reduced-form p-value >= alpharf/targetrfp = `alpharf'" _n
    if "`cluster'" != "" {
        file write FGUIDE "  Inference: clustered by `cluster'" _n _n
    }
    else {
        file write FGUIDE "  Inference: no clustering" _n _n
    }
    file write FGUIDE "Files:" _n
    file write FGUIDE "  01_baseline: full common-IV-sample benchmark." _n
    file write FGUIDE "  02_name_table: one row per unit with requested name variables." _n
    file write FGUIDE "  03_screenby_groups: group-level screening output, if screenby() was used." _n
    file write FGUIDE "  04_screenby_units: unit-level screening inside selected groups, if screenby() was used." _n
    file write FGUIDE "  05_leave_one_out: one-unit deletion diagnostics." _n
    file write FGUIDE "  06_greedy_chosen_path: selected greedy deletion path." _n
    file write FGUIDE "  07_greedy_all_choices: every candidate considered at each greedy step." _n
    file write FGUIDE "  08_combo_all_checked: all checked combinations up to maxdrop()." _n
    file write FGUIDE "  09_combo_successful_hits: combinations satisfying the target conditions." _n _n
    if `combofast' {
        file write FGUIDE "combo_fast note: in 08_combo_all_checked, rows failing the reduced-form screen may have missing IV/FS columns because those regressions were intentionally skipped." _n
    }
    file close FGUIDE

    display as text "Saved diagnostic files with stub: `stub'"
end
