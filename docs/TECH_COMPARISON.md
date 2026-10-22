# Technology comparison — draft decision framework

Owner: Balgyn. YouTrack: JANTOK-5. Status: alternatives identified; final selection requires evidence and supervisor review.

| Decision | Alternatives | Comparison criteria | Provisional direction |
| --- | --- | --- | --- |
| Server platform | NestJS/TypeScript; Spring Boot/Java; FastAPI/Python | Team skills, type safety, validation, background jobs, testing, deployment effort | NestJS candidate for a modular API; benchmark and document tradeoffs. |
| Persistent storage | PostgreSQL; MySQL; MongoDB | Transactions, constraints, query patterns, migration support, data model fit | PostgreSQL candidate for subscription and payment integrity. |
| Component interaction | REST/JSON; GraphQL; gRPC | Mobile/admin compatibility, contract clarity, latency, operational complexity | REST/JSON candidate for initial public API. |

For each choice, record source/version, requirement affected, strengths, weaknesses, decision and rejected-alternative rationale. Do not infer production readiness from framework selection alone.
