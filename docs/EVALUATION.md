# Verification and evaluation plan — draft

Owner: Balgyn. YouTrack: JANTOK-9. Planned activities are not test results.

| Aim | Metric and provisional target | Conditions | Baseline |
| --- | --- | --- | --- |
| Capture household needs safely | Completion rate and input errors for a two-member questionnaire; target 4/5 unaided completions in a pilot | Five consenting representatives if recruitment allows; same scripted profile and Android viewport; record failures | Same task on a paper form/spreadsheet |
| Explain subscription price | Correct identification of period, included meals and total by at least 4/5 pilot participants | Same synthetic catalog and price rules; ask before giving hints | Static price sheet with the same data |
| Enforce dietary restrictions | Zero conflicting meals selectable in the synthetic test set; report unknown ingredients separately | Fixed menu with explicit allergens, case and spelling variants; independent expected-output table | Unfiltered menu selection |
| Track fulfillment | Median time and step count to locate today's status; report raw values and compare with baseline | Fixed status scenario, same device/network and participant instructions | Message or phone inquiry scenario |

Verification layers: requirement review; unit tests for pricing and restrictions; API integration tests for household separation and idempotency; end-to-end key flow; moderated usability observations. Existing Node tests cover only the first two domain rules, and the Flutter widget test covers static navigation. Authentication, persistence and real workflow tests cannot run until those features exist.

Before measurement, freeze a synthetic menu and two-member profile; define expected eligibility and quote values independently of the implementation; use identical data in baseline and JANTOK conditions. Counterbalance task order where possible. Record consent, device, app version, date, sample size, raw timings, errors and exclusions. Do not store names, health details, phone numbers or recordings in the public repository. The small pilot target checks usability risk; it is not a statistical claim about all Astana families.

An allergen filter cannot establish food safety by itself because cross-contact and ingredient labeling require operational controls. The evaluation will report software decision errors separately from kitchen safety validation, following the [FDA context source](https://www.fda.gov/food/nutrition-food-labeling-and-critical-foods/food-allergies?lv=true). No evaluation outcome has been measured yet.
