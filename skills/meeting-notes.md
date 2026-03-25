---
name: meeting-notes
description: Capture, organize, and synthesize meeting notes with automatic action item extraction and key takeaways
version: 1.0.0
metadata:
  hermes:
    tags: [productivity, collaboration, documentation, workflow]
    related_skills: [session-summary, task-automation, project-status, standup-bot]
    unlock: session-5
---

# Meeting Notes

Capture comprehensive meeting notes with automatic action item extraction, key takeaways, and follow-up tracking.

## What This Skill Does

The Meeting Notes skill helps you:
- Capture comprehensive meeting notes in real-time
- Extract action items with owners and deadlines
- Identify key decisions and rationale
- Summarize main takeaways and outcomes
- Organize notes by topic and speaker
- Track action items to completion

## Usage

**Basic Usage (L1):**
```
/meeting-notes capture --live [meeting title]
/meeting-notes extract [notes/text] --action-items
/meeting-notes summarize [meeting]
```

**Advanced Usage (L2):**
```
/meeting-notes --auto-structure --by-speaker --by-topic
/meeting-notes --cross-reference [previous meetings]
/meeting-notes --integrate-with-calendar --sync-events
```

**Expert Usage (L3):**
```
/meeting-notes --real-time-ai --suggestions
/meeting-notes --predict-outcomes --based-on-history
/meeting-notes --continuous-tracking --escalate-overdue
```

## Tier 1: Note Capture & Organization

**Unlock:** Session 5

### Capabilities

**Live Note Capture:**
- Real-time note taking during meetings
- Tag speakers and topics
- Highlight important points
- Capture quotes and specific numbers
- Mark decisions and action items

**Note Organization:**
- Organize by topic or speaker
- Structure with headers and bullet points
- Add timestamps for context
- Link related notes together
- Search and filter notes

**Action Item Extraction:**
- Identify action items from notes
- Assign owners when mentioned
- Note deadlines if specified
- Link action items to decisions
- Track action item status

### Meeting Notes Template

```
Meeting Notes: [Meeting Title]

**Date/Time:** [Date, Start-End Time]
**Duration:** [X minutes]
**Location/Platform:** [Location or Zoom/Teams link]
**Attendees:** [List of participants]
**Purpose:** [Why this meeting is happening]

---

**Agenda:**
1. [Topic 1] - [Owner, X min]
2. [Topic 2] - [Owner, X min]
3. [Topic 3] - [Owner, X min]

---

**Key Decisions:**
1. [Decision] - [Rationale]
   - Impact: [High/Medium/Low]
   - Owner: [Who]
   - Deadline: [If applicable]

2. [Decision] - [Rationale]
   - Impact: [High/Medium/Low]
   - Owner: [Who]
   - Deadline: [If applicable]

---

**Action Items:**
- [ ] [Action] - Owner: [Name] - Due: [Date] - Priority: [High/Medium/Low]
- [ ] [Action] - Owner: [Name] - Due: [Date] - Priority: [High/Medium/Low]
- [ ] [Action] - Owner: [Name] - Due: [Date] - Priority: [High/Medium/Low]

---

**Key Takeaways:**
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

---

**Open Questions / Issues:**
- [Question 1]
- [Question 2]

---

**Next Steps:**
- [Step 1]
- [Step 2]

---

**Follow-Up Meeting:**
- Date/Time: [When is next meeting?]
- Agenda items for next meeting: [Items to revisit]

---

**Notes by Topic:**

**[Topic 1]:**
- Point 1
- Point 2
- [Speaker]: Quote or specific point

**[Topic 2]:**
- Point 1
- Point 2
- [Speaker]: Quote or specific point

---

**Raw Notes:**
[Full transcription or detailed notes]
```

### Examples

**Example 1: Live Note Capture**
```
User: /meeting-notes capture --live "Q1 Performance Review"

PersonalOS:
✓ Meeting notes session started

Meeting Notes: Q1 Performance Review
Started: March 27, 2026, 10:00 AM

Enter notes during meeting. Use commands:
- /speaker [name] - Tag current speaker
- /topic [topic] - Start new topic section
- /decision [text] - Mark a decision
- /action [text] - Add action item
- /highlight [text] - Highlight important point
- /quote [speaker] [text] - Capture direct quote

Type /done when meeting ends to finalize notes.

---

[User enters notes throughout meeting...]

[10:05] /topic Performance metrics review
[Speaker: Sarah] Q1 revenue: $1.2M (up 15% from Q4)
/highlight Q1 revenue beat target by 10%
[Speaker: Sarah] Customer acquisition cost: $450 (down 8%)
[Speaker: Sarah] Retention rate: 92% (unchanged)

[10:20] /topic Product roadmap
[Speaker: James] Mobile app progress: 80% complete
/decision Mobile app delayed to Q4 (resource constraints)
/quote James "We need to focus on web MVP first"
/action Complete web MVP - Owner: Engineering - Due: April 15 - Priority: High

[10:35] /topic Budget
[Speaker: Lisa] Q2 budget approved: $500K
/action Schedule Q2 planning session - Owner: Lisa - Due: April 5 - Priority: Medium

[10:45] /done

PersonalOS:
✓ Meeting notes finalized

Meeting Summary:
- Duration: 45 minutes
- Topics covered: 3 (Performance metrics, Product roadmap, Budget)
- Decisions made: 1 (Mobile app delay)
- Action items: 2
- Highlights: 1
- Quotes captured: 1

Full notes saved to: /Users/zain/.hermes/cadence-rd/meeting-notes/q1-performance-review-2026-03-27.md
```

**Example 2: Extract Action Items**
```
User: /meeting-notes extract [provided meeting transcript] --action-items

PersonalOS:
Action Items Extracted from Meeting Transcript:

Meeting: Team Sync - March 27, 2026

Action Items Identified:

1. Review PR #234 for main branch merge
   - Owner: Zain
   - Due: March 28
   - Priority: High
   - Context: "Zain, can you review that PR today or tomorrow?"

2. Update project status document with Q1 metrics
   - Owner: Sarah
   - Due: March 29
   - Priority: Medium
   - Context: "Sarah, please update the project status doc with the numbers we just discussed"

3. Schedule client follow-up call with GymGum
   - Owner: James
   - Due: April 1
   - Priority: Medium
   - Context: "We should follow up with GymGum next week on the contract terms"

4. Prepare slides for quarterly review meeting
   - Owner: Lisa
   - Due: April 5
   - Priority: High
   - Context: "Lisa, you'll handle the quarterly review presentation next Friday"

5. Test integration with new API endpoint
   - Owner: Engineering team
   - Due: April 3
   - Priority: Low
   - Context: "Once the API is updated, test the integration"

Action Items Summary:
- Total: 5
- High priority: 2
- Medium priority: 2
- Low priority: 1
- Owners assigned: 5 unique

Action items added to tracking system.
```

**Example 3: Summarize Meeting**
```
User: /meeting-notes summarize "Q1 Performance Review meeting"

PersonalOS:
Meeting Summary: Q1 Performance Review

**Date/Time:** March 27, 2026, 10:00-10:45 AM (45 minutes)
**Attendees:** Sarah (Finance), James (Product), Lisa (Operations), Zain (Engineering)

**Purpose:** Review Q1 2026 performance and discuss Q2 planning

**Key Decisions:**
1. Mobile app delayed to Q4 2026
   - Rationale: Resource constraints, web MVP takes priority
   - Impact: High (affects product roadmap)
   - Owner: Product team

2. Q2 budget approved at $500K
   - Rationale: Based on Q1 performance and Q2 goals
   - Impact: Medium
   - Owner: Operations

**Key Takeaways:**
- Q1 revenue: $1.2M (up 15% from Q4, 10% above target)
- CAC reduced by 8% to $450 (improving)
- Retention rate stable at 92% (good)
- Web MVP on track for Q2 launch
- Product team focused on web, mobile deferred to Q4

**Action Items:**
- [ ] Complete web MVP - Owner: Engineering - Due: April 15 - Priority: High
- [ ] Schedule Q2 planning session - Owner: Lisa - Due: April 5 - Priority: Medium
- [ ] Update revenue forecast for Q2 - Owner: Sarah - Due: April 3 - Priority: Medium
- [ ] Draft mobile app Q4 plan - Owner: James - Due: April 10 - Priority: Low

**Open Questions:**
- How will Q2 budget be allocated across teams?
- What are the key metrics for web MVP success?

**Next Steps:**
1. Engineering continues web MVP development
2. Operations allocates Q2 budget
3. Product team drafts Q4 mobile app plan
4. Q2 planning session scheduled

**Follow-Up Meeting:**
- Date/Time: April 5, 2026, 10:00 AM
- Agenda: Q2 planning session
- Items to revisit: Mobile app timeline, budget allocation

---

Summary delivered in 267 words.
```

### Best Practices

1. **Set agenda before meeting** - Know what you want to capture
2. **Capture decisions and action items first** - These are most important
3. **Tag speakers and topics** - Makes notes searchable and organized
4. **Use timestamps** - Helps with context and reference
5. **Review notes immediately after meeting** - Fill in gaps while fresh
6. **Share notes with attendees** - Ensures accuracy and alignment
7. **Link to related documents** - Context for decisions and discussions

### Common Mistakes

❌ **Mistake 1:** Transcribing everything verbatim
- Fix: Focus on key points, decisions, action items - summarize the rest

❌ **Mistake 2:** Not capturing owners and deadlines for action items
- Fix: Always ask "who owns this?" and "when is it due?"

❌ **Mistake 3:** No organization, just chronological notes
- Fix: Structure by topic or speaker, add headers

❌ **Mistake 4:** Not capturing decision rationale
- Fix: Document why decisions were made, not just what was decided

❌ **Mistake 5:** Never sharing or reviewing notes
- Fix: Share with attendees, review for accuracy

## Tier 2: Advanced Structure & Integration

**Unlock:** Session 10

### Additional Capabilities

**Auto-Structure by Speaker:**
- Automatically identify and tag speakers
- Group notes by who spoke
- Track speaker participation patterns
- Generate speaker summaries
- Find all contributions by a specific person

**Auto-Structure by Topic:**
- Detect topic changes automatically
- Group notes by theme
- Identify recurring topics across meetings
- Generate topic summaries
- Map topic relationships

**Calendar Integration:**
- Sync meeting notes with calendar events
- Auto-create note file for scheduled meetings
- Link notes to calendar invites
- Remind to capture notes before meetings
- Share notes with attendees automatically

**Cross-Reference Previous Meetings:**
- Link related meetings together
- Track topic evolution over time
- Find all notes on a specific topic
- Identify recurring issues or decisions
- Generate meeting series summaries

### Advanced Examples

**Example 1: Auto-Structure by Speaker**
```
User: /meeting-notes --auto-structure --by-speaker [meeting transcript]

PersonalOS:
✓ Meeting notes structured by speaker

Meeting: Q1 Performance Review - Structured by Speaker

**Sarah (Finance):**
Contributions: 6 points
Total speaking time: ~18 minutes

Key Points:
- Q1 revenue: $1.2M (up 15% from Q4, 10% above target)
- CAC: $450 (down 8% from Q4)
- Retention rate: 92% (stable)
- Budget approval: Q2 budget of $500K approved
- Quote: "We're seeing good efficiency gains in customer acquisition"
- Action item: Update revenue forecast for Q2 (due April 3)

Participation: Active on financial metrics and budget topics

---

**James (Product):**
Contributions: 5 points
Total speaking time: ~15 minutes

Key Points:
- Mobile app: 80% complete
- Decision: Mobile app delayed to Q4 (resource constraints)
- Web MVP: On track for Q2 launch
- Quote: "We need to focus on web MVP first, mobile can wait"
- Action item: Draft Q4 mobile app plan (due April 10)

Participation: Focus on product roadmap and priorities

---

**Lisa (Operations):**
Contributions: 4 points
Total speaking time: ~12 minutes

Key Points:
- Q2 budget: Approved at $500K
- Timeline: On schedule for Q2 launch
- Action item: Schedule Q2 planning session (due April 5)

Participation: Operational planning and coordination

---

**Zain (Engineering):**
Contributions: 3 points
Total speaking time: ~9 minutes

Key Points:
- Web MVP technical progress: 75% complete
- No blockers identified
- On track for April 15 delivery

Participation: Technical updates

---

Speaker Participation Summary:
- Most active: Sarah (Finance) - 18 minutes, 6 points
- James (Product): 15 minutes, 5 points
- Lisa (Operations): 12 minutes, 4 points
- Zain (Engineering): 9 minutes, 3 points

Note: Good balance across team, no speakers dominating
```

**Example 2: Calendar Integration**
```
User: /meeting-notes --integrate-with-calendar --sync-events

PersonalOS:
✓ Calendar integration active

Upcoming Meetings (Next 7 Days):

Today (March 27):
- [2:00 PM] Team Sync - [Create Notes] [Attendees: 5]
  - Pre-meeting prep: Review action items from last sync
  - Suggested agenda: Status updates, blockers, planning

Tomorrow (March 28):
- [10:00 AM] Client Call - Russell Mackey - [Create Notes]
  - Pre-meeting prep: Review previous notes, prepare questions
  - Suggested agenda: Partnership discussion, timeline, terms

- [3:00 PM] Product Roadmap Review - [Create Notes]
  - Pre-meeting prep: Review current roadmap, prepare updates
  - Suggested agenda: Q1 completion, Q2 priorities, Q4 mobile app

Friday (March 29):
- [11:00 AM] Engineering Sync - [Create Notes]
  - Pre-meeting prep: Review PRs, prepare technical updates
  - Suggested agenda: PR review, technical blockers, sprint planning

Next Week:
- Monday (April 1): Client Follow-Up - GymGum
- Wednesday (April 3): Quarterly Review Preparation
- Friday (April 5): Q2 Planning Session

Features Enabled:
✓ Auto-create note file when meeting starts
✓ Pre-meeting prep suggestions
✓ Agenda recommendations based on previous meetings
✓ Link notes to calendar events
✓ Share notes with attendees automatically

Meeting Notes Folder Structure:
/Users/zain/.hermes/cadence-rd/meeting-notes/
  ├── 2026/
  │   ├── march/
  │   │   ├── team-sync-2026-03-27.md
  │   │   ├── client-russell-mackey-2026-03-28.md
  │   │   └── product-roadmap-2026-03-28.md
  │   └── april/
  │       ├── q2-planning-2026-04-05.md
  │       └── ...
```

**Example 3: Cross-Reference Previous Meetings**
```
User: /meeting-notes --cross-reference [topic: "mobile app"] --all-meetings

PersonalOS:
✓ All meetings referencing "mobile app" found and cross-referenced

**Topic Evolution: Mobile App Development**

**Meeting 1: Product Roadmap Kickoff** (January 15, 2026)
- Decision: Mobile app to be developed alongside web app
- Timeline: Both apps Q2 2026 launch
- Owner: Product team
- Action: Allocate 2 engineers to mobile app
- Status: Initial planning phase

**Meeting 2: Q1 Planning** (February 1, 2026)
- Update: Mobile app progress: 30% complete
- Decision: Mobile app timeline adjusted to late Q2
- Rationale: Web app taking more resources than expected
- Action: Reallocate 1 engineer to web app
- Status: Development ongoing, timeline extended

**Meeting 3: Resource Allocation** (February 20, 2026)
- Issue: Web app requiring more time than planned
- Decision: Pause mobile app development temporarily
- Rationale: Focus resources on web MVP
- Timeline: Mobile app on hold until web MVP complete
- Action: Mobile team reassigned to web app
- Status: Paused

**Meeting 4: Q1 Performance Review** (March 27, 2026) ← Current
- Update: Mobile app at 80% complete (from before pause)
- Decision: Mobile app delayed to Q4 2026
- Rationale: Resource constraints, web MVP priority
- Timeline: Q4 2026 launch (revised from Q2)
- Action: Draft Q4 mobile app plan
- Status: On hold, resuming Q3

---

**Topic Timeline Analysis:**

**January 2026:**
- Initial plan: Mobile + Web, both Q2 launch
- 2 engineers allocated to mobile

**February 2026:**
- Web app resource issues emerge
- Timeline adjusted: Mobile late Q2
- 1 engineer moved to web
- Mobile paused when web required more resources

**March 2026:**
- Decision confirmed: Mobile delayed to Q4
- Q3 focus on mobile planning and resume
- Q4 launch target

**Pattern Identified:**
Mobile app timeline has been extended three times (Q2 → late Q2 → Q4)
Primary driver: Resource constraints and web app taking priority
Success factor: Web MVP must complete before mobile resumes

**Open Questions:**
- Will Q4 timeline be achievable? (3rd extension)
- What happens if web MVP slips again?
- Should mobile app be cancelled instead of continued delays?

**Related Decisions:**
- "Web MVP takes priority over mobile" (March 27, 2026)
- "Allocate resources to highest-impact features" (February 20, 2026)

**Cross-Reference Network:**
Mobile app → Web MVP → Resource Allocation → Q2 Planning

All meetings linked in knowledge graph for easy navigation.
```

### Advanced Best Practices

1. **Use speaker structure for complex meetings** - See who contributed what
2. **Enable calendar integration** - Never forget to take notes again
3. **Cross-reference related meetings** - Track topic evolution over time
4. **Review speaker participation** - Ensure everyone is heard
5. **Link decisions to previous meetings** - Show decision lineage
6. **Identify recurring issues** - Topics that keep coming up need resolution

### Advanced Common Mistakes

❌ **Mistake 1:** Not organizing notes by structure
- Fix: Use auto-structure by speaker or topic for better navigation

❌ **Mistake 2:** No calendar integration
- Fix: Enable sync to auto-create notes and remind before meetings

❌ **Mistake 3:** Never cross-referencing previous meetings
- Fix: Track topic evolution and decision lineage

❌ **Mistake 4:** Missing patterns across meetings
- Fix: Look for recurring issues that need resolution

❌ **Mistake 5:** Not sharing notes with attendees
- Fix: Auto-share via calendar integration

## Tier 3: Real-Time AI & Predictive Analysis

**Unlock:** Session 14

### Expert Capabilities

**Real-Time AI Assistance:**
- Suggest follow-up questions during meeting
- Identify potential conflicts or inconsistencies
- Propose solutions or next steps
- Capture action items automatically
- Real-time summarization

**Predictive Outcome Analysis:**
- Predict meeting duration based on agenda
- Identify potential blockers before meeting
- Forecast action item completion probability
- Estimate resource needs based on agenda items
- Predict likely outcomes based on history

**Continuous Action Item Tracking:**
- Auto-escalate overdue action items
- Remind owners of upcoming deadlines
- Predict action item completion probability
- Suggest resources or support for at-risk items
- Generate completion reports

**Meeting Intelligence:**
- Analyze meeting effectiveness over time
- Identify which meeting types have best outcomes
- Suggest agenda improvements
- Optimize meeting duration and frequency
- Recommend participants based on topic

### Expert Examples

**Example 1: Real-Time AI Suggestions**
```
User: /meeting-notes --real-time-ai --suggestions [during meeting]

PersonalOS:
✓ Real-time AI assistance enabled

During meeting, you'll receive suggestions:

[10:15] 💡 Suggestion: Ask about mobile app resource requirements
Context: Mobile app is 80% complete but hasn't been mentioned since decision to delay
Recommended question: "What resources are needed to resume mobile development in Q3?"

[10:25] 💡 Suggestion: Note potential conflict
Context: Sarah said budget is $500K for Q2, but James mentioned needing $600K for web MVP
Conflict detected: $100K gap between budget and estimate
Recommended action: Ask for clarification on budget vs. needs

[10:35] 💡 Suggestion: Add action item
Context: Discussion about Q2 planning but no one assigned to own the session
Recommended action item: "Schedule Q2 planning session - Owner: [TBD] - Due: [Date]"

[10:40] 💡 Suggestion: Consider next step
Context: Decision made on mobile app timeline, but no follow-up plan
Recommended next step: "Draft Q4 mobile app plan" with owner and due date

[10:45] 💡 Suggestion: Summarize key decision
Context: Mobile app delayed to Q4 with resource constraints rationale
Decision summary: "Mobile app deferred to Q4 2026 due to resource constraints; web MVP takes priority"

Meeting Summary (generated in real-time):
- Decisions: 1 (Mobile app delay)
- Action items: 3 (captured + 1 suggested)
- Conflicts identified: 1 (budget gap)
- Suggestions made: 4

Would you like to:
1. Accept all suggested action items?
2. Review suggestions individually?
3. Ignore suggestions and finalize notes?
```

**Example 2: Predictive Outcome Analysis**
```
User: /meeting-notes --predict-outcomes --based-on-history "Q2 Planning Session"

PersonalOS:
Predictive Analysis: Q2 Planning Session (Scheduled April 5, 2026)

**Meeting Prediction:**

Predicted Duration: 75-90 minutes
- Based on: Previous 3 planning sessions averaged 82 minutes
- Agenda complexity: Medium-high (5 major topics)
- Participants: 4 (similar to previous planning sessions)
- Confidence: 85%

Potential Blockers (Predicted):
⚠️ Blocker 1: Budget allocation disagreement (Probability: 60%)
- Historical pattern: Budget discussions in 40% of previous planning sessions
- Likely stakeholders: Sarah (Finance), Lisa (Operations)
- Mitigation: Prep budget breakdown before meeting

⚠️ Blocker 2: Scope creep (Probability: 50%)
- Historical pattern: Planning sessions expand by 20-30 minutes on average
- Likely cause: Last-minute agenda items, detailed discussions
- Mitigation: Timebox topics, defer deep dives to follow-up

⚠️ Blocker 3: Unclear action item owners (Probability: 35%)
- Historical pattern: 3 of last 10 planning sessions had unassigned actions
- Likely topics: New initiatives, cross-functional tasks
- Mitigation: Assign owners immediately when identifying actions

Predicted Action Item Volume:
- Expected: 6-8 action items
- Based on: Average 7.2 items from previous planning sessions
- High priority expected: 2-3 items
- Owners: Likely 4-5 unique owners

Resource Needs Predicted:
- Engineering: Likely 3 action items (development, testing, deployment)
- Product: Likely 2 action items (roadmap, features)
- Operations: Likely 1 action item (planning, budget)
- Finance: Likely 1 action item (forecast, reporting)

Likely Outcomes:
✓ High Confidence (75%+): Q2 goals will be set, budget approved
✓ Medium Confidence (50-75%): Timeline finalized, resources allocated
⚠️ Lower Confidence (<50%): Mobile app plan finalized (depends on web MVP)

Risk Factors:
- Risk 1: If web MVP slips, mobile app planning may be postponed (Medium)
- Risk 2: Budget gap may require re-allocation discussion (Low-Medium)
- Risk 3: New initiatives proposed beyond current capacity (Medium)

**Recommendations:**

Pre-Meeting Preparation:
1. Prepare detailed budget breakdown (addresses potential blocker 1)
2. Create timeboxed agenda with topic owners (addresses scope creep)
3. Have owner list ready for action items (addresses unclear owners)
4. Prepare contingency for web MVP delay scenarios

During Meeting:
1. Use timeboxing to stay within 90 minutes
2. Assign owners immediately when action items identified
3. Note dependencies between action items
4. Record decision rationale for future reference

Post-Meeting:
1. Send meeting summary within 24 hours
2. Schedule follow-up sessions for deferred topics
3. Review action items in next team sync
4. Update project status document

**Historical Context:**

Previous Planning Sessions (Last 3):
- Session 1 (Jan 15): 75 minutes, 7 action items, completed 6/7 (86%)
- Session 2 (Feb 1): 90 minutes, 8 action items, completed 5/8 (62%)
- Session 3 (Feb 20): 80 minutes, 6 action items, completed 6/6 (100%)

Trend: Action item completion improving (62% → 86% → 100%)
Note: February sessions had budget/resource issues, leading to lower completion

Prediction Confidence: High (based on clear historical patterns)
```

**Example 3: Continuous Action Item Tracking**
```
User: /meeting-notes --continuous-tracking --escalate-overdue

PersonalOS:
✓ Continuous action item tracking enabled

**Action Item Status Report** (March 27, 2026):

**Overdue Items (Need Attention):**
⚠️ 3 items overdue - Escalation recommended

1. Review PR #234
   - Owner: Zain
   - Due: March 26 (1 day overdue)
   - Priority: High
   - Impact: Blocking team merge
   - Escalation: Sent reminder to Zain, flagged in team sync

2. Update revenue forecast Q2
   - Owner: Sarah
   - Due: March 25 (2 days overdue)
   - Priority: Medium
   - Impact: Q2 planning incomplete
   - Escalation: Sent reminder, added to team sync agenda

3. Client follow-up - GymGum contract
   - Owner: James
   - Due: March 24 (3 days overdue)
   - Priority: High
   - Impact: Client relationship at risk
   - Escalation: Escalated to manager, scheduled urgent discussion

**Upcoming Deadlines (Next 7 Days):**
⏳ 5 items due this week

1. Complete web MVP (Due: April 1, High)
   - Owner: Engineering team
   - Progress: 75%
   - Confidence: On track ✅

2. Schedule Q2 planning session (Due: April 2, Medium)
   - Owner: Lisa
   - Progress: Not started
   - Confidence: Medium risk ⚠️

3. Draft Q4 mobile app plan (Due: April 3, Low)
   - Owner: James
   - Progress: Not started
   - Confidence: Low risk ✅

4. Update project status document (Due: April 4, Medium)
   - Owner: Sarah
   - Progress: In progress (50%)
   - Confidence: On track ✅

5. Prepare quarterly review slides (Due: April 5, High)
   - Owner: Lisa
   - Progress: Not started
   - Confidence: Medium risk ⚠️

**Completion Predictions:**

High Confidence (≥80% completion):
- Complete web MVP (85%)
- Update project status document (90%)
- Draft Q4 mobile app plan (80%)

Medium Confidence (50-79% completion):
- Schedule Q2 planning session (65%)
- Prepare quarterly review slides (60%)

Low Confidence (<50% completion):
- None

**Action Item Health Score: 72%**
- Total active items: 12
- On track: 7 (58%)
- At risk: 3 (25%)
- Overdue: 2 (17%)

**Trends:**
- Completion rate improving: 62% → 86% → 72% (current)
- Overdue rate stable: ~15% over last month
- Action item volume: Average 6-8 per meeting (consistent)

**Recommendations:**
1. Address 3 overdue items immediately (all high/medium priority)
2. Monitor 2 at-risk items this week (Q2 planning, quarterly review)
3. Consider reducing action item volume to improve completion rate
4. Schedule action item review in next team sync

**Automated Actions:**
✓ Reminders sent to overdue owners
✓ Escalations flagged to manager
✓ At-risk items added to team sync agenda
✓ Completion report scheduled for next week
```

### Expert Best Practices

1. **Enable real-time suggestions** - Don't miss important points or action items
2. **Use predictive analysis for planning** - Anticipate blockers and prepare
3. **Monitor action item health** - Track completion and escalate when needed
4. **Review meeting effectiveness** - Analyze which meetings produce best outcomes
5. **Optimize based on data** - Adjust duration, frequency, and participants
6. **Automate tracking and reminders** - Never forget a deadline

### Expert Common Mistakes

❌ **Mistake 1:** Not using real-time AI assistance
- Fix: Enable suggestions to catch action items and conflicts

❌ **Mistake 2:** Not preparing for predicted blockers
- Fix: Use predictive analysis to identify risks and prepare mitigation

❌ **Mistake 3:** Ignoring overdue action items
- Fix: Enable continuous tracking and automatic escalation

❌ **Mistake 4:** Not analyzing meeting effectiveness
- Fix: Review which meeting types produce best outcomes, optimize accordingly

❌ **Mistake 5:** No automation for tracking
- Fix: Enable continuous tracking to avoid manual follow-up

## Integration with Other Skills

- **session-summary**: Summarize meetings and extract key insights
- **task-automation**: Automate action item tracking and reminders
- **project-status**: Update project status from meeting decisions
- **standup-bot**: Capture action items from daily standups

## Troubleshooting

**Issue:** Missing important decisions during meeting
- Fix: Enable real-time AI suggestions to capture automatically

**Issue:** Action items never get completed
- Fix: Enable continuous tracking, escalate overdue items

**Issue:** Meetings always run over time
- Fix: Use predictive analysis to identify scope creep, timebox topics

**Issue:** Can't find notes from old meetings
- Fix: Use cross-reference to find all notes by topic or speaker

**Issue:** Notes not organized or structured
- Fix: Enable auto-structure by speaker or topic

## Success Metrics

- Action items with owners and deadlines > 95%
- Action item completion rate > 80%
- Notes captured for 90%+ of meetings
- Decisions documented with rationale > 90%
- Meeting summaries delivered within 24 hours > 85%
- Overdue action items < 10%
