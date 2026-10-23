# Backend component — planned

Technology: NestJS/TypeScript with Prisma/PostgreSQL. Planned modules: identity/access, households, nutrition restrictions, menu, quotes, subscriptions, fulfillment and staff planning. Provider adapters and Redis/BullMQ jobs will be introduced when their use cases require them.

The API owns authorization, business-rule decisions, integer KZT quote totals, change deadlines and order state. Database schema/migrations, HTTP/OpenAPI contract, package manifest and executable tests will be added with runnable implementation. See [architecture](../../docs/ARCHITECTURE.md) and [test cases](../../tests/test-cases.csv).
