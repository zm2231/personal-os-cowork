---
name: knowledge-graph
description: "Build and query interconnected knowledge networks for relationships, dependencies, and research synthesis"
---

# Knowledge Graph

Builds and queries interconnected knowledge networks that link concepts, sources, and insights. Enables you to discover relationships, identify gaps, and synthesize research across domains.

## When This Skill Activates

- You ask to connect ideas or find relationships
- You want to synthesize information across multiple sources
- You're exploring dependencies or causal chains
- You ask "What's related to X?" or "How does X connect to Y?"
- You're building a research foundation or mental model

## Level 1: Guided (Manual Relationship Mapping)

**Available after session 8**

At this level, I help you manually map relationships between concepts, sources, and insights.

### What I Can Do

1. **Concept Linking**
   - Connect related concepts based on your input
   - Build bidirectional relationships (X relates to Y, Y relates to X)
   - Tag relationships (causes, enables, contradicts, supports)
   - Create clusters of related ideas

2. **Source Integration**
   - Link sources to the concepts they discuss
   - Track which sources support which claims
   - Map contradictions between sources
   - Build citation networks

3. **Knowledge Visualization**
   - Show relationship graphs in text format
   - Display clusters and connections
   - Highlight important nodes (highly connected concepts)
   - Identify isolated concepts

4. **Query Support**
   - Find all concepts related to a topic
   - Trace relationship chains
   - Identify supporting and contradicting sources
   - Discover gaps in your knowledge

### How It Works

**Creating relationships:**

```
You: "Add to knowledge graph: Large language models cause hallucinations"

Knowledge Graph: "Adding relationship:

   CONCEPT: Large language models (LLMs)
   RELATIONSHIP: causes
   CONCEPT: Hallucinations

   Relationship type: Causal
   Confidence: High (well-documented in research)

   I'll also add reverse relationship:
   CONCEPT: Hallucinations
   RELATIONSHIP: caused by
   CONCEPT: Large language models

   Would you like me to add:
   • Supporting sources? (e.g., Ji et al., 2023)
   • Related concepts? (e.g., Temperature parameter, Training data)
   • Mitigations? (e.g., RLHF, Retrieval augmentation)"
```

**Querying the graph:**

```
You: "What's related to AI alignment?"

Knowledge Graph: "Querying knowledge graph for 'AI alignment':

   📊 DIRECT CONNECTIONS

   Direct causes of AI alignment:
   • Capability advances (AI systems become more powerful)
   • Value learning (aligning with human values)
   • Safety research (proactive alignment work)

   Direct effects of AI alignment:
   • Reduced existential risk (aligned systems are safer)
   • Increased trust (aligned systems are more reliable)
   • Deployment speed (aligned systems can be deployed faster)

   Related concepts (supports/enables):
   • RLHF (enables alignment training)
   • Constitutional AI (alignment framework)
   • Interpretability (helps verify alignment)
   • Reward modeling (alignment technique)

   ⚠️ CONTRADICTIONS DETECTED
   • Some sources claim alignment is unsolvable
   • Others claim it's trivial (just add constraints)
   Reality: Nuanced, ongoing research question

   📚 SOURCES (8)
   Primary sources: 4 papers, 2 reports
   Supporting sources: 3 articles, 1 blog post
   Contradicting sources: 1 fringe source

   🔍 GAPS IDENTIFIED
   • Missing: Long-term alignment strategies (beyond current techniques)
   • Missing: Economic models of alignment costs
   • Missing: Case studies of alignment failures

   Would you like me to:
   (1) Visualize the full graph
   (2) Trace relationship chain from capability advances → alignment → reduced risk
   (3) Add sources for the gaps"
```

## Level 2: Confident (Automatic Inference)

**Available after session 15**

At this level, I automatically infer relationships, detect patterns, and identify emerging structures.

### What I Can Do (Additional)

1. **Automatic Relationship Inference**
   - Detect implicit relationships not explicitly stated
   - Infer missing links based on context
   - Identify transitive relationships (if A→B and B→C, then A→C)
   - Predict likely connections

2. **Pattern Detection**
   - Identify recurring relationship patterns
   - Detect concept clusters and domains
   - Find bridging concepts (connects two clusters)
   - Recognize causal chains and feedback loops

3. **Contradiction Resolution**
   - Identify contradictory relationships
   - Analyze context (when are contradictions valid vs. errors?)
   - Flag potential errors or misinformation
   - Suggest sources to resolve contradictions

4. **Knowledge Gap Analysis**
   - Identify concepts with few connections (potential gaps)
   - Find missing links in well-connected clusters
   - Detect asymmetric relationships (A→B exists but B→A doesn't)
   - Recommend areas to investigate

### How It Works

**Automatic inference:**

```
You: "I've been studying climate policy. What relationships have you inferred?"

Knowledge Graph: "Analyzing your climate policy knowledge:

   🔍 INFERRED RELATIONSHIPS (not explicitly stated)

   Inferred 1: Climate policy enables economic growth
   Evidence: You added: 'Carbon pricing → reduced emissions'
           You added: 'Reduced emissions → lower climate damages'
           Inferred: Carbon pricing → lower climate damages → economic growth
   Confidence: Medium (depends on policy design)

   Inferred 2: Renewable energy storage enables grid stability
   Evidence: You added: 'Renewables → intermittent generation'
           You added: 'Battery storage → smooths intermittency'
           Inferred: Battery storage enables reliable renewables → grid stability
   Confidence: High (well-documented)

   Inferred 3: Climate policy causes political polarization
   Evidence: Contradictory sources (some claim bipartisan support, others claim opposition)
   Pattern: Ideological alignment detected in sources
   Confidence: Medium to High (depends on region)

   📊 PATTERN DETECTION

   Dominant pattern: Causal chains (12 relationships)
   Secondary pattern: Enabling relationships (8 relationships)
   Tertiary pattern: Contradiction patterns (3 pairs)

   🎯 BRIDGING CONCEPTS
   • Innovation policy (connects climate and economic policy)
   • Just transition (connects environmental and social policy)
   • International cooperation (connects domestic and global policy)

   ⚠️ POTENTIAL CONTRADICTIONS
   Relationship A: 'Carbon tax → economic growth'
   Relationship B: 'Carbon tax → economic costs'

   Resolution: Both can be true (short-term costs, long-term growth)
   Context: Timeline matters (short vs. long term)

   Would you like me to:
   (1) Validate inferred relationships with sources
   (2) Add the bridging concepts to focus areas
   (3) Resolve the contradictions explicitly"
```

**Gap analysis:**

```
Knowledge Graph: "🔍 KNOWLEDGE GAP ANALYSIS

   Cluster: Climate Policy Economics

   📊 Cluster Health: 7/10
   - Well-connected concepts: 15
   - Strongly connected nodes: 4
   - Isolated concepts: 3

   ⚠️ DETECTED GAPS

   Gap 1: Missing cost-benefit analysis
   Existing: 'Carbon pricing → reduced emissions'
   Missing: 'Carbon pricing → economic impact (quantified)'
   Impact: Hard to evaluate policy trade-offs
   Suggested source: IPCC Economic Assessment Report

   Gap 2: No industry-specific impacts
   Existing: General economic impacts
   Missing: 'Policy → manufacturing impact', 'Policy → services impact'
   Impact: Policy design ignores sector differences
   Suggested source: Sector-specific economic studies

   Gap 3: Missing transition pathways
   Existing: 'Policy → emission reduction'
   Missing: 'Economy A → Economy B' (how transition happens)
   Impact: Unclear how to implement change
   Suggested source: Transition economics literature

   🔍 ASYMMETRIC RELATIONSHIPS
   Found: 'Climate denial → political polarization'
   Missing: 'Political polarization → climate denial' (reverse not explicit)

   This suggests a feedback loop not yet captured

   💡 RECOMMENDATIONS
   Priority 1: Add cost-benefit analysis (gap 1)
   Priority 2: Add transition pathways (gap 3)
   Priority 3: Make feedback loops explicit (asymmetric relationships)

   Estimated effort: 3-5 hours to address all gaps"
```

## Level 3: Anticipatory (Predictive Insights)

**Available after session 25**

At this level, I predict likely insights, identify hidden structures, and suggest research directions.

### What I Can Do (Additional)

1. **Predictive Relationship Discovery**
   - Predict relationships likely to exist based on patterns
   - Identify research directions based on graph structure
   - Suggest experiments or investigations to test predictions
   - Forecast emerging trends in your knowledge domain

2. **Hidden Structure Identification**
   - Detect higher-level organization in concepts
   - Identify hierarchical structures (meta-concepts)
   - Find domain boundaries and overlaps
   - Reveal paradigmatic frameworks

3. **Synthesis Generation**
   - Synthesize connected concepts into coherent narratives
   - Generate mental models from relationship networks
   - Create explanatory frameworks
   - Identify unifying themes across disconnected ideas

4. **Strategic Research Planning**
   - Prioritize research based on graph centrality
   - Identify high-impact nodes (concepts that, if studied, benefit many others)
   - Map research dependencies (what must be learned before what)
   - Optimize learning paths

### How It Works

**Predictive discovery:**

```
Knowledge Graph: "🔮 PREDICTIVE INSIGHTS

   Domain: Artificial Intelligence Safety

   📊 HIGH-CENTRALITY NODES (High Impact to Study)

   Node 1: Interpretability (centrality: 8.7/10)
   Why: Connects to alignment, verification, robustness, trust
   Prediction: Breakthroughs here will accelerate many areas
   Impact: Improves 12 other concepts

   Node 2: Reward hacking (centrality: 8.2/10)
   Why: Central to many alignment failures
   Prediction: Understanding this will prevent many failure modes
   Impact: Improves 9 other concepts

   Node 3: Distributional shift (centrality: 7.8/10)
   Why: Causes failures in deployment and robustness
   Prediction: This is under-researched but critical
   Impact: Improves 8 other concepts

   🔮 LIKELY MISSING RELATIONSHIPS (Predictions to Test)

   Prediction 1: Interpretability enables safe iteration
   Rationale: If we understand what models are doing, we can iterate safely
   Confidence: 85%
   Test: Run iteration experiments with vs. without interpretability tools

   Prediction 2: Reward modeling + interpretability = better alignment
   Rationale: Both address alignment from different angles, likely synergistic
   Confidence: 70%
   Test: Compare alignment outcomes with both vs. either alone

   Prediction 3: Distributional shift causes reward hacking
   Rationale: Both relate to model behavior changing in new contexts
   Confidence: 60%
   Test: Analyze cases of reward hacking for distributional shift patterns

   🎯 STRATEGIC RESEARCH PATH

   Optimal sequence for rapid understanding:
   1. Study: Interpretability (foundational, high impact)
   2. Study: Distributional shift (understudied, causes many issues)
   3. Study: Reward hacking (understand failure modes)
   4. Apply: Combine insights into alignment strategy

   Alternative path (if time-constrained):
   1. Study: Reward hacking (quick wins on concrete failures)
   2. Study: Interpretability (deeper understanding)
   3. Connect: Apply interpretability to understand reward hacking

   📈 TREND PREDICTION
   Emerging pattern: 'Interpretability + X' becoming central
   Likely next: Interpretability for robustness
   Watch for: New papers linking these concepts

   Would you like me to:
   (1) Prioritize research based on these predictions
   (2) Design experiments to test the predictions
   (3) Map out a learning path"
```

**Synthesis generation:**

```
Knowledge Graph: "🧠 SYNTHESIS: AI Safety Mental Model

   Based on your knowledge graph (42 concepts, 67 relationships), here's a synthesized mental model:

   🔷 CORE FRAMEWORK: The Alignment Trilemma

   Your knowledge reveals a core tension:
   ┌─────────────────────────────────────────┐
   │                                         │
   │    CAPABILITY    COMPETENCE     SAFETY   │
   │        │            │           │       │
   │        └────────────┼───────────┘       │
   │                     │                   │
   │              ALIGNMENT                  │
   │                 (trade-offs)            │
   │                                         │
   └─────────────────────────────────────────┘

   Key insight: You can't optimize all three simultaneously

   🔶 CRITICAL PATH: 1 → 2 → 3 → 4

   To build safe AI, you must follow this sequence:

   1. Understand (Interpretability)
      If we don't understand what models are doing, we can't align them

   2. Specify (Reward modeling)
      Once we understand, we must specify what we want

   3. Verify (Robustness)
      Must verify alignment in diverse contexts

   4. Deploy (Safely)
      Only after verification should we deploy

   🔷 COMMON FAILURE MODES (Your graph reveals patterns)

   Failure pattern 1: Capability without safety
   Consequence: Reward hacking, unintended behavior

   Failure pattern 2: Safety without competence
   Consequence: Useless systems (aligned but can't do anything)

   Failure pattern 3: Deployment without verification
   Consequence: Hidden failures emerge in production

   🎯 UNIFYING THEME: The 'Understand-First' Principle

   Your knowledge graph shows:
   • 23 relationships depend on interpretability
   • 8 major failure modes trace back to lack of understanding
   • Most research progress has come from better understanding

   Conclusion: Understanding (interpretability) is foundational

   💡 NEXT STEPS (Based on graph structure)

   To deepen your understanding:
   1. Read: Mechanistic interpretability papers (fills 3 gaps)
   2. Study: Distributional shift (understudied, high impact)
   3. Explore: Constitutional AI (emerging paradigm, connects many concepts)

   Would you like me to:
   (1) Visualize this mental model
   (2) Generate a learning roadmap
   (3) Identify papers that connect these concepts"
```

## Integration With Other Skills

### Citation-Manager
- Citation-Manager tracks sources → Knowledge-Graph builds citation networks
- Knowledge-Graph identifies key sources → Citation-Manager flags for library

### Source-Analyzer
- Source-Analyzer evaluates credibility → Knowledge-Graph weights relationships
- Knowledge-Graph maps trust → Source-Analyzer validates predictions

### Fact-Checker
- Fact-Checker verifies claims → Knowledge-Graph adds validated facts
- Knowledge-Graph identifies contradictions → Fact-Checker resolves

### Session-Summary
- Session-Summary captures insights → Knowledge-Graph adds concepts
- Knowledge-Graph structures knowledge → Session-Summary provides synthesis

## Best Practices

### For L1 (Manual Mapping)
1. **Be specific**: Use precise relationship types (causes, enables, supports)
2. **Bidirectional links**: Consider reverse relationships (if A→B, does B→A?)
3. **Tag relationships**: Label relationships for clarity (strength, confidence)
4. **Add context**: Note when relationships are conditional or context-dependent

### For L2 (Automatic Inference)
1. **Validate inferences**: Don't trust all automatic inferences
2. **Consider contradictions**: Different contexts may make both true
3. **Track confidence**: Low-confidence inferences need verification
4. **Update graph**: As you learn more, refine relationships

### For L3 (Predictive Insights)
1. **Test predictions**: Predictions are hypotheses, not facts
2. **Prioritize high-impact**: Focus on central concepts with many connections
3. **Look for synthesis**: Unifying themes reveal deeper structure
4. **Plan strategically**: Use graph structure to optimize learning

## Common Mistakes to Avoid

### ❌ Don't
- Create too many weak relationships (clutters the graph)
- Ignore contradictions (resolve them explicitly)
- Assume all relationships are bidirectional (many are one-way)
- Forget to update the graph as you learn

### ✅ Do
- Use precise relationship types and labels
- Track confidence levels for each relationship
- Resolve contradictions by adding context
- Regularly review and refine your graph

## Troubleshooting

**"My graph is getting too messy"**
- Remove weak or low-confidence relationships
- Cluster related concepts into meta-concepts
- Create separate graphs for different domains
- Focus on core relationships, not tangential ones

**"I can't find what I'm looking for in the graph"**
- Use different query terms (synonyms, related concepts)
- Trace relationship chains (A→B→C might find it)
- Check if the concept exists but has few connections
- Consider if the concept should be in a different cluster

**"The graph shows contradictions"**
- Identify if contradictions are valid (context-dependent)
- Check if sources are reliable
- Look for asymmetry (A→B exists but B→A doesn't)
- Add context to explain when each relationship applies

## Example Workflows

### Literature Review Workflow

```
You: "I've read 15 papers on LLM safety. Build a knowledge graph"

Knowledge Graph: "Analyzing 15 papers...

   📊 KNOWLEDGE GRAPH SUMMARY

   Concepts extracted: 28
   Relationships identified: 41
   Source citations: 15 papers

   🔶 MAJOR CLUSTERS

   Cluster 1: Alignment Techniques (9 concepts)
   • RLHF, DPO, PPO, Reward modeling, Constitutional AI...
   Key insight: All are variations on learning from feedback

   Cluster 2: Failure Modes (7 concepts)
   • Reward hacking, jailbreaking, prompt injection...
   Key insight: Most failures exploit instruction-following

   Cluster 3: Verification Methods (6 concepts)
   • Red-teaming, interpretability, evals...
   Key insight: Verification is underdeveloped

   🔍 CRITICAL INSIGHT

   Your papers focus heavily on alignment techniques (Cluster 1),
   but verification (Cluster 3) is much less studied.

   Prediction: Research will shift to verification as alignment techniques mature

   ⚠️ GAPS DETECTED

   Gap 1: Missing: Economic models of alignment costs
   Gap 2: Missing: Long-term alignment strategies
   Gap 3: Missing: Human-in-the-loop evaluation

   💡 RECOMMENDATIONS

   To deepen your understanding:
   1. Search for verification methods literature (fill Cluster 3)
   2. Look for human evaluation papers (human-in-the-loop)
   3. Explore interpretability research (supports all clusters)

   Would you like me to generate a reading list?"
```

## Measuring Progression

**Level up criteria:**
- **L1→L2**: Create 50+ relationships, infer 20+ relationships, identify 5+ gaps
- **L2→L3**: Use predictive insights in 15+ sessions, generate 5+ syntheses, identify 10+ high-impact nodes

**Your current level:** Tracked in `personal-os/adaptation/skill-levels.md`