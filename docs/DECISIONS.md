# Architectural decision register — version 1.0

Date: 23 October 2026. Status: selected design baseline for first pre-defense; supervisor feedback is recorded in its own log.

| ID | Selected decision | Reason / requirement | Consequence and verification |
| --- | --- | --- | --- |
| ADR-01 | One NestJS/TypeScript API is authoritative for authorization, restrictions, quotes, deadlines and order states. | Shared mobile/staff rules, FR-02/03/05/07 and NFR-01/02 | Clients display decisions; TC-02/04/07/08/11/12 verify server behavior. |
| ADR-02 | PostgreSQL/Prisma persistence with linked ownership and versioned quote/menu snapshots. | FR-01/03/08 and NFR-02 | Use constraints/transactions, migrations and idempotency; TC-01/05/10/13. |
| ADR-03 | HTTP JSON with an OpenAPI contract between clients and backend. | Common request/error definitions for FR-01–08 | Version the contract and test denied/invalid/repeated requests. |
| ADR-04 | Payment, SMS and delivery systems use adapters; Redis/BullMQ supports background jobs when introduced. | External contracts are dependencies, core state must remain consistent | Label simulations, preserve provider event source, keep real launch outside the first submission. |
| ADR-05 | Flutter/Dart mobile and Next.js/React/TypeScript staff frontend. | Mobile household tasks and distinct staff operations; NFR-03/04 | Keep separate components; verify mobile usability and staff role boundaries. |
| ADR-06 | First-pre-defense source folders contain component plans; test materials describe future checks. | Rubric requires analysis/design/planning; runnable application is not required on 24 October | Remove unrelated preview code from the current tree, retain history, add manifests/tests with runnable features. |

Alternatives and tradeoffs: [TECH_COMPARISON.md](TECH_COMPARISON.md). Diagram/data boundaries: [ARCHITECTURE.md](ARCHITECTURE.md). Changes add a dated reason, affected IDs and review outcome; a design selection does not imply that it has been implemented.
