---
name: peer-review
description: Conduct comprehensive peer reviews, provide constructive feedback, and evaluate manuscript quality
version: 1.0.0
metadata:
  hermes:
    tags: [research, evaluation, academic]
    related_skills: [academic-writing, literature-review, fact-checker]
    session_unlock: session-22
    tiers:
      - L1: Guided peer review with standard rubrics
      - L2: Advanced evaluation with in-depth critique
      - L3: Editorial decisions + revision strategies
---

# Peer Review

Conducts comprehensive peer reviews of academic manuscripts, provides constructive feedback, evaluates methodological rigor, and makes informed recommendations about publication decisions. Essential for maintaining scientific quality and improving research.

## When This Skill Activates

- You mention "peer review", "manuscript evaluation", or "review feedback"
- You need to assess research quality
- You're asked to review a paper for a journal or conference
- You want to evaluate methodological rigor
- You need to provide feedback to authors

## Level 1: Guided (Basic Peer Review)

**Available after session 22**

At this level, I help you conduct structured peer reviews using standard evaluation criteria.

### What I Can Do

1. **Manuscript Assessment**
   - Evaluate overall contribution and significance
   - Check methodological appropriateness
   - Assess data quality and analysis
   - Verify claims are supported by evidence

2. **Structured Feedback**
   - Identify strengths and weaknesses
   - Provide specific, actionable comments
   - Distinguish major vs. minor issues
   - Maintain constructive tone

3. **Evaluation Criteria**
   - Originality and significance
   - Methodological rigor
   - Clarity and presentation
   - Literature review comprehensiveness
   - Appropriate conclusions

4. **Recommendation**
   - Accept, minor revisions, major revisions, or reject
   - Justify recommendation with evidence
   - Suggest priority of revisions

### How It Works

**Conducting a peer review:**

```
You: "Help me review this paper on machine learning for climate prediction"

Peer Review: "I'll help you conduct a comprehensive peer review.

Manuscript: "Machine Learning for Climate Prediction: A Deep Learning Approach"

Step 1: Overall Assessment

Title and Abstract:
✓ Clear, concise title
✓ Abstract summarizes key findings
⚠ Could emphasize novelty more strongly

Introduction:
✓ Well-structured (broad context → gap → objectives)
✓ Good literature review (recent references, 2020-2024)
⚠ Research gap could be more specific
✓ Hypotheses are stated clearly

Methods:
✓ Deep learning architecture is well-described
✓ Training procedures detailed
✓ Evaluation metrics appropriate (RMSE, R², MAE)
⚠ Hyperparameter tuning section lacks details
⚠ No mention of computational resources

Results:
✓ Clear presentation of findings
✓ Good use of figures and tables
⚠ Limited statistical testing (no confidence intervals)
⚠ Comparison with baselines insufficient (only 2 baselines)
⚠ No error bars on performance graphs

Discussion:
✓ Results are interpreted
✓ Limitations acknowledged (briefly)
⚠ Could compare more deeply with literature
⚠ Practical implications underexplored

Conclusion:
✓ Summarizes main findings
✓ Suggests future directions
⚠ Slightly overstates contributions ("state-of-the-art")

Step 2: Major Issues (Required for Acceptance)

1. [Major] Hyperparameter Tuning: The manuscript describes training a deep learning model but provides insufficient details on hyperparameter tuning (learning rate schedule, batch size, dropout rates, etc.). Without this information, results are not reproducible. Provide a table of all hyperparameters and their values, and describe the search strategy used (grid search, random search, Bayesian optimization).

2. [Major] Baseline Comparisons: Only two baselines are compared (linear regression and a simple RNN). To claim "state-of-the-art" performance, additional comparisons are needed with recent deep learning approaches for climate prediction (e.g., LSTM variants, Transformer-based models, Graph Neural Networks). At minimum, compare with 2-3 recent papers from 2023-2024.

3. [Major] Statistical Rigor: Performance metrics are reported as point estimates without confidence intervals or statistical significance testing. Provide 95% confidence intervals for all metrics, and conduct statistical tests to determine if the proposed method significantly outperforms baselines.

Step 3: Minor Issues (Improvements but not required)

1. [Minor] Computational Resources: No mention of GPU model, training time, or computational budget. Add a section describing hardware used (e.g., "Training was conducted on 4×NVIDIA A100 GPUs, taking 48 hours for the largest model").

2. [Minor] Figure Quality: Figure 3 (performance over training epochs) is difficult to read. Use a logarithmic y-axis to better visualize loss convergence, and add error bars to show variability across training runs.

3. [Minor] Reference Formatting: References [12] and [15] have inconsistent capitalization. Ensure all references follow journal format consistently.

4. [Minor] Typographical Errors:
   - Page 5, line 12: "independant" should be "independent"
   - Page 8, line 7: Missing comma before "however"

Step 4: Strengths (What the paper does well)

1. Novel application of deep learning to climate prediction
2. Large-scale dataset (30 years of climate data)
3. Well-structured presentation
4. Clear, reproducible code (supplementary materials)

Step 5: Evaluation and Recommendation

Contribution: Moderate. The paper applies deep learning to climate prediction, which is not entirely novel, but the specific architecture and dataset are new.

Methodological Rigor: Moderate. Deep learning methods are appropriate, but hyperparameter details and statistical testing are lacking.

Clarity and Presentation: Good. The paper is well-written and easy to follow, though figures could be improved.

Recommendation: Major Revisions

Justification: The paper has a solid foundation and makes a meaningful contribution to the field, but several major issues need to be addressed before publication. Specifically, hyperparameter details, additional baseline comparisons, and statistical testing are essential for establishing the reliability and significance of the reported results. Once these issues are addressed, the paper would be suitable for publication.

Priority:
1. Address all 3 major issues (required)
2. Address minor issues 1-3 (recommended)
3. Proofread for typos (minor)

Estimated Time for Revision: 3-4 weeks

Peer Review Report:

To the Editor and Authors,

I have reviewed the manuscript "Machine Learning for Climate Prediction: A Deep Learning Approach." The paper presents a deep learning architecture for predicting climate variables and evaluates it on a 30-year climate dataset.

Overall Impression:
The manuscript addresses an important problem (climate prediction) and makes a moderate contribution through the introduction of a novel deep learning architecture. The paper is well-written and structured, but several methodological issues need to be addressed before publication can be recommended.

Major Concerns:

[Detailed description of the 3 major issues from above]

Minor Concerns:

[Detailed description of the 4 minor issues from above]

Strengths:

[Summary of strengths]

Recommendation: Major Revisions

The authors should address all major concerns before reconsideration. The minor concerns are recommended but not required for acceptance. I would be happy to review a revised version of this manuscript.

Sincerely,
[Your Name]
[Your Affiliation]

Ready to submit peer review!"
```

### Your Review Library

Reviews are stored in `personal-os/memory/peer-reviews.md`:

```markdown
# Peer Review Library

## Climate Prediction Paper (2024-03-27)
- Title: "Machine Learning for Climate Prediction: A Deep Learning Approach"
- Journal: Journal of Climate Science
- Recommendation: Major Revisions
- Major Issues: 3 (hyperparameters, baselines, statistics)
- Minor Issues: 4 (computational resources, figures, references, typos)
```

### Example Use Cases

**Conference Review:**
```
You: "Review this NeurIPS conference submission"

Peer Review: "NeurIPS conference peer review.

Paper: "Attention Mechanisms for Long-Range Dependencies in Vision Transformers"

Review Criteria (NeurIPS):
1. Technical Quality (30%)
2. Novelty (30%)
3. Significance (20%)
4. Clarity (20%)

Assessment:

Technical Quality: 7/10
✓ Novel attention mechanism proposed
✓ Comprehensive experiments (ImageNet, COCO, ADE20K)
✓ Ablation studies show component contributions
⚠ Limited computational efficiency analysis
⚠ No statistical significance testing

Novelty: 6/10
⚠ Combines existing ideas (self-attention + spatial pooling)
✓ Novel pooling strategy (hierarchical attention)
⚠ Incremental improvement over recent work (2-3% gain)
⚠ No theoretical analysis or convergence proofs

Significance: 6/10
✓ Practical improvement on vision tasks
✓ Reduces computational cost (30% faster)
⚠ Limited impact on state-of-the-art (small gains)
⚠ Not a paradigm shift

Clarity: 8/10
✓ Clear writing and structure
✓ Well-designed figures
⚠ Some mathematical notation could be clearer
✓ Good supplementary materials

Overall Score: 6.75/10

Specific Comments:

[Detailed technical feedback on the proposed mechanism]

[Feedback on experiments and ablations]

[Suggestions for clarity improvements]

Strengths:
1. Well-motivated problem (attention efficiency in vision transformers)
2. Comprehensive experimental evaluation
3. Clear presentation

Weaknesses:
1. Incremental novelty (combines existing ideas)
2. Limited efficiency analysis (memory, FLOPs)
3. Small performance gains (2-3%)

Recommendation: Borderline (6-7 range)

Verdict: The paper makes a solid but incremental contribution. The technical quality is good, experiments are comprehensive, and the method is well-motivated. However, the novelty is limited (combination of existing ideas with small performance gains), and the significance is moderate (practical but not groundbreaking). The paper falls in the "Borderline" category. I recommend acceptance if the program committee feels the topic fits the conference theme, but otherwise would lean toward rejection in favor of more novel work.

Confidence: High (I am very familiar with the field)

Would you like me to elaborate on any specific aspect?"
```

### Best Practices

- Be constructive and specific (provide actionable feedback)
- Distinguish major vs. minor issues clearly
- Maintain a respectful and supportive tone
- Justify all criticisms with evidence
- Suggest ways to fix problems (not just point them out)
- Check for reproducibility (methods should be clear)
- Evaluate significance (not just novelty)
- Be fair (don't penalize for minor issues if contribution is strong)
- Avoid personal attacks or condescending language

### Common Mistakes to Avoid

- Vague feedback (not specific enough to act on)
- Being too harsh or dismissive
- Focusing on style over substance
- Not reading the paper carefully enough
- Missing major issues while nitpicking minor ones
- Recommending rejection for fixable problems
- Not justifying your recommendation
- Conflicts of interest (review when you have bias)

## Level 2: Advanced (Advanced Evaluation with In-Depth Critique)

**Available after session 22**

At this level, I provide in-depth methodological critiques, assess statistical rigor, and evaluate novelty at a deeper level.

### Additional Capabilities

1. **Methodological Deep-Dive**
   - Assess appropriateness of statistical tests
   - Check for p-hacking and data dredging
   - Evaluate power analysis and sample size
   - Review experimental design for validity threats

2. **Statistical Assessment**
   - Check for multiple comparison corrections
   - Verify effect size reporting
   - Assess normality assumptions
   - Identify selective reporting

3. **Novelty Evaluation**
   - Systematic literature comparison
   - Identify truly novel contributions
   - Distinguish incremental vs. groundbreaking
   - Suggest novelty-enhancing directions

### Example: In-Depth Methodological Critique

```
You: "Do a deep methodological review of this psychology paper"

Peer Review: "In-depth methodological critique.

Paper: "The Effect of Social Media on Adolescent Mental Health"

Methodological Analysis:

1. Research Design:
- Design: Cross-sectional survey
- Sample: N=500 adolescents, ages 13-18
- Sampling: Convenience sample from schools

Issues:
⚠ Cross-sectional design cannot establish causality
⚠ Convenience sample limits generalizability
⚠ No comparison group
⚠ Self-report measures subject to biases

Recommendations:
- Longitudinal design to establish temporal precedence
- Random sampling for better generalizability
- Include control group (non-social-media users)
- Use multiple measures (self-report + objective)

2. Statistical Analysis:
- Tests: Correlation, multiple regression
- Effect sizes: Reported (Cohen's d)
- Multiple comparisons: Not corrected

Issues:
⚠ Multiple comparisons (10+ variables) without correction
⚠ Family-wise error rate inflated (~40% chance of Type I error)
⚠ No power analysis (sample size justification missing)
⚠ Assumptions not checked (normality, homoscedasticity)

Recommendations:
- Apply Bonferroni or FDR correction for multiple tests
- Report both uncorrected and corrected p-values
- Conduct a priori power analysis
- Verify assumptions before parametric tests

3. Measurement:
- Social media use: Self-reported hours/day
- Mental health: Depression and Anxiety Scale (DASS-21)

Issues:
⚠ Social media measure lacks specificity (platform, content, active vs. passive)
⚠ No validation of self-reported usage vs. actual usage
⚠ DASS-21 is a screening tool, not diagnostic
⚠ No control for confounding variables (socioeconomic status, family environment)

Recommendations:
- Use platform-specific usage data (screen time apps)
- Include content analysis (type of social media use)
- Use diagnostic interviews for mental health
- Measure and control for confounds

4. Validity Assessment:

Internal Validity: Weak
- Cannot establish causality (cross-sectional)
- Confounding variables not controlled
- Selection bias (convenience sample)
- Reverse causality possible (mental health affects social media use, not vice versa)

External Validity: Moderate
- Limited to adolescents in this region
- School-based sample (may not generalize to homeschooled)
- Time-limited (no seasonal or long-term effects)

Construct Validity: Moderate
- Social media measure is broad and vague
- Mental health measures are screening, not diagnostic
- No triangulation of measures

Statistical Conclusion Validity: Weak
- Multiple comparisons inflated Type I error
- No power analysis
- Assumptions unchecked

Overall Methodological Quality: 5/10

Strengths:
1. Large sample (N=500)
2. Standardized mental health measure (DASS-21)
3. Effect sizes reported

Weaknesses:
1. Cross-sectional design (cannot establish causality)
2. Multiple comparisons uncorrected
3. No power analysis
4. Poor construct validity for social media use
5. Confounding variables not controlled

Critical Issues:
1. [Critical] The main claim ("social media causes depression") is not supported by the cross-sectional design. The authors should temper claims to "associated with" rather than "causes."

2. [Critical] Multiple comparisons were conducted without correction, inflating the Type I error rate to ~40%. Apply Bonferroni correction (α = 0.05/10 = 0.005) or FDR correction.

Recommendation: Major Revisions or Reject

If Major Revisions:
- Temporarily causal claims to association
- Correct for multiple comparisons
- Conduct power analysis
- Address internal validity threats

If Reject:
- Consider resubmission with a longitudinal design

Detailed methodological feedback included in review report.

Ready for peer review submission!"
```

## Level 3: Expert (Editorial Decisions and Revision Strategies)

**Available after session 22**

At this level, I make editorial decisions, provide revision strategies, and help navigate the publication process.

### Additional Capabilities

1. **Editorial Decision-Making**
   - Accept, reject, or revise recommendations
   - Priority ranking of manuscripts
   - Desk rejection decisions
   - Reconsideration of rejected papers

2. **Revision Strategies**
   - Prioritize revisions based on impact
   - Suggest alternative approaches
   - Help authors respond to reviews
   - Evaluate revised manuscripts

3. **Publication Navigation**
   - Target journal selection
   - Resubmission strategies after rejection
   - Handling controversial or high-profile submissions
   - Ethical considerations (plagiarism, dual publication)

### Integration with Other Research Skills

- **academic-writing**: Help authors revise manuscripts
- **literature-review**: Assess novelty and contribution
- **fact-checker**: Verify claims and references
- **hypothesis-testing**: Evaluate statistical rigor

### Progression

As you use this skill, I learn:
- Your typical review criteria and standards
- Common issues you encounter
- How you balance constructive and critical feedback
- Your editorial decision-making process
- Revision strategies that work for authors

This knowledge improves my review quality and decision-making.
