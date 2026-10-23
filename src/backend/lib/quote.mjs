export function previewQuote({ members, days, pricePerMemberDayMinor }) {
  if (![members, days, pricePerMemberDayMinor].every(Number.isSafeInteger) ||
      members < 1 || members > 20 || days < 1 || days > 30 ||
      pricePerMemberDayMinor < 0 || pricePerMemberDayMinor > 100000000) {
    throw new RangeError('Invalid quote input');
  }
  const totalMinor = members * days * pricePerMemberDayMinor;
  if (!Number.isSafeInteger(totalMinor)) throw new RangeError('Quote overflow');
  return { members, days, pricePerMemberDayMinor, totalMinor, currency: 'KZT', ruleVersion: 'preview-1' };
}
