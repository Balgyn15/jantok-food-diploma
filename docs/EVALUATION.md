# Verification and evaluation plan — version 1.0

Date: 23 October 2026. YouTrack: JANTOK-9. This plan defines how the project aim will be demonstrated. No application evaluation outcomes are claimed in this submission.

## Metrics, conditions and baseline

| Objective | Metric / target | Measurement conditions | Baseline |
| --- | --- | --- | --- |
| Understand household ordering | At least 4/5 pilot users complete the two-member questionnaire-to-quote task unaided within 5 minutes | Five consenting target representatives; same synthetic task and Android device/viewport; count all failures/hints | Paper/spreadsheet household form with the same fields |
| Understand subscription price | At least 4/5 correctly identify period, quantities, currency and total | Same fixture/catalog; ask before revealing the answer; report each response | Static itemized price sheet with identical inputs |
| Enforce dietary constraints | 100% agreement with independently specified fixture decisions; zero prohibited selectable options in that fixture | Fixed known/incomplete ingredient cases, member separation and invalid input; report dataset size and unknowns | Unfiltered menu with no member-specific exclusions |
| Coordinate meal/status tasks | Raw completion time, steps and errors for meal change and status lookup; compare each condition | Same order/date/deadline; counterbalance baseline/JANTOK order where possible | Menu spreadsheet plus scripted message/inquiry status scenario |
| Preserve data and order consistency | All mandatory account/role, quote-snapshot, deadline and idempotency cases pass | Named build, controlled clock, reset synthetic database and logged request/result IDs | Independent expected values and state-transition specification |
| Respond under small-service load | p95 read/quote server time <=1 second, errors reported separately | 20 concurrent simulated users for 5 minutes; 1000 meals/100 households; record hardware/build; exclude provider latency | Same endpoint/build with one user; report load-related change |

Targets are project acceptance thresholds. The five-person pilot identifies usability risks and does not establish population-level demand, health benefit or reduced family conflict.

## Verification stages

1. **Analysis/design now:** check requirement coverage, diagram/component consistency, mockup tasks, fixture arithmetic, source links and expected outputs. Keep actual user evidence separate from assumed benefits.
2. **During implementation:** unit tests for restrictions/quotes/deadlines; API/database integration tests for ownership, snapshots and idempotency; Flutter widget/integration tests; staff-role checks.
3. **Integrated evaluation:** complete household-to-staff workflow, controlled staging load and moderated usability comparison with the stated baseline.
4. **Supervisor review:** record comments, resulting corrections and any revised target before evaluating the final build.

## Supporting materials and recording

[test-cases.csv](../tests/test-cases.csv) lists TC-01–TC-16 and links them to requirement IDs. [household-scenario.json](../tests/fixtures/household-scenario.json) fixes the synthetic menu, members, price arithmetic and deadline boundary. The tests folder currently contains plans/data; executable tests are added with runnable features.

For each run record case ID, build/tag, date, environment, procedure, expected/actual result, pass/fail, evidence and issue for any defect. For usability retain participant code, task order, device, time, hints, errors and completion. Freeze the fixture and expected values before running; do not change expected outputs to match faulty behavior.

Participation is voluntary and consent precedes observation. Public materials contain anonymous summaries and synthetic data. Keep identifiable notes/recordings outside Git. Software ingredient filtering is not a guarantee against kitchen cross-contact or undeclared allergens; verify those operational dependencies before real use ([FDA context](https://www.fda.gov/food/nutrition-food-labeling-and-critical-foods/food-allergies)).
