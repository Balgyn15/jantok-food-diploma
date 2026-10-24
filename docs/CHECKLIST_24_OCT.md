# 24 October submission checklist

Updated: 24 October 2026. This checklist compares the analysis/design snapshot with the supplied rubric and the follow-up work in [PR #5](https://github.com/Balgyn15/jantok-food-diploma/pull/5), [PR #6](https://github.com/Balgyn15/jantok-food-diploma/pull/6) and [PR #7](https://github.com/Balgyn15/jantok-food-diploma/pull/7). The project owner reports an oral positive supervisor review of four materials, personal cross-review by both students, and supervisor/committee YouTrack access. Original review and access records were not supplied. This checklist does not imply completed implementation.

| Rubric item | Deliverable | Current status / remaining action |
| --- | --- | --- |
| 1. Project proposal | [PROPOSAL.md](PROPOSAL.md) | Defined problem, users, aim/objectives, team/supervisor, scope/outcomes and engineering complexity present. The owner reports that the supervisor orally reviewed the proposal on 24 Oct; the original review request and its delivery have not been separately recorded. |
| 2. Relevance evidence | [Historical aggregate recollection](RELEVANCE_EVIDENCE.md), [anonymized P01–P06 notes](RELEVANCE_EVIDENCE_SUPPLEMENT.md) | Six participant-level paraphrases from team-supplied write-ups, date/consent reported by the project owner, findings separated from assumptions and cautiously linked to FR/NFR. The older four-person recollection is not added to the count. Original conversation/consent records and the paraphrases have not been independently authenticated. |
| 3. Literature | [LITERATURE_REVIEW.md](LITERATURE_REVIEW.md) | 12 used sources, 10 scientific (2022–2025); critical table/synthesis and full bibliography; PubMed metadata/abstracts and seven open full-text discussion/limitation sections checked; appraisal limits stated |
| 4. Existing systems | [SYSTEM_COMPARISON.md](SYSTEM_COMPARISON.md) | Five Astana providers, eight common criteria, positive capability claims linked to official provider pages, dated evidence and unknowns; corrected Healthy Nation duration. Provider claims are not independently tested service performance. |
| 5. Technologies | [TECH_COMPARISON.md](TECH_COMPARISON.md), [DECISIONS.md](DECISIONS.md) | Five key decisions, three alternatives each; selected Flutter/NestJS/PostgreSQL/HTTP/Next.js baseline and tradeoffs |
| 6. Requirements | [REQUIREMENTS.md](REQUIREMENTS.md) | Eight FR and five NFR, P0/P1, acceptance criteria and design/test mapping; stakeholder review outstanding |
| 7. Architecture | [ARCHITECTURE.md](ARCHITECTURE.md), [diagrams](../diagrams/) | Required three views; editable .mmd and SVG pairs; component/data/scenario alignment described |
| 8. UX | [UX_PROTOTYPE.md](UX_PROTOTYPE.md), [prototype](../prototype/) | Eight HTML/PNG mobile screens, including first use and subscription choice; a linked static journey, fields/states and assumptions. Six prior screens came from the team-supplied design archive; two follow-up scenes were created with Codex assistance. User walkthrough remains future work. |
| 9. Verification/evaluation | [EVALUATION.md](EVALUATION.md), [tests](../tests/) | Metrics, conditions, baseline, 16 planned cases and synthetic expected outputs present; actual application testing follows runnable implementation |
| 10. Management/risks | [PROJECT_PLAN.md](PROJECT_PLAN.md), [YouTrack](https://balgyn.youtrack.cloud/projects/JANTOK/issues) | Assigned/prioritized tasks, deadlines, scope, milestones and risks present. The owner confirms personal cross-review and supervisor/committee YouTrack access; independent records of these checks and personal contributions have not been inspected. Submission tag pending. |
| 11. Supervisor feedback | [SUPERVISOR_FEEDBACK.md](SUPERVISOR_FEEDBACK.md) | On 24 October the owner reports that the supervisor orally reviewed the proposal, requirements, architecture and evaluation plan, said «всё отлично» and requested no revisions. No original record or detailed comments were supplied. |

## Repository minimum and structure

| Requirement | Location / status |
| --- | --- |
| README with project, people, scope, status, stack and links | [README](../README.md) present; viewing instructions match static submission |
| Source organized by component | src/mobile, src/backend, src/frontend contain component plans; executable application is not required for this stage |
| Written documentation together | docs contains all written deliverables and this checklist |
| Editable diagrams and readable exports | diagrams contains three paired sources/exports |
| Prototype material | prototype contains eight editable screens and matching PNG previews |
| Tests and supporting materials | tests contains planned cases and synthetic fixture; executable tests follow runnable code |
| Configuration/dependencies | config contains placeholder environment and dependency/manifest plan; real manifests follow runnable components |
| Progressive contributions by both members | Assigned task leads are documented; individual contribution records have not been independently verified |
| Task ↔ change traceability | Task IDs in existing commits/PRs and PR links in YouTrack; revised deliverables will be linked to their review PR |
| Branches and review before merge | Earlier PRs merged without submitted pre-merge reviews. Follow-up PRs #5–#7 contain explicitly labelled Codex-assisted reviews; these do not certify personal peer review by the students. |
| Submission tag / hand-in statement | Create `prob-period-1` at the actual reviewed submission as required by the form; record exact SHA, completed work, limits and open tasks |

## Human evidence still required

1. The students' check of each P01–P06 paraphrase against the original conversation and private retention of consent records; the public notes rely on the project owner's confirmation.
2. Records of each student's meaningful work and personal cross-review, which the owner confirms occurred; no backdating or simulated authorship.
3. The dated, delivered proposal review request, recorded separately from the owner's report of the supervisor's oral review.
4. Evidence of the owner-reported supervisor/committee YouTrack access and the immutable tag at the actual reviewed submission; private supporting-material access remains separate.

The first-pre-defense files cover the analysis/design/planning structure. Full rubric compliance cannot be claimed until the outstanding evidence exists. A full application, live payment deployment, performance results and completed automated application suites are not minimum deliverables for 24 October.
