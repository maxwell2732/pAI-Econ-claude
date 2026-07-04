version 16.0
set more off

* Add the folder containing sigdiag_iv.ado to Stata's ado path.
adopath + "tools/stata/sigdiag_iv"

* Example specification:
* ivreg2 ln_staff $pillarA_controls i.Prov_ID i.Year ///
*     (ln_clan = ln_pine_bam), first cluster(Prov_ID)

sigdiag_iv, ///
    y(ln_staff) ///
    endog(ln_clan) ///
    instr(ln_pine_bam) ///
    controls("$pillarA_controls") ///
    fe("i.Prov_ID i.Year") ///
    absorb("Prov_ID Year") ///
    cluster(Prov_ID) ///
    unit(Object_ID) ///
    names(NAME_CH LEV2_CH LEV1_CH Prov_ID) ///
    screenby(Prov_ID) ///
    topgroups(5) ///
    maxcand(12) ///
    targetivp(.10) ///
    targetrfp(.10) ///
    maxdrop(6) ///
    maxsteps(8) ///
    progress(100) ///
    combo_fast ///
    outdir("sigdiag_outputs") ///
    prefix("pine_bamboo_screen")
