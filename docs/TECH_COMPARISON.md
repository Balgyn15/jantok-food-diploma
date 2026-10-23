# Technology comparison and provisional choices

JANTOK-5. Reviewed against FR-01–06 and NFR-01–03 on 22 October 2026. These are technical design proposals, not performance benchmarks or supervisor-approved decisions. Official documentation supports feature claims; project-fit judgments are our inferences and must be revisited after user/client validation.

## 1. Server platform (households, quotes, roles and staff workflows)

| Alternative | Documented capability | Project-fit judgment / cost |
| --- | --- | --- |
| [NestJS / TypeScript](https://docs.nestjs.com/fundamentals/testing) | Modules, dependency injection, unit/integration/e2e testing support. | Fits a modular API with shared typed contracts and a JavaScript staff client; needs disciplined runtime validation and team TypeScript skills. |
| [Spring Boot / Java](https://docs.spring.io/spring-boot/reference/testing/spring-boot-applications.html) | Application context and test slices support layered services. | Strong option for transaction-heavy systems; larger framework and a second language increase initial team setup. |
| [FastAPI / Python](https://fastapi.tiangolo.com/tutorial/) and [testing guide](https://fastapi.tiangolo.com/tutorial/testing/) | Typed request models, API documentation and pytest-oriented testing. | Fast iteration for a research prototype; Python server code would not share TypeScript types with the staff client. |

**Provisional choice:** NestJS, subject to a small team spike implementing FR-01 and a guarded FR-02 endpoint. Measure setup time, testability, request validation and error handling. A framework alone does not supply authorization or safe nutrition rules.

## 2. Persistent data (member profiles, plan snapshots and payments)

| Alternative | Documented capability | Project-fit judgment / cost |
| --- | --- | --- |
| [PostgreSQL](https://www.postgresql.org/docs/current/tutorial-transactions.html) and [constraints](https://www.postgresql.org/docs/current/ddl-constraints.html) | Atomic transactions and relational constraints. | Good fit for household/member/order links and consistent quote/order state; requires migrations and relational modeling. |
| [MySQL InnoDB](https://dev.mysql.com/doc/refman/8.4/en/innodb-locking-transaction-model.html) | Transactions, isolation and locking. | Also a credible relational option; team should benchmark SQL features and deployment support before rejecting it. |
| [MongoDB](https://www.mongodb.com/docs/manual/core/schema-validation/) | Flexible documents with optional schema validation. | Convenient for changing questionnaires; cross-entity invariants and query patterns would need more explicit design. Flexibility is not automatically beneficial here. |

**Provisional choice:** PostgreSQL for FR-01/03 and NFR-02, because the proposed data have linked entities and consistent state transitions. Compare a small household/order schema in PostgreSQL and MySQL before finalizing. No live database is claimed in the starter prototype.

## 3. Interaction between clients and server

| Alternative | Documented capability | Project-fit judgment / cost |
| --- | --- | --- |
| HTTP JSON with [OpenAPI contract](https://spec.openapis.org/oas/) | Machine-readable API description and common HTTP tooling. | Simple for mobile and staff clients; multiple endpoints and version discipline are needed. |
| [GraphQL](https://graphql.org/learn/) | Typed schema and client-selected response fields. | Useful for complex variable views; query authorization and caching add implementation work for this stage. |
| [gRPC](https://grpc.io/docs/what-is-grpc/introduction/) | Protocol Buffer contract and generated clients. | Strong typed service-to-service option; browser integration and toolchain are extra work for a small client/API boundary. |

**Provisional choice:** HTTP JSON/OpenAPI for FR-01–06. Validate an API contract with the mobile prototype and a staff mock. Later internal jobs can use a different protocol if measured needs justify it.

## Decision conditions

- Revisit choices if the client requires offline-first operation, high-volume real-time dispatch or an existing platform integration.
- NFR-01 requires object-level authorization regardless of protocol; [OWASP API1:2023](https://api-security.owasp.org/editions/2023/en/0x11-t10/) identifies this as a common API risk.
- NFR-02 requires testable integer money rules and idempotent operations regardless of database.
- The current backend starter uses Node's built-in HTTP/test modules solely to exercise the domain rules without production dependencies. It is not an implemented NestJS/PostgreSQL deployment.
