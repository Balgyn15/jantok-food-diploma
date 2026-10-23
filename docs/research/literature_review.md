# Literature review: evidence for a family meal subscription workflow

**Project:** JANTOK Food, Astana  
**Research owner:** Markhabat Ayana Markhabatkyzy, SE-2404  
**Team:** Markhabat Ayana Markhabatkyzy and Yermakhanbet Balgyn Yerlanqyzy  
**Baseline:** 24 October 2026;
**YouTrack:** JANTOK-3

This note organizes the twelve sources already appraised in [the project literature review](../LITERATURE_REVIEW.md). It does not report a new literature search or new empirical results. Ten sources are scientific publications dated 2022–2025; two are official guidance for general diet and food-allergy context. The [search log](search_log_2026-10-24.md) records the limits of the available search history. The review informs design decisions but cannot prove demand in Astana, the safety of a production food service, or a clinical outcome.

## 1. Questions and scope

The central engineering question is how a family meal subscription can make distinct member needs, meal choices, price, and fulfillment status coherent across a customer application and staff workflow. This review asks:

1. What design evidence supports preference-aware meal choice and understandable alternatives?
2. How should declared dietary restrictions be represented so that a preference score cannot bypass a hard exclusion?
3. What can published digital-food studies support about user participation and evaluation, and what remains untested for an Astana household service?
4. Which outcomes should the diploma measure without making unsupported nutrition or commercial claims?

The target system serves one kitchen and households in Astana. Its first submission is an analysis and design baseline with a static prototype. The publications examine different populations, settings, and interventions, so conclusions are transferred only as design hypotheses or safety cautions. Local relevance comes from the separately documented [six anonymized participant write-ups](../RELEVANCE_EVIDENCE_SUPPLEMENT.md) and [five-service comparison](../SYSTEM_COMPARISON.md); neither is part of the scientific-source count.

## 2. Evidence base and appraisal

| Source | Design and setting | What it contributes | Transfer limit for JANTOK |
| --- | --- | --- | --- |
| [L01](#references) | Scoping review of food classification and recommendation studies, 2025 | Methods and outcomes differ substantially; an algorithm cannot be selected from headline accuracy alone. | Heterogeneous work does not establish a suitable model for family subscriptions. |
| [L02](#references) | Systematic review of food recommenders for diabetes, 2023 | Shows the importance and difficulty of representing diet constraints and evaluating recommendations. | Disease-specific datasets and diets are not evidence for the general Astana household population. |
| [L03](#references) | Food substitution studies with online and app participants, 2023 | Participatory substitution was associated with better acceptance in the reported setting. | The app sample was small and the task was food substitution, not prepared-meal fulfillment. |
| [L04](#references) | Workplace food explanation interface with user-centered deployment, 2025 | Explanations can aid understanding and perceived control. | Workplace catering differs from family delivery; the reported seven-week attrition was 77%. |
| [L05](#references) | Interactive nutrition coaching experiment, 2024 | Feedback and explanations were valued together by participants. | Their effects cannot be separated, and virtual coaching does not test kitchen operations. |
| [L06](#references) | Scoping review of 51 health recommender systems, 2023 | End-user preference was included in design/development for only 10 systems. | Search restrictions and varied health applications limit transfer to local service requirements. |
| [L07](#references) | Randomized personalized-nutrition intervention with 347 adults, 2024 | Some measured outcomes improved while LDL cholesterol did not significantly differ. | An intensive health intervention cannot justify clinical claims for JANTOK. |
| [L08](#references) | Randomized personalized-diet versus low-fat-diet trial, 2022 | The personalized arm did not show significantly greater weight loss at six months. | Clinical participants and intervention conditions differ from ordinary meal ordering. |
| [L09](#references) | Randomized online-grocery intervention, 2025 | A combined digital intervention improved the cart nutrition score in its setting. | It cannot isolate substitution effects and does not study prepared-meal delivery. |
| [L10](#references) | Knowledge-graph food recommendation model, 2023 | Provides a way to represent preference and health-related factors together. | One recipe dataset, limited nutrient dimensions, and no user study; it does not validate allergy handling. |
| [L11](#references) | World Health Organization healthy-diet guidance | Gives broad context about adequacy, balance, moderation, and diversity. | It is not an individual meal prescription or a study of JANTOK users. |
| [L12](#references) | US Food and Drug Administration food-allergy guidance | Highlights ingredient and cross-contact risks beyond a screen-level filter. | It is not a substitute for Kazakhstan requirements, supplier declarations, or kitchen verification. |

The existing project review reports that bibliographic records and abstracts for L01–L10 were checked against PubMed on 23 October 2026. It reports additional open full-text discussion/limitations checks for L02, L04, L05, L06, L07, L08, and L10. L01, L03, and L09 remain bounded by records/abstracts in that review. This note does not claim a fresh full-text appraisal of those three papers.

## 3. Synthesis by design problem

### 3.1 Household preferences need explicit, revisable choices

L03–L06 support a cautious interface hypothesis: people should be able to understand a suggested change and choose among permitted alternatives. This is stronger than assuming a hidden ranking score will be welcomed. The small or context-specific studies do not tell us which explanation will work for Astana families. The JANTOK prototype therefore presents a member-specific menu, meal details, and a replacement path; later task sessions must observe whether users can complete the flow and explain the result in their own words.

The [participant write-ups](../RELEVANCE_EVIDENCE_SUPPLEMENT.md) make the local rationale more concrete. Different preferences appear in P01, P02, P04, and P06, while P03 and P05 show that an existing routine can work well. These are paraphrased observations from six people, not prevalence estimates. The defensible conclusion is to test the household workflow, not to assume every household needs a subscription.

### 3.2 Safety constraints must precede preference ranking

A preference can be negotiable; a declared allergy or unknown ingredient status cannot be treated as a low-ranked preference. L02 and L10 motivate structured constraint representation, and L12 emphasizes that software declarations cannot eliminate food-service cross-contact risks. For the planned system, eligibility is checked first; a meal with a conflicting declared ingredient is blocked, and missing declaration data is held for verification. Only eligible choices may be ranked or offered as alternatives.

This distinction maps to [FR-02 and FR-08](../REQUIREMENTS.md). The synthetic acceptance fixture explicitly requires P01 to be blocked from selecting a milk-containing meal while P02 can select it; an unknown ingredient record is held. The interface must show the reason. The test verifies the planned rule against synthetic data. It does not certify a real meal as allergy-safe. Production use requires current supplier information, kitchen procedures, expert review, and applicable local compliance work.

### 3.3 Explanations help only if users can act on them

L03–L05 suggest testing concise explanations at the point where a meal is excluded or changed. L04 also warns that initial interest need not mean sustained use; its high attrition makes retention a separate outcome. The prototype should show a clear cause, such as a declared ingredient conflict, and permitted substitutes. Usability testing should record whether the participant notices the message, understands why an item is unavailable, and completes a permitted change before the deadline. A generic statement that a recommendation is “healthy” is insufficient for the decision at hand.

The design implication is narrower than a claim of proven usability. [FR-04](../REQUIREMENTS.md) requires an eligible change to persist and a late/ineligible change to leave the plan unchanged. [NFR-03](../REQUIREMENTS.md) sets a future five-person pilot target for completing the questionnaire-to-quote path without hints. Neither behavior has been measured in the current static prototype.

### 3.4 Personalization is a workflow feature, not a health promise

L07–L09 show why measured outcomes and setting matter. A digital food intervention can improve some measures in one study while a different personalized-diet trial does not beat a comparator on weight loss. The JANTOK team should not promise weight reduction, improved biomarkers, or clinical nutrition advice. Its testable contribution is a coordinated family workflow: separate member information, transparent quote, permitted changes, and consistent staff-to-customer status.

The [evaluation plan](../EVALUATION.md) accordingly measures task completion, quote comprehension, restriction rule behavior, role separation, order consistency, and a defined response-time target for a future staging build. It does not present achieved results. To assess a claimed reduction in planning effort, a future study would need a comparable baseline, defined timing procedure, consent, and a recorded sample; the six interview write-ups alone cannot establish a saving.

### 3.5 Local competitor evidence bounds novelty

The [market comparison](../SYSTEM_COMPARISON.md) inspected public official pages for five Astana ready-meal services. Meal plans, visible prices, and some dietary tailoring are already advertised. Public pages did not establish the entire proposed combination of one household account, separate member questionnaires, explicit restriction decisions, an itemized family quote, and fulfillment information. “Not established” in that comparison means only that the inspected public source did not demonstrate a feature; it is not proof that a competitor lacks it. The diploma should present the integrated workflow as a design proposal to validate, not as exclusive market invention.

## 4. Trace from research to design and checks

| Evidence or caution | Current project decision | Planned check |
| --- | --- | --- |
| L02/L10/L12: constraints and ingredient uncertainty | FR-02 and FR-08 separate declared restrictions from preferences; missing ingredient information is held. | TC-02/03 and TC-10 in the synthetic test plan; later kitchen-data review. |
| L03–L05: explanation and selectable substitution | FR-04 and static screens expose alternative selection and conflict reasons. | TC-06/07 plus observed task comprehension in the pilot. |
| L06 and local P01–P06: include target users, preserve counterexamples | NFR-03 pilot uses a defined two-member scenario and records failures and hints. | Pilot task log; revise requirements from observed failures. |
| L07–L09: mixed outcomes and context dependence | State service coordination as the project aim; avoid clinical-benefit claims. | Compare task and order metrics against a recorded baseline only after implementation. |
| L12: software is one safety layer | Keep menu declarations versioned and require kitchen verification before real service. | FR-08 version check; later operational review. |

A requirement reference denotes a design rationale, not a participant request or an implemented feature. The [requirements specification](../REQUIREMENTS.md), [architecture](../ARCHITECTURE.md), and [evaluation plan](../EVALUATION.md) hold the operative criteria.

## 5. Limitations and next research step

This is a targeted review, not a systematic review. The preserved project record gives search terms and channels but no reproducible hit counts or exact query strings. Search language, selection and publication bias remain possible. The scientific sources do not all use the same population, treatment, or outcome. The US and global guidance sources do not establish local regulation. Full-text appraisal was not documented for three scientific sources in the existing review. No source verifies local demand, willingness to pay, or the safety of a production kitchen.

The next research step is a logged update with exact databases, query strings, search dates, result counts, inclusion/exclusion decisions, and full-text limitation notes. The team should then run a consented task-based usability pilot, price and menu-preference interviews, and a kitchen/ingredient-data review. Each new finding should be attached to a requirement and a test before changing scope.

## References

- **L01.** Saad AM, Islam MM. “Navigating nutrients: A scoping review on real-time food nutrition classification and recommendation systems.” *Computers in Biology and Medicine*, 2025. [DOI](https://doi.org/10.1016/j.compbiomed.2025.110306); [PubMed](https://pubmed.ncbi.nlm.nih.gov/40328030/).
- **L02.** Yera R, Alzahrani AA, Martínez L, et al. “A Systematic Review on Food Recommender Systems for Diabetic Patients.” *International Journal of Environmental Research and Public Health*, 2023. [DOI](https://doi.org/10.3390/ijerph20054248); [PubMed](https://pubmed.ncbi.nlm.nih.gov/36901271/).
- **L03.** Vandeputte J, Herold P, Kuslii M, et al. Food-change recommender study. *The Journal of Nutrition*, 2023. [DOI](https://doi.org/10.1016/j.tjnut.2022.12.022); [PubMed](https://pubmed.ncbi.nlm.nih.gov/36894251/).
- **L04.** De Croon R, Segovia-Lizano D, Finglas P, et al. “An Explanation Interface for Healthy Food Recommendations in a Real-Life Workplace Deployment: User-Centered Design Study.” *JMIR mHealth and uHealth*, 2025. [DOI](https://doi.org/10.2196/51271); [PubMed](https://pubmed.ncbi.nlm.nih.gov/39935009/).
- **L05.** Buzcu B, Tessa M, Tchappi I, et al. “Towards interactive explanation-based nutrition virtual coaching systems.” *Autonomous Agents and Multi-Agent Systems*, 2024. [DOI](https://doi.org/10.1007/s10458-023-09634-5); [PubMed](https://pubmed.ncbi.nlm.nih.gov/38261966/).
- **L06.** Sun Y, Zhou J, Ji M, et al. “Development and Evaluation of Health Recommender Systems: Systematic Scoping Review and Evidence Mapping.” *Journal of Medical Internet Research*, 2023. [DOI](https://doi.org/10.2196/38184); [PubMed](https://pubmed.ncbi.nlm.nih.gov/36656630/).
- **L07.** Bermingham KM, Linenberg I, Polidori L, et al. “Effects of a personalized nutrition program on cardiometabolic health: a randomized controlled trial.” *Nature Medicine*, 2024. [DOI](https://doi.org/10.1038/s41591-024-02951-6); [PubMed](https://pubmed.ncbi.nlm.nih.gov/38714898/).
- **L08.** Popp CJ, Hu L, Kharmats AY, et al. “Effect of a Personalized Diet to Reduce Postprandial Glycemic Response vs a Low-fat Diet on Weight Loss in Adults With Abnormal Glucose Metabolism and Obesity: A Randomized Clinical Trial.” *JAMA Network Open*, 2022. [DOI](https://doi.org/10.1001/jamanetworkopen.2022.33760); [PubMed](https://pubmed.ncbi.nlm.nih.gov/36169954/).
- **L09.** Shin S, Xiaoxi Y, Chakraborty B, et al. “A Randomized Trial Using an Online Grocery Store to Evaluate a Multicomponent Digital Intervention to Improve Diet Quality.” *American Journal of Preventive Medicine*, 2025. [DOI](https://doi.org/10.1016/j.amepre.2025.03.002); [PubMed](https://pubmed.ncbi.nlm.nih.gov/40120994/).
- **L10.** Chen Y, Guo Y, Fan Q, et al. “Health-Aware Food Recommendation Based on Knowledge Graph and Multi-Task Learning.” *Foods*, 2023. [DOI](https://doi.org/10.3390/foods12102079); [PubMed](https://pubmed.ncbi.nlm.nih.gov/37238897/).
- **L11.** World Health Organization. [Healthy diet](https://www.who.int/news-room/fact-sheets/detail/healthy-diet), updated 26 January 2026; accessed in the project review on 23 October 2026.
- **L12.** US Food and Drug Administration. [Food Allergies](https://www.fda.gov/food/nutrition-food-labeling-and-critical-foods/food-allergies); accessed in the project review on 23 October 2026.
