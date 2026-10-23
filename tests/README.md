# Tests and supporting materials

- [backend/domain.test.mjs](backend/domain.test.mjs) checks a two-member quote in integer minor units and a member-specific allergen conflict. Run from the repository root with a Node 20+ executable: node --test tests/backend/*.test.mjs.
- [Flutter widget test](../src/mobile/test/widget_test.dart) checks that family navigation exposes distinct demo members. Run in src/mobile with flutter test after flutter pub get.
- [evaluation plan](../docs/EVALUATION.md) gives the planned baseline, metrics and measurement conditions.

Passing these starter tests does not establish nutrition safety, cross-account access control or end-to-end fulfillment. Those need implementation and later evaluation.
