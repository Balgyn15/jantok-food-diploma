# Architecture and diagrams — draft

JANTOK-7. The three required diagrams live in [diagrams](../diagrams/) as editable Mermaid sources and matching SVG exports. They describe the proposed system, not the small starter code already implemented. Requirements, provider contracts and infrastructure remain subject to validation.

## 1. System context

![System context](../diagrams/context.svg)

[Edit context.mmd](../diagrams/context.mmd) · [Open context.svg](../diagrams/context.svg)

Households use the mobile client; staff use a web interface. Payment, SMS and delivery systems are external dependencies and are not claimed as live integrations. The project boundary is one kitchen and Astana delivery.

## 2. Use cases

![Use cases](../diagrams/use-cases.svg)

[Edit use-cases.mmd](../diagrams/use-cases.mmd) · [Open use-cases.svg](../diagrams/use-cases.svg)

Customer use cases map to FR-01–05 and the staff cases to FR-06. Reviewing eligible meals uses individual restrictions; managing a subscription requires a visible quote. These are draft relationships for validation with users and the client.

## 3. Component view

![Component diagram](../diagrams/components.svg)

[Edit components.mmd](../diagrams/components.mmd) · [Open components.svg](../diagrams/components.svg)

The backend API is the authority for eligibility, pricing, authorization and order state. The clients render those decisions. The database preserves linked profiles and orders; a queue/worker is proposed for non-interactive jobs; provider adapters isolate external services. The starter under src/ implements only local quote/eligibility previews and static views; database, queue, access control and adapters are still future work.

| Requirement | Responsible proposed component | Data/control boundary |
| --- | --- | --- |
| FR-01/02 | Mobile → API → profile/restriction store | Household owns its members; API must check membership and exclusions. |
| FR-03 | API quote rule → persistent quote snapshot | Server controls integer money calculation and version. |
| FR-04 | Mobile → API → menu/subscription store | Only eligible alternatives and open change windows can be accepted. |
| FR-05 | Staff/provider adapter → API → mobile | Status transitions require authorization and traceable source. |
| FR-06 | Staff web → API → kitchen plan | Staff role only; no cross-household data exposure. |

See [DECISIONS.md](DECISIONS.md) for proposed boundaries and [REQUIREMENTS.md](REQUIREMENTS.md) for acceptance checks.
