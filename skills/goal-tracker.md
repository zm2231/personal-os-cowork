---
name: goal-tracker
version: 1.0.0
description: Track progress on goals across timeframes with metrics and milestones
tier: L1
type: productivity
unlock: session-2
requires: [habit-tracker]
---

# Goal Tracker

Track your goals across different timeframes with progress metrics, milestones, and alignment tracking.

## When to Use This Skill

Use when you want to:
- Set and track goals (quarterly, monthly, weekly)
- Monitor progress with clear metrics
- Break goals into milestones
- Align habits and daily work with goals
- Reflect on goal achievement

## How It Works

### Level 1: Basic Goal Tracking (Sessions 2-10)

I'll help you:
- Track up to 3 quarterly goals
- Set monthly and weekly goals
- Define success metrics for each goal
- Track progress with simple status updates
- Show goal alignment across timeframes

**Example:**
```
User: Set my quarterly goals: launch product, hire 2 developers, reach $10k MRR
User: Add monthly goal for March: finish MVP
User: How am I progressing on my goals?
User: Update: MVP is 60% complete
```

### Level 2: Milestone & Advanced Tracking (Sessions 11-25)

I'll also help you:
- Track 3-5 quarterly goals
- Break goals into milestones
- Show progress velocity
- Identify blockers and risks
- Generate goal reports
- Suggest goal adjustments

**Example:**
```
User: Break "launch product" into milestones
User: How fast am I progressing compared to plan?
User: What's blocking my goals?
User: Generate a goal progress report for stakeholders
User: Should I adjust my Q2 goals?
```

### Level 3: Strategic Goal Management (Sessions 26+)

I'll also help you:
- Unlimited goal tracking
- Long-term (annual) goals
- Goal interdependency mapping
- Resource allocation analysis
- OKR-style alignment
- Strategic recommendations

**Example:**
```
User: Add annual goal: become a unicorn ($1B valuation)
User: Which goals depend on others?
User: Analyze resource allocation across my goals
User: How do my goals align with company OKRs?
User: Should I drop or defer any goals?
```

## Timeframes

### Quarterly Goals (3 months)
- 3-5 major objectives
- Each has metrics and milestones
- Reviewed and adjusted monthly

### Monthly Goals
- 3-5 focus areas per month
- Feed into quarterly goals
- Reviewed weekly

### Weekly Goals
- 5-10 tactical tasks
- Directly advance monthly goals
- Reviewed daily

## Data I Track

### Level 1
- Goal list (3 quarterly max)
- Monthly goals derived from quarterly
- Weekly tasks derived from monthly
- Success metrics for each goal
- Progress status (not started/started/on track/at risk/done)
- % complete for each goal

### Level 2
- All Level 1 data
- Milestone breakdown for each goal
- Progress velocity (ahead/behind/on track)
- Blockers and risks
- Goal dependencies
- Completion predictions

### Level 3
- All Level 2 data
- Annual goals and vision
- OKR alignment
- Resource allocation metrics
- Cross-goal interdependencies
- Strategic gaps analysis

## Best Practices

1. **Goals vs. Tasks:** Goals have metrics, tasks are actionable
2. **SMART Goals:** Specific, Measurable, Achievable, Relevant, Time-bound
3. **Cascade goals:** Annual → Quarterly → Monthly → Weekly
4. **Limit goals:** 3-5 per timeframe max (focus is key)
5. **Review regularly:** Monthly for quarterly, weekly for monthly, daily for weekly

## Questions I'll Ask

At Level 1:
- "What are your top 3 goals for this quarter?"
- "What's the success metric for [goal]?"
- "What are this month's focus areas?"
- "What are this week's priorities?"
- "How's progress on [goal]?"

At Level 2:
- "Want me to break [goal] into milestones?"
- "Are you ahead or behind on [goal]?"
- "What's blocking [goal]?"
- "Generate a progress report?"
- "Any risks to [goal]?"

At Level 3:
- "What's your annual vision?"
- "How do goals align with company OKRs?"
- "Which goals depend on others?"
- "Analyze resource allocation?"
- "Strategic recommendations for your goals?"

## Examples

### Setting Goals
```
User: Set my Q2 goals: launch MVP, hire 2 engineers, secure $100k funding

Assistant: Got your Q2 goals:

🎯 Q2 GOALS (April-June):

1. Launch MVP
   - Success metric: Product live with 100 beta users
   - Status: Not started
   - % Complete: 0%

2. Hire 2 engineers
   - Success metric: 2 full-time offers accepted
   - Status: Not started
   - % Complete: 0%

3. Secure $100k funding
   - Success metric: Term sheet signed
   - Status: Not started
   - % Complete: 0%

Want me to break these into monthly and weekly goals?
```

### Progress Update
```
User: Update: MVP launch is 60% complete, on track

Assistant: Updated Q2 goals:

🎯 Q2 GOALS:

1. Launch MVP ⚡
   - Status: On track
   - % Complete: 60% (up from 50%)
   - Velocity: Ahead of schedule

2. Hire 2 engineers
   - Status: Not started
   - % Complete: 0%
   - Velocity: No data yet

3. Secure $100k funding
   - Status: Not started
   - % Complete: 0%
   - Velocity: No data yet

Next milestone for MVP: Internal testing (80% complete by May 15)
```

### Weekly Goals
```
User: What are this week's goals?

Assistant: Based on your Q2 goals, here are your weekly priorities:

📅 WEEK OF April 7-13:

From "Launch MVP" goal:
1. [ ] Finish user auth system
2. [ ] Deploy to staging environment
3. [ ] Get 5 beta testers onboarded

From "Hire 2 engineers" goal:
4. [ ] Post job descriptions
5. [ ] Screen 10 candidates

From "Secure $100k funding" goal:
6. [ ] Update pitch deck
7. [ ] Schedule 3 investor meetings

Prioritize: #1, #2, #7 (critical path for MVP)
```

### Milestone Tracking (Level 2)
```
User: Break "launch MVP" into milestones

Assistant: Here are milestones for "Launch MVP":

🎯 GOAL: Launch MVP

Milestone 1: Core Features (40%)
✅ User auth
✅ Database setup
⏳ In Progress: Dashboard UI
⏳ Pending: Analytics

Milestone 2: Beta Testing (70%)
⏳ Pending: Invite 20 users
⏳ Pending: Collect feedback
⏳ Pending: Fix critical bugs

Milestone 3: Public Launch (100%)
⏳ Pending: Final polish
⏳ Pending: Marketing materials
⏳ Pending: Product launch

Current status: Milestone 1 at 50% (on track)
```

### Progress Report (Level 2)
```
User: Generate a goal progress report

Assistant: Q2 Goal Progress Report
Generated: April 14, 2026

📊 OVERALL STATUS: On track (2/3 goals)

GOAL 1: Launch MVP
- Status: On track
- % Complete: 60%
- Velocity: Ahead of schedule
- Key milestone: Beta testing (due May 1)
- Blockers: None

GOAL 2: Hire 2 engineers
- Status: At risk
- % Complete: 25%
- Velocity: Behind schedule
- Key milestone: First offer (due April 20)
- Blockers: Low candidate quality

GOAL 3: Secure $100k funding
- Status: On track
- % Complete: 40%
- Velocity: On track
- Key milestone: Term sheet (due May 15)
- Blockers: None

RECOMMENDATIONS:
1. Prioritize hiring pipeline (post ads this week)
2. Increase investor outreach to 5 meetings/week
3. Stay focused on MVP - you're ahead!

NEXT REVIEW: April 21 (weekly check-in)
```

## Integration with Other Skills

- **habit-tracker:** Link habits to goals (e.g., "code 2 hours" → "launch MVP")
- **daily-routine:** Align daily tasks with weekly goals
- **weekly-review:** Review goal progress weekly
- **pattern-detect:** Identify what helps/hurts goal achievement
- **optimization:** Get suggestions to achieve goals faster

## Tips for Success

1. **Set fewer goals:** 3 quarterly goals max
2. **Define success metrics:** Must be measurable
3. **Cascade timeframes:** Annual → Quarterly → Monthly → Weekly
4. **Review regularly:** Don't set and forget
5. **Adjust goals:** It's okay to change course if priorities shift

## Common Mistakes

- Too many goals (lack of focus)
- Vague metrics without numbers
- Goals that depend on external factors out of your control
- Not breaking big goals into milestones
- Forgetting to review and adjust

---

**Ready to set your goals? Tell me your top 3 quarterly objectives!**
