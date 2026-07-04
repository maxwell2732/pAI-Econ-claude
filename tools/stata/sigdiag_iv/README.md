# sigdiag_iv

`sigdiag_iv` is a Stata command for diagnosing fragile IV results.

The command is built for a common empirical problem: an IV estimate is close to
significance, or becomes significant in some specifications, but it is not clear
whether the result is driven by a few influential units. Instead of manually
dropping observations and losing track of what was tried, `sigdiag_iv` runs the
same IV, first-stage, and reduced-form specifications over a disciplined set of
leave-one-out and combination checks.

This is not a tool for justifying sample deletion. It is an influence diagnostic.
If a unit matters a lot, the right next step is to inspect the data, the match, or
the pre-specified sample rule. The command prints this warning every time it runs.

## What It Does

Given a user-specified IV regression, `sigdiag_iv`:

- defines one common IV sample;
- estimates the baseline IV, first-stage, and reduced-form regressions;
- runs leave-one-unit-out diagnostics;
- searches a greedy deletion path;
- searches combinations of influential units up to a user-set size;
- optionally screens large problems by a higher-level group, such as province;
- writes readable `.csv` and `.dta` outputs with numbered filenames.

The default target is:

```stata
IV p-value < alphaiv
reduced-form p-value >= alpharf
```

This target is useful when the researcher wants to understand cases where the IV
estimate becomes significant while the reduced form remains weak or insignificant.
The thresholds are user-set, so the same command can be used for other diagnostic
rules.

## Example

```stata
adopath + "tools/stata/sigdiag_iv"

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
```

For a full combination table where IV and first-stage estimates are computed for
every checked subset, omit `combo_fast`.

## Main Options

- `y()`: outcome variable.
- `endog()`: endogenous regressor.
- `instr()`: excluded instrument.
- `controls()`: controls passed to `ivreg2` and `reghdfe`.
- `fe()`: fixed effects included in the `ivreg2` formula, for example
  `i.Prov_ID i.Year`.
- `absorb()`: fixed effects absorbed by `reghdfe` in the first-stage and
  reduced-form regressions, for example `Prov_ID Year`.
- `cluster()`: optional cluster variable. If omitted, the command runs without
  clustered standard errors.
- `unit()`: unit to leave out or combine over.
- `screenby()`: optional higher-level group used to screen large candidate sets.
- `targetivp()` and `targetrfp()`: p-value thresholds for the diagnostic target.
- `combo_fast`: first checks the reduced form and skips IV/first-stage estimates
  for combinations that already fail the reduced-form screen.
- `dryrun`: reports the sample size and projected search size without running the
  full diagnostic.

## Outputs

The command writes both `.csv` and `.dta` files. The filenames are numbered so the
workflow is easier to follow:

- `00_FILE_GUIDE`: short guide to the output files and target rule.
- `01_baseline`: baseline IV, first-stage, and reduced-form estimates.
- `02_name_table`: unit names and labels.
- `03_screenby_groups`: group-level screening results, if `screenby()` is used.
- `04_screenby_units`: unit-level screening results inside selected groups.
- `05_leave_one_out`: leave-one-unit-out diagnostics.
- `06_greedy_chosen_path`: selected greedy path.
- `07_greedy_all_choices`: all choices considered at each greedy step.
- `08_combo_all_checked`: all checked combinations.
- `09_combo_successful_hits`: combinations satisfying the target rule.

## Dependencies

The command requires Stata 16 or newer and uses:

- `ivreg2`
- `reghdfe`
- `ftools`
- `ranktest`

Install them from SSC if needed:

```stata
ssc install ftools, replace
ssc install reghdfe, replace
ssc install ivreg2, replace
ssc install ranktest, replace
```

## Design Note

The command deliberately separates three objects that are often mixed together in
informal robustness checks:

1. the IV second stage;
2. the first stage;
3. the reduced form.

That separation is the point. A fragile IV coefficient can come from leverage in
the first stage, leverage in the reduced form, or the ratio between the two. The
diagnostic table keeps these pieces visible, so the researcher can see where the
fragility enters before making any substantive judgment.
