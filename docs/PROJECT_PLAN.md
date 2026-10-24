# Project management, responsibilities and risks — version 1.0

Updated: 24 October 2026. YouTrack: JANTOK-10. All deadlines use Asia/Almaty. The public repository is [Balgyn15/jantok-food-diploma](https://github.com/Balgyn15/jantok-food-diploma); tasks are in [YouTrack](https://balgyn.youtrack.cloud/projects/JANTOK/issues).

## Milestones

| Milestone | Target | Exit condition |
| --- | --- | --- |
| First-pre-defense analysis/design baseline | 24 Oct 2026 | Proposal, literature/market/technology comparisons, requirements, three diagrams, eight screens, verification materials and risks linked from README |
| Evidence and joint review | Before first submission | Six anonymized interview paraphrases checked by the students against the conversations; consent records retained privately; both students make identifiable substantive contributions and cross-review; supervisor comments/dispositions recorded. The owner reports personal cross-review and an oral positive supervisor review on 24 Oct; individual records are not yet attached. |
| First submission | 24 Oct 2026, at actual hand-in | Reviewed commit, immutable `prob-period-1` tag required by the submission form, repository link, completed/pending summary and accessible evidence |
| Foundation and core workflow | Next implementation phase; dates agreed after feedback | Identity/households and schema, then restrictions/menu/quote, each through reviewed task PRs |
| Fulfillment and evaluation | Later phase; dates agreed with supervisor | Staff/delivery path, integration/security tests, usability/baseline and measured outcomes |

Later milestones are a sequence, not fabricated fixed commitments or a claim of when related external JANTOK work began. Any pre-existing implementation/design integrated into this repository must retain its actual provenance and review record.

## Responsibility and task map

| Task | Lead | Expected output / acceptance |
| --- | --- | --- |
| JANTOK-1 Proposal | Balgyn | Clear title, team/supervisor, problem, users, aim, objectives, scope and expected outcomes; a separately recorded supervisor review request |
| JANTOK-2 Relevance | Ayana | Document 3–5 substantive representative discussions or substantive client agreement; separate recall/observations/assumptions; trace findings |
| JANTOK-3 Literature | Ayana | At least 12 meaningfully used sources, at least 8 scientific; critical table/synthesis and accurate references |
| JANTOK-4 Existing systems | Ayana | 3–5 relevant systems, 6–10 consistent criteria and evidence for capability claims |
| JANTOK-5 Technologies | Balgyn | At least 3 key choices, 2–3 alternatives each, selected baseline justified against requirements |
| JANTOK-6 Requirements | Balgyn | Prioritized FR/NFR with verifiable criteria and evidence/design/test links |
| JANTOK-7 Architecture | Balgyn | Context, use cases and component view; editable sources and exports agree |
| JANTOK-8 UX | Ayana | First-use-to-delivery mobile storyboard, editable sources/exports, permission and requirement links; staff interaction specification |
| JANTOK-9 Verification | Balgyn | Metrics, conditions, baseline, test cases and synthetic expected outputs; no unexecuted test claimed passed |
| JANTOK-10 Repository/risks | Balgyn | Organized files, YouTrack links, milestones/risks, authentic contributions/review and actual submission tag |
| JANTOK-11 Supervisor feedback | Ayana coordinates; both address comments | Dated substantive feedback, responsible person, disposition and links to resulting changes |

Research/evidence/UX work and engineering/design/verification work are complementary. Both students review the other's deliverables and must explain their own work; equal commit counts are not a measure of equal contribution.

## Dependencies and risks

| Risk / dependency | Likelihood / impact | Response / owner |
| --- | --- | --- |
| Interview paraphrases and consent evidence need checking | Medium / high | Have the students compare P01–P06 with the actual conversations and retain consent records privately; do not infer representative market demand; Ayana |
| Supervisor feedback is too general to guide revisions | Medium / medium | Record the project owner's report of a positive assessment accurately; ask for specifics only if further changes are expected; Ayana coordinates |
| Personal peer review / member access records incomplete | Medium / medium | The owner confirms both students personally cross-reviewed and supervisor/committee YouTrack access; preserve individual review/access records where available. Ayana's GitHub write access was separately verified; both |
| Local competition overlaps the proposal | High / medium | Use evidenced Astana comparison; test value of the combined household workflow; Ayana |
| Incomplete ingredients or operational rules | High / high | Treat unknown data explicitly; obtain kitchen/stakeholder review before real use; Balgyn |
| Commercial tariffs/provider contracts unavailable | High / medium | Use synthetic cases and documented adapters; production launch stays outside this submission; Balgyn |
| Prototype error and validation states need refinement | Medium / medium | Quote/plan choice is depicted; keep validation/error behavior explicit in UX specification and refine after user review; Ayana |

## Repository workflow and historical status

Keep the same repository throughout the diploma. A task branch contains a coherent change and a task ID; commit/PR text also references relevant tasks. A PR explains the change, task and verification. The other student reviews before merge; any requested correction is recorded. Link the result to YouTrack and close the task only after its acceptance criteria are met.

PRs #1–#4 were merged on 22–23 October without submitted pre-merge GitHub peer reviews. The later Balgyn review on PR #4 is explicitly retrospective. Follow-up PRs #5–#7 received Codex-assisted content reviews through the Ayana account; those comments do not certify Ayana's personal review or either student's understanding. Do not recreate, backdate or rewrite history to imply earlier individual contributions.

Public GitHub reading access and Ayana's collaborator write permission are verified. The project owner confirms supervisor/committee access to YouTrack; private supporting-material access has not been separately checked. At each submission tag the actual reviewed commit and record tag/SHA, completed work, limitations and outstanding tasks. Do not move prior submission tags or replace the repository to manufacture a development history.
