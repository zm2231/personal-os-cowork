---
name: experiment-design
description: "Design rigorous experiments, control for confounds, and ensure valid results"
---

# Experiment Design

Designs rigorous experiments, controls for confounding variables, ensures internal and external validity, and develops data collection protocols. Essential for scientific research, product testing, and causal inference.

## When This Skill Activates

- You mention "experiment design", "study design", or "methodology"
- You want to test a hypothesis or intervention
- You need to control for confounding variables
- You're designing an A/B test or clinical trial
- You ask about "internal validity" or "external validity"

## Level 1: Guided (Basic Experiment Design)

**Available after session 22**

At this level, I help you design controlled experiments with proper randomization.

### What I Can Do

1. **Experimental Structure**
   - Define independent and dependent variables
   - Set up control and treatment groups
   - Plan randomization procedures
   - Determine sample size

2. **Control for Confounds**
   - Identify potential confounding variables
   - Design control conditions
   - Plan for covariate measurement
   - Check for selection bias

3. **Data Collection Planning**
   - Design measurement protocols
   - Create data collection forms
   - Plan for missing data
   - Ensure reliability and validity

4. **Basic Validity**
   - Internal validity (causal claims)
   - Construct validity (measuring what you intend)
   - External validity (generalizability)
   - Statistical conclusion validity

### How It Works

**Designing a basic experiment:**

```
You: "Design an experiment to test if meditation improves productivity"

Experiment Design: "I'll help you design a rigorous meditation experiment.

Research Question: Does daily meditation improve workplace productivity?

Independent Variable (IV):
- Meditation (yes/no)
- Duration: 15 minutes daily
- Duration: 4 weeks

Dependent Variables (DV):
- Primary: Tasks completed per hour
- Secondary: Self-reported stress levels
- Secondary: Quality of work (manager rating)

Experimental Design:
- Type: Between-subjects randomized controlled trial
- Groups: 2 (meditation vs. no meditation)
- N = 100 per group (200 total)

Participant Selection:
- Population: Knowledge workers
- Inclusion: Work full-time, age 25-45
- Exclusion: Already meditate regularly, medical conditions
- Recruitment: Internal company email

Randomization:
- Random assignment to groups
- Stratification by department (to balance groups)
- Allocation concealment (participants blinded to hypothesis)

Procedure:
Week 1 (Baseline):
- All participants: Measure baseline productivity and stress
- No meditation for anyone

Weeks 2-5 (Intervention):
- Meditation group: 15-min guided meditation daily
- Control group: Continue normal routine
- Both: Daily productivity tracking, weekly stress surveys

Week 6 (Post-test):
- All participants: Measure productivity and stress again
- Compare changes between groups

Threats to Internal Validity (and how controlled):
✅ History: 4 weeks short period, same time for both groups
✅ Maturation: 4 weeks unlikely to cause change
✅ Testing effects: Only 2 measurements (pre and post)
✅ Instrumentation: Use standardized productivity metrics
✅ Selection bias: Randomization with stratification
✅ Attrition: Plan for 10% dropout, recruit 220 initially

Threats to External Validity:
- Population: Single company, may not generalize
- Setting: Office environment, different results in remote work
- Intervention: Guided meditation may differ from self-practice
- Duration: 4 weeks may not capture long-term effects

Sample Size Justification:
- Effect size: d = 0.4 (medium)
- Power: 1-β = 0.80
- α = 0.05
- Required N: 100 per group (200 total)

Ready to launch experiment?"
```

**Designing an A/B test:**

```
You: "Design an A/B test for our new checkout flow"

Experiment Design: "A/B test design for checkout flow optimization.

Research Question: Does the new checkout flow increase conversion rate?

Hypotheses:
- H₀: New flow has same conversion rate as old flow
- H₁: New flow has higher conversion rate

Experimental Design:
- Type: Online A/B test
- Platform: E-commerce website
- Duration: 2 weeks
- Traffic: 50,000 visitors per day

Treatment Conditions:
- Control (A): Current checkout flow (3 steps)
- Treatment (B): New checkout flow (2 steps, streamlined)

Randomization:
- Random assignment per visitor (50/50 split)
- Cookie-based assignment (consistent across sessions)
- No cross-contamination (each visitor sees only one flow)

Metrics:
- Primary: Conversion rate (purchase completion)
- Secondary: Time to checkout
- Secondary: Cart abandonment rate
- Secondary: Revenue per visitor

Data Collection:
- Track: Start checkout, each step, completion, time
- Instrumentation: Add tracking events to website
- Quality check: Verify tracking works before launch
- Exclude: Bots, internal traffic, test accounts

Threats to Validity (and how controlled):
✅ Instrumentation: Same tracking for both flows
✅ History: Short duration (2 weeks), parallel A/B test
✅ Maturation: Not applicable for short A/B test
✅ Testing effects: Visitors don't know they're in test
✅ Selection bias: Random assignment, large sample

External Validity:
- Population: E-commerce site visitors
- Setting: Desktop and mobile
- Duration: 2 weeks (may differ in holiday season)
- Traffic: Typical business days (weekends may differ)

Sample Size:
- Current conversion: 3.2%
- Target improvement: +20% relative (to 3.84%)
- Effect size: 0.64% absolute
- Required N: 15,000 per group (30,000 total)
- Duration: 12 hours at 2,500/hour per group

Success Criteria:
- Statistically significant: p < 0.05
- Practically significant: ≥20% improvement
- No negative side effects (revenue drop, complaints)

Ready to launch A/B test?"
```

### Your Experiment Library

Experiments are stored in `personal-os/memory/experiments.md`:

```markdown
# Experiment Library

## Meditation Productivity Study
- Type: Between-subjects RCT
- Groups: 2 (meditation vs. control)
- N: 200 (100 per group)
- Duration: 4 weeks
- Status: In progress

## Checkout Flow A/B Test
- Type: Online A/B test
- Groups: 2 (old flow vs. new flow)
- Traffic: 50/50 split
- Duration: 2 weeks
- Status: Completed
- Results: New flow increased conversion by 23% (p < 0.001)
```

### Example Use Cases

**Clinical Trial Design:**
```
You: "Design a clinical trial for a new drug"

Experiment Design: "Clinical trial design for new drug.

Study Design:
- Type: Randomized, double-blind, placebo-controlled trial
- Phase: Phase 2 (proof of concept)
- Duration: 12 weeks

Participants:
- N = 300 total (150 treatment, 150 placebo)
- Inclusion: Age 40-75, mild to moderate symptoms
- Exclusion: Severe symptoms, comorbidities, contraindications
- Recruitment: Multi-center (5 hospitals)

Randomization:
- Block randomization (blocks of 6)
- Stratified by site (balance across hospitals)
- Allocation ratio: 1:1 (treatment:placebo)

Blinding:
- Double-blind (neither participants nor researchers know)
- Identical packaging (treatment and placebo look identical)
- Unblinding procedure (emergency only)

Intervention:
- Treatment group: New drug, 10mg daily
- Placebo group: Inert pill, 10mg daily
- Duration: 12 weeks

Outcome Measures:
- Primary: Symptom severity score (validated scale, 0-100)
- Secondary: Quality of life score
- Secondary: Biomarker levels (blood test)
- Safety: Adverse events, lab values

Assessment Schedule:
- Baseline: Week 0 (screening)
- Follow-up: Weeks 4, 8, 12 (primary endpoint at week 12)
- Safety: Weekly check-ins for adverse events

Statistical Analysis:
- Primary analysis: ANCOVA (adjusting for baseline)
- Power: 90% to detect d = 0.4 effect size
- α = 0.05 (two-tailed)
- Intention-to-treat analysis

Ethical Considerations:
- IRB approval required
- Informed consent from all participants
- Data safety monitoring board
- Early stopping rules for safety or efficacy

Ready for IRB submission?"
```

**Educational Research:**
```
You: "Design an experiment to test teaching methods"

Experiment Design: "Educational experiment design.

Research Question: Does active learning improve student performance?

Independent Variable:
- Teaching method: Traditional lecture vs. Active learning

Dependent Variables:
- Primary: Final exam score (0-100)
- Secondary: Quiz scores throughout semester
- Secondary: Student satisfaction survey
- Secondary: Retention (pass/fail course)

Design:
- Type: Cluster randomized trial
- Clusters: Class sections (not individual students)
- Reason: Practical (can't randomly assign within section)
- N = 8 sections (4 traditional, 4 active learning)
- Students: ~240 total (~30 per section)

Randomization:
- Randomly assign sections to teaching method
- Balance: Instructor, time of day, subject matter
- Students: Blinded to hypothesis (don't know this is a study)

Intervention:
- Traditional: 50-min lectures, no student participation
- Active learning: 30-min lecture + 20-min group activities
- Duration: Full semester (15 weeks)

Threats to Internal Validity (and how controlled):
✅ Instructor effects: Same instructor teaches all sections
✅ Time of day: Sections scheduled at similar times
✅ Content: Same syllabus and materials for both methods
✅ Assessment: Identical exams across all sections
✅ Contamination: Different students in each section (no interaction)

Threats to External Validity:
- Population: One university, one subject
- Setting: In-person classes (not online)
- Instructor: Single instructor (may differ for others)
- Duration: One semester (may differ for longer courses)

Data Collection:
- Baseline: Prior GPA (covariate)
- Weekly: Quiz scores (learning trajectory)
- Final: Final exam score (primary outcome)
- Post-test: Student satisfaction survey

Statistical Analysis:
- Multilevel model (students nested within sections)
- Fixed effects: Teaching method, prior GPA
- Random effects: Section (to account for clustering)
- Effect size: Cohen's d

Sample Size:
- ICC (intraclass correlation): 0.1 (students within sections)
- Effective N: Adjusted for clustering
- Power: 80% to detect d = 0.5 effect size

Ready to launch experiment?"
```

### Best Practices

- Always include a control condition
- Randomize assignment when possible
- Power analysis before collecting data
- Pre-register your design when possible
- Measure baseline characteristics
- Plan for missing data and attrition
- Double-blind when feasible
- Document all procedures in detail
- Pilot test data collection instruments
- Get IRB/ethics approval for human subjects

### Common Mistakes to Avoid

- No control condition (can't establish causality)
- Selection bias (not random, self-selection)
- Confounding variables (not controlled)
- Small sample size (underpowered)
- Short duration (insufficient time for effect)
- Not measuring baseline (can't adjust)
- Poor operationalization (vague definitions)
- Contamination between groups (treatment leaks to control)

## Level 2: Advanced (Factorial and Within-Subjects Designs)

**Available after session 22**

At this level, I design complex experiments with multiple factors and repeated measures.

### Additional Capabilities

1. **Factorial Designs**
   - 2×2, 2×2×2, and higher factorial designs
   - Main effects and interaction effects
   - Fractional factorial designs (efficient screening)
   - Response surface methodology

2. **Within-Subjects Designs**
   - Repeated measures (each participant experiences all conditions)
   - Crossover designs (switch conditions halfway)
   - Matched pairs (participants matched on covariates)
   - Advantages: higher statistical power, fewer participants

3. **Mixed Designs**
   - Between-subjects factors (different participants)
   - Within-subjects factors (same participants)
   - Analyze with mixed ANOVA or multilevel models
   - Handle missing data appropriately

### Example: 2×2 Factorial Design

```
You: "Design a 2×2 experiment for my product"

Experiment Design: "2×2 factorial experimental design.

Research Question: How do price and features affect sales?

Factor A: Price Level
- Low ($10)
- High ($20)

Factor B: Feature Set
- Basic (3 features)
- Premium (7 features)

4 Conditions:
1. Low price + Basic: $10, 3 features
2. Low price + Premium: $10, 7 features
3. High price + Basic: $20, 3 features
4. High price + Premium: $20, 7 features

Hypotheses:
- Main effect A: Does price affect sales?
- Main effect B: Do features affect sales?
- Interaction A×B: Does effect of price depend on features?

Design:
- Type: Between-subjects factorial design
- N = 80 per cell (320 total)
- Random assignment to 1 of 4 conditions

Power Analysis:
- Effect size: f = 0.25 (medium)
- Power: 1-β = 0.80
- α = 0.05
- Required N: 80 per cell (320 total)
- Duration: 2 weeks

Expected Results (Simulated):
Cell 1 ($10, Basic): 40 sales/week
Cell 2 ($10, Premium): 55 sales/week (+38% from Cell 1)
Cell 3 ($20, Basic): 25 sales/week
Cell 4 ($20, Premium): 50 sales/week (+100% from Cell 3)

Main Effects:
- Price effect: Lower price increases sales
- Feature effect: Premium features increase sales

Interaction Effect:
- At low price: Premium increases sales by 38%
- At high price: Premium increases sales by 100%
- Interpretation: Premium features matter MORE at high price

Statistical Analysis:
- Two-way ANOVA (price × features)
- Effect sizes: η² for each effect
- Post-hoc tests: Pairwise comparisons

Threats to Validity (and how controlled):
✅ Selection bias: Random assignment to cells
✅ Order effects: Between-subjects (no order effects)
✅ Confounds: Same marketing, same placement
✅ Contamination: Customers only see one condition

External Validity:
- Population: Online shoppers (may differ from in-store)
- Setting: E-commerce website
- Duration: 2 weeks (may differ in holiday season)

Ready to launch?"
```

## Level 3: Expert (Complex Field Experiments and Quasi-Experimental Designs)

**Available after session 22**

At this level, I design complex field experiments, natural experiments, and handle real-world constraints.

### Additional Capabilities

1. **Field Experiments**
   - Real-world settings (not lab)
   - Naturalistic interventions
   - Long-term follow-up
   - Multiple outcomes

2. **Quasi-Experimental Designs**
   - Regression discontinuity (threshold-based assignment)
   - Difference-in-differences (before-after with control)
   - Instrumental variables (natural experiment)
   - Propensity score matching (observational data)

3. **Adaptive Designs**
   - Sequential analysis (peeking without p-hacking)
   - Adaptive randomization (adjust based on interim results)
   - Group sequential designs (stopping rules)
   - Bayesian adaptive designs

### Example: Difference-in-Differences Design

```
You: "Design a study to evaluate policy impact using DiD"

Experiment Design: "Difference-in-differences study design.

Research Question: Did the new policy reduce traffic accidents?

Policy: Speed limit reduced from 60 to 50 km/h in City A
Date: January 1, 2024
Control: City B (no speed limit change)

Difference-in-Differences (DiD) Design:
- Treatment group: City A (speed limit changed)
- Control group: City B (no change)
- Pre-period: July-December 2023 (6 months)
- Post-period: January-June 2024 (6 months)
- Total: 12 months of data

Data:
- Monthly traffic accidents in both cities
- Severity of accidents (minor, major, fatal)
- Traffic volume (control for usage)
- Weather conditions (control for confounds)

DiD Analysis:
- Pre-treatment: Compare City A vs. City B trends
- Post-treatment: Compare City A vs. City B outcomes
- DiD estimate: (Post_A - Pre_A) - (Post_B - Pre_B)

Assumptions (and how to test):
✅ Parallel trends: City A and City B had similar pre-trends
  - Test: Plot pre-treatment trends, see if they move together
✅ No simultaneous interventions: No other policies changed at same time
  - Verify: Check policy calendar for both cities
✅ Stable unit treatment value: Cities don't affect each other
  - Reasonable: Cities are far apart, independent

Statistical Model:
- Y_it = β₀ + β₁(Treatment_i) + β₂(Post_t) + β₃(Treatment_i×Post_t) + X_itγ + ε_it
- β₃ is the DiD estimate (policy effect)
- X_it: Covariates (traffic volume, weather)

Expected Results (Hypothetical):
City A accidents:
- Pre: 120/month average
- Post: 90/month average
- Change: -30 accidents/month

City B accidents:
- Pre: 100/month average
- Post: 105/month average
- Change: +5 accidents/month

DiD estimate:
- Raw DiD: (-30) - (+5) = -35 accidents/month
- Policy effect: 35 fewer accidents per month in City A
- Percent reduction: -29% (35/120)

Interpretation:
- Speed limit reduction caused 35 fewer accidents/month
- Confidence interval: [-25, -45] at 95%
- Statistically significant: p < 0.01

Threats to Validity (and how to mitigate):
✅ Differential trends: Cities had different pre-trends
  - Test: Event study (plot trends before and after)
✅ Spillover effects: City B drivers also reduced speed
  - Test: Check speed cameras in City B
✅ Seasonality: Accidents drop in winter regardless
  - Test: Include year-over-year comparison

Alternative Designs (if DiD assumptions fail):
- Synthetic control: Weighted average of control cities
- Regression discontinuity: Policy applied above threshold
- Interrupted time series: Only City A with multiple years of data

Ready to analyze policy impact?"
```

### Integration with Other Research Skills

- **hypothesis-testing**: Test experimental hypotheses
- **data-analysis**: Analyze experimental data
- **literature-review**: Review design methodologies
- **knowledge-graph**: Store experimental patterns

### Progression

As you use this skill, I learn:
- Your typical experimental designs
- Effect sizes you target
- Common threats you encounter
- How you balance internal and external validity
- Ethical considerations in your field

This knowledge improves my design recommendations and validity checks.