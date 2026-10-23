# Verification materials for the first pre-defense

The 24 October submission requires a verification/evaluation plan. The repository-wide test organization requirement applies throughout development; executable application tests accompany runnable features. This snapshot contains supporting materials rather than an artificial application test suite.

- [test-cases.csv](test-cases.csv): 16 cases traced to all requirements; every case is marked planned, not executed.
- [fixtures/household-scenario.json](fixtures/household-scenario.json): synthetic members, meals, quote inputs, deadline and independently specified expected results.
- [evaluation plan](../docs/EVALUATION.md): metrics, baseline, measurement conditions and result-recording rules.

At this stage review coverage, consistency and arithmetic manually: 2 x 3 x 30 x 1200 = 216000 KZT; the daily plan has 2 x 3 = 6 meals. These checks validate test materials, not an implementation. When code is added, turn rule cases into automated unit/API tests, add Flutter widget/integration tests and staff UI checks, and document their actual commands and results. Do not mark a case passed before executing it against a named build.
