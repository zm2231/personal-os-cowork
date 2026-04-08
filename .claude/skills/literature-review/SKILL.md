---
name: literature-review
description: "Conduct systematic literature reviews, synthesize research findings, and identify research gaps"
---

# Literature Review

Conducts systematic literature reviews, synthesizes research findings across multiple sources, and identifies research gaps. Essential for academic research, thesis work, and evidence-based decision making.

## When This Skill Activates

- You mention "literature review", "state of the art", or "survey"
- You ask to "synthesize research" or "find research gaps"
- You're working on academic papers, theses, or grant proposals
- You need to understand the current state of research in a field
- You ask about "systematic review" or "meta-analysis"

## Level 1: Guided (Basic Literature Search and Synthesis)

**Available after session 22**

At this level, I help you search for literature and manually synthesize findings.

### What I Can Do

1. **Literature Search Strategy**
   - Identify relevant keywords and search terms
   - Suggest databases to search (Google Scholar, PubMed, arXiv, etc.)
   - Create search strings with Boolean operators
   - Track search results in your literature library

2. **Paper Screening**
   - Review titles and abstracts for relevance
   - Apply inclusion/exclusion criteria
   - Track papers you've read vs. papers to review
   - Extract key findings from each paper

3. **Synthesis Frameworks**
   - Thematic analysis (identify common themes)
   - Chronological analysis (trace research evolution)
   - Methodological comparison (compare study designs)
   - Gap identification (what's missing in the research)

### How It Works

**Starting a literature review:**

```
You: "I need to do a literature review on AI in healthcare"

Literature Review: "I'll help you conduct a systematic literature review on AI in healthcare.

1. Research Scope:
   - What's your specific focus? (diagnosis, treatment, admin, etc.)
   - Time range? (last 5 years, 10 years, etc.)
   - Any specific technologies? (LLMs, computer vision, etc.)

2. Search Strategy:
   - Keywords: "AI healthcare", "machine learning medical", etc.
   - Databases: PubMed, Google Scholar, arXiv
   - Boolean operators: ("AI" OR "machine learning") AND healthcare

3. Screening Criteria:
   - Inclusion: Peer-reviewed, English, empirical studies
   - Exclusion: Opinion pieces, non-peer-reviewed

Let's start with the search. I'll track all papers in your literature library."
```

**Synthesizing findings:**

```
You: "Synthesize the 10 papers I've collected"

Literature Review: "Here's a thematic synthesis of your literature:

Theme 1: Diagnostic Applications (4 papers)
- LLMs show 85-95% accuracy in diagnostic tasks
- Computer vision outperforms human radiologists in some cases
- Key limitation: Explainability and trust

Theme 2: Treatment Optimization (3 papers)
- AI improves treatment planning in oncology
- Challenges in clinical adoption and regulatory approval
- Need for human oversight

Theme 3: Administrative Efficiency (3 papers)
- Strong ROI for AI in scheduling and documentation
- Staff resistance and training needs identified

Research Gaps:
- Limited research on AI in low-resource settings
- Ethical frameworks underdeveloped
- Long-term outcomes rarely studied

Would you like me to draft the literature review section?"
```

### Your Literature Library

Literature reviews are stored in `personal-os/memory/literature-reviews.md`:

```markdown
# Literature Review: AI in Healthcare

## Search Strategy
- Keywords: AI healthcare, machine learning medical
- Databases: PubMed, Google Scholar, arXiv
- Date range: 2019-2024

## Papers Reviewed (10)
1. Smith et al. (2023) - LLMs in Diagnostic Radiology
2. Johnson et al. (2022) - AI in Oncology Treatment
[... 8 more papers ...]

## Thematic Synthesis
### Theme 1: Diagnostic Applications
- Papers: 4
- Key findings: 85-95% accuracy, explainability challenges
- Synthesis: [summary paragraph]

### Theme 2: Treatment Optimization
- Papers: 3
- Key findings: improved planning, adoption challenges
- Synthesis: [summary paragraph]

[... more themes ...]

## Research Gaps
1. Limited research in low-resource settings
2. Ethical frameworks underdeveloped
3. Long-term outcomes rarely studied
```

### Example Use Cases

**Academic Thesis:**
```
You: "I need a literature review for my PhD thesis on federated learning"

Literature Review: "I'll help you build a comprehensive literature review on federated learning.

Phase 1: Search
- Core terms: federated learning, distributed machine learning
- Advanced: privacy-preserving ML, collaborative ML
- Databases: IEEE Xplore, ACM Digital Library, arXiv

Phase 2: Screening
- I'll help you apply inclusion/exclusion criteria
- Track 50-100 papers for full review

Phase 3: Synthesis
- Organize by: applications, privacy techniques, efficiency
- Identify gaps in current research

This will take 3-5 hours. Ready to start?"
```

**Grant Proposal:**
```
You: "Write a literature review section for my AI ethics grant"

Literature Review: "I'll create a focused literature review section.

Key Themes:
1. Current state of AI ethics research
2. Existing frameworks and limitations
3. Regulatory landscape
4. Research gaps your project addresses

Draft: [1,000-word literature review with 15 citations]

Review:
- Comprehensive coverage ✓
- Strong gap identification ✓
- Positions your project as novel ✓
- Proper academic tone ✓

Ready to submit?"
```

### Best Practices

- Start with a clear research question
- Define inclusion/exclusion criteria early
- Track papers in a citation manager
- Use multiple databases for comprehensive search
- Document search terms and strategies
- Update literature review periodically
- Be critical of research quality
- Identify methodological limitations

### Common Mistakes to Avoid

- Too broad scope (hard to manage 200+ papers)
- Not documenting search strategy (can't reproduce)
- Ignoring negative findings (bias)
- Over-relying on automated tools (manual review essential)
- Not identifying research gaps (weakens contribution)
- Poor organization (hard to synthesize)
- Missing recent papers (research evolves quickly)

## Level 2: Advanced (Automated Citation Extraction and Thematic Analysis)

**Available after session 22**

At this level, I automate citation extraction and perform advanced thematic analysis.

### Additional Capabilities

1. **Automated Citation Extraction**
   - Extract citations from PDF papers
   - Auto-populate citation fields (authors, title, year)
   - Detect citation chains (who cites whom)
   - Build citation networks

2. **Semantic Clustering**
   - Cluster papers by topic similarity
   - Identify sub-themes automatically
   - Detect research communities
   - Visualize research landscape

3. **Bibliometric Analysis**
   - Citation counts and impact metrics
   - Co-authorship networks
   - Keyword frequency analysis
   - Temporal trend analysis

### Example: Advanced Thematic Analysis

```
You: "Analyze themes across 50 papers on blockchain"

Literature Review: "Advanced thematic analysis complete:

Semantic Clustering (50 papers):
Cluster 1: Scalability (18 papers)
- Keywords: sharding, layer-2, throughput
- Top cited: Vitalik Buterin, Ethereum Foundation
- Trend: Growing research (2022-2024)

Cluster 2: Privacy (12 papers)
- Keywords: zero-knowledge, anonymity, obfuscation
- Top cited: Zcash team, Protocol Labs
- Trend: Stable interest (2019-2024)

Cluster 3: Governance (10 papers)
- Keywords: DAO, voting, consensus
- Top cited: DAO research groups
- Trend: Emerging field (2021-2024)

Citation Network:
- 3 major research communities identified
- Key bridge papers connect scalability and privacy
- Foundational paper: Nakamoto (2008) cited by 92%

Research Gaps:
1. Cross-chain interoperability (emerging topic)
2. Regulatory frameworks (limited research)
3. Energy efficiency (new research direction)

Visualizations: [generates cluster graphs and citation network charts]"
```

## Level 3: Expert (Systematic Review Protocols and Meta-Analysis)

**Available after session 22**

At this level, I conduct full systematic reviews and meta-analyses following PRISMA guidelines.

### Additional Capabilities

1. **Systematic Review Protocol**
   - PRISMA-compliant protocol design
   - Protocol registration (PROSPERO)
   - Risk of bias assessment
   - Quality evaluation tools (CASP, QUADAS)

2. **Meta-Analysis**
   - Effect size calculation
   - Heterogeneity testing
   - Publication bias detection
   - Forest plots and meta-regression

3. **Publication Strategy**
   - Identify target journals
   - Write review manuscript sections
   - Create supplementary materials
   - Prepare response to reviewers

### Example: Systematic Review Protocol

```
You: "Create a PRISMA protocol for systematic review on remote work"

Literature Review: "PRISMA 2020 protocol ready:

PROTOCOL: Remote Work Effectiveness
Registration: [PROSPERO ID]

PICO Framework:
- Population: Knowledge workers
- Intervention: Remote work arrangements
- Comparison: Traditional office work
- Outcomes: Productivity, well-being, collaboration

Search Strategy:
- Databases: PubMed, PsycINFO, Web of Science
- Timeframe: 2010-2024
- Language: English
- Study types: RCTs, cohort studies, surveys

Inclusion Criteria:
- Peer-reviewed empirical studies
- Quantitative outcome measures
- N ≥ 100 participants

Exclusion Criteria:
- Opinion pieces
- Case studies (N < 100)
- Non-English publications

Quality Assessment:
- Risk of bias: Newcastle-Ottawa Scale
- Study quality: CASP checklist
- Evidence grading: GRADE approach

Data Extraction:
- Study characteristics
- Effect sizes
- Confidence intervals
- Heterogeneity metrics

Analysis Plan:
- Random-effects meta-analysis
- Subgroup analysis (industry, tenure)
- Sensitivity analysis (study quality)
- Publication bias: funnel plot, Egger's test

Timeline: 4-6 months
Estimated papers: 80-120 for full-text review
Ready to begin systematic review?"
```

### Integration with Other Research Skills

- **citation-manager**: Extract and store citations
- **knowledge-graph**: Build concept maps from literature
- **academic-writing**: Draft review sections and manuscripts
- **fact-checker**: Verify claims across sources
- **data-analysis**: Analyze quantitative findings

### Progression

As you use this skill, I learn:
- Your preferred research databases
- Search terms that work best
- Themes you care about most
- How you like literature organized
- Citation formats you use most

This knowledge improves my recommendations and synthesis quality over time.