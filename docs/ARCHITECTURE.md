# Architecture — initial draft

Owner: Balgyn. YouTrack: JANTOK-7. These diagrams are draft design artifacts. Components and provider choices remain subject to requirements validation and technology comparison.

## System context

The household customer and operations staff interact with JANTOK. External payment, SMS and delivery providers are dependencies, not claimed live integrations.

```mermaid
flowchart LR
    Household[Household customer] -->|questionnaire, subscription, status| JANTOK[JANTOK Food system]
    Staff[Operations staff] -->|menu and order operations| JANTOK
    JANTOK -->|payment request and result| Payment[Payment provider]
    JANTOK -->|login code request| SMS[SMS provider]
    JANTOK -->|delivery request and status| Delivery[Delivery provider]
```

Editable source: [context.mmd](../diagrams/context.mmd).

## Use cases

```mermaid
flowchart LR
    Household[Household customer] --> UC1([Create household and member profiles])
    Household --> UC2([Complete nutrition questionnaires])
    Household --> UC3([Review plan and quote])
    Household --> UC4([Start or manage subscription])
    Household --> UC5([Track order and delivery])
    Staff[Operations staff] --> UC6([Manage menu and orders])
    Staff --> UC7([Prepare daily kitchen plan])
    UC4 -. requires .-> UC3
    UC3 -. uses .-> UC2
```

Editable source: [use-cases.mmd](../diagrams/use-cases.mmd). Use-case labels are preliminary and map to FR-01 through FR-06 in [REQUIREMENTS.md](REQUIREMENTS.md).

## Components

```mermaid
flowchart LR
    Mobile[Mobile client] -->|REST API| API[Backend API]
    Admin[Staff web app] -->|REST API| API
    API --> DB[(PostgreSQL)]
    API --> Queue[(Job queue)]
    Worker[Background worker] --> Queue
    Worker --> DB
    API --> Adapters[Provider adapters]
    Worker --> Adapters
    Adapters --> External[Payment, SMS and delivery services]
```

Editable source: [components.mmd](../diagrams/components.mmd). The API owns pricing, restrictions, authorization and order state. The mobile and staff clients display server decisions. Database, queue and adapters are conceptual until the technology decision is reviewed.

Readable exports are the rendered diagrams in this Markdown file. A separate SVG/PDF export may be added with the reviewed submission.
