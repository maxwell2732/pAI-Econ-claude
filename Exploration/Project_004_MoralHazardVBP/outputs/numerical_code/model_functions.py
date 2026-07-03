"""Model equations for Project_004_MoralHazardVBP, implemented 1:1 from the artifacts.

Every function docstring cites the equation it implements in
../model_primitives.md (MP) or ../candidate_propositions.md (CP).

Participation is implemented as the originator's actual decision rule
"supply iff Pi_O(p) >= 0" (MP §2 Timing, step 3) rather than the reduced
indicator 1[p >= p_bar] used in MP §4(b): the two coincide only when
Pi_O crosses zero once, which fails for CES demand with eps0 > 1
(H2's log-concavity sufficient condition does not hold there). The
divergence is itself a T2 Test E target and is reported explicitly.
"""

import numpy as np
from scipy import optimize


# ---------------------------------------------------------------- demand & utility

def demand_ces(s, eps0):
    """Per-patient demand D(s) = s**(-eps0)  (MP Notation: D' < 0; CES family).

    eps0 = 2 corresponds to u(q) = 2*sqrt(q), since U'(q) = q**(-1/2) = s
    inverts to D(s) = s**-2 (MP §4, Patient: U' = D**-1).
    """
    s = np.asarray(s, dtype=float)
    return np.power(s, -eps0)


def utility_ces(q, eps0):
    """U(q) recovered from U'(q) = q**(-1/eps0) (MP §4, Patient).

    U(q) = q**(1 - 1/eps0) / (1 - 1/eps0) for eps0 != 1;  U(q) = ln(q) for eps0 = 1.
    For eps0 = 2 this is exactly u(q) = 2*sqrt(q) (T2 Test A specification).
    """
    q = np.asarray(q, dtype=float)
    if np.isclose(eps0, 1.0):
        return np.log(q)
    k = 1.0 - 1.0 / eps0
    return np.power(q, k) / k


def demand_linear(s, a, b):
    """Per-patient linear demand D(s) = max(a - b*s, 0) (CP P2: sufficient-condition example)."""
    s = np.asarray(s, dtype=float)
    return np.maximum(a - b * s, 0.0)


def utility_linear(q, a, b):
    """Quadratic utility with U'(q) = (a - q)/b, the inverse of D(s) = a - b*s (MP §4, Patient)."""
    q = np.asarray(q, dtype=float)
    return (a * q - 0.5 * q * q) / b


def make_family(params, family):
    """Return (D(s), U(q)) callables for 'ces' or 'linear'."""
    if family == "ces":
        return (lambda s: demand_ces(s, params["eps0"]),
                lambda q: utility_ces(q, params["eps0"]))
    if family == "linear":
        return (lambda s: demand_linear(s, params["a"], params["b"]),
                lambda q: utility_linear(q, params["a"], params["b"]))
    raise ValueError(family)


# ---------------------------------------------------------------- firm & insurer

def originator_profit(p, params, D):
    """Pi_O(p) = (p - c_o) * N * D((1-lam)*p) - F   (MP §4, Originator)."""
    p = np.asarray(p, dtype=float)
    s = (1.0 - params["lam"]) * p
    return (p - params["c_o"]) * params["N"] * D(s) - params["F"]


def participation(p, params, D):
    """Originator supplies iff Pi_O(p) >= 0 (MP §2 Timing, step 3)."""
    return originator_profit(p, params, D) >= 0.0


def insurer_expenditure(p, params, D):
    """E_I(p) = lam * p * N * D((1-lam)*p)   (MP §4(a))."""
    p = np.asarray(p, dtype=float)
    s = (1.0 - params["lam"]) * p
    return params["lam"] * p * params["N"] * D(s)


def social_welfare(p, params, D, U):
    """W(p) = N*[U(q) - c(p)*q] + (N*V_o - F) * 1[originator participates]  (MP §4(b)).

    q = D((1-lam)*p); c(p) = c_o when the originator participates, c_g otherwise.
    Participation evaluated from Pi_O(p) >= 0 (see module docstring).
    """
    p = np.asarray(p, dtype=float)
    s = (1.0 - params["lam"]) * p
    q = D(s)
    inmkt = participation(p, params, D)
    c = np.where(inmkt, params["c_o"], params["c_g"])
    w = params["N"] * (U(q) - c * q)
    return w + np.where(inmkt, params["N"] * params["V_o"] - params["F"], 0.0)


# ---------------------------------------------------------------- exit thresholds

def exit_thresholds(params, D, p_hi=1e6):
    """All roots of Pi_O(p) = 0 on (c_o, p_hi]  (MP Notation: p_bar defined implicitly).

    Returns a sorted list (possibly empty, one root, or two roots).
    Two roots mean the participation set is a BOUNDED interval — the
    reduced form 1[p >= p_bar] is then wrong above the upper root.
    """
    lo = params["c_o"] * (1.0 + 1e-9)
    grid = np.geomspace(lo, p_hi, 4000)
    vals = originator_profit(grid, params, D)
    roots = []
    sign = np.sign(vals)
    for i in np.nonzero(np.diff(sign) != 0)[0]:
        try:
            r = optimize.brentq(lambda x: float(originator_profit(x, params, D)),
                                grid[i], grid[i + 1], xtol=1e-12, rtol=1e-12)
            if not roots or abs(r - roots[-1]) > 1e-8:
                roots.append(r)
        except ValueError:
            pass
    return roots


# ---------------------------------------------------------------- optimum classification

REGIMES = ["LOWER_CORNER", "INTERIOR_GENERIC", "AT_KINK", "INTERIOR_ORIGINATOR",
           "UPPER_CORNER", "MULTIPLE_LOCAL_OPTIMA", "INFEASIBLE", "INDETERMINATE"]


def classify_argmax(p_grid, values, params, D, kink_tol=None):
    """Classify the location of argmax(values) on [c_g, P_MAX].

    Returns (p_star, v_star, regime, n_local_maxima). Regime reports the
    LOCATION of the global argmax (corner / kink / interior-by-branch);
    n_local_maxima > 1 flags a multi-optimum landscape and is reported as a
    separate dimension (CSV column + overlay in the regime-map figure), since
    the welfare kink generically creates one local maximum per branch and
    collapsing location into a MULTIPLE_LOCAL_OPTIMA label would hide where
    the global optimum sits.
    """
    values = np.asarray(values, dtype=float)
    if not np.all(np.isfinite(values)):
        if np.all(~np.isfinite(values)):
            return np.nan, np.nan, "INDETERMINATE", 0
        values = np.where(np.isfinite(values), values, -np.inf)
    i = int(np.argmax(values))
    p_star, v_star = float(p_grid[i]), float(values[i])
    dp = p_grid[1] - p_grid[0]
    if kink_tol is None:
        kink_tol = 2.0 * dp
    # count strict interior local maxima
    interior = (values[1:-1] > values[:-2]) & (values[1:-1] >= values[2:])
    n_local = int(np.count_nonzero(interior))
    thresholds = exit_thresholds(params, D)
    if i == 0:
        regime = "LOWER_CORNER"
    elif i == len(p_grid) - 1:
        regime = "UPPER_CORNER"
    elif any(abs(p_star - t) <= kink_tol for t in thresholds):
        regime = "AT_KINK"
    else:
        inmkt = bool(participation(np.array([p_star]), params, D)[0])
        regime = "INTERIOR_ORIGINATOR" if inmkt else "INTERIOR_GENERIC"
    return p_star, v_star, regime, n_local


def scipy_branch_optimum(objective, lo, hi):
    """Bounded scalar maximization on [lo, hi]; returns (p_star, value, converged)."""
    if hi - lo < 1e-10:
        return lo, float(objective(lo)), True
    res = optimize.minimize_scalar(lambda p: -float(objective(p)),
                                   bounds=(lo, hi), method="bounded",
                                   options={"xatol": 1e-10})
    return float(res.x), float(-res.fun), bool(res.success)
