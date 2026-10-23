# JANTOK Food — diploma project

JANTOK Food is a proposed service for planning and delivering family meals in Astana. The engineering problem is to keep each household member's restrictions, menu choices, subscription price and delivery state consistent across customer and staff workflows. Target users are households (including families with children) and the staff who plan menus, prepare orders and coordinate delivery. The aim is a traceable, understandable subscription workflow; user interviews and client decisions are still needed to validate the problem.

## Team and scope

| Person | Group | Planned responsibility |
| --- | --- | --- |
| Yermakhanbet Balgyn Yerlanqyzy | SE-2404 | Proposal, requirements, architecture, technology decisions, evaluation and repository coordination |
| Markhabat Ayana Markhabatkyzy | SE-2404 | User research, literature and system comparison, UX prototype and feedback log |

Supervisor: **Omirzak Islam Amanzholuly**. This is an allocation plan; completed individual contributions must be demonstrated by each student's own account, commits and reviews.

The proposed scope is one kitchen and one city, with household profiles, separate questionnaires, eligible menu choices, a 30-day quote/subscription, order status and a staff planning view. Other cities, a courier app, a marketplace and live payment/delivery providers are outside the first-stage scope. Expected outcomes by 24 October are a validated proposal, critical research review, comparisons, testable requirements, editable diagrams, key-scenario prototype, evaluation plan and traceable project plan. A complete application is not required for this stage.

## Current status — 22 October 2026

The repository contains research and design drafts, three editable Mermaid diagrams with SVG exports, six editable mobile mockups with PNG previews, and a small technical starter. The literature and product comparison use cited public sources; they await student/supervisor review. No user interviews, client agreement, supervisor feedback, peer review, validated nutrition rule, Ayana-authored commit or pre-defense submission are claimed here. The [24 October checklist](docs/CHECKLIST_24_OCT.md) tracks those gaps explicitly.

## Repository map

| Folder | Contents |
| --- | --- |
| [src/mobile](src/mobile/) | Flutter customer app starter, organized by screen |
| [src/backend](src/backend/) | Local quote/eligibility preview API and domain rules |
| [src/admin](src/admin/) | Staff dashboard HTML prototype |
| [docs](docs/) | Proposal, research, comparisons, requirements, architectural decisions, UX, evaluation, plan and checklist |
| [diagrams](diagrams/) | Mermaid editable sources and matching readable SVG exports |
| [prototype](prototype/) | Six editable mobile HTML screens and PNG previews |
| [tests](tests/) | Node domain tests and evaluation material; Flutter test is within its package |
| [config](config/) | Placeholder environment configuration |

Start with the [proposal](docs/PROPOSAL.md), [literature review](docs/LITERATURE_REVIEW.md), [existing systems](docs/SYSTEM_COMPARISON.md), [technology comparison](docs/TECH_COMPARISON.md), [requirements](docs/REQUIREMENTS.md), [architecture](docs/ARCHITECTURE.md), [UX prototype](docs/UX_PROTOTYPE.md), [verification plan](docs/EVALUATION.md) and [project plan](docs/PROJECT_PLAN.md). Work is tracked in the [JANTOK YouTrack project](https://balgyn.youtrack.cloud/projects/JANTOK/issues).

## Setup and checks

The backend starter requires Node 20+ and no external packages:

1. Run node src/backend/server.mjs from the repository root.
2. Open http://127.0.0.1:8080/health.
3. Run node --test tests/backend/*.test.mjs.

The backend listens on localhost and accepts only synthetic preview requests at POST /preview/quote and POST /preview/eligibility. It has no authentication or persistence and must not receive real user data.

For the mobile starter, install Flutter, run flutter pub get inside src/mobile, then flutter test and flutter run. It uses only static demo data. Open [src/admin/index.html](src/admin/index.html) in a browser for the staff mockup. The more detailed UX screens are in [prototype/screens](prototype/screens/) and their [PNG previews](prototype/previews/).

## Working process

Use the same public repository throughout the diploma. Every meaningful work item needs a YouTrack task with owner, acceptance criteria and deadline; include its ID in a feature branch, commit and PR. Keep main as the reviewed baseline, request another team member's review before merging, then link the PR/commit in YouTrack. Students use separate, identifiable GitHub accounts. Give the supervisor and committee access to reviews as needed. Create pre-defense-1, pre-defense-2 and final-pre-defense tags only at actual submissions; do not move a submitted tag.

Do not commit secrets, private research records, personal phone numbers or real nutrition profiles. Use [config/.env.example](config/.env.example) with placeholder values. The .codex directory and local build output are ignored.
