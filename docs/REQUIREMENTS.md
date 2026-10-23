# Initial requirements — draft

Status: proposed; validate against JANTOK-2 user/client evidence and supervisor feedback. Priority P0 means required for the proposed core scenario. Acceptance checks describe future verification, not executed tests.

| ID | Priority | Requirement | Acceptance check |
| --- | --- | --- | --- |
| FR-01 | P0 | A household owner can create profiles for more than one eating member. | Create two members with distinct profiles; both persist after a new session. |
| FR-02 | P0 | Each member has a separate nutrition questionnaire and restrictions. | Set a restriction for one member; recommendations for that member exclude conflicting meals while the other profile remains unaffected. |
| FR-03 | P0 | The service presents an itemized 30-day subscription quote before confirmation. | Given a configured price and member count, the quote displays the period, included meals, total and rule version. |
| FR-04 | P0 | Users can inspect the current plan and available menu alternatives. | Open a subscription day; only permitted alternatives are selectable and the resulting change is visible. |
| FR-05 | P0 | Users can see order and delivery status. | A status change entered by authorized staff appears in the household view. |
| FR-06 | P1 | Authorized staff can view a daily kitchen plan. | Staff can filter the plan by date; a customer account cannot access it. |
| NFR-01 | P0 | Sensitive account and nutrition data is access controlled. | Cross-account API requests are rejected; role checks are tested. |
| NFR-02 | P0 | Time and money calculations are consistent. | Business dates use Asia/Almaty; payments use integer minor units; repeat requests do not create duplicate charges. |
| NFR-03 | P1 | The core flow is usable on a common Android phone. | In a five-person pilot, at least four participants complete questionnaire-to-quote without moderator hints; log device, task time and errors. |

## Traceability at this draft stage

| Requirement | Diagram or prototype | Verification status |
| --- | --- | --- |
| FR-01/02 | Use-case and component diagrams; family/questionnaire/menu previews | Static concept present; synthetic allergen-rule test passes; persistence and real ingredient validation pending. |
| FR-03 | Use-case and component diagrams; subscription preview | Integer quote-rule test passes; detailed quote UI, persistence and payment pending. |
| FR-04 | Menu and subscription previews | Static concept only; change-window and eligible-alternative tests pending. |
| FR-05 | Context/component diagrams; delivery preview | Static concept only; staff-to-customer status path pending. |
| FR-06 | Use-case/component diagrams; staff HTML preview | Static concept only; role checks and kitchen plan pending. |
| NFR-01/02/03 | Component boundary; evaluation plan | Cross-account/idempotency/usability measurement pending. |

Dependencies and open decisions: client approval of nutrition rules, actual prices, payment provider and delivery service are not yet evidenced. Trace each confirmed requirement to a user finding or client decision before marking it approved.
