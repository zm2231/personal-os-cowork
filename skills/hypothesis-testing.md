---
name: hypothesis-testing
description: Design hypothesis tests, calculate statistical power, and draw valid conclusions
version: 1.0.0
metadata:
  hermes:
    tags: [research, statistics, methodology]
    related_skills: [data-analysis, experiment-design, research-methods]
    session_unlock: session-22
    tiers:
      - L1: Guided hypothesis testing with standard tests
      - L2: Power analysis and experimental design
      - L3: Bayesian inference + causal inference
---

# Hypothesis Testing

Designs hypothesis tests, calculates statistical power, performs appropriate statistical tests, and draws valid conclusions. Essential for scientific research, A/B testing, and data-driven decision making.

## When This Skill Activates

- You mention "hypothesis test", "statistical significance", or "p-value"
- You ask to "test if X affects Y"
- You're designing an experiment or A/B test
- You need to determine sample size or power
- You want to draw conclusions from data

## Level 1: Guided (Basic Hypothesis Testing)

**Available after session 22**

At this level, I help you design and execute standard hypothesis tests.

### What I Can Do

1. **Hypothesis Formulation**
   - Formulate null and alternative hypotheses
   - Determine one-tailed vs. two-tailed tests
   - Define significance level (α)
   - Specify test power (1-β)

2. **Test Selection**
   - Recommend appropriate tests based on data type
   - Check test assumptions
   - Handle small sample sizes
   - Choose parametric vs. non-parametric tests

3. **Test Execution**
   - Perform common tests: t-test, chi-square, ANOVA, correlation
   - Calculate p-values and confidence intervals
   - Compute effect sizes
   - Generate test reports

4. **Interpretation**
   - Interpret p-values correctly
   - Distinguish statistical vs. practical significance
   - Avoid common fallacies
   - Report results in APA format

### How It Works

**Designing a hypothesis test:**

```
You: "Test if our new website design increases conversion rate"

Hypothesis Testing: "I'll help you design a hypothesis test for your website redesign.

Step 1: Hypotheses
- Null (H₀): Conversion rate_new = Conversion rate_old (no difference)
- Alternative (H₁): Conversion rate_new > Conversion rate_old (improvement)

Step 2: Test Design
- Test type: One-tailed z-test for proportions
- Significance level: α = 0.05 (5% chance of false positive)
- Power: 1-β = 0.80 (80% chance of detecting real effect)

Step 3: Baseline Data
- Current conversion rate: 3.2%
- Daily visitors: 10,000
- Desired improvement: +20% relative (to 3.84%)

Step 4: Sample Size Calculation
- Minimum detectable effect: 0.64% (absolute)
- Required sample: N = 15,000 per group
- Test duration: 3 days at 5,000 daily visitors

Step 5: Test Execution Plan
- Split: 50% control, 50% treatment
- Randomization: Random assignment per visitor
- Data collection: Track conversions for both groups
- Analysis: Run z-test after N reached

Ready to launch the A/B test?
```

**Analyzing test results:**

```
You: "Here are the results: control 3.1% (475/15320), treatment 3.8% (582/15280)"

Hypothesis Testing: "A/B test results analysis complete.

Test Results:
- Control: 475/15,320 = 3.10% (±0.27% at 95% CI)
- Treatment: 582/15,280 = 3.81% (±0.30% at 95% CI)
- Difference: +0.71 percentage points

Statistical Test: Two-sample z-test for proportions
- z-statistic: 3.58
- p-value: 0.0002 (one-tailed)
- 95% CI for difference: [+0.31%, +1.11%]

Conclusion:
✅ Statistically significant at p < 0.001
✅ New design increases conversion by +0.71pp (23% relative improvement)
✅ 95% confident the true effect is between +0.31% and +1.11%

Practical Significance:
- Daily additional conversions: 71 (10,000 × 0.71%)
- Monthly additional revenue: $106,500 (at $50 per conversion)
- ROI: Positive if redesign cost < $106K/month

Effect Size:
- Cohen's h = 0.038 (small-to-medium)
- Odds ratio: 1.23 (23% higher odds)
- Number needed to treat (NNT): 141

Recommendation:
✅ Launch new design to 100% of users
✅ Monitor for any negative effects
✅ Run follow-up test on mobile vs. desktop

Report: [A/B test report.pdf]"
```

**Comparing multiple groups (ANOVA):**

```
You: "Test if customer satisfaction differs across 3 regions"

Hypothesis Testing: "One-way ANOVA test for regional differences.

Data:
- Region A: N=500, mean=4.2, SD=0.8
- Region B: N=450, mean=4.5, SD=0.7
- Region C: N=520, mean=4.3, SD=0.9

ANOVA Results:
- F-statistic: F(2, 1467) = 8.72
- p-value: p < 0.001
- Effect size: η² = 0.012 (small)

Conclusion:
✅ Statistically significant difference between regions (p < 0.001)
✅ Region B has highest satisfaction (4.5)
✅ Effect size is small (practical significance limited)

Post-hoc Tests (Tukey HSD):
- Region B vs A: p < 0.001 (significant difference)
- Region B vs C: p = 0.023 (significant difference)
- Region A vs C: p = 0.412 (no significant difference)

Interpretation:
1. Region B is significantly better than A and C
2. Regions A and C are not significantly different
3. Difference is real but small (0.2-0.3 points)

Recommendations:
1. Study Region B practices and share with others
2. Focus on improving Region C
3. Consider the small effect size when allocating resources"
```

### Your Test Library

Tests are stored in `personal-os/memory/hypothesis-tests.md`:

```markdown
# Hypothesis Test Library

## Website Redesign A/B Test
- Date: 2024-03-27
- Hypotheses: H₀: p_new = p_old, H₁: p_new > p_old
- Test: One-tailed z-test for proportions
- Result: p = 0.0002 (significant)
- Effect: +0.71pp conversion improvement
- Conclusion: Launch new design

## Regional Satisfaction ANOVA
- Date: 2024-03-26
- Hypotheses: H₀: μ_A = μ_B = μ_C, H₁: at least one different
- Test: One-way ANOVA
- Result: F(2,1467) = 8.72, p < 0.001
- Effect: η² = 0.012 (small)
- Conclusion: Region B significantly better
```

### Example Use Cases

**Product Testing:**
```
You: "Test if Feature X increases user engagement"

Hypothesis Testing: "Designing hypothesis test for Feature X.

Research Question: Does Feature X increase daily active users?

Hypotheses:
- H₀: DAU_with_X = DAU_without_X
- H₁: DAU_with_X > DAU_without_X

Test Design:
- Metric: Daily Active Users (DAU)
- Effect size: Target 10% increase
- Baseline: 5,000 DAU
- Expected: 5,500 DAU with Feature X

Sample Size (Power Analysis):
- α = 0.05, Power = 0.80
- Effect size d = 0.2 (small)
- Required N = 1,560 per group
- Test duration: 7 days

Randomization:
- Randomly assign users to treatment (Feature X) or control (no X)
- Users remain in their group for 7 days
- Track DAU for both groups daily

Success Criteria:
✅ Statistical significance: p < 0.05
✅ Practical significance: ≥10% DAU increase
✅ No negative side effects (engagement drop)

Ready to launch feature test?"
```

**Academic Research:**
```
You: "Test the hypothesis for my psychology paper"

Hypothesis Testing: "Analyzing your experimental results.

Study: Sleep and cognitive performance
- Participants: N=100
- Independent variable: Sleep duration (short vs. adequate)
- Dependent variable: Memory test score (0-100)

Hypotheses:
- H₀: μ_short = μ_adequate (no difference)
- H₁: μ_short < μ_adequate (less sleep = worse memory)

Data:
- Short sleep (N=50): mean=72.3, SD=8.5
- Adequate sleep (N=50): mean=78.6, SD=7.8

Statistical Test: Independent samples t-test
- t(98) = -3.86
- p-value: p < 0.001 (one-tailed)
- Effect size: d = 0.77 (medium-to-large)
- 95% CI: [-9.2, -3.4]

Conclusion:
✅ Statistically significant at p < 0.001
✅ Adequate sleep improves memory by 6.3 points (8.7% improvement)
✅ Effect size is medium-to-large (practically significant)

APA Format Reporting:
"Participants with adequate sleep (M=78.6, SD=7.8) scored significantly higher on the memory test than those with short sleep (M=72.3, SD=8.5), t(98) = -3.86, p < 0.001, d = 0.77, 95% CI [-9.2, -3.4]."

Ready for paper results section!"
```

### Best Practices

- Always pre-register hypotheses when possible
- Calculate sample size before collecting data
- Report effect sizes, not just p-values
- Use appropriate tests for your data
- Adjust for multiple comparisons
- Consider practical significance
- Document all analysis decisions
- Share code and data for reproducibility

### Common Mistakes to Avoid

- P-hacking (testing until you find significance)
- Ignoring effect sizes (only looking at p-values)
- Using wrong test for data type
- Not checking test assumptions
- Overinterpreting "marginally significant" (p = 0.06)
- Failing to adjust for multiple tests
- Confusing statistical vs. practical significance
- Stopping data collection early when you see significance

## Level 2: Advanced (Power Analysis and Experimental Design)

**Available after session 22**

At this level, I perform power calculations, design experiments, and handle complex testing scenarios.

### Additional Capabilities

1. **Power Analysis**
   - A priori power analysis (sample size before test)
   - Post-hoc power analysis (power after test)
   - Detect smallest meaningful effect
   - Optimize test design for power vs. cost

2. **Experimental Design**
   - Between-subjects vs. within-subjects designs
   - Factorial designs (2×2, 2×2×2, etc.)
   - Repeated measures ANOVA
   - Mixed-effects models

3. **Multiple Comparison Adjustments**
   - Bonferroni correction (conservative)
   - False Discovery Rate (FDR) (less conservative)
   - Holm-Bonferroni (step-down)
   - Benjamini-Hochberg (adaptive)

### Example: Advanced Experimental Design

```
You: "Design a 2×2 factorial experiment for my product"

Hypothesis Testing: "2×2 factorial experimental design.

Research Question: How do price and discount affect sales?

Factors:
- Factor A (Price): Low ($10) vs. High ($20)
- Factor B (Discount): No discount vs. 20% discount

4 Conditions:
1. Low price, no discount: $10
2. Low price, 20% off: $8
3. High price, no discount: $20
4. High price, 20% off: $16

Hypotheses:
- Main effect of price: Does price affect sales?
- Main effect of discount: Does discount affect sales?
- Interaction effect: Does the effect of discount depend on price?

Sample Size (Power Analysis):
- Effect size: f = 0.25 (medium)
- Power: 1-β = 0.80
- α = 0.05
- Required N: 128 per cell (512 total)
- Duration: 2 weeks at 250 customers/day

Design:
- Random assignment to 1 of 4 conditions
- Track sales and revenue for 2 weeks
- Analyze with two-way ANOVA

Predicted Results (Simulated):
Condition 1 ($10, no discount): 45 sales/day
Condition 2 ($10, 20% off): 55 sales/day (+22%)
Condition 3 ($20, no discount): 30 sales/day
Condition 4 ($20, 20% off): 45 sales/day (+50%)

Hypothesized Effects:
- Main effect (price): Lower price increases sales
- Main effect (discount): Discount increases sales
- Interaction: Discount has larger effect at high price

Statistical Power:
- Main effects: Power = 0.87 (good)
- Interaction: Power = 0.72 (acceptable)
- Overall: Test is adequately powered

Ready to launch?"
```

## Level 3: Expert (Bayesian Inference and Causal Inference)

**Available after session 22**

At this level, I perform Bayesian hypothesis testing, causal inference, and handle complex real-world scenarios.

### Additional Capabilities

1. **Bayesian Inference**
   - Bayesian hypothesis testing (Bayes factors)
   - Posterior distributions
   - Credible intervals vs. confidence intervals
   - Prior elicitation

2. **Causal Inference**
   - Randomized controlled trials (RCTs)
   - Propensity score matching
   - Instrumental variables
   - Difference-in-differences
   - Regression discontinuity

3. **Advanced Methods**
   - Sequential testing (peeking without p-hacking)
   - Adaptive designs
   - Non-inferiority testing
   - Equivalence testing

### Example: Bayesian A/B Testing

```
You: "Do a Bayesian analysis of my A/B test results"

Hypothesis Testing: "Bayesian analysis of A/B test results.

Data:
- Control: 475 conversions out of 15,320 (3.10%)
- Treatment: 582 conversions out of 15,280 (3.81%)

Bayesian Analysis (Beta-Binomial Model):
- Prior: Beta(1, 1) (uninformative uniform prior)
- Posterior Control: Beta(476, 14846)
- Posterior Treatment: Beta(583, 14699)

Posterior Distributions:
- Control rate: Mean=3.10%, 95% CI=[2.82%, 3.39%]
- Treatment rate: Mean=3.81%, 95% CI=[3.51%, 4.12%]

Posterior Difference (Treatment - Control):
- Mean difference: +0.71 percentage points
- 95% credible interval: [+0.31%, +1.11%]
- Probability treatment > control: 99.98%

Bayes Factor (H1: treatment > control vs H0: treatment = control):
- BF₁₀ = 234.5 (very strong evidence for H1)
- Interpretation: Data is 234.5 times more likely under H1 than H0

Expected Loss (if we choose wrong):
- If we choose treatment: 0.02% expected loss
- If we choose control: 0.71% expected loss
- Decision: Choose treatment (lower expected loss)

Bayesian vs. Frequentist:
- Frequentist p-value: p = 0.0002 (reject H0 at α=0.05)
- Bayesian BF: BF₁₀ = 234.5 (very strong evidence for H1)
- Both approaches agree: treatment is significantly better

Advantages of Bayesian:
✅ Intuitive interpretation (probability of H1)
✅ Incorporates prior knowledge
✅ No "stop rules" issue (can peek at data)
✅ Direct probability statements

Recommendation:
✅ Launch treatment (99.98% probability it's better)
✅ Continue monitoring for long-term effects
✅ Update beliefs as new data arrives"
```

### Integration with Other Research Skills

- **data-analysis**: Execute statistical tests
- **experiment-design**: Plan experimental data collection
- **literature-review**: Review testing methodologies
- **knowledge-graph**: Store testing patterns

### Progression

As you use this skill, I learn:
- Your typical effect sizes
- Power thresholds you use
- Preferred statistical tests
- How you report results
- Common testing scenarios in your field

This knowledge improves my test design recommendations and interpretation guidance.
