# Project proposal — version 1.0

Date: 23 October 2026. YouTrack: JANTOK-1.

**Title:** JANTOK Food — a family meal subscription and coordination system for Astana.

**Team:** Yermakhanbet Balgyn Yerlanqyzy and Markhabat Ayana Markhabatkyzy, SE-2404. **Supervisor:** Omirzak Islam Amanzholuly.

## Problem statement

Working households must repeatedly decide what to eat, buy ingredients or place separate orders, prepare food and account for different family preferences and restrictions. After work, this adds time and coordination effort. Ready-meal delivery already exists in Astana, but an integrated household workflow must keep each person's questionnaire, suitable meal alternatives, subscription total and delivery state consistent.

JANTOK addresses this software and coordination problem through one household account with separate member profiles and a shared subscription workflow. The problem is defined clearly; the frequency, severity and preferred solution among Astana households require documented user evidence. The team's recalled informal discussions and their limits are recorded in [RELEVANCE_EVIDENCE.md](RELEVANCE_EVIDENCE.md).

## Users and stakeholders

- Household owner: organizes meals and manages the subscription for several people.
- Household members: have distinct preferences and restrictions represented in their profiles.
- Kitchen/operations staff: maintain meal information, prepare a daily plan and update fulfillment status.
- Supervisor: reviews the engineering scope, analysis and evaluation design.

The primary user group is working adults and families in Astana. The project does not assume all families can afford or want daily meal subscriptions.

## Aim and objectives

**Aim:** design and evaluate a software system that makes ordering and coordinating ready-made family meals understandable, consistent and traceable.

1. Document household needs and distinguish observations from assumptions.
2. Critically review relevant research and compare existing local services.
3. Define prioritized functional/non-functional requirements and acceptance criteria.
4. Select technologies and define component, data and access boundaries.
5. Design mobile scenarios and the staff interaction needed for fulfillment.
6. Define verification cases and compare usability/coordination outcomes with a simple baseline.

## Scope

| Included | Outside this submission / core scope |
| --- | --- |
| One kitchen and delivery within Astana | Nationwide or multi-kitchen marketplace |
| Household account, separate member questionnaires and restrictions | Clinical diagnosis, treatment or guaranteed health outcomes |
| Eligible meal choices and visible reasons for restrictions | Unverified automatic medical recommendations |
| Itemized 30-day quote and subscription calendar | Production payment processing at the first pre-defense |
| Meal changes within a stated deadline and order status | A separate courier application |
| Staff menu/order management and daily kitchen plan | Production provider contracts and commercial launch |

## Engineering complexity

The system must preserve household ownership, separate member data, consistent eligibility decisions, deterministic quote arithmetic, versioned prices/deadlines and authorized status transitions. Mobile and staff clients share a backend contract and persistent state. Verification covers both business rules and the complete customer-to-staff scenario.

## Expected outcomes and success evidence

By 24 October: the analysis/design package, editable diagrams, static prototype, test/evaluation plan, responsibilities and traceable repository/YouTrack records. Subsequent implementation will be evaluated using correct restriction decisions, reproducible quote totals, account separation and successful user task completion against a paper/spreadsheet baseline.

Reduced pressure to cook after work is an intended benefit. Prevention of household arguments is a possible motivation reported by the team, not a measured or guaranteed project outcome. Scope changes and review comments will be recorded in the decision and feedback logs.
