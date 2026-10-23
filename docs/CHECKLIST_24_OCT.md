# 24 October pre-defense readiness

Snapshot: 22 October 2026. “Draft present” means a file exists and is reviewable; it does not mean the committee criterion is already met. Task owners and deadlines should be checked in [YouTrack](https://balgyn.youtrack.cloud/projects/JANTOK/issues).

| Required item | File/evidence | Status and next action |
| --- | --- | --- |
| 1. Project proposal and scope | [PROPOSAL.md](PROPOSAL.md) | Draft present; verify scope with client/users and supervisor. |
| 2. Relevance evidence | [RESEARCH_PLAN.md](RESEARCH_PLAN.md) | **Missing primary evidence**: 3–5 representative discussions or substantive client agreement. Do not invent interviews. |
| 3. Literature review | [LITERATURE_REVIEW.md](LITERATURE_REVIEW.md) | Desk draft with 12 used sources, 10 scientific; Ayana should verify reading, metadata and conclusions. |
| 4. Existing systems | [SYSTEM_COMPARISON.md](SYSTEM_COMPARISON.md) | Five systems and eight consistent criteria; unknown features need direct checks. |
| 5. Technology alternatives | [TECH_COMPARISON.md](TECH_COMPARISON.md) | Three decisions with three alternatives each; choices remain provisional. |
| 6. Requirements and acceptance | [REQUIREMENTS.md](REQUIREMENTS.md) | Initial FR/NFR with priorities and checks; trace to primary evidence after interviews. |
| 7. Context, use cases, components | [ARCHITECTURE.md](ARCHITECTURE.md), [diagrams](../diagrams/) | Three editable .mmd files and three .svg exports present; pending review. |
| 8. UX/prototype | [UX_PROTOTYPE.md](UX_PROTOTYPE.md), [screens](../prototype/screens/) | Six source HTML files and six PNG previews present; usability feedback pending. |
| 9. Verification/evaluation | [EVALUATION.md](EVALUATION.md), [tests](../tests/) | Plan and starter tests present; measured outcomes pending. |
| 10. Management/risks | [PROJECT_PLAN.md](PROJECT_PLAN.md), [YouTrack](https://balgyn.youtrack.cloud/projects/JANTOK/issues) | Tasks and risks present; peer-review trail and individual Ayana contributions still needed. |
| 11. Supervisor feedback | [SUPERVISOR_FEEDBACK.md](SUPERVISOR_FEEDBACK.md) | **Missing actual feedback**; record only genuine comments and resulting changes. |

## Repository structure check

- Source code: src/mobile, src/backend and src/admin contain a small, explicitly labelled starter; application is incomplete by design.
- Documentation: all written deliverables are in docs. The README links every section.
- Diagrams: editable Mermaid and generated SVG exports are together in diagrams.
- Tests: Node domain tests are in tests/backend; Flutter's standard widget test is in src/mobile/test.
- Configuration: Node package.json and Flutter pubspec.yaml define dependencies; config/.env.example uses placeholders; .gitignore excludes secrets and .codex.

## Submission evidence still requiring people

1. Actual user/client discussions and a requirement-change log.
2. Ayana's own identifiable commits and peer review; no assistant or Balgyn action can impersonate them.
3. Supervisor's substantive feedback and documented revisions.
4. Reviewed PRs, YouTrack links to merged deliverables, and an immutable pre-defense-1 tag at the real submission.

The public repository alone does not prove these activities occurred.
