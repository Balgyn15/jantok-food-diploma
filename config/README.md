# Configuration and dependency plan

The first submission contains architecture and prototype materials. Runtime manifests and lockfiles will be committed with the corresponding runnable component; installing empty application packages is unnecessary at this stage.

| Component | Selected dependency families | Planned manifest |
| --- | --- | --- |
| Mobile | Flutter/Dart, HTTP client, routing/state management, localization, secure credential storage | src/mobile/pubspec.yaml and pubspec.lock |
| Backend | Node.js LTS, TypeScript, NestJS, Prisma/PostgreSQL driver, validation; Vitest/Supertest for tests | src/backend/package.json and lockfile |
| Staff frontend | Next.js, React, TypeScript | src/frontend/package.json and lockfile |
| Background work, when introduced | Redis/BullMQ | Backend manifest plus deployment configuration |

Use supported, mutually compatible versions and pin the installed set when implementation is integrated. [.env.example](.env.example) contains placeholders only and is not a deployment configuration. Keep real .env files, tokens, private keys and participant data outside Git.
