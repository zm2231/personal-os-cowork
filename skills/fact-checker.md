---
name: fact-checker
description: Verify claims, cross-check sources, and identify potential misinformation
version: 1.0.0
metadata:
  hermes:
    tags: [research, verification, critical-thinking]
    related_skills: [citation-manager, source-analyzer, knowledge-graph]
    session_unlock: session-6
    tiers:
      - L1: Basic fact verification with multiple source checking
      - L2: Claim decomposition + credibility scoring
      - L3: Automated monitoring + real-time fact verification
---

# Fact Checker

Verifies claims, cross-checks sources, and identifies potential misinformation. Helps you maintain accuracy in research, writing, and decision-making.

## When This Skill Activates

- You ask to "fact check", "verify", or "validate" a statement
- You question the accuracy of information
- You want to check if a claim is supported by evidence
- You mention "misinformation", "fake news", or "credibility"
- You're preparing content and want to ensure accuracy

## Level 1: Guided (Basic Verification)

**Available after session 6**

At this level, I help you verify claims by checking multiple sources and reporting findings.

### What I Can Do

1. **Claim Verification**
   - Identify the core claim to verify
   - Search for supporting and contradicting sources
   - Report on consensus among sources
   - Provide a confidence assessment

2. **Source Cross-Checking**
   - Check multiple sources for the same claim
   - Identify consensus vs. disagreement
   - Note the quality and credibility of each source
   - Highlight primary vs. secondary sources

3. **Basic Credibility Assessment**
   - Check if a source is peer-reviewed
   - Verify author credentials
   - Check publication date for recency
   - Identify potential biases

### How It Works

**Verifying a claim:**

```
You: "Fact check: LLMs can perfectly solve all coding problems"

Fact Checker: "Analyzing claim: "LLMs can perfectly solve all coding problems"

   🔍 Searching multiple sources...

   Sources found:
   • OpenAI (2024): "GPT-4 achieves 67% on HumanEval coding benchmark"
   • DeepMind (2023): "Code generation errors still common in complex systems"
   • arXiv survey (2024): "Average LLM code correctness: 45-65%"
   • GitHub Copilot study (2023): "Users report 40-50% code acceptance rate"

   ⚠️ CLAIM FALSE

   Evidence contradicts the claim:
   - LLMs achieve 45-67% accuracy on coding benchmarks (not "perfect")
   - Complex systems still require human review
   - Error rates remain significant in production use

   Consensus: False
   Source quality: High (peer-reviewed papers, industry studies)
   Confidence: High (10 sources, clear consensus)"
```

**Checking multiple sources:**

```
You: "Is remote work less productive than office work?"

Fact Checker: "Analyzing claim: "Remote work is less productive than office work"

   🔍 Cross-checking 12 sources...

   Sources supporting claim (3/12):
   • Harvard Business Review (2022): "Innovation slightly lower in fully remote"
   • Nature Human Behaviour (2021): "Collaborative creativity reduced"
   • Microsoft study (2021): "Remote work leads to more siloed teams"

   Sources contradicting claim (7/12):
   • Stanford University (2023): "13% productivity increase in remote work"
   • PwC survey (2023): "77% report equal or higher productivity"
   • Forbes (2022): "Productivity not tied to physical location"
   • [4 more sources]

   Mixed/inconclusive (2/12):
   • Gallup (2023): "Depends on role and team structure"
   • McKinsey (2022): "Hybrid model outperforms both extremes"

   ⚠️ CLAIM DEPENDS ON CONTEXT

   The claim is not universally true or false:
   - Individual tasks: Remote work often MORE productive
   - Collaborative innovation: Office work often more effective
   - Hybrid models show best overall results

   Recommendation: Consider specific role and team context"
```

## Level 2: Confident (Claim Decomposition)

**Available after session 10**

At this level, I break down complex claims, score credibility, and identify logical fallacies.

### What I Can Do (Additional)

1. **Claim Decomposition**
   - Break complex claims into sub-claims
   - Verify each component separately
   - Identify which parts are true/false/mixed
   - Reassemble findings into nuanced assessment

2. **Credibility Scoring**
   - Assign numerical credibility scores (0-100)
   - Factor in source quality, recency, peer review
   - Adjust for potential biases and conflicts
   - Provide confidence intervals

3. **Logical Fallacy Detection**
   - Identify common fallacies (straw man, ad hominem, etc.)
   - Check for correlation vs. causation errors
   - Detect confirmation bias and cherry-picking
   - Flag emotional manipulation tactics

4. **Contextual Fact-Checking**
   - Check if a claim is true in context
   - Verify statistics aren't misleading
   - Identify omitted relevant information
   - Assess temporal relevance (is the claim outdated?)

### How It Works

**Decomposing complex claims:**

```
You: "Fact check: AI will replace 50% of jobs by 2030"

Fact Checker: "Decomposing claim into testable sub-claims:

   🔍 Sub-claim 1: "AI will replace jobs"
   Status: Partially true
   Evidence: AI automation in customer service, data entry, basic coding
   Counter-evidence: New jobs created (AI ethics, prompt engineering)
   Verdict: AI replaces SOME jobs, not all

   🔍 Sub-claim 2: "50% replacement rate"
   Status: False
   Evidence: Most studies estimate 10-30% displacement
   Goldman Sachs (2023): "18% of jobs at high risk of automation"
   OECD (2023): "27% of jobs at high automation risk"
   Verdict: Overestimate; actual range 18-27%

   🔍 Sub-claim 3: "By 2030"
   Status: Uncertain
   Evidence: AI development is accelerating
   Counter-evidence: Implementation barriers, regulation, adoption lag
   Verdict: Timeline speculative; too early to predict

   ⚠️ CLAIM FALSE (overall)

   Breakdown:
   - AI replacing jobs: PARTIALLY TRUE (some displacement)
   - 50% rate: FALSE (actual 18-27% per major studies)
   - 2030 timeline: UNCERTAIN (speculative)

   Credibility Score: 25/100
   - Sub-claim accuracy: 1/3 correct
   - Source quality: High (Goldman Sachs, OECD, etc.)
   - Quantitative precision: Low (50% vs. 18-27%)

   Recommendation: Claim is alarmist and overstates both rate and certainty"
```

**Detecting logical fallacies:**

```
You: "Fact check: Experts say we need to ban AI research"

Fact Checker: "Analyzing claim for logical fallacies:

   🚨 FALLACY DETECTED: Appeal to Authority

   Issue: "Experts say" without identifying which experts
   - Are these AI research experts? Or AI ethics experts?
   - Is there consensus among experts? (No, significant disagreement)
   - Are there conflicting expert opinions? (Yes)

   🔍 Source Investigation:
   Quote source: "Geoffrey Hinton called for AI regulation"
   Context: Hinton supports regulation, NOT banning research
   Other experts: Yann LeCun, Andrew Ng oppose research bans
   Consensus: Regulation yes, research ban no

   ⚠️ CLAIM FALSE (misrepresents expert consensus)

   Logical issues:
   - Appeal to authority (unnamed experts)
   - Cherry-picking (only Hinton's opinion, not others')
   - False equivalency (regulation ≠ research ban)

   Recommendation: "Many AI experts support regulation but oppose banning research"

   Credibility Score: 15/100
   - Factual accuracy: Low (misrepresents position)
   - Logical structure: Flawed (multiple fallacies)
   - Source quality: High (but cherry-picked)"
```

## Level 3: Anticipatory (Automated Monitoring)

**Available after session 20**

At this level, I proactively monitor claims, verify in real-time, and track credibility over time.

### What I Can Do (Additional)

1. **Real-Time Verification**
   - As you write, I flag potentially inaccurate claims
   - Suggest sources or citations before you publish
   - Check statistics and data points against authoritative sources
   - Verify quotes and attributions

2. **Credibility Tracking Over Time**
   - Track how source credibility changes (e.g., retractions, corrections)
   - Monitor emerging consensus on controversial topics
   - Alert you when previously-verified claims are debunked
   - Build a trust database of reliable sources

3. **Automated Claim Detection**
   - Detect claims in your documents that need verification
   - Identify suspicious statistics or "too good to be true" claims
   - Flag correlations that might be coincidental
   - Spot potential propaganda or disinformation patterns

4. **Collaborative Fact-Checking**
   - Share fact-check results with your team
   - Build a shared knowledge base of verified claims
   - Track which claims your team relies on most
   - Update fact-checks as new information emerges

### How It Works

**Real-time verification:**

```
You: [writing] "AI systems are completely unbiased and objective"

Fact Checker: "⚠️ CLAIM FLAGGED FOR REVIEW

   Claim: "AI systems are completely unbiased and objective"
   Confidence: Low (this contradicts extensive research)

   Why flagged:
   - Multiple studies document AI bias in hiring, lending, criminal justice
   - "Completely" is an absolute term rarely accurate in complex systems
   - This is a common misconception

   Suggested revision:
   "AI systems can be designed to reduce bias, but require careful auditing
    to avoid amplifying existing societal biases"

   Sources to cite:
   - "Gender Shades" study (Buolamwini & Gebru, 2018)
   - NIST AI Risk Management Framework (2023)
   - EU AI Act bias mitigation requirements

   Would you like me to: (1) Add citations, (2) Revise the statement, (3) Keep as-is"
```

**Tracking credibility over time:**

```
Fact Checker: "📊 CREDIBILITY UPDATE

   Previously verified claim (from 2023-06-15):
   "mRNA vaccines are 95% effective against COVID-19"

   Status: CREDIBILITY CHANGED
   Original: True (clinical trial data)
   Current: Partially true (real-world data shows 70-90% efficacy vs. variants)

   Why changed:
   - New COVID variants emerged
   - Efficacy decreased over time (waning immunity)
   - Booster shots restored protection

   Action: Documents relying on this claim should be updated

   Documents affected:
   - [ ] COVID-Research-Project/section-2.md
   - [ ] Vaccine-Analysis-final.md

   Would you like me to: (1) Update all mentions, (2) Add context notes, (3) Schedule review"
```

## Integration With Other Skills

### Citation-Manager
- Fact-Checker verifies claims → Citation-Manager adds verified sources
- Citation-Manager provides sources → Fact-Checker evaluates credibility

### Source-Analyzer
- Source-Analyzer evaluates source quality → Fact-Checker weights credibility
- Fact-Checker flags low-credibility sources → Source-Analyzer analyzes why

### Knowledge-Graph
- Knowledge-Graph links related facts → Fact-Checker identifies patterns
- Fact-Checker verifies claims → Knowledge-Graph builds trust network

### Session-Summary
- Session-Summary includes verified claims → Knowledge Graph stores facts
- Fact-Checker flags unverified claims → Session-Summary notes uncertainty

## Best Practices

### For L1 (Basic Usage)
1. **Be specific**: Instead of "Is AI safe?", ask "Is LLM X safe for use case Y?"
2. **Consider context**: A claim true in one context may be false in another
3. **Check multiple sources**: Don't rely on a single source, even if authoritative
4. **Beware absolutes**: "Always", "never", "all", "none" are rarely accurate

### For L2 (Advanced Verification)
1. **Decompose complex claims**: Break down into testable sub-claims
2. **Quantify uncertainty**: Use confidence scores to express uncertainty
3. **Check for fallacies**: Logical errors can make false claims seem convincing
4. **Verify context**: Statistics can be technically true but misleading

### For L3 (Automated Monitoring)
1. **Review flagged claims**: Automated detection isn't perfect - review carefully
2. **Update as information changes**: Facts evolve; re-verify periodically
3. **Build a trust database**: Track which sources you rely on most
4. **Collaborate with your team**: Share fact-check results to avoid redundant work

## Common Mistakes to Avoid

### ❌ Don't
- Accept a single source as definitive
- Treat all sources as equally credible
- Ignore context or nuance in complex claims
- Overlook logical fallacies
- Forget that facts can change over time

### ✅ Do
- Check multiple independent sources
- Evaluate source quality and potential biases
- Decompose complex claims into components
- Use confidence scores to express uncertainty
- Re-verify claims periodically as new information emerges

## Troubleshooting

**"Sources disagree - which one is right?"**
- Look for consensus across multiple sources
- Consider source quality and recency
- Check if disagreement is about interpretation or facts
- Note that some topics genuinely lack consensus

**"Can't find any sources for this claim"**
- This might indicate the claim is novel or unverified
- Search for related claims or partial evidence
- Consider if the claim is falsifiable
- Flag as "unverified" rather than false

**"Fact-checking takes too long"**
- Prioritize high-impact claims
- Use L2 decomposition to focus on core components
- Build a trust database of verified claims for reuse
- Use L3 automated monitoring for ongoing work

## Example Workflows

### Research Workflow

```
You: "I'm writing a paper on quantum computing applications. Fact check my outline"

Fact Checker: "Reviewing outline for potentially unverifiable claims:

   Section 2: "Quantum computers are 1 billion times faster than classical"
   ⚠️ FLAGGED
   Issue: "1 billion times" is not universally true
   Reality: Depends on specific algorithm and problem
   Suggested: "Quantum computers can achieve exponential speedups for specific problems like factorization"

   Section 4: "Commercial quantum computing will be mainstream by 2025"
   ⚠️ FLAGGED
   Issue: Timeline speculation with little supporting evidence
   Expert consensus: 2030-2040 for mainstream adoption
   Suggested: "Industry experts predict 2030-2040 for mainstream quantum computing"

   Section 7: "Quantum encryption is unbreakable"
   ✅ VERIFIED (with caveat)
   Current status: Unbreakable with classical computers
   Future risk: Shor's algorithm with large quantum computers

   Review complete: 3 claims flagged, 1 verified with caveat"
```

### News Consumption Workflow

```
You: "I just read an article about climate change. Can you fact check the key claims?"

Fact Checker: "Analyzing article claims:

   Claim 1: "Global temperatures have risen 2°C since pre-industrial times"
   ❌ FALSE
   Actual: ~1.2°C rise since pre-industrial
   Source: NASA Climate, IPCC reports

   Claim 2: "2024 was the hottest year on record"
   ✅ TRUE
   Source: NOAA, NASA, Copernicus Climate Change Service

   Claim 3: "Carbon emissions have decreased by 20% since 2010"
   ❌ FALSE
   Actual: Emissions increased by ~12% since 2010
   Source: Global Carbon Project, IEA

   Overall accuracy: 1/3 claims correct (33%)
   Recommendation: This article contains significant factual errors. Consult primary sources."
```

## Measuring Progression

**Level up criteria:**
- **L1→L2**: Fact-check 25+ claims, decompose 10+ complex claims, identify 5+ fallacies
- **L2→L3**: Use fact-checking in 30+ sessions, track 15+ claims over time, flag 20+ claims in real-time

**Your current level:** Tracked in `personal-os/adaptation/skill-levels.md`
