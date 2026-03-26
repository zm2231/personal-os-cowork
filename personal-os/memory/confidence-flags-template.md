# Confidence Flags

*Tracks what PersonalOS is certain vs uncertain about. Auto-updated by self-correction skill.*

## How Confidence Works

| Level | Threshold | Behavior |
|---|---|---|
| HIGH | 90%+ — user confirmed or directly stated | Act freely |
| MEDIUM | 60–89% — inferred from context | Flag inference: "I think X, based on [source]" |
| LOW | <60% — uncertain, contradicted, or unreconfirmed 30+ days | Ask first |

## Active Flags

*None yet — flags added automatically when corrections are received.*

## Correction Log

| Date | Category | What Was Wrong | Corrected To | New Confidence |
|---|---|---|---|---|
| — | — | — | — | — |

## Category Confidence

| Category | Level | Corrections | Notes |
|---|---|---|---|
| Identity/role | HIGH | 0 | Set during onboarding |
| Team directory | HIGH | 0 | Set during onboarding |
| Priorities | MEDIUM | 0 | Changes over time |
| Glossary | HIGH | 0 | Set during onboarding |

**Rule:** After 5+ corrections in the same category, that category shifts to confirm-first mode until explicitly reset.

**Last Updated:** [date]
