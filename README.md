# JANTOK Food — family meal subscription in Astana

JANTOK Food is a diploma project for coordinating ready-made family meals in Astana. Working households need to organize meals around limited time, different preferences and dietary restrictions. The project brings separate family-member profiles, meal choices, a transparent subscription quote and delivery information into one customer workflow, supported by a staff planning interface.

The engineering aim is to design and evaluate a consistent household-to-kitchen workflow: restrictions, prices and order states must agree across the mobile application, backend and staff web interface. Reduced meal-planning effort is an intended user benefit; its magnitude will be evaluated with users.

## Team

| Member | Group | Responsibility |
| --- | --- | --- |
| Yermakhanbet Balgyn Yerlanqyzy | SE-2404 | Proposal, requirements, architecture, technology decisions, verification plan and repository coordination |
| Markhabat Ayana Markhabatkyzy | SE-2404 | User research, literature review, market comparison, UX materials and coordination of supervisor feedback |

Supervisor: **Omirzak Islam Amanzholuly**. Each student uses an identifiable personal account and reviews the other student's changes.

## Scope and expected outcomes

The implementation scope covers one kitchen and delivery within Astana: household accounts, member questionnaires, restriction-aware menu selection, a 30-day subscription quote, meal changes subject to a deadline, delivery status and a daily staff plan. Other cities, a courier application, marketplace functionality, clinical nutrition advice and production payment/provider deployment are outside the first submission.

For 24 October 2026 the deliverable is an analysis and design baseline: proposal, relevance evidence, literature, market and technology comparisons, testable requirements, three architectural diagrams, eight mobile mockups, verification materials and a traceable project plan. A complete application is not required at this stage.

## Submission status — 24 October 2026

The analysis/design files and static mobile prototype are available. The team supplied write-ups of six conversations held, according to the project owner, on 15 October 2026. [Anonymized P01–P06 notes](docs/RELEVANCE_EVIDENCE_SUPPLEMENT.md) separate observations from assumptions and link findings cautiously to requirements. The owner confirmed that participants consented to anonymized diploma notes and authorized posting these paraphrases to this public repository. The original conversation and consent records have not been independently checked; the older aggregate recollection of four acquaintances in [relevance evidence](docs/RELEVANCE_EVIDENCE.md) is historical context and is not added to the six records. The current source folders describe component responsibilities. Earlier runnable preview examples were removed from this submission tree; their commits remain in repository history.

The [readiness checklist](docs/CHECKLIST_24_OCT.md) records the remaining evidence: the original proposal review request, personal contribution records, and the submission tag. The project owner reports that on 24 October the supervisor orally reviewed the proposal, requirements, architecture and evaluation plan and said «всё отлично», with no requested revisions. The owner also confirms that both students personally cross-reviewed their work and that the supervisor and committee can access YouTrack. The original review message, individual review records and access checks have not been independently inspected. Earlier merged PRs did not receive pre-merge peer reviews; later Codex-assisted GitHub reviews remain distinct from the owner-reported personal cross-review.

## Selected technology baseline

Flutter/Dart for mobile; Next.js/React/TypeScript for the staff frontend; NestJS/TypeScript and Prisma for the backend; PostgreSQL for persistent data; HTTP JSON/OpenAPI for client/server contracts. Redis/BullMQ is reserved for background work when required. The [comparison](docs/TECH_COMPARISON.md) explains alternatives and the [decisions](docs/DECISIONS.md) record the selected design.

## Repository map

| Location | Contents |
| --- | --- |
| [docs](docs/) | All written analysis, design, planning and review deliverables |
| [diagrams](diagrams/) | Editable Mermaid sources and readable SVG exports |
| [prototype/screens](prototype/screens/) | Eight editable mobile HTML mockups |
| [prototype/previews](prototype/previews/) | Eight matching PNG previews |
| [src/mobile](src/mobile/) | Planned mobile component boundary |
| [src/backend](src/backend/) | Planned API and worker component boundary |
| [src/frontend](src/frontend/) | Planned staff web component boundary |
| [tests](tests/) | Requirement-linked test cases, synthetic data and expected results |
| [config](config/) | Dependency plan and placeholder configuration |

## Documentation

1. [Project proposal](docs/PROPOSAL.md)
2. [Relevance evidence](docs/RELEVANCE_EVIDENCE.md) and [anonymized interview notes](docs/RELEVANCE_EVIDENCE_SUPPLEMENT.md)
3. [Literature review](docs/LITERATURE_REVIEW.md)
4. [Existing-system comparison](docs/SYSTEM_COMPARISON.md)
5. [Technology comparison](docs/TECH_COMPARISON.md)
6. [Requirements and acceptance criteria](docs/REQUIREMENTS.md)
7. [Architecture](docs/ARCHITECTURE.md) and [decisions](docs/DECISIONS.md)
8. [UX prototype](docs/UX_PROTOTYPE.md)
9. [Verification and evaluation](docs/EVALUATION.md)
10. [Project management and risks](docs/PROJECT_PLAN.md)
11. [Supervisor feedback](docs/SUPERVISOR_FEEDBACK.md)

Tasks: [JANTOK in YouTrack](https://balgyn.youtrack.cloud/projects/JANTOK/issues).

## Viewing and verification

Open any file in prototype/screens in a browser, or view its PNG under prototype/previews. These are static scenario mockups. Review tests/test-cases.csv against the requirements and tests/fixtures/household-scenario.json against its expected results. No application build, runtime dependencies or automated application test run is required for this analysis/design snapshot. Setup, execution and automated-test commands will be documented alongside the first runnable implementation.

## Contribution and submission process

Keep this public repository throughout the diploma. Each meaningful change has a YouTrack task, owner, expected outcome, acceptance criteria and deadline. Use a task branch, descriptive commits and a Pull Request (PR); reference the task and state how the work was checked. Another team member reviews before merge. Link the PR back to YouTrack and close a task only when its criteria are satisfied.

At the actual first submission, tag the reviewed commit `prob-period-1` as required by the submission form and provide its repository link, completed-work summary, limitations and outstanding tasks. Use the tag names required by later submission forms; submitted tags are never moved. Public GitHub reading access is available; verify supervisor/committee access to YouTrack and any private supporting materials separately.

Personal research records, phone numbers, credentials and real dietary profiles stay outside Git. Use only placeholder values in config/.env.example.
