"""Parameter configuration for the Stage 7b numerical simulation (T2 integration test).

Every parameter is classified in ../parameter_definitions.md
(THEORETICAL NORMALIZATION / EMPIRICALLY GROUNDED / ILLUSTRATIVE / USER SPECIFIED).
No value here is an empirical calibration.
"""

BASELINE = dict(
    N=1.0,      # NORMALIZATION  — market size (pure scale factor)
    c_g=1.0,    # NORMALIZATION  — generic marginal cost (sets the cost unit)
    c_o=2.0,    # ILLUSTRATIVE   — originator marginal cost, must exceed c_g
    F=0.5,      # ILLUSTRATIVE   — originator fixed cost (irreducibility: F > 0)
    V_o=0.8,    # ILLUSTRATIVE   — per-patient variety value of originator drug
    lam=0.7,    # ILLUSTRATIVE   — insurance coverage share lambda in (0,1)
    eps0=2.0,   # USER SPECIFIED — CES curvature: u(q) = 2*sqrt(q)  <=>  D(s) = s**-2
    a=10.0,     # ILLUSTRATIVE   — linear demand intercept, D(s) = a - b*s
    b=1.0,      # ILLUSTRATIVE   — linear demand slope
)

P_MAX = 10.0          # ILLUSTRATIVE (numerical) — feasible price interval is [c_g, P_MAX]
N_GRID = 2001         # price grid density
N_GRID_FINE = 4001    # finer grid for the Gate 4b N4 sensitivity check
SEED = 20260703       # fixed seed for optimizer multi-starts (reproducibility)

# Sweep design (approved at HiL-N2): (min, max, n_points)
SWEEP = dict(
    eps0=(0.3, 3.0, 60),   # demand curvature axis of the regime map
    F=(0.05, 2.0, 60),     # fixed-cost axis of the regime map
    lam=(0.10, 0.90, 41),  # comparative-statics axis
)

RESULTS_DIR = "../numerical_results"
FIGURES_DIR = "../numerical_figures"
