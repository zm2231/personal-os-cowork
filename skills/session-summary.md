---
name: session-summary
description: Generate comprehensive session summaries capturing key outcomes, decisions, action items, and learnings
version: 1.0.0
metadata:
  hermes:
    tags: [productivity, documentation, knowledge-management, workflow]
    related_skills: [knowledge-graph, spaced-repetition, message-review, quick-research]
    unlock: session-2
---

# Session Summary

Capture and synthesize key information from your work sessions with structured summaries that preserve insights and drive action.

## What This Skill Does

The Session Summary skill helps you:
- Generate comprehensive summaries of work sessions
- Extract key decisions and their rationale
- Capture action items with owners and deadlines
- Document learnings and insights
- Track session outcomes for future reference
- Build a searchable knowledge base of your work

## Usage

**Basic Usage (L1):**
```
/session-summary generate --last
/session-summary capture decisions [context]
/session-summary extract action-items
```

**Advanced Usage (L2):**
```
/session-summary analyze patterns --last 7 sessions
/session-summary cross-reference [topic] --all-sessions
/session-summary generate --format markdown --with-attachments
```

**Expert Usage (L3):**
```
/session-summary auto-summarize --real-time
/session-summary link-topics --knowledge-graph
/session-summary forecast --based-on-history
```

## Tier 1: Session Capture & Summarization

**Unlock:** Session 2

### Capabilities

**Manual Summary Generation:**
- Review session content and generate structured summary
- Extract key outcomes and accomplishments
- Identify important decisions made
- List action items with ownership
- Note open questions and blockers
- Capture insights and learnings

**Decision Tracking:**
- Document decisions with context
- Capture rationale and alternatives considered
- Record decision date and participants
- Link decisions to related topics
- Tag decisions by impact level

**Action Item Extraction:**
- Identify concrete action items from session
- Assign owners (self, team members, external)
- Set priorities and deadlines
- Track dependencies between actions
- Link actions to decisions or outcomes

### Summary Template

```
Session Summary - [Date/Topic]

Context:
- Date/Time: [when session occurred]
- Duration: [length of session]
- Participants: [who was involved]
- Goal: [what was the objective]

Key Outcomes:
- [Outcome 1]
- [Outcome 2]
- [Outcome 3]

Decisions Made:
1. [Decision] - [Rationale]
   - Impact: [High/Medium/Low]
   - Date: [when decided]
   - Owner: [who made it]

Action Items:
- [ ] [Action 1] - Owner: [X] - Due: [Date] - Priority: [High]
- [ ] [Action 2] - Owner: [Y] - Due: [Date] - Priority: [Medium]

Open Questions:
- [Question 1]
- [Question 2]

Key Learnings/Insights:
- [Learning 1]
- [Learning 2]

Blockers:
- [Blocker 1]
- Proposed solution: [how to resolve]

Next Steps:
- [Next step 1]
- [Next step 2]

Topics Covered:
- [Topic 1]
- [Topic 2]
```

### Examples

**Example 1: Generate Session Summary**
```
User: /session-summary generate --last

PersonalOS:
Session Summary - March 27, 2026 - PersonalOS v1.1.0 Phase 6 Planning

Context:
- Date/Time: March 27, 2026, 2:00-3:30 PM
- Duration: 90 minutes
- Goal: Plan Phase 6 skills for PersonalOS v1.1.0

Key Outcomes:
✓ Identified 5 missing core skills for Phase 6
✓ Decided on skill naming and structure
✓ Planned progressive disclosure tiers
✓ Mapped integration points with existing skills

Decisions Made:
1. Phase 6 focus: Essential Core Skills (daily-agenda, session-summary, draft-email, quick-research, meeting-notes)
   - Rationale: These complete the v1.0.0 core functionality that was documented but not implemented
   - Impact: High - Foundational capabilities
   - Date: March 27, 2026
   - Owner: Zain

Action Items:
- [ ] Create daily-agenda skill (17 KB estimated) - Owner: Self - Due: March 27 - Priority: High
- [ ] Create session-summary skill (15 KB estimated) - Owner: Self - Due: March 27 - Priority: High
- [ ] Create draft-email skill (12 KB estimated) - Owner: Self - Due: March 27 - Priority: High
- [ ] Create quick-research skill (14 KB estimated) - Owner: Self - Due: March 27 - Priority: High
- [ ] Create meeting-notes skill (16 KB estimated) - Owner: Self - Due: March 27 - Priority: High

Open Questions:
- Should Phase 7 focus on industry-specific skills or more core skills?

Key Learnings/Insights:
- Core skills need 3 progressive tiers (L1: Guided, L2: Advanced, L3: Expert)
- Skill integration points should be explicit for better discovery
- Session unlocks should be staggered for progressive capability growth

Topics Covered:
- PersonalOS v1.1.0 development
- Skill design patterns
- Progressive disclosure architecture
```

**Example 2: Capture Decisions**
```
User: /session-summary capture decisions "Product roadmap discussion"

PersonalOS:
Captured Decisions from Product Roadmap Discussion:

Decision 1: Defer mobile app to Q4 2026
- Rationale: Web app MVP takes priority for Q2-Q3; mobile requires separate budget allocation
- Impact: High - Affects resource allocation and timeline
- Date: March 27, 2026
- Owner: Product team
- Alternatives considered: Q3 launch (rejected), Cancel mobile (rejected)

Decision 2: Add AI assistant feature to v2.0
- Rationale: User research showed high demand; competitive analysis shows AI features table stakes
- Impact: Medium - Adds complexity but increases differentiation
- Date: March 27, 2026
- Owner: Engineering team
- Alternatives considered: Add to v1.1 (rejected - too rushed), Defer to v3.0 (rejected - too late)

Decision 3: Change pricing from monthly to annual-only for enterprise
- Rationale: Reduces churn; improves predictable revenue; matches competitor pricing
- Impact: High - Affects sales and revenue model
- Date: March 27, 2026
- Owner: Sales team
- Alternatives considered: Keep monthly option (rejected - churn too high)

Decisions tagged and added to knowledge graph.
```

**Example 3: Extract Action Items**
```
User: /session-summary extract action-items

PersonalOS:
Action Items Extracted from Recent Sessions:

From "Q1 Performance Review" (March 25):
- [ ] Write Q1 performance report - Owner: Self - Due: March 29 - Priority: High
- [ ] Schedule Q2 planning session - Owner: Self - Due: April 5 - Priority: Medium
- [ ] Update budget forecast - Owner: Self - Due: April 8 - Priority: Medium

From "Client Call: Russell Mackey" (March 27):
- [ ] Send contract draft for review - Owner: Self - Due: March 28 - Priority: High
- [ ] Prepare proposal slides - Owner: Self - Due: April 1 - Priority: High
- [ ] Follow up on partnership terms - Owner: Self - Due: March 30 - Priority: Medium

From "Team Sync" (March 27):
- [ ] Review PR #234 - Owner: Self - Due: March 28 - Priority: High
- [ ] Update project status document - Owner: Self - Due: March 29 - Priority: Low

Total Action Items: 6
High Priority: 4 (due this week)
Medium Priority: 2
```

### Best Practices

1. **Summarize promptly** - Capture while memory is fresh (within 24 hours)
2. **Be specific** - Include dates, owners, and details for action items
3. **Document rationale** - Capture why decisions were made, not just what was decided
4. **Track outcomes** - Link summaries to deliverables and results
5. **Tag topics** - Use consistent tags for cross-referencing later
6. **Keep it actionable** - Every summary should have clear next steps
7. **Store centrally** - Keep summaries in searchable location

### Common Mistakes

❌ **Mistake 1:** Waiting days to summarize
- Fix: Summarize immediately after or within 24 hours

❌ **Mistake 2:** Vague action items with no owners or dates
- Fix: Always include owner, deadline, and priority

❌ **Mistake 3:** Not capturing decision rationale
- Fix: Document why decisions were made, not just what was decided

❌ **Mistake 4:** Too much detail, burying key points
- Fix: Focus on outcomes, decisions, action items - keep it concise

❌ **Mistake 5:** No topic tags for later search
- Fix: Add consistent topic tags to every summary

## Tier 2: Advanced Analysis & Cross-Reference

**Unlock:** Session 6

### Additional Capabilities

**Pattern Analysis:**
- Identify recurring themes across sessions
- Detect decision patterns and outcomes
- Track action item completion rates
- Analyze time distribution by topic
- Identify topics that resurface frequently

**Cross-Topic Cross-Reference:**
- Link related sessions by topic
- Trace topic evolution over time
- Find all decisions on a specific topic
- Identify related action items across sessions
- Build topic knowledge trees

**Structured Output Formats:**
- Markdown (default)
- JSON for programmatic access
- Plain text for quick reading
- PDF for sharing
- Custom templates (business, technical, academic)

**Search & Retrieval:**
- Full-text search across all summaries
- Filter by date range, topic, owner
- Find decisions by impact level
- Track incomplete action items
- Retrieve learnings by topic

### Advanced Examples

**Example 1: Pattern Analysis**
```
User: /session-summary analyze patterns --last 7 sessions

PersonalOS:
Session Pattern Analysis (March 20-27, 7 sessions):

Topic Distribution:
- PersonalOS development: 4 sessions (57%)
- Client work: 2 sessions (29%)
- Team management: 1 session (14%)

Decision Patterns:
- Technical decisions: 8 decisions (60%)
- Business decisions: 3 decisions (23%)
- Process decisions: 2 decisions (15%)

Most Common Topics (Frequency):
1. "PersonalOS skills" - 4 sessions
2. "Client proposals" - 2 sessions
3. "Code reviews" - 2 sessions

Recurring Themes:
- Theme 1: Progressive disclosure design pattern appears in 4 sessions
  - Evolution: Basic concept (Session 1) → Implementation (Session 3) → Refinement (Session 5) → Standardization (Session 7)
- Theme 2: Client proposal quality concerns appear in 2 sessions
  - Pattern: Feedback → Implementation → Follow-up
- Theme 3: Testing discussions appear in 3 sessions
  - Status: Unresolved, needs dedicated session

Action Item Completion:
- Total items assigned: 28
- Completed: 22 (79%)
- Overdue: 4 (14%)
- In progress: 2 (7%)

Insight: PersonalOS development is dominating focus; consider balancing with client work
```

**Example 2: Cross-Topic Reference**
```
User: /session-summary cross-reference "pricing strategy" --all-sessions

PersonalOS:
All references to "pricing strategy" across sessions:

Session: Pricing Strategy Discussion (March 10, 2024)
- Decision: Monthly pricing at $49/mo for individual plans
- Rationale: Competitive analysis showed market rate
- Related: Session March 15 (pricing adjustments)

Session: Pricing Adjustment (March 15, 2024)
- Decision: Introduced annual discount (20% off)
- Rationale: Reduce churn, improve LTV
- Related to: Session March 10 (initial pricing)

Session: Enterprise Pricing (March 27, 2026)
- Decision: Switch to annual-only for enterprise
- Rationale: Predictable revenue, matches competitors
- Related: Session March 15 (annual discount), Session March 10 (initial pricing)

Topic Evolution Timeline:
March 10: Monthly $49 baseline established
   ↓
March 15: Annual discount (20% off) introduced
   ↓
March 27: Enterprise annual-only policy

Pattern: Pricing strategy evolving toward annual focus to reduce churn and improve predictability
```

**Example 3: Structured Output**
```
User: /session-summary generate --format json --with-attachments

PersonalOS:
✓ Generated session summary in JSON format with attachments

{
  "session_id": "ses-20240327-personal-os-v1.1.0",
  "date": "2026-03-27T14:00:00Z",
  "duration_minutes": 90,
  "participants": ["Self"],
  "goal": "Plan Phase 6 skills for PersonalOS v1.1.0",
  "outcomes": [
    "Identified 5 missing core skills for Phase 6",
    "Decided on skill naming and structure",
    "Planned progressive disclosure tiers",
    "Mapped integration points"
  ],
  "decisions": [
    {
      "decision": "Phase 6 focus: Essential Core Skills",
      "details": ["daily-agenda", "session-summary", "draft-email", "quick-research", "meeting-notes"],
      "rationale": "Complete v1.0.0 core functionality that was documented but not implemented",
      "impact": "High",
      "owner": "Zain",
      "alternatives_considered": []
    }
  ],
  "action_items": [
    {
      "action": "Create daily-agenda skill",
      "estimated_size": "17 KB",
      "owner": "Self",
      "due_date": "2026-03-27",
      "priority": "High",
      "status": "pending"
    },
    ...
  ],
  "learnings": [
    "Core skills need 3 progressive tiers (L1: Guided, L2: Advanced, L3: Expert)",
    "Skill integration points should be explicit for better discovery",
    "Session unlocks should be staggered for progressive capability growth"
  ],
  "topics": ["PersonalOS v1.1.0 development", "Skill design patterns"],
  "attachments": [
    {
      "name": "phase6-planning-notes.md",
      "path": "/Users/zain/.hermes/cadence-rd/phase6-notes.md",
      "size_bytes": 4521
    }
  ]
}

JSON saved to: /Users/zain/.hermes/cadence-rd/summaries/ses-20240327-personal-os-v1.1.0.json
```

### Advanced Best Practices

1. **Regularly analyze patterns** - Run pattern analysis weekly or monthly
2. **Cross-reference before big decisions** - See what's been decided on the topic before
3. **Use structured formats for sharing** - JSON for integrations, PDF for reports
4. **Search across all summaries** - Full-text search is powerful for recall
5. **Track incomplete action items** - Review overdue items weekly
6. **Build topic knowledge trees** - See how topics evolve over time

### Advanced Common Mistakes

❌ **Mistake 1:** Never analyzing patterns across sessions
- Fix: Run pattern analysis weekly to identify trends

❌ **Mistake 2:** Making decisions without cross-referencing past sessions
- Fix: Search topic history before major decisions

❌ **Mistake 3:** Not using structured formats for team sharing
- Fix: Export to PDF for reports, JSON for integrations

❌ **Mistake 4:** Losing track of incomplete action items
- Fix: Review overdue items weekly in your agenda

❌ **Mistake 5:** No system for finding old summaries
- Fix: Store in central location, use consistent file naming, enable search

## Tier 3: Auto-Summarization & Knowledge Integration

**Unlock:** Session 11

### Expert Capabilities

**Real-Time Auto-Summarization:**
- Automatically summarize sessions as they complete
- Generate draft summaries while session is ongoing
- Extract decisions and action items in real-time
- Prompt for clarification on ambiguous items
- Auto-tag topics based on content analysis

**Knowledge Graph Integration:**
- Link sessions to knowledge graph nodes
- Create topic relationships automatically
- Trace decision lineage and evolution
- Identify knowledge gaps needing coverage
- Suggest related sessions for context

**Predictive Forecasting:**
- Predict session duration based on topic and goals
- Estimate completion probability
- Identify potential blockers before they occur
- Suggest optimal session sequencing
- Forecast resource needs

**Automated Action Item Tracking:**
- Auto-extract action items from all sessions
- Track due dates and send reminders
- Escalate overdue items
- Link action items to deliverables
- Generate completion reports

### Expert Examples

**Example 1: Real-Time Auto-Summarization**
```
User: (Completing a session on product roadmap)

PersonalOS:
⚙️ Auto-summarizing session...

Session Summary Draft - Product Roadmap Discussion (March 27, 3:00-4:30 PM)

Captured from session:
✓ Topic: Product roadmap planning for Q2-Q4 2026
✓ Participants: Self, Product Lead, Engineering Lead

Key Decisions (Auto-detected):
1. Mobile app deferred to Q4 2026
   - Detected from: "We'll push mobile to Q4, focus on web MVP first"
   - Owner: Product team
   - Impact: High

2. AI assistant feature approved for v2.0
   - Detected from: "Let's add AI to v2.0, user research shows demand"
   - Owner: Engineering team
   - Impact: Medium

Action Items (Auto-extracted):
- [ ] Update roadmap document - Owner: Self - Due: March 28
- [ ] Schedule AI feature planning session - Owner: Engineering - Due: April 5
- [ ] Communicate mobile timeline to stakeholders - Owner: Product - Due: March 29

Unclear Items (need clarification):
? "We'll figure out pricing later" - Specific timeline? Owner?
? "Need to talk to finance" - Who? When?

Please review and confirm:
1. Are all decisions accurate?
2. Are action item owners and due dates correct?
3. Any additional outcomes to add?
4. Clarification needed on unclear items?
```

**Example 2: Knowledge Graph Integration**
```
User: /session-summary link-topics --knowledge-graph

PersonalOS:
✓ Session summaries integrated with knowledge graph

Topics Mapped:
- "PersonalOS development" → Connected to 7 session summaries, 3 decisions
- "Pricing strategy" → Connected to 3 session summaries, 5 decisions (evolution traced)
- "Client proposals" → Connected to 2 session summaries, 4 action items

Decision Lineage Trace: Pricing Strategy
Session 1 (March 10): Monthly $49 baseline
   ↓ spawns
Session 2 (March 15): Annual discount (20% off)
   ↓ influences
Session 3 (March 27): Enterprise annual-only
   ↓ current state

Knowledge Gaps Identified:
- "Mobile app" - No recent decisions, needs strategy session
- "AI features" - New topic, first decision (v2.0), may need refinement
- "Competitive analysis" - No dedicated session, scattered across topics

Suggestions:
1. Schedule dedicated session for mobile app strategy (gap identified)
2. Create AI feature topic node and track related decisions
3. Consider cross-referencing competitive analysis in existing sessions
```

**Example 3: Predictive Forecasting**
```
User: /session-summary forecast --based-on-history

PersonalOS:
Session Forecast Based on Historical Patterns:

Upcoming Session: "Q2 Planning Session" (Scheduled March 30)

Predicted Outcomes:
- Expected duration: 90-120 minutes (based on 5 previous planning sessions)
- Decisions expected: 4-6 decisions (avg 5 per planning session)
- Action items expected: 6-8 items (avg 7 per planning session)
- Completion probability: 85% (historical)

Risk Factors:
⚠️ Risk 1: Scope creep likely (occurred in 40% of planning sessions)
   - Mitigation: Set clear agenda and timebox topics
⚠️ Risk 2: Action item assignments unclear (occurred in 30% of planning sessions)
   - Mitigation: Confirm owners and due dates during session
⚠️ Risk 3: Decision deferred due to missing info (occurred in 20% of planning sessions)
   - Mitigation: Prep research materials beforehand

Recommendations:
1. Create detailed agenda with timeboxes
2. Prepare research materials on budget, resources, and competitors
3. Have owner list ready for action item assignment
4. Schedule follow-up session for deferred decisions

Historical Pattern:
Last 3 planning sessions all ran 15-30 minutes over due to scope expansion
Recommendation: Start with 75-min agenda, leave 45-min buffer
```

### Expert Best Practices

1. **Enable real-time summarization** - Capture immediately, review later
2. **Integrate with knowledge graph** - Build topic relationships over time
3. **Review auto-generated drafts** - Confirm accuracy and add missing items
4. **Use forecasting for planning** - Predict duration and risks before sessions
5. **Track decision lineage** - See how decisions evolve and influence each other
6. **Identify knowledge gaps** - Find topics that need dedicated sessions
7. **Automate action item tracking** - Set reminders for due dates and escalations

### Expert Common Mistakes

❌ **Mistake 1:** Blindly accepting auto-generated summaries
- Fix: Always review and confirm, especially decisions and action items

❌ **Mistake 2:** Not integrating with knowledge graph
- Fix: Enable integration to build topic relationships over time

❌ **Mistake 3:** Ignoring predictive forecasts
- Fix: Use forecasts to identify risks and prepare accordingly

❌ **Mistake 4:** Not clarifying ambiguous items during auto-summarization
- Fix: Respond to clarification prompts immediately

❌ **Mistake 5:** Letting action items fall through cracks
- Fix: Enable automated tracking and reminders

## Integration with Other Skills

- **knowledge-graph**: Link sessions to knowledge nodes and topic trees
- **spaced-repetition**: Review important decisions and learnings periodically
- **message-review**: Ensure messages include key session outcomes
- **quick-research**: Find related information during summary creation
- **task-automation**: Auto-generate summaries and extract action items

## Troubleshooting

**Issue:** Can't remember details from old sessions
- Fix: Use full-text search across all summaries; cross-reference by topic

**Issue:** Action items keep getting forgotten
- Fix: Enable automated tracking; review overdue items weekly in agenda

**Issue:** Making decisions that conflict with past decisions
- Fix: Always cross-reference topic history before major decisions

**Issue:** Summaries are too time-consuming to create
- Fix: Enable auto-summarization; review and confirm instead of writing from scratch

**Issue:** Can't find relevant summaries when needed
- Fix: Use consistent file naming, tag topics, enable search

## Success Metrics

- Session summaries created within 24 hours > 90%
- Action items with owners and due dates > 95%
- Action item completion rate > 80%
- Decisions documented with rationale > 90%
- Summaries searchable by topic > 100%
- Pattern analysis run weekly > 80% compliance
