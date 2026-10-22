# JANTOK Food — Diploma Project

Diploma project (SE-2404) on a digital service for personalized family meal subscriptions in Astana, Kazakhstan. This repository records the diploma team's own analysis, design, review and verified contributions. It is private while team and supervisor access is arranged.

## Problem and users

Problem hypothesis: a family meal subscription needs a clear way to collect each member's nutrition restrictions, show a suitable menu and price, manage changes, and coordinate fulfillment. The exact user pain points and operational constraints must be checked with potential users and the client. Interviews have not yet been claimed as completed.

Target users are households in Astana, including families with children, and the staff who manage menus, orders, kitchen work and delivery. The aim is to design and evaluate a traceable, safe subscription workflow from questionnaire to delivery status.

## Team and supervisor

| Person | Group | Initial responsibility |
| --- | --- | --- |
| Yermakhanbet Balgyn Yerlanqyzy | SE-2404 | Proposal, requirements, technology and architecture decisions, evaluation plan, repository coordination |
| Markhabat Ayana Markhabatkyzy | SE-2404 | User research, literature and existing-system review, UX prototype, supervisor-feedback log |

Supervisor: **Omirzak Islam Amanzholuly**. Responsibilities are a planning split; actual individual work is evidenced by each student's own commits, pull requests and YouTrack tasks. Shared decisions require review by both students and the supervisor when appropriate.

## Preliminary scope

The proposed service covers family profiles and individual dietary questionnaires, a recommended meal plan, a 30-day subscription, menu changes within available alternatives, payment and delivery status, and staff operations for orders and kitchen planning. The initial setting is one kitchen and one service city (Astana). Other cities, a marketplace, a courier app and production provider integrations are outside this diploma stage unless the scope is explicitly revised.

Expected outcomes for the first pre-defense are a validated problem statement, a literature and systems review, prioritized verifiable requirements, technology rationale, editable architecture diagrams, key-scenario prototype, evaluation plan and a traceable project plan. A complete application is not claimed for this milestone.

## Current status — 22 October 2026

The diploma tracking repository and [YouTrack project](https://balgyn.youtrack.cloud/projects/JANTOK) have been created. [JANTOK-1 to JANTOK-11](https://balgyn.youtrack.cloud/projects/JANTOK/issues) assign first-stage work with acceptance criteria and a 24 October 2026 deadline. Research findings, supervisor feedback, peer review and individual contributions remain to be evidenced. Work outside this repository is not presented as a contribution by either student without provenance and review.

## Candidate technologies

Flutter/Dart for the client, NestJS/TypeScript for the API, PostgreSQL for persistent data, and a React/Next.js staff interface are current candidates. Their selection and alternatives must be justified in the technology comparison; this README does not treat them as independently validated decisions.

## Repository structure and documents

- docs/ — proposal, research, comparisons, requirements, decisions, evaluation and risks.
- diagrams/ — editable diagram source and readable exports.
- prototype/ — key user scenario mockups or a verified prototype link.
- src/, tests/, config/ — application code, tests and configuration examples when added.

The above structure is the target organization. Direct links will be added as deliverables are committed. No interview, source review, test or supervisor approval is marked complete solely because a placeholder exists.

## Working and review process

Use a task branch such as JANTOK-6-requirements and include the ID in commits and pull requests. Keep main as the reviewed baseline. Each PR should explain the deliverable, verification and remaining limitations; the other student reviews before merge. Link the PR or commit from its YouTrack task. Use separate GitHub accounts and identifiable commit details. Create pre-defense-1 only for the actual reviewed submission and never move that tag.

Do not commit passwords, API keys, private user research, personal phone numbers or production configuration. Use anonymized evidence and placeholder configuration. Setup, run and test commands will be documented when runnable code is added to this repository.
