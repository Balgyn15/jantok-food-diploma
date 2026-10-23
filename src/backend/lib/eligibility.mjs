export function mealEligibility(memberAllergens, mealAllergens) {
  if (!Array.isArray(memberAllergens) || !Array.isArray(mealAllergens) ||
      ![...memberAllergens, ...mealAllergens].every(x => typeof x === 'string' && x.length > 0)) {
    throw new TypeError('Allergens must be non-empty string arrays');
  }
  const restricted = new Set(memberAllergens.map(x => x.trim().toLowerCase()));
  const conflicts = [...new Set(mealAllergens.map(x => x.trim().toLowerCase()))]
    .filter(x => restricted.has(x));
  return { allowed: conflicts.length === 0, conflicts };
}
