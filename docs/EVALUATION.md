# Verification and evaluation plan — draft

Owner: Balgyn. YouTrack: JANTOK-9. Planned activities are not test results.

| Aim | Metric | Conditions | Baseline |
| --- | --- | --- | --- |
| Capture household needs safely | Completion and error rate for a two-member questionnaire | Same scripted profile on an Android device; moderated session | Manual form or spreadsheet workflow |
| Explain subscription price | Share of participants who correctly identify 30-day total and included meals | Same catalog and price rules for all participants | Static price sheet |
| Enforce dietary restrictions | Number of conflicting meals offered to a restricted member | Synthetic allergen test cases, fixed menu | Unfiltered menu selection |
| Track fulfillment | Time and number of steps to find today's order status | Fixed scenario and network conditions | Message/phone inquiry |

Verification layers: requirement review; unit tests for pricing and restrictions; API integration tests for household separation and idempotency; end-to-end key flow; moderated usability observations. Record hardware, software versions, dataset, sample size, failures and limitations before drawing conclusions.
