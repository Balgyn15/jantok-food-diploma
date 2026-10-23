# Architectural decisions — proposed

These decisions link requirements, diagrams and alternatives. They are pending team and supervisor review.

| ID | Decision | Rationale | Consequence / validation |
| --- | --- | --- | --- |
| ADR-01 | One backend API owns member restrictions, quotes, authorization and order state. | Mobile and staff interfaces must not independently calculate safety or money rules (FR-02/03, NFR-01/02). | Component diagram shows a common API; verify server-side rejection and cross-account checks later. |
| ADR-02 | Use relational persistence, provisionally PostgreSQL. | Household/member, menu snapshot and payment/order records have linked invariants (FR-01/03). | Add schema/migrations and compare against MySQL after requirements validation. |
| ADR-03 | Use HTTP JSON with an OpenAPI contract between clients and API. | Both mobile and staff clients need a straightforward shared contract (FR-01–06). | Draft contract in a future task and check response/error cases with both clients. |
| ADR-04 | Model payment, SMS and delivery providers behind adapters. | External contracts and credentials are not available at this stage. | Local simulations must remain visibly labelled; live integration is out of scope for the first pre-defense. |

See [technology comparison](TECH_COMPARISON.md) for alternatives and [architecture](ARCHITECTURE.md) for context/use-case/component diagrams.
