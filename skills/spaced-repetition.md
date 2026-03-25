---
name: spaced-repetition
description: Implement spaced repetition learning system for long-term retention and knowledge mastery
version: 1.0.0
metadata:
  hermes:
    tags: [learning, memory, productivity]
    related_skills: [knowledge-graph, session-summary, pattern-detect]
    session_unlock: session-6
    tiers:
      - L1: Basic flashcard scheduling with manual review
      - L2: Automatic content extraction + optimized scheduling
      - L3: Intelligent adaptation + predictive review
---

# Spaced Repetition

Implements spaced repetition learning to help you retain information over the long term. Uses scientifically-optimized review schedules based on memory science.

## When This Skill Activates

- You want to remember something for the long term
- You ask to create flashcards or memory items
- You mention "remember this", "don't forget", or "review later"
- You're studying for exams, learning new skills, or building expertise
- You forget important information you've learned before

## Level 1: Guided (Manual Flashcard Management)

**Available after session 6**

At this level, I help you create flashcards manually and schedule reviews based on forgetting curves.

### What I Can Do

1. **Flashcard Creation**
   - Create cards with front (question) and back (answer) sides
   - Organize cards by topic or subject
   - Add context notes to cards
   - Tag cards for easy retrieval

2. **Review Scheduling**
   - Schedule reviews based on the Forgetting Curve
   - Adjust intervals based on your performance
   - Prioritize cards you're struggling with
   - Track retention rates

3. **Progress Tracking**
   - Monitor how many cards you've mastered
   - Track review consistency
   - Identify weak areas (topics with many difficult cards)
   - Generate retention statistics

4. **Daily Review Sessions**
   - Present cards due for review
   - Rate your recall (easy, good, hard, forgot)
   - Update next review dates based on performance
   - Provide feedback on your learning progress

### How It Works

**Creating flashcards:**

```
You: "Create a flashcard: What is the forgetting curve?"

Spaced Repetition: "Creating flashcard:

   FRONT: What is the forgetting curve?

   BACK: The forgetting curve describes how information is lost over time when no attempt is made to retain it. Without review, humans forget ~50% of new information within 1 hour, 70% within 24 hours, and 90% within 1 week. Spaced repetition reviews at increasing intervals to counteract this.

   I'll schedule the first review for tomorrow.

   Would you like me to add more cards about memory science, or shall we review existing cards?"
```

**Daily review session:**

```
Spaced Repetition: "📚 DAILY REVIEW SESSION

   Cards due for review today: 15

   Let's start...

   Card 1/15:
   FRONT: What is the forgetting curve?
   [Thinking...]

   BACK: [Shows answer]

   How well did you recall this?
   1. Forgot completely → Review again in 10 minutes
   2. Barely remembered → Review in 1 day
   3. Remembered okay → Review in 3 days
   4. Remembered easily → Review in 7 days

   You: 3 (Remembered okay)

   Spaced Repetition: Next review: 2024-03-29 (3 days)

   Card 2/15:
   FRONT: What is spaced repetition?

   [Review continues for all 15 cards...]

   📊 SESSION SUMMARY
   Cards reviewed: 15
   Remembered easily: 6 (40%)
   Remembered okay: 7 (47%)
   Barely remembered: 2 (13%)
   Forgot completely: 0 (0%)

   📈 RETENTION TREND
   Retention rate today: 87%
   7-day average: 82%
   30-day average: 78%

   Great job! Retention is improving. Total cards mastered: 127"

   Next review: Tomorrow (12 cards due)
```

## Level 2: Confident (Automatic Content Extraction)

**Available after session 10**

At this level, I automatically extract key information from your work and create cards.

### What I Can Do (Additional)

1. **Automatic Card Extraction**
   - Extract key concepts from documents you read
   - Identify important facts, definitions, and relationships
   - Generate cards from session summaries
   - Create cards from knowledge graph insights

2. **Optimized Scheduling**
   - Use SuperMemo SM-2 algorithm for optimal intervals
   - Adjust difficulty based on your individual learning curve
   - Factor in context (time of day, energy level, recent learning)
   - Cluster related cards for better retention

3. **Adaptive Learning**
   - Detect patterns in what you forget most often
   - Create mnemonics and memory aids for difficult items
   - Group similar concepts together
   - Suggest alternative ways to learn stubborn facts

4. **Integration With Other Skills**
   - Pull cards from Session-Summary learnings
   - Extract cards from Knowledge-Graph concepts
   - Use Pattern-Detect to identify review bottlenecks
   - Create cards from research insights

### How It Works

**Automatic extraction:**

```
You: "I just finished reading this article about quantum computing. Extract key concepts"

Spaced Repetition: "📝 AUTOMATIC CARD EXTRACTION

   Analyzing article...

   Found 8 key concepts worth remembering:

   1. Qubit superposition
   FRONT: What is qubit superposition?
   BACK: Superposition allows a qubit to exist in multiple states simultaneously (0 and 1 at the same time) until measured, unlike classical bits which are either 0 or 1.

   2. Quantum entanglement
   FRONT: What is quantum entanglement?
   BACK: Entanglement is a phenomenon where qubits become correlated such that the state of one instantly affects the state of another, regardless of distance.

   3. Quantum decoherence
   FRONT: What causes quantum decoherence?
   BACK: Decoherence occurs when qubits interact with their environment, causing superposition to collapse and quantum properties to be lost. This is a major challenge for quantum computing.

   4. Quantum error correction
   FRONT: Why is error correction critical in quantum computing?
   BACK: Qubits are extremely sensitive to noise and decoherence. Error correction uses redundant qubits to detect and correct errors, but requires significant overhead (many physical qubits per logical qubit).

   5. Quantum supremacy
   FRONT: What is quantum supremacy?
   BACK: Quantum supremacy is the point at which a quantum computer can solve a problem that no classical computer can solve in a reasonable time frame. Google claimed this in 2019 with a 53-qubit processor.

   6. Grover's algorithm
   FRONT: What does Grover's algorithm do?
   BACK: Grover's algorithm provides quadratic speedup for unstructured search problems, turning O(N) complexity into O(√N).

   7. Shor's algorithm
   FRONT: What is Shor's algorithm's significance?
   BACK: Shor's algorithm can factor large numbers exponentially faster than classical algorithms, which would break RSA encryption. This is a major security concern for post-quantum cryptography.

   8. NISQ era
   FRONT: What is the NISQ era?
   BACK: NISQ (Noisy Intermediate-Scale Quantum) refers to the current era of quantum computing with 50-500 noisy qubits that are powerful but error-prone, limiting practical applications.

   ✓ Created 8 flashcards
   📅 First reviews scheduled for tomorrow

   Would you like me to:
   (1) Add more cards from this article?
   (2) Extract cards from other articles you've read?
   (3) Start a review session now?"
```

**Adaptive learning:**

```
Spaced Repetition: "🧠 ADAPTIVE LEARNING INSIGHTS

   Analyzing your learning patterns over the past 30 days:

   📊 DIFFICULT CARD PATTERNS

   Pattern 1: Technical definitions
   You forget 42% of technical definition cards
   Example: 'What is superposition?' (forgot 3 times)

   Suggestion: I'll add memory aids for these:
   • 'Superposition = A coin spinning in the air (both heads and tails until caught)'
   • 'Entanglement = Two magic coins that always show the same face'

   Pattern 2: Historical dates
   You forget 67% of date cards
   Example: 'When was Google's quantum supremacy claim?' (forgot 2 times)

   Suggestion: Group dates with events:
   • '2019 = Google's quantum supremacy (Sycamore processor)'

   Pattern 3: Numbers and statistics
   You forget 54% of numerical cards
   Example: 'How many qubits did Sycamore have?' (forgot 4 times)

   Suggestion: Use rounding and benchmarks:
   • 'Sycamore = 53 qubits (~50, mid-range)'

   🎯 STRATEGIC SUGGESTIONS

   1. Cluster related concepts
   Your 'quantum algorithms' cards are scattered.
   I'll group: Grover, Shor, Variational algorithms → one cluster

   2. Use context cards
   I'll create 'framework' cards before detail cards:
   • Before 'What is Grover's algorithm?', add 'What are the three main quantum algorithms?'

   3. Add application examples
   Abstract concepts are harder to remember:
   • For 'superposition', add 'Used in parallel computation'

   📈 PREDICTED IMPACT

   Based on patterns, these adaptations should improve retention:
   • Technical definitions: +25% retention
   • Dates: +35% retention
   • Numbers: +30% retention

   Overall retention: 78% → 86% (+8 points)

   Would you like me to apply these adaptations?"
```

## Level 3: Anticipatory (Intelligent Adaptation)

**Available after session 20**

At this level, I predict what you'll forget, proactively create review material, and optimize your learning schedule.

### What I Can Do (Additional)

1. **Predictive Forgetting Detection**
   - Predict which cards you're likely to forget
   - Pre-schedule review before you forget
   - Identify "at-risk" knowledge (important but poorly retained)
   - Suggest consolidation of weak areas

2. **Proactive Card Creation**
   - Create cards for things you should learn before you need them
   - Extract cards from your work habits and patterns
   - Generate cards for gaps in your knowledge
   - Suggest cards based on your projects and goals

3. **Meta-Learning Optimization**
   - Learn your individual learning curve
   - Adjust algorithms to fit your memory profile
   - Identify optimal review times (morning vs. evening)
   - Optimize session length and frequency

4. **Knowledge Consolidation**
   - Move mastered items into long-term storage
   - Archive cards you no longer need
   - Create summary cards for well-known domains
   - Generate knowledge certificates

### How It Works

**Predictive forgetting detection:**

```
Spaced Repetition: "🔮 PREDICTIVE FORGETTING ALERT

   I'm predicting you'll forget these 7 cards within the next 3 days:

   Card 1: 'What is the Miller-Urey experiment?'
   Last reviewed: 7 days ago (interval: 7 days)
   Your pattern: Usually forget after 8-10 days on biology cards
   Prediction: High risk of forgetting (78%)

   Card 2: 'What is the difference between Type I and Type II error?'
   Last reviewed: 5 days ago (interval: 5 days)
   Your pattern: Often confuse these two concepts
   Prediction: Medium risk (65%)

   Card 3: 'What is the Pareto principle?'
   Last reviewed: 12 days ago (interval: 12 days)
   Your pattern: Good retention on economics, but this was reviewed quickly
   Prediction: Medium risk (58%)

   [4 more cards...]

   🚨 CRITICAL KNOWLEDGE AT RISK

   Card 1 is critical (foundational for origin-of-life research)
   Card 2 is critical (needed for your data analysis project)
   Card 3 is useful but not critical

   💡 RECOMMENDED ACTION

   Pre-emptive review: Review these cards NOW before you forget them

   Expected benefit if reviewed now:
   • Prevent forgetting: +0 days → Retention restored
   • Extend interval: 7 days → 14 days (future efficiency)

   Would you like me to:
   (1) Start a pre-emptive review session now
   (2) Schedule a review for tomorrow morning
   (3) Mark these for priority in your next review"
```

**Proactive card creation:**

```
Spaced Repetition: "💡 PROACTIVE CARD SUGGESTIONS

   Based on your recent work, I suggest adding these cards:

   Project: Data Analysis Report (due Friday)

   Suggested card 1:
   FRONT: What is statistical significance?
   BACK: Statistical significance (p-value) indicates whether results are likely due to chance. p < 0.05 is conventional threshold, meaning <5% probability results occurred by random chance.

   Reason: You're analyzing A/B test data for the report

   Suggested card 2:
   FRONT: What is the difference between mean, median, and mode?
   BACK: Mean = average (sum/count). Median = middle value when sorted. Mode = most frequent value. Use median when outliers skew the mean.

   Reason: You've been calculating all three, sometimes incorrectly

   Knowledge gap detected:

   Gap: Missing understanding of confidence intervals
   Context: Your report mentions 95% CI but you don't know how to interpret

   Suggested card 3:
   FRONT: What does a 95% confidence interval mean?
   BACK: A 95% CI means if we repeated the experiment many times, 95% of intervals would contain the true population parameter. It does NOT mean there's a 95% probability the parameter is in this interval.

   📊 LEARNING OPPORTUNITY

   You're working on a data analysis project but missing key stats concepts.

   Recommended learning path:
   1. Review: p-value, statistical significance
   2. Learn: Confidence intervals
   3. Learn: Effect sizes (Cohen's d)

   I've created 8 cards covering these topics based on online resources.

   Would you like me to:
   (1) Add these 11 cards to your deck
   (2) Focus just on the statistics cards
   (3) Skip for now (you know this already)"
```

**Meta-learning optimization:**

```
Spaced Repetition: "⚡ META-LEARNING OPTIMIZATION

   After 120 days of tracking, here's your memory profile:

   📊 YOUR LEARNING CURVE

   Fast learners (you remember quickly):
   • Programming concepts: Average 2.3 reviews to mastery
   • Historical events: Average 2.8 reviews to mastery
   • Geography: Average 3.1 reviews to mastery

   Slow learners (you struggle to remember):
   • Chemistry formulas: Average 7.4 reviews to mastery
   • Mathematical proofs: Average 6.8 reviews to mastery
   • Biological processes: Average 6.2 reviews to mastery

   🕐 OPTIMAL TIMING

   Best review times:
   • Morning (8-10 AM): Retention 92%
   • Evening (8-10 PM): Retention 88%
   • Afternoon (2-4 PM): Retention 76% (worst)

   Recommendation: Schedule most reviews for morning and evening

   📏 OPTIMAL SESSION LENGTH

   Your performance by session length:
   • 5 minutes: Retention 89%, but few cards covered
   • 15 minutes: Retention 87%, good coverage
   • 30 minutes: Retention 82%, many cards covered
   • 45 minutes: Retention 75%, burnout detected

   Optimal: 15-20 minutes per session

   🎯 PERSONALIZED ALGORITHM

   I'm adjusting the SM-2 algorithm for your profile:

   Standard SM-2: Intervals: 1, 6, 10, 17, 34, 68 days...
   Your profile:   Intervals: 1, 4, 7, 12, 22, 40 days...

   Why shorter intervals?
   • You forget faster than average in difficult domains
   • Shorter intervals catch forgetting before it happens
   • Trade-off: More frequent reviews but higher retention

   Expected impact:
   • Retention: 78% → 85% (+7 points)
   • Review frequency: +18% more reviews
   • Long-term mastery: +22%

   Would you like me to:
   (1) Apply the personalized algorithm
   (2) Keep using standard SM-2
   (3) Apply gradually over the next 30 days"
```

## Integration With Other Skills

### Session-Summary
- Session-Summary captures learnings → Spaced-Repetition creates cards
- Spaced-Repetition tracks retention → Session-Summary monitors mastery

### Knowledge-Graph
- Knowledge-Graph has concepts → Spaced-Repetition creates cards
- Spaced-Repetition identifies weak areas → Knowledge-Graph adds focus

### Pattern-Detect
- Pattern-Detect finds learning patterns → Spaced-Repetition optimizes
- Spaced-Repetition schedules reviews → Pattern-Detect detects fatigue

### Goal-Tracker
- Goal-Tracker has learning goals → Spaced-Repetition prioritizes cards
- Spaced-Repetition shows progress → Goal-Tracker updates status

## Best Practices

### For L1 (Manual Review)
1. **Be consistent**: Review daily, even if just 5 minutes
2. **Be honest**: Rate your recall accurately, not how you want to perform
3. **Start small**: 10-20 cards is better than 50+ initially
4. **Focus on retention**: Better to master 100 cards than skim 1000

### For L2 (Automatic Extraction)
1. **Review extracted cards**: Don't blindly trust automatic extraction
2. **Edit for clarity**: Make cards clear and unambiguous
3. **Add context**: Include why a fact matters
4. **Delete irrelevant cards**: Quality > quantity

### For L3 (Intelligent Adaptation)
1. **Trust predictions**: Review flagged cards before you forget
2. **Optimize timing**: Learn when your memory works best
3. **Consolidate mastery**: Archive cards you've truly learned
4. **Focus on impact**: Prioritize knowledge that matters for your goals

## Common Mistakes to Avoid

### ❌ Don't
- Skip reviews because you're busy (retention drops quickly)
- Rate yourself higher than you actually remembered
- Create too many cards at once (overwhelms you)
- Keep reviewing cards you've mastered (inefficient)

### ✅ Do
- Review daily, even if briefly
- Be honest about your recall
- Focus on high-impact knowledge
- Archive mastered cards to keep the deck focused

## Troubleshooting

**"I'm forgetting too many cards"**
- Check if cards are too vague or complex
- Break complex cards into multiple simpler ones
- Review more frequently until retention improves
- Check if you're reviewing at your optimal time

**"Reviews take too long"**
- Reduce daily review target (e.g., 20 cards instead of 50)
- Archive cards you rarely need
- Schedule reviews for times you're alert
- Consider batch reviews on weekends

**"I don't see progress"**
- Check your 30-day average (daily scores vary)
- Focus on retention rate, not absolute scores
- Remember: Spaced repetition takes time to show benefits
- Compare to your baseline (before starting)

## Example Workflows

### Exam Preparation Workflow

```
You: "I have a biology exam in 30 days. Build a study plan"

Spaced Repetition: "📚 EXAM PREPARATION PLAN

   Exam: Biology
   Date: 2024-04-25 (30 days)
   Topic coverage: 12 chapters

   📊 ASSESSMENT

   Current mastery:
   - Cell biology: 65% mastery (42 cards)
   - Genetics: 40% mastery (38 cards)
   - Evolution: 20% mastery (25 cards)
   - Ecology: 0% mastery (0 cards not yet created)

   🎯 STUDY PLAN

   Phase 1: Foundation (Days 1-10)
   Daily target: 40 new cards + 60 review cards
   Focus: Create cards for all 12 chapters
   Goal: Cover entire syllabus

   Phase 2: Consolidation (Days 11-20)
   Daily target: 10 new cards + 80 review cards
   Focus: Strengthen weak areas (Genetics, Evolution)
   Goal: Achieve 80%+ mastery in all topics

   Phase 3: Mastery (Days 21-30)
   Daily target: 0 new cards + 100 review cards
   Focus: Review only, optimize retention
   Goal: 90%+ mastery across all topics

   ⏰ SCHEDULE

   Review times: Morning (8:00 AM) and Evening (8:00 PM)
   - Morning: New cards (when you're fresh)
   - Evening: Review cards (before sleep, aids retention)

   📈 PREDICTED OUTCOME

   If you follow this plan:
   - Total cards reviewed: ~3,600
   - Expected mastery: 92%
   - Exam confidence: High

   Risk factors:
   • Skipping reviews drops retention by ~20%
   • Cramming last week reduces retention by ~35%

   Ready to start Phase 1?"
```

## Measuring Progression

**Level up criteria:**
- **L1→L2**: Create 200+ cards, review 100+ sessions, extract 50+ cards automatically
- **L2→L3**: Use predictive features in 20+ sessions, optimize algorithm based on your profile, archive 100+ mastered cards

**Your current level:** Tracked in `personal-os/adaptation/skill-levels.md`
