import test from 'node:test';
import assert from 'node:assert/strict';
import { previewQuote } from '../../src/backend/lib/quote.mjs';
import { mealEligibility } from '../../src/backend/lib/eligibility.mjs';

test('a two-member 30-day quote uses integer minor units and a visible rule version', () => {
  assert.deepEqual(previewQuote({ members: 2, days: 30, pricePerMemberDayMinor: 350000 }), {
    members: 2, days: 30, pricePerMemberDayMinor: 350000,
    totalMinor: 21000000, currency: 'KZT', ruleVersion: 'preview-1',
  });
  assert.throws(() => previewQuote({ members: 2, days: 30, pricePerMemberDayMinor: 1.5 }), RangeError);
});

test('one member restriction blocks a conflicting meal without affecting another member', () => {
  const meal = ['milk', 'wheat'];
  assert.deepEqual(mealEligibility(['MILK'], meal), { allowed: false, conflicts: ['milk'] });
  assert.deepEqual(mealEligibility(['peanut'], meal), { allowed: true, conflicts: [] });
});
