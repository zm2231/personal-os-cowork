---
name: source-analyzer
description: "Evaluate source credibility, assess bias, and build trust profiles for information sources"
---

# Source Analyzer

Evaluates information sources for credibility, detects bias, and builds trust profiles. Helps you determine which sources to rely on and which to approach with skepticism.

## When This Skill Activates

- You ask to evaluate a source's credibility
- You want to compare multiple sources on the same topic
- You're investigating potential bias or misinformation
- You ask "How reliable is this source?"
- You're deciding which sources to cite in research

## Level 1: Guided (Basic Credibility Assessment)

**Available after session 6**

At this level, I evaluate sources based on domain, author credentials, and publication quality.

### What I Can Do

1. **Source Credibility Evaluation**
   - Check domain reputation (.edu, .gov, .org, .com)
   - Verify author credentials and expertise
   - Assess publication quality (peer-reviewed, editorial standards)
   - Identify publication date and recency

2. **Basic Bias Detection**
   - Identify potential conflicts of interest
   - Check for organizational affiliations
   - Note funding sources when available
   - Flag opinion vs. factual content

3. **Source Comparison**
   - Compare multiple sources on the same topic
   - Identify consensus vs. disagreement
   - Note differences in perspective or framing
   - Highlight which sources are more authoritative

### How It Works

**Evaluating a single source:**

```
You: "How credible is this source: https://www.techcrunch.com/ai-breakthrough"

Source Analyzer: "Analyzing source credibility:

   🔍 Domain Analysis
   Domain: techcrunch.com
   Type: Commercial tech news site
   Reputation: Generally reliable for tech news, but not academic
   Ownership: Verizon Media (Yahoo)

   📝 Content Analysis
   Type: News article
   Peer-reviewed: No
   Editorial standards: Yes (tech journalism standards)
   Date: March 15, 2024 (recent)

   👥 Author Analysis
   Author: TechCrunch staff
   Expertise: Tech journalism
   Credentials: Not specified (staff byline)

   💰 Bias Indicators
   Funding: Advertising-based
   Conflicts: Potential (TechCrunch covers companies that advertise)
   Opinion: Factual reporting, not op-ed

   ⚠️ CREDIBILITY: MODERATE

   Strengths:
   - Reputable tech news outlet
   - Editorial standards
   - Recent content

   Weaknesses:
   - Not peer-reviewed
   - Commercial incentives (advertising)
   - No author expertise specified

   Recommendation: Good for tech news, but verify claims with academic or primary sources for critical decisions"
```

**Comparing multiple sources:**

```
You: "Compare these sources on AI safety:
1. OpenAI blog
2. MIT Technology Review
3. arXiv paper
4. Medium article"

Source Analyzer: "Comparing 4 sources on AI safety:

   📊 Source Credibility Rankings

   1. arXiv paper: HIGH (peer-reviewed, authors specified)
   2. MIT Technology Review: HIGH (respected journalism, editors)
   3. OpenAI blog: MODERATE (company blog, potential bias)
   4. Medium article: LOW to MODERATE (no editorial review)

   🔍 Key Differences

   arXiv paper:
   • Expertise: Academic researchers
   • Peer review: Yes
   • Potential bias: Low (institutional biases possible)
   • Best for: Technical details, methodology

   MIT Technology Review:
   • Expertise: Science journalists
   • Editorial review: Yes
   • Potential bias: Low
   • Best for: Accessible explanation, context

   OpenAI blog:
   • Expertise: OpenAI researchers
   • Peer review: No (internal review)
   • Potential bias: HIGH (company perspective)
   • Best for: Company announcements, official positions

   Medium article:
   • Expertise: Unknown (no author specified)
   • Peer review: No
   • Potential bias: Unknown
   • Best for: Initial exploration, not citations

   💡 Recommendation
   Priority: arXiv → MIT Review → OpenAI blog → Medium
   Cite: arXiv and MIT Review for academic work
   Verify: Cross-check OpenAI blog claims with independent sources"
```

## Level 2: Confident (Bias Detection + Deep Analysis)

**Available after session 10**

At this level, I detect subtle biases, analyze framing, and build comprehensive source profiles.

### What I Can Do (Additional)

1. **Advanced Bias Detection**
   - Identify linguistic bias (emotional language, loaded terms)
   - Detect selection bias (what's included vs. omitted)
   - Analyze framing and perspective
   - Identify ideological or political alignment

2. **Source Profiling**
   - Build detailed profiles for sources you use frequently
   - Track historical accuracy and reliability
   - Note recurring patterns of bias or error
   - Identify domains where the source is strong/weak

3. **Framing Analysis**
   - Analyze how the same story is framed differently
   - Identify what perspectives are included/excluded
   - Detect agenda-setting or narrative control
   - Compare across multiple coverage of same event

4. **Trust Network Mapping**
   - Link sources that reference each other
   - Identify echo chambers and confirmation bias
   - Find independent sources not in the same network
   - Detect coordinated disinformation patterns

### How It Works

**Advanced bias detection:**

```
You: "Analyze this article for bias: [paste article about climate policy]"

Source Analyzer: "Deep bias analysis:

   📄 Linguistic Bias
   • Emotional language: "Catastrophic", "existential threat", "disaster"
     (Used 12 times - indicates emotional framing)
   • Loaded terms: "Climate deniers", "crisis", "emergency"
     (These terms signal ideological alignment)

   🔍 Selection Bias
   • Included: Pro-regulation experts, environmental NGO quotes
   • Excluded: Industry perspectives, cost-benefit analysis
   • Missing: Economic impact estimates, implementation feasibility

   🎯 Framing Analysis
   Narrative: Urgent action required immediately
   Missing context: Debate over policy approaches, timeline
   Perspective: Single-sided (no opposing views presented)

   💰 Potential Conflicts
   Funding: Article funded by environmental foundation (disclosed)
   Author: Former advisor to EPA (background not mentioned)
   Publication: Environmental magazine (ideological alignment likely)

   ⚠️ BIAS ASSESSMENT: MODERATE to HIGH

   Type of bias:
   • Selection bias (one-sided perspective)
   • Emotional framing (exaggerated language)
   • Ideological alignment (pro-regulation stance)

   Not necessarily dishonest, but:
   • Presents one perspective as the only perspective
   • Uses emotional language to persuade
   • Omits valid counterarguments

   Recommendation: Seek balanced coverage from sources with diverse perspectives"
```

**Source profiling:**

```
You: "Build a profile for this news source I read frequently"

Source Analyzer: "Building trust profile:

   📊 SOURCE PROFILE: The Verge

   Domain: theverge.com
   Type: Technology news and culture
   Founded: 2011

   📈 Reliability Tracking
   Articles analyzed: 47
   Corrections issued: 2
   Major retractions: 0
   Accuracy rate: 96%

   🎯 Domain Strengths
   • Consumer technology (laptops, phones): VERY STRONG
   • AI research: STRONG
   • Gaming: STRONG
   • Policy and regulation: MODERATE
   • Science research: WEAK (not a focus)

   ⚠️ Bias Patterns
   • Pro-consumer stance: Consistently advocates for user rights
   • Tech-optimism bias: Generally positive about technology progress
   • Apple/Samsung bias: More coverage than brands with similar market share
   • Political bias: Slightly liberal (US context), but not extreme

   📝 Editorial Standards
   • Fact-checking: Yes (internal fact-checkers)
   • Corrections: Yes (publicly issued corrections page)
   • Source attribution: Generally good
   • Opinion vs. news: Clearly labeled

   💰 Funding Transparency
   • Ownership: Vox Media
   • Funding: Advertising + subscription
   • Conflicts: Potential (covers companies that advertise)

   ⚡ CREDIBILITY ASSESSMENT: HIGH (with caveats)

   Use for:
   ✅ Consumer tech news and reviews
   ✅ AI industry developments
   ✅ Gaming industry news

   Verify elsewhere for:
   ⚠️ Policy and regulation (add expert sources)
   ⚠️ Academic research (cite primary sources)
   ⚠️ Controversial claims (cross-check with independent sources)

   Trust Score: 8.5/10
   - Domain expertise: 9/10
   - Bias management: 7/10
   - Editorial standards: 9/10
   - Transparency: 8/10"
```

## Level 3: Anticipatory (Trust Scoring + Automated Monitoring)

**Available after session 20**

At this level, I score sources automatically, monitor for changes, and build trust networks.

### What I Can Do (Additional)

1. **Automated Trust Scoring**
   - Assign numerical trust scores (0-100) to sources
   - Update scores based on ongoing accuracy tracking
   - Flag sources whose trust score declines
   - Recommend sources for specific domains based on trust

2. **Source Monitoring**
   - Monitor sources you rely on for credibility changes
   - Alert when sources publish corrections or retractions
   - Track ownership or editorial changes
   - Detect shifts in bias or accuracy over time

3. **Trust Network Visualization**
   - Map which sources reference and validate each other
   - Identify independent sources outside echo chambers
   - Find consensus clusters and disagreement hotspots
   - Detect coordinated disinformation networks

4. **Predictive Credibility**
   - Predict source reliability based on historical patterns
   - Identify emerging sources with high potential
   - Flag sources that may be declining in quality
   - Suggest diversification if over-relying on few sources

### How It Works

**Automated trust scoring:**

```
You: "Show me my top sources and their trust scores"

Source Analyzer: "📊 Your Trust Network (top 20 sources)

   🥇 Tier 1: Very Trusted (90-100)
   1. Nature (journal) - Trust Score: 98
   2. Science (journal) - Trust Score: 97
   3. arXiv (preprint) - Trust Score: 95
   4. MIT Technology Review - Trust Score: 94

   🥈 Tier 2: Trusted (75-89)
   5. IEEE Spectrum - Trust Score: 88
   6. Wired Magazine - Trust Score: 86
   7. The Economist - Trust Score: 84
   8. New York Times (science) - Trust Score: 82

   🥉 Tier 3: Moderately Trusted (60-74)
   9. TechCrunch - Trust Score: 74
   10. The Verge - Trust Score: 71
   11. Vice (Motherboard) - Trust Score: 68
   12. Medium (curated) - Trust Score: 65

   ⚠️ Declining Trust
   13. Buzzfeed Science - Trust Score: 58 ⬇️ (was 72)
      Reason: 3 corrections in past month, declining quality

   🆕 Emerging Sources
   14. AI Alignment Forum - Trust Score: 85 🆕
      Strong domain expertise, no accuracy issues yet

   💡 Diversification Alert
   You rely heavily on Tier 1-2 academic sources (60% of citations)
   Recommendation: Add more industry perspectives for balanced coverage"
```

**Monitoring source changes:**

```
Source Analyzer: "⚠️ SOURCE CREDIBILITY ALERT

   Source: Science Daily (news aggregator)
   Previous trust score: 82
   Current trust score: 76 ⬇️ (-6 points)

   Why declined:
   - 4 corrections issued in past week
   - 2 articles retracted due to misquoting researchers
   - Editorial changes: New editor with less experience
   - Increased clickbait headlines detected

   Impact on your work:
   • You have 5 citations to Science Daily
   • Affected documents:
     - [ ] AI-Research-Project/paper.md (2 citations)
     - [ ] Climate-Analysis/section-3.md (3 citations)

   Recommendations:
   1. Verify Science Daily claims with primary sources
   2. Consider replacing citations if critical to your work
   3. Monitor further changes - may improve or continue declining

   Would you like me to:
   (1) Find alternative sources for the affected citations
   (2) Verify the 5 claims against primary sources
   (3) Continue monitoring but take no action"
```

## Integration With Other Skills

### Fact-Checker
- Source-Analyzer evaluates credibility → Fact-Checker weights sources
- Fact-Checker identifies false claims → Source-Analyzer updates trust score

### Citation-Manager
- Citation-Manager tracks sources → Source-Analyzer profiles them
- Source-Analyzer flags low-credibility sources → Citation-Manager marks them

### Knowledge-Graph
- Knowledge-Graph links sources → Source-Analyzer maps trust networks
- Source-Analyzer identifies independent sources → Knowledge-Graph adds to graph

### Session-Summary
- Session-Summary lists sources → Source-Analyzer evaluates them
- Source-Analyzer trusts sources → Session-Summary weights conclusions

## Best Practices

### For L1 (Basic Usage)
1. **Check domain reputation**: .edu and .gov are generally more credible than .com
2. **Verify author expertise**: Does the author have relevant credentials?
3. **Check recency**: Is the source up to date? (Some fields change rapidly)
4. **Consider publication type**: Peer-reviewed > journalism > blogs

### For L2 (Advanced Analysis)
1. **Detect selection bias**: What's included vs. what's omitted?
2. **Watch for emotional language**: Emotional framing often indicates bias
3. **Identify conflicts**: Funding, ownership, and political affiliations matter
4. **Compare across sources**: Consensus across diverse sources increases confidence

### For L3 (Automated Monitoring)
1. **Monitor trust scores**: Declining scores indicate quality issues
2. **Diversify sources**: Don't over-rely on a few trusted sources
3. **Build trust networks**: Map which sources validate each other
4. **Re-evaluate periodically**: Source credibility can change over time

## Common Mistakes to Avoid

### ❌ Don't
- Assume all .com sources are unreliable
- Treat peer review as perfect (corrections and retractions happen)
- Ignore bias because "all sources are biased"
- Over-rely on a single high-trust source
- Forget to update trust profiles as sources change

### ✅ Do
- Evaluate each source based on domain expertise
- Check for corrections and retractions
- Identify bias and account for it
- Build a diverse trust network
- Monitor source quality over time

## Troubleshooting

**"How do I decide between two conflicting sources?"**
- Check which has higher trust scores
- Look for consensus across multiple independent sources
- Consider domain expertise in the specific topic
- Check for recency and corrections

**"A high-trust source says something that seems wrong"**
- Check if there's been a correction or retraction
- Look for other high-trust sources that confirm or contradict
- Consider if the source is outside its domain expertise
- Flag for further investigation rather than assuming error

**"My trust scores are declining across many sources"**
- Check if standards have become more stringent
- Consider if sources in this field are generally declining
- Re-evaluate whether your standards are appropriate
- Look for new, emerging sources with high quality

## Example Workflows

### Research Workflow

```
You: "I'm researching the impact of AI on education. Help me find the best sources"

Source Analyzer: "Based on your trust network and domain expertise:

   🎯 Recommended Sources (AI in Education)

   Tier 1 (Primary Sources - Academic)
   1. Journal of Educational Computing Research
   2. Computers & Education
   3. International Journal of Artificial Intelligence in Education

   Tier 2 (Secondary Sources - Industry Reports)
   1. UNESCO AI in Education reports
   2. OECD Education Working Papers
   3. Stanford HAI AI Education Index

   Tier 3 (Tertiary Sources - Journalism)
   1. EdSurge (specialized education tech news)
   2. Inside Higher Ed
   3. Chronicle of Higher Education

   ⚠️ Avoid or Verify
   • General tech news (not domain-specific)
   • Company blogs (potential bias)
   • Unvetted Medium posts

   📊 Source Distribution Recommendation
   For academic work: 60% Tier 1, 30% Tier 2, 10% Tier 3
   For industry report: 30% Tier 1, 50% Tier 2, 20% Tier 3
   For journalism: 10% Tier 1, 30% Tier 2, 60% Tier 3

   Your current distribution: 40% Tier 1, 25% Tier 2, 35% Tier 3
   Recommendation: Increase Tier 1 and Tier 2 sources"
```

## Measuring Progression

**Level up criteria:**
- **L1→L2**: Analyze 30+ sources, detect 15+ biases, build 10+ source profiles
- **L2→L3**: Use automated trust scoring in 25+ sessions, monitor 20+ sources over time, map trust network

**Your current level:** Tracked in `personal-os/adaptation/skill-levels.md`