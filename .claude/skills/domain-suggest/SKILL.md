---
name: domain-suggest
description: "Pattern-based detection suggests new domains from conversation history and usage patterns. Runs automatically or on explicit request."
---

# Domain Suggestion

This skill detects patterns in user conversations and suggests new domains when a theme emerges that isn't currently tracked.

## When to Run This Skill

**Automatic Triggers:**
- User mentions a topic 20+ times across sessions
- User mentions a topic 5+ times in a single session
- User introduces a new project/role/area explicitly
- User switches topics frequently between distinct areas

**Manual Triggers:**
- User asks "Should I create a domain for X?"
- User says "Help me discover my domains"
- User asks "What domains am I missing?"

---

## Pattern Detection Algorithm

### Step 1: Analyze Recent Conversations

**Read:** `personal-os/memory/patterns.md` and recent session logs

**Extract:**
- Topics mentioned in last 20 sessions
- Keywords and phrases
- People mentioned
- Tools/app references
- Project/area references

---

### Step 2: Cluster Topics by Similarity

**Process:**
1. Group semantically similar topics
2. Identify clusters with significant overlap
3. Each cluster = potential domain candidate

**Example:**
```
Cluster 1 (10 mentions):
- React performance optimization
- Rendering issues in production
- Bundle size optimization
- Lighthouse scores
- Memoization strategies
→ Candidate: "React Performance"

Cluster 2 (15 mentions):
- Client deliverables
- Data visualization dashboard
- D3.js charts
- Client meeting notes
- Invoice tracking
→ Candidate: "Freelance Data Visualization"
```

---

### Step 3: Score Candidates

**For each candidate, calculate:**
- Mention count (frequency)
- Recentness (how recent are mentions)
- Specificity (is it a distinct area?)
- Cross-domain overlap (is it already covered by existing domains?)
- User engagement (did user ask follow-up questions, take notes, etc.)

**Scoring formula:**
```python
score = (mention_count * 0.4) +
        (recentness_score * 0.3) +
        (specificity_score * 0.2) +
        (engagement_score * 0.1) -
        (overlap_penalty * 0.5)
```

---

### Step 4: Filter Candidates

**Threshold:** Score > 0.6

**Remove duplicates:** Candidates that overlap significantly with existing domains (>70% topic overlap)

---

### Step 5: Rank Candidates

**Sort:** By score descending

**Top candidates:** Up to 3 highest-scoring candidates

---

## Suggestion Presentation

### Format

```
💡 Domain Suggestion

I've noticed you've been working a lot on: {domain-name}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

What I've detected:
- Topic mentioned {N} times recently
- Related topics: {list of related topics}
- People involved: {list of people}
- Tools/platforms: {list of tools}

Type: {work|personal|learning|creative|other}

Suggested Description:
{AI-generated 2-3 sentence description}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Creating this domain will help me:
✓ Remember specific vocabulary and jargon
✓ Track related people and projects
✓ Store tools and preferences
✓ Capture goals and priorities
✓ Learn your patterns in this area

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Want me to create this domain?

• Yes - Create the domain now
• No - Skip for now
• Customize - Adjust name, type, or description before creating
• Don't suggest again - Ignore this topic for future suggestions
```

---

## Multi-Candidate Scenario

**If multiple candidates detected:**

```
💡 Domain Suggestions

I've noticed patterns in a few areas. Here are my top suggestions:

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. React Performance
   Type: Learning/Skill
   Mentioned: 12 times recently
   Topics: optimization, rendering, bundle size, Lighthouse

2. Freelance Data Visualization
   Type: Work
   Mentioned: 15 times recently
   Topics: client deliverables, D3.js, dashboards, invoices

3. Spanish Language Learning
   Type: Learning
   Mentioned: 8 times recently
   Topics: vocabulary, grammar, Duolingo, travel goals

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Which would you like to create?

• "Create [domain-name]" - Create a specific domain
• "Create all" - Create all suggested domains
• "Skip all" - Ignore these suggestions for now
• "Customize" - Adjust suggestions before creating
```

---

## User Response Handling

### Response: "Yes" or "Create [domain-name]"

**Action:**
1. Run `domain-create` skill with:
   - Pre-filled domain name
   - Inferred domain type
   - Pre-filled description
   - Extracted topics, people, tools
2. Skip the "what should I call this domain" question
3. Skip the "what type of domain" question
4. Ask about missing details (priorities, goals, communication style)

**Message:**
```
Great! Creating '{domain-name}' domain...

[Proceed with domain-create, skipping confirmed questions]
```

---

### Response: "No" or "Skip"

**Action:**
1. Log this as "suggestion declined"
2. Don't suggest again for 30 days (unless explicitly requested)
3. Remove from current candidate list

**Message:**
```
No problem! I won't suggest this domain again unless you ask.

If you change your mind later, just say:
'Create a domain for [domain-name]'

Or run domain suggestions anytime by saying:
'Suggest domains' or 'What domains am I missing?'
```

---

### Response: "Customize"

**Action:**
1. Ask what to customize:
   - "What should I call this domain instead?"
   - "What type of domain is this?"
   - "Adjust the description?"
   - "Add or remove any details?"

**Example:**
```
Got it! What would you like to customize?

1. Domain name: Currently '{domain-name}' - New name?
2. Domain type: Currently '{type}' - Change to?
3. Description: Currently '{description}' - Update?

Tell me what to change, or say 'Done' when ready to create.
```

2. Apply customizations
3. Run `domain-create` with updated parameters

---

### Response: "Don't suggest again" / "Never suggest X"

**Action:**
1. Add to `personal-os/adaptation/domain-ignored-topics.md`
2. Never suggest this topic again (unless explicitly requested)

**File format:**
```markdown
# Ignored Domain Topics

Topics that should not be suggested as domains:

## {domain-name}
Ignored: 2026-03-27
Reason: User explicitly opted out
Related Keywords: {list of keywords}

---
```

**Message:**
```
Got it! I won't suggest '{domain-name}' again.

If you change your mind, you can still create this domain anytime by saying:
'Create a domain for {domain-name}'
```

---

### Response: "Create all"

**Action:**
1. Create all suggested domains in batch
2. Run `domain-create` for each, skipping pre-filled questions
3. Show summary at end

**Message:**
```
Creating all {N} domains...

[Progress indicators]

✅ All {N} domains created!

Summary:
• {domain-1}
• {domain-2}
• {domain-3}

You can now switch between these domains naturally. I'll detect which one
you're working on from your messages.

Want to do anything with these domains now?
```

---

## Automatic Triggering

**Cron Job:** `domain-suggest-check`

**Schedule:** Every 6 hours

**Trigger Logic:**
```python
if candidate_score > threshold AND not recently_suggested AND not explicitly_ignored:
    suggest_domain(candidate)
```

**Debounce:**
- Only suggest if not suggested in last 7 days
- Only suggest 1 domain per day (unless multiple high-scoring candidates)
- Respect "Don't suggest again" flags

---

## Level Modifiers

**L1 (Guided):**
- Show full detection details (topics, people, tools)
- Explain why this is being suggested
- Ask before creating any domain

**L2 (Confident):**
- Show concise suggestion with key details
- Suggest top candidate only (unless multiple strong candidates)
- Auto-infer domain type if >80% confidence

**L3 (Anticipatory):**
- If user frequently accepts suggestions, auto-create after confirmation
- Skip detailed explanations (user knows the drill)
- Batch-create multiple candidates if patterns are strong

---

## Data Sources

**Primary:**
- `personal-os/memory/patterns.md` - Usage patterns
- `personal-os/memory/learnings.md` - Session learnings
- Recent session logs (last 20 sessions)

**Secondary:**
- QMD collections (if configured) - Document topics
- Domain files - Check for overlaps
- Task logs - Project references

---

## Confidence Scoring

**Domain Type Inference:**

| Pattern | Type | Confidence |
|---------|------|------------|
| "project", "deliverable", "client", "stakeholder" | Work | 90% |
| "learn", "study", "course", "tutorial" | Learning | 85% |
| "health", "gym", "meal", "exercise" | Personal | 80% |
| "write", "blog", "content", "creative" | Creative | 85% |
| "family", "friend", "social" | Personal | 75% |

**Thresholds:**
- >90% confidence: Auto-infer, skip type question
- 70-90% confidence: Suggest type, ask for confirmation
- <70% confidence: Ask user to specify

---

## Success Metrics

**Track:**
- Suggestion acceptance rate (target: >70%)
- False positive rate (target: <15%)
- Time from first mention to suggestion (target: <3 days)
- Domain accuracy (how well domain matches user's intent)

**Logging:**
For each suggestion, log:
```markdown
## {date} - {domain-name}
- Suggested: Yes/No
- Score: {0.0-1.0}
- User Response: {accepted/rejected/customized}
- Mentions Before Suggestion: {N}
- Created: Yes/No
- Feedback: {any user comments}
```

---

## After This Skill

1. If domain created: Run domain-create and proceed
2. If declined: Log to ignored topics (if requested)
3. If customized: Apply customizations and run domain-create
4. Update `personal-os/memory/patterns.md` with detected domains
5. Recalculate other candidate scores (domains often overlap)

---

## Error Handling

**If no patterns detected:**
```
I analyzed your recent conversations but didn't detect any clear patterns
that suggest a new domain.

You can still create domains manually by saying:
'Create a domain for [X]'

Or run full onboarding to discover all your domains at once.
```

**If all candidates overlap with existing domains:**
```
I detected patterns, but they all seem to be covered by your existing
domains:

• {domain-1} - Already covers these topics
• {domain-2} - Already covers these topics

Want me to suggest merging or splitting existing domains instead?
Or create a new domain anyway?
```

---

## Related Skills

- **domain-create** - Create domains from suggestions
- **domain-list** - See all current domains
- **context-aware-router** - Automatic domain detection
- **onboarding-interview** - Bulk domain discovery

---

**End of domain-suggest skill**