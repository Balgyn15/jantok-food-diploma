# Requirements specification — version 1.0

Date: 23 October 2026. YouTrack: JANTOK-6. Status: first-pre-defense analysis baseline. These requirements state the expected system behavior; they are not a claim that the behavior has been implemented or accepted by the supervisor. Changes will be versioned against user findings and review decisions.

P0 = mandatory core workflow; P1 = supporting capability within the planned diploma scope. The household owner is authenticated unless a public action is stated. A denied action must not change persistent state.

## Functional requirements

| ID | Priority | Expected behavior | Acceptance criterion |
| --- | --- | --- | --- |
| FR-01 | P0 | A household owner creates and manages separate member profiles. | Two members with distinct data are saved and recovered after a new session; editing one does not alter the other. |
| FR-02 | P0 | Each member has a separate questionnaire and dietary restrictions; selectable meals respect those restrictions. | For the synthetic fixture, P01 cannot select the milk-containing meal, P02 can, and an item with unknown ingredient data is held for verification. The UI gives the relevant reason. |
| FR-03 | P0 | The user receives an itemized 30-day subscription quote before confirming. | Show member/meal quantities, unit prices, currency KZT, period, total, price-rule version and validity. The fixture total is 216000 KZT; changing quantity recalculates it deterministically. |
| FR-04 | P0 | A user views the calendar and replaces a meal with a permitted alternative. | An eligible replacement before the configured deadline is saved and visible after reload. An ineligible or late replacement is rejected without changing the plan. |
| FR-05 | P0 | The household sees current order/delivery status. | An authorized staff status update appears for the correct household and remains after reload; another household cannot read the order. |
| FR-06 | P1 | Authorized staff obtain a daily kitchen plan. | Filtering the fixture by date returns the correct order/member/meal quantities and restriction notes. Customer access is denied. |
| FR-07 | P0 | Account authentication and role separation protect household and staff actions. | A signed-out caller cannot modify a household; customer A cannot access customer B's member/order; only staff can change fulfillment status. |
| FR-08 | P1 | Authorized staff maintain meal ingredients, declared allergens and menu availability. | A changed meal record has a version; future eligibility uses the updated declaration; an existing confirmed plan retains its recorded snapshot. |

## Non-functional requirements

| ID | Priority | Expected quality | Acceptance criterion / measurement |
| --- | --- | --- | --- |
| NFR-01 | P0 | Protect account and dietary information. | Server-side object/role checks cover every private API action; denied accesses return a documented 401/403/404 policy with no private data. Logs/fixtures contain no real participant data. |
| NFR-02 | P0 | Preserve price, time and order consistency. | Business deadlines use Asia/Almaty; stored payable totals use integer KZT tenge; repeat confirmation with the same idempotency key creates one logical order. Exact deadline boundary rejects a late change. |
| NFR-03 | P1 | Make the core mobile workflow understandable. | At least 4 of 5 pilot users complete the two-member questionnaire-to-quote scenario without hints within 5 minutes; record every failure and device. This is a pilot target. |
| NFR-04 | P1 | Support local language use. | The core flow is available in Russian and Kazakh with equivalent field meaning, validation and KZT/date formatting; verify both using the same scripted data. |
| NFR-05 | P1 | Respond adequately under a defined small-service load. | For a future staging build, p95 read/quote API response time is at most 1 second with 20 concurrent simulated users for 5 minutes, a fixed 1000-meal/100-household synthetic dataset, server-side timing and recorded hardware. Exclude live-provider calls and report errors separately. |

## Business rules and dependencies

One kitchen and Astana are the operating boundary. Hard dietary exclusions precede preference ranking. Missing ingredient information cannot be treated as a verified safe match. Quotes record the rule/version and their inputs; confirmed prices do not silently change. The final commercial tariff, change deadline and external provider contracts require stakeholder decisions. Synthetic values in the test fixture are test inputs, not advertised service terms.

## Traceability

| Requirement | Basis | Design / prototype | Verification |
| --- | --- | --- | --- |
| FR-01/02 | EV-01 (retrospective need); L02/L03/L04/L10/L12 | Context/use-case/components; family/questionnaire/menu | TC-01/02/03 |
| FR-03 | EV-01; local price/plan comparison | Quote/subscription flow; API and quote snapshot | TC-04/05 |
| FR-04 | EV-01; L03/L04; local change policies | Menu/calendar; API deadline/eligibility | TC-06/07 |
| FR-05 | Household coordination scenario; local delivery comparison | Delivery preview; staff → API → mobile | TC-08 |
| FR-06/08 | Operational dependency of a subscription service | Staff use cases, API/store; staff example in UX | TC-09/10 |
| FR-07 / NFR-01 | Household ownership; [OWASP object authorization](https://owasp.org/API-Security/editions/2023/en/0x11-t10/) | Backend authorization boundary | TC-11/12 |
| NFR-02 | Engineering consistency decision ADR-01/02 | Quote/order snapshots; API rule authority | TC-05/07/13 |
| NFR-03/04/05 | Evaluation targets selected for the project | Mobile and API | TC-14/15/16 |

See [test cases](../tests/test-cases.csv) for procedures and expected results. EV-01 is a recalled aggregate account; participant-level evidence is outstanding. Requirement references do not imply that every proposed feature was explicitly requested by an interviewee.
