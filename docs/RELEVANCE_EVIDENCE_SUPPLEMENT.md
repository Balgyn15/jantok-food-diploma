# Relevance evidence supplement — JANTOK-2 review candidate

Prepared: 24 October 2026. Interview date: 15 October 2026, as confirmed by the project owner on 24 October. YouTrack: JANTOK-2.

## Source and permission status

The project owner reports that six real conversations took place on 15 October 2026 and supplied a later document containing first-person write-ups for six people. This file records **paraphrased notes from those supplied write-ups**, not verified verbatim transcripts or independently checked recordings. The relationship between these six conversations and the four informal conversations previously recalled by the team has not been established; do not add the counts together.

The project owner reports that all six participants consented to use of **anonymized notes in the diploma** and has explicitly authorized publication of these anonymized paraphrases in this public GitHub repository. The form and records of participant consent, and whether that consent specifically named public GitHub publication, have not been independently inspected. Original names, exact ages, contact details, and distinctive household details are intentionally omitted.

## Participant notes

Each entry is a paraphrase of one supplied write-up. The participant codes do not identify people. Frequencies and time estimates are self-reported, not measured. No sentence below is presented as a verbatim quote.

| Code | Current meal process and recent difficulty | Preferences, constraints, or reaction | Evidence limit |
| --- | --- | --- | --- |
| P01 | Usually prepares simple dinners jointly and uses grocery delivery. An unusually late workday led to ordering a prepared meal. Reports that this kind of difficulty is infrequent. | Different food preferences are handled by keeping a shared base and changing one component. Would like more healthy prepared options. | Describes an occasional problem, not regular demand for a subscription. |
| P02 | One household member handles most planning, shopping, and cooking. Reports recurring difficult evenings and roughly two hours a day spent on these tasks. | Different household preferences increase the burden. A previous subscription experience was unsatisfactory because meal quality declined during the week. | Self-reported frequency and time; no observation or price test. |
| P03 | Plans groceries in advance and normally cooks quickly. A temporary household disruption was solved by eating out. Reports little routine difficulty. | Sometimes uses ingredient kits for convenience. | A counterexample to the claim that meal planning is difficult for every target user. |
| P04 | A multi-person household often disagrees about what to eat or who will cook. A missed preparation step led to an improvised meal. Reports frequent time pressure. | Ingredient constraints and price make ready-meal delivery less attractive. | The write-up does not establish which service design would resolve the problem. |
| P05 | Shares cooking duties and uses grocery delivery. An unplanned visit was handled with restaurant delivery. Reports that difficulties are occasional. | Flexible household routines already meet most needs. | A counterexample to broad claims of unmet subscription demand. |
| P06 | Care duties and fatigue can leave purchased groceries unused. Reports repeated difficulty preparing an evening meal. | Multiple food preferences, cost, and packaging waste are concerns about prepared delivery. | The write-up supports a problem statement but does not show willingness to subscribe. |

## Findings supported by these write-ups

| Finding | Participant basis | Requirement or decision link | What the finding does **not** prove |
| --- | --- | --- | --- |
| F-01: Evening planning and preparation can consume substantial time in some households. | P02, P04, P06 | Motivates testing the planning and subscription flow in FR-03/FR-04. | A quote or calendar will save time, or that this burden is common across Astana. |
| F-02: Different meal preferences and ingredient constraints can complicate one household order. | P01, P02, P04, P06 | Motivates separate member profiles and questionnaires in FR-01/FR-02; informs the permitted alternative flow in FR-04. | Any particular restriction has been clinically verified or that the proposed matching logic is safe. |
| F-03: Convenience competes with concerns about price, quality, variety, and packaging. | Convenience: P01, P03, P05. Concerns: P02, P04, P06. | Supports making the FR-03 price quote visible; menu quality, variety, and packaging remain product questions to test. | An acceptable tariff, retention rate, or willingness to pay. |
| F-04: Need differs by household and existing routine. | P01, P03, P05 report infrequent difficulty; P02, P04, P06 report recurring difficulty. | Inform NFR-03 pilot recruitment criteria, subject to separate invitation and consent; avoid treating the six write-ups as a representative sample. | Market prevalence or a single solution suitable for all users. |

The links above are **design motivations**. They do not mean participants requested the numbered features. FR-05 order tracking, FR-07 authorization, and NFR-01/02/04/05 remain primarily workflow, safety, and engineering decisions unless later participant or client evidence supports them.

## Assumptions and follow-up questions

- Whether a subscription is preferable to the routines or services people already use remains untested.
- The acceptable price, menu variety, packaging tradeoff, and delivery conditions are unknown.
- A reduction in household disagreement is a hypothesis, not a measured outcome.
- The write-ups do not establish how participants would complete the proposed questionnaire-to-quote journey. Use the planned NFR-03 pilot to test that behavior.
- Ask the project owner to check each paraphrase against the original conversation and retain the consent record privately. Do not invent a recording, an interviewer, or a consent method.

## Other evidence

| ID | Source | Appropriate use | Limit |
| --- | --- | --- | --- |
| EV-01 | Six user-supplied conversation write-ups; conversations dated 15 October 2026 by project-owner confirmation | Participant-level problem observations F-01–F-04 above | Compiled later; original recordings and consent records not independently checked |
| EV-02 | Official Astana service pages, checked 23 October 2026; see [system comparison](SYSTEM_COMPARISON.md) | Existing local ready-meal and delivery offers | Market observation, not evidence of satisfaction or unmet demand |
| EV-03 | Scientific sources L03–L06 in the [literature review](LITERATURE_REVIEW.md) | Design rationale for choice, explanation, and user involvement | Other populations/settings; not local adoption evidence |

## Review gate

The YouTrack rubric calls for 3–5 substantive conversations or a substantive agreement with a real client, anonymized notes and consent, findings distinct from assumptions, and requirements linked to evidence. These notes record six conversations reported by the project owner; the owner should confirm the participant paraphrases and consent record privately and decide which representative 3–5 to submit if the assessor requires the specified count. The project owner authorized this public release of anonymized paraphrases, but the records have not been independently authenticated. Merge only after an independent reviewer checks accuracy, anonymity, and requirement links.
