# UX prototype — version 1.0

Date: 23 October 2026. YouTrack: JANTOK-8. Six static mobile previews (390 × 844) cover the key household scenarios. Editable HTML is in [prototype/screens](../prototype/screens/); readable PNG exports are in [prototype/previews](../prototype/previews/). Their source is the user-provided jantok-food-design.zip archive. The team confirmed on 23 October 2026 that this archive was created for JANTOK and may be used in the diploma. This records the permission/provenance supplied by the team; it does not assign individual design authorship. The example persona is Balgyn; dates, prices and account states are synthetic demonstration content.

| Scenario | Editable source | Preview | Requirement |
| --- | --- | --- | --- |
| Home: next delivery and daily meals | [01-home.html](../prototype/screens/01-home.html) | [PNG](../prototype/previews/01-home.png) | FR-04/05 |
| Household: separate members | [02-family.html](../prototype/screens/02-family.html) | [PNG](../prototype/previews/02-family.png) | FR-01 |
| Member questionnaire and allergy | [03-questionnaire.html](../prototype/screens/03-questionnaire.html) | [PNG](../prototype/previews/03-questionnaire.png) | FR-02 |
| Seven-day menu and replacement | [04-menu.html](../prototype/screens/04-menu.html) | [PNG](../prototype/previews/04-menu.png) | FR-04 |
| Subscription summary | [05-subscription.html](../prototype/screens/05-subscription.html) | [PNG](../prototype/previews/05-subscription.png) | FR-03/04 |
| Delivery timeline | [06-delivery.html](../prototype/screens/06-delivery.html) | [PNG](../prototype/previews/06-delivery.png) | FR-05 |

## Preview gallery

![Home screen](../prototype/previews/01-home.png)
![Family screen](../prototype/previews/02-family.png)
![Questionnaire screen](../prototype/previews/03-questionnaire.png)
![Menu screen](../prototype/previews/04-menu.png)
![Subscription screen](../prototype/previews/05-subscription.png)
![Delivery screen](../prototype/previews/06-delivery.png)

## Scenario specification and usability walkthrough

Ask a participant to add two members, set a restriction for one, choose an alternative meal, find the subscription period/price, and locate today's delivery status. Observe errors and time to completion without coaching. The previews show only some of those states; quote detail and real error handling require further design. No usability sessions or user approval are claimed yet.

To regenerate a preview locally, open its HTML in a 390 × 844 browser viewport and take a screenshot. The HTML uses a Google Fonts stylesheet; if offline, the layout may use the system fallback font.

## End-to-end storyboard

Precondition: a household owner has signed in. First-use entry asks the owner to create a household and add members; empty-name and signed-out states require a clear correction/sign-in prompt. The current six-screen set covers the following signed-in path rather than every onboarding form.

1. Open [family](../prototype/screens/02-family.html), select a member and open the [questionnaire](../prototype/screens/03-questionnaire.html). Record the member-specific restriction.
2. Open [menu](../prototype/screens/04-menu.html), check that the selected member is clear, and inspect eligible alternatives. Explain a blocked/unknown item rather than silently accepting it.
3. Before confirmation, present the quote fields specified below. Open [subscription](../prototype/screens/05-subscription.html) to inspect period, member list and available change actions.
4. Return to [home](../prototype/screens/01-home.html) and open [delivery](../prototype/screens/06-delivery.html) to locate the current status.

This is a storyboard with explicit inputs/states. Buttons inside the HTML mockups are visual controls; they do not submit or persist data. A reviewer follows the linked screens and the quote/error-state specification to assess the intended workflow.

## Quote detail required by FR-03

The subscription preview shows the concept of a current plan. The confirmation state must additionally show a clear itemization before the user commits: member count 2, meals/member/day 3, period 30 days, unit price 1200 KZT, total 216000 KZT, price-rule version and validity/change deadline. These values describe the two-member synthetic evaluation fixture. The gallery separately illustrates a three-member household; it is not the same quote. Neither is a commercial tariff. Quote-detail and error states are specified here and will be implemented/refined after the baseline review.

## Staff interaction for FR-05/06/08

A staff member signs in, selects the kitchen date, reviews meal quantities/restriction notes and updates authorized fulfillment status. The staff interface is a planned Next.js component in src/frontend; no standalone demo dashboard is needed for this analysis submission.

| Selected date (synthetic) | Household | Members | Meals | Required information |
| --- | --- | --- | --- | --- |
| 2 November 2026 | SYN-HH-A | 2 | 6 | Member meal selections, restriction reasons and current order status |

Changing the date filters this plan. Updating a status persists through the API and becomes visible only to the owning household. Customer accounts cannot access the kitchen view or maintain ingredient declarations. Empty-plan, invalid-date and denied-access states must be explicit. See TC-08/09/10/12 for expected behavior.

Static screens establish the intended interaction; they do not demonstrate persistence, accessibility compliance, successful user testing or implemented business rules. Usability findings will be recorded with the real session date and resulting screen/requirement changes.
