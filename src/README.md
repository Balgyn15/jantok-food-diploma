# Planned application components

This first-pre-defense snapshot reserves the implementation boundaries below. Application code will be integrated through task branches and reviewed PRs.

| Component | Selected technology | Responsibility |
| --- | --- | --- |
| [mobile](mobile/) | Flutter / Dart | Household profiles, questionnaire, menu, quote, subscription and delivery views |
| [backend](backend/) | NestJS / TypeScript / Prisma | Authentication, authorization, member restrictions, quotes, subscriptions and fulfillment |
| [frontend](frontend/) | Next.js / React / TypeScript | Staff menu/order operations and daily kitchen plan |

The architecture is documented in [docs/ARCHITECTURE.md](../docs/ARCHITECTURE.md). The actual UX sources belong in [prototype](../prototype/) and test planning in [tests](../tests/). Runtime manifests and setup commands will be added with runnable code. Earlier technical-preview files remain recoverable in Git history.
