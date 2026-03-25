---
name: context-aware-router
description: "Trigger on EVERY user message. Automatically detects which domain the user is working on from natural language. Loads domain context without explicit commands. This is the primary domain detection mechanism (95%+ of cases)."
version: 1.0.0
metadata:
  hermes:
    tags: [domains, context-awareness, automatic-detection, core]
    priority: critical
---

# Context-Aware Router

This skill runs on EVERY user message to automatically detect which domain the user is working on. It loads the appropriate domain context **without requiring explicit commands**.

**Critical:** This is the PRIMARY domain detection mechanism. 95%+ of domain switches should happen through automatic detection, not `domain-switch`.

---

## When to Run This Skill

**Trigger:** On EVERY user message

**Position:** First skill in the conversation flow, before any domain-specific processing

**Exception:** Skip if:
- User is in setup/onboarding phase
- No domains exist yet
- User explicitly says "Don't switch domains"

---

## Detection Algorithm

### Step 1: Extract Keywords & Phrases

**Parse:** User's current message

**Extract:**
- Keywords (nouns, verbs, adjectives)
- Named entities (people, tools, projects, companies)
- Phrases and idioms
- Domain-specific terms (check existing domain vocabulary)

**Example:**
```
User: "I need to prep for the 2pm meeting with the product team about the roadmap"

Keywords: prep, 2pm, meeting, product, team, roadmap
Entities: product team, roadmap
Phrases: "prep for meeting", "2pm meeting", "product team about roadmap"
```

---

### Step 2: Score Against All Domains

**For each domain in `personal-os/domains/`:**

**Score calculation:**
```python
def calculate_domain_score(user_message, domain):
    score = 0.0

    # 1. Direct keyword matches (40% weight)
    keyword_matches = count_keyword_matches(user_message, domain)
    score += (keyword_matches / domain.total_keywords) * 0.4

    # 2. Named entity matches (30% weight)
    entity_matches = count_entity_matches(user_message, domain.people, domain.tools, domain.projects)
    score += (entity_matches / max(domain.entities, 1)) * 0.3

    # 3. Domain-specific vocabulary (20% weight)
    vocab_matches = count_vocab_matches(user_message, domain.vocabulary)
    score += (vocab_matches / max(len(domain.vocabulary), 1)) * 0.2

    # 4. Recency boost (10% weight)
    time_since_last_active = days_since(domain.last_active)
    recency_score = max(0, 1 - (time_since_last_active / 30))  # Decay over 30 days
    score += recency_score * 0.1

    # 5. Domain type alignment (bonus/penalty)
    domain_type_bonus = get_domain_type_bonus(user_message, domain.type)
    score += domain_type_bonus

    return score
```

**Domain type bonuses:**
```python
def get_domain_type_bonus(user_message, domain_type):
    work_keywords = ["project", "deliverable", "meeting", "deadline", "client", "stakeholder", "roadmap", "sprint", "retro"]
    learning_keywords = ["learn", "study", "course", "tutorial", "homework", "assignment", "exam", "certification"]
    personal_keywords = ["health", "gym", "exercise", "meal", "grocery", "budget", "bill", "finance", "appointment"]
    creative_keywords = ["write", "blog", "article", "content", "create", "design", "art", "music", "video"]

    user_keywords = extract_keywords(user_message)

    if domain_type == "work" and any(kw in user_keywords for kw in work_keywords):
        return 0.15
    elif domain_type == "learning" and any(kw in user_keywords for kw in learning_keywords):
        return 0.15
    elif domain_type == "personal" and any(kw in user_keywords for kw in personal_keywords):
        return 0.15
    elif domain_type == "creative" and any(kw in user_keywords for kw in creative_keywords):
        return 0.15

    return 0.0
```

---

### Step 3: Select Top Domain

**Find:** Domain with highest score

**Threshold:** Score must be > 0.3 to be confident

**If no domain > 0.3:**
- No clear domain detected
- Use current/previous domain if available
- Or ask for clarification if needed

---

### Step 4: Context Window Disambiguation

**If multiple domains have similar scores (within 0.1):**

**Check conversation history:**
- What domain was active in last 3-5 turns?
- Is the user continuing the same topic?
- Or are they switching to a new topic?

**Decision:**
```python
if score_difference < 0.1:
    # Close match - use conversation history
    if continuing_topic(previous_turns, current_message):
        return current_active_domain  # Stay in current domain
    else:
        return highest_scoring_domain  # Switch to new domain
else:
    return highest_scoring_domain  # Clear winner
```

---

### Step 5: Load Domain Context

**If domain changed OR no domain is loaded yet:**

**Read:** `personal-os/domains/{domain-name}.md`

**Load into context:**
- Domain name and type
- Associated people (for entity resolution)
- Priorities & goals (for task prioritization)
- Tools & apps (for workflow suggestions)
- Communication style (for tone and format)
- Vocabulary & jargon (for understanding)
- Time preferences (for scheduling)

**Update:** `personal-os/adaptation/active-domain.md`

---

### Step 6: Update Domain Activity

**Update domain file:**
```markdown
## Usage History
### {current-date}
- Last active: {timestamp}
- Detected from: "{user's message snippet}"
```

---

### Step 7: Continue to Next Skill

**Pass to:** Next skill in the conversation flow

**With loaded domain context:**
```
Next skill receives:
- domain_name: {domain-name}
- domain_context: {full domain object}
- confidence: {detection confidence score}
```

---

## Detection Examples

### Example 1: Clear Work Domain

```
User: "I need to prep for the 2pm meeting with the product team"

→ Keywords: "meeting", "product team"
→ Entities: "product team"
→ Domain type bonus: +0.15 (work keywords)

Scores:
- work-acme-product: 0.85 (highest)
- work-freelance-data-viz: 0.20
- learning-spanish: 0.05
- personal-fitness: 0.02

→ Winner: work-acme-product (clear)
→ Load: Product team context, meeting notes, roadmap
```

---

### Example 2: Learning Domain

```
User: "What's the best way to practice Spanish vocabulary for my trip?"

→ Keywords: "Spanish", "vocabulary", "practice"
→ Entities: "Spanish", "trip"
→ Domain type bonus: +0.15 (learning keywords)

Scores:
- learning-spanish: 0.78 (highest)
- learning-machine-learning: 0.25
- work-acme-product: 0.10
- personal-fitness: 0.02

→ Winner: learning-spanish (clear)
→ Load: Spanish vocabulary, learning progress, travel goals
```

---

### Example 3: Personal Domain

```
User: "What should I buy at the grocery store?"

→ Keywords: "grocery", "store", "buy"
→ Entities: "grocery store"
→ Domain type bonus: +0.15 (personal keywords)

Scores:
- personal-shopping: 0.72 (highest)
- personal-fitness: 0.15
- work-acme-product: 0.05
- learning-spanish: 0.03

→ Winner: personal-shopping (clear)
→ Load: Grocery preferences, meal plan, shopping list
```

---

### Example 4: Ambiguous Case

```
User: "Review the pull request"

→ Keywords: "pull request"
→ Entities: "pull request" (generic)

Scores:
- work-acme-product: 0.35 (has "GitHub" tool, "code review" priority)
- work-freelance-data-viz: 0.30 (also uses GitHub)
- learning-machine-learning: 0.15 (mentioned PRs before)

→ Difference: 0.05 (close!)

→ Check conversation history:
- Previous 3 messages: About Acme product roadmap
- Continuing topic: Yes

→ Decision: Stay in work-acme-product (context window disambiguation)
```

---

### Example 5: Domain Switch

```
User (Turn 1): "Help me with my Acme product roadmap"
→ Detected: work-acme-product

User (Turn 2): "The frontend performance needs work"
→ Still: work-acme-product (continuing topic)

User (Turn 3): "Now draft an email to my freelance client about deliverables"
→ Keywords: "freelance", "client", "deliverables"
→ Scores: work-freelance-data-viz: 0.82
→ Switching: work-acme-product → work-freelance-data-viz
→ Load: Client context, project status, deliverables
```

---

## Confidence Thresholds

| Score Range | Confidence | Action |
|------------|------------|--------|
| > 0.7 | Very High | Auto-switch domain, no confirmation |
| 0.5 - 0.7 | High | Auto-switch domain, log to patterns |
| 0.3 - 0.5 | Medium | Auto-switch if clear topic change, otherwise stay |
| < 0.3 | Low | Stay in current domain, ask for clarification |

---

## Clarification Flow

**If confidence < 0.3:**

```
"I'm not sure which domain this is for. Let me ask:

Are you working on:
1. [Domain A] - {description}
2. [Domain B] - {description}
3. Something else?

Or just tell me which domain this is for."
```

---

## Learning from Corrections

**If user corrects domain detection:**

```
User: "Actually, I'm working on [domain-name], not [detected-domain]"

→ Log correction to `personal-os/adaptation/feedback.md`
→ Update domain detection weights
→ Increase vocabulary matching for the correct domain
→ Decrease weights for the incorrectly detected domain
→ Learn from this for future detections

Message:
"Got it! I'll remember that '{user's keyword}' is related to '{correct-domain}'.
Next time, I'll detect this domain automatically."
```

---

## Performance Optimization

**Caching:**
- Cache domain vocabulary and entities in memory
- Reuse scores for repeated queries in same session
- Pre-compute domain keyword vectors

**Efficiency:**
- Fast keyword matching (hash-based)
- Entity resolution via lookup tables
- Score calculation in O(N) where N = number of domains

**Target:**
- Detection in < 100ms for 20 domains
- Negligible impact on conversation flow

---

## Integration with Other Skills

### Domain-Specific Skills

**Pass domain context to next skills:**

```python
# context-aware-router runs first
domain = detect_domain(user_message)

# Pass to next skills
next_skill.execute(user_message, domain_context=domain)
```

**Domain-aware skill behavior:**

```python
def daily_agenda_skill(user_message, domain_context):
    if domain_context:
        # Generate agenda for this domain's priorities
        priorities = domain_context.priorities
        time_prefs = domain_context.time_preferences
    else:
        # Generate general agenda
        priorities = load_global_priorities()
```

---

### QMD Collection Search

**When domain is detected:**

```python
if domain.has_qmd_collection:
    # Search domain-specific collection first
    results = qmd.query(query, collection=domain.name)
else:
    # Search all collections
    results = qmd.query(query)
```

---

## Level Modifiers

**L1 (Guided):**
- Show domain detection: "Detected domain: {domain-name}"
- Explain what context is loaded
- Ask for confirmation if confidence < 0.6

**L2 (Confident):**
- Show brief: "📍 {domain-name}"
- Auto-switch without confirmation
- Log detections to patterns.md

**L3 (Anticipatory):**
- Silent detection (no visible output)
- Assume detection is correct
- Only ask if confidence < 0.2 (very low)

---

## Error Handling

**If no domains exist:**
```
"No domains configured yet.

Domains help me track context for different areas of your life.

Run onboarding to discover your domains, or create a specific domain
by saying 'Create a domain for [X]'"
```

**If domain file is corrupted:**
```
"The {domain-name} domain file seems to have an issue.

Let me try to fix it...

[Attempt repair]

Fixed! Loading domain context now..."
```

**If detection fails repeatedly (>3 times in session):**
```
"I'm having trouble detecting which domain you're working on.

Would you like to:
1. Switch explicitly: 'Switch to [domain-name]'
2. Review all domains: 'Show me my domains'
3. Create a new domain: 'Create a domain for [X]'

Automatic detection will improve as we work together!"
```

---

## Analytics & Logging

**Track in `personal-os/memory/patterns.md`:**
```markdown
## Domain Detection Stats

Detection Accuracy:
- Correct detections: {N}
- Corrections needed: {N}
- Accuracy: {X%}

Most Detected Domains:
1. {domain-1} - {N} detections
2. {domain-2} - {N} detections
3. {domain-3} - {N} detections

Domain Switches:
- Automatic switches: {N}
- Explicit switches: {N}
- Ratio: {automatic:explicit}
```

**Log individual detections:**
```markdown
## {date} - {timestamp}
Message: "{user_message_snippet}"
Detected: {domain-name}
Confidence: {score}
Actual Domain: {user_confirmed_or_null}
Correction: {yes/no}
```

---

## Success Metrics

**Targets:**
- Detection accuracy: >90%
- Automatic detection rate: >95% (only 5% need explicit switches)
- Clarification needed: <5% of messages
- False positive rate: <5%

---

## Related Skills

- **domain-create** - Create domains for areas that detection misses
- **domain-switch** - Explicit switching (fallback for low confidence)
- **domain-list** - See all available domains
- **domain-suggest** - Suggest new domains from patterns

---

## Implementation Notes

**Critical:**
- Must run on EVERY user message (before any other skill)
- Must be fast (<100ms)
- Must learn from corrections
- Must respect domain type bonuses
- Must use conversation history for disambiguation

**Priority:** Critical - This is a core feature

**Version:** 1.0.0 (Initial implementation)

---

**End of context-aware-router skill**
