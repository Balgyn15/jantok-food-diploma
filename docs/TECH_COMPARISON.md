# Technology comparison and selected baseline — version 1.0

Date: 23 October 2026. YouTrack: JANTOK-5. The baseline is selected for the team's diploma design; supervisor review is still pending. Official documentation supports platform capabilities; the judgments about fit are project decisions. Selection does not imply completed deployment or measured superiority.

## 1. Mobile application

| Alternative | Fit for JANTOK | Tradeoff |
| --- | --- | --- |
| [Flutter / Dart](https://docs.flutter.dev/) | One component for Android and iOS, consistent questionnaire/calendar UI, unit/widget/integration tests | Team maintains Dart and validates platform plugins on each target |
| [React Native / TypeScript](https://reactnative.dev/docs/getting-started) | React-based mobile UI; language overlap with web/backend | Native module behavior and platform-specific UI still require testing |
| Native [Kotlin/Android](https://developer.android.com/compose) and [SwiftUI/iOS](https://developer.apple.com/swiftui/) | Direct platform integration and native UI conventions | Two separate UI implementations increase work for a two-person team |

**Selected: Flutter/Dart.** Shared UI and a single mobile feature structure suit the household workflow and team size. Android is the first evaluation target; iOS needs a separate device/build check before being claimed supported. FR-01–05 and NFR-03/04 drive this choice.

## 2. Backend platform

| Alternative | Fit for JANTOK | Tradeoff |
| --- | --- | --- |
| [NestJS / TypeScript](https://docs.nestjs.com/) | Modules, validation/guards and service tests support separate household, quote and staff responsibilities | Runtime validation and authorization still need explicit implementation |
| [Spring Boot / Java](https://docs.spring.io/spring-boot/reference/testing/spring-boot-applications.html) | Layered services, mature transaction/test tooling | Adds a separate language and framework setup |
| [FastAPI / Python](https://fastapi.tiangolo.com/tutorial/) | Typed request models and API documentation; convenient for data experiments | Python implementation and client contracts require separate coordination |

**Selected: NestJS/TypeScript with Prisma.** A modular monolith keeps core rules in one API and shares the web team's language. FR-02/03/07/08 and NFR-01/02 require guards, transactions and independent rule tests, whatever framework is used.

## 3. Persistent data

| Alternative | Fit for JANTOK | Tradeoff |
| --- | --- | --- |
| [PostgreSQL](https://www.postgresql.org/docs/current/tutorial-transactions.html), [constraints](https://www.postgresql.org/docs/current/ddl-constraints.html) | Linked households, members, quotes, orders and immutable snapshots; atomic updates | Requires schema/migration design |
| [MySQL InnoDB](https://dev.mysql.com/doc/refman/8.4/en/innodb-locking-transaction-model.html) | Also provides a credible relational transaction model | Team must coordinate its SQL/migration/deployment conventions |
| [MongoDB](https://www.mongodb.com/docs/manual/core/schema-validation/) | Flexible questionnaire documents with schema validation options | Cross-entity invariants and historical snapshots need deliberate modeling |

**Selected: PostgreSQL, accessed through Prisma.** Relational constraints and transactions fit FR-01/03/05 and NFR-02. JSON fields can represent versioned questionnaire answers without abandoning relational ownership.

## 4. Client/server interaction

| Alternative | Fit for JANTOK | Tradeoff |
| --- | --- | --- |
| HTTP JSON / [OpenAPI](https://spec.openapis.org/oas/latest.html) | Explicit mobile/staff requests, errors and shared API contract | Endpoint/version discipline required |
| [GraphQL](https://graphql.org/learn/) | Clients select fields for complex variable views | Query-level authorization, caching and schema tooling add work |
| [gRPC](https://grpc.io/docs/what-is-grpc/introduction/) | Generated typed contracts, especially between services | Browser gateway/toolchain overhead for a small client/API boundary |

**Selected: HTTP JSON with OpenAPI.** It keeps the planned mobile and staff boundary simple. Background jobs may use Redis/BullMQ internally; this does not replace the public API contract.

## 5. Staff web interface

| Alternative | Fit for JANTOK | Tradeoff |
| --- | --- | --- |
| [Next.js / React / TypeScript](https://nextjs.org/docs) | Routing and React components for daily plan, meal and order views | Server/client boundaries and authorization must remain clear |
| [Nuxt / Vue](https://nuxt.com/docs) | Structured Vue application and routing | Requires Vue conventions in addition to the selected team stack |
| [Angular](https://angular.dev/overview) | Integrated application structure and forms | More framework-specific concepts for a small staff interface |

**Selected: Next.js/React/TypeScript.** The staff client shares TypeScript tooling with the backend and delegates business decisions to the API.

## Supporting choices and change rule

Redis/BullMQ is selected for background processing only when required by notification/provider jobs. Core persistent state stays in PostgreSQL. External payment, SMS and delivery adapters remain boundaries until contracts are available. Exact package versions and lockfiles will accompany runnable component integration. [Configuration planning](../config/README.md) lists manifest locations. Changes to the baseline require a recorded decision, reason and impact on requirements/tests; supervisor approval is recorded separately.
