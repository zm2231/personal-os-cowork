---
name: daily-agenda
description: "Plans and manages your daily agenda with prioritization and schedule optimization."
---

# Daily Agenda

Manage your daily agenda with AI-powered planning, prioritization, and schedule optimization.

## What This Skill Does

The Daily Agenda skill helps you:
- Plan your day with structured agenda templates
- Prioritize tasks based on urgency, importance, and energy levels
- Optimize your schedule around your peak performance times
- Track daily accomplishments and carry over incomplete tasks
- Build consistent daily planning habits

## Usage

**Basic Usage (L1):**
```
/daily-agenda plan today
/daily-agenda add task [description] [time] [priority]
/daily-agenda review progress
```

**Advanced Usage (L2):**
```
/daily-agenda optimize --energy-based
/daily-agenda block focus-time [duration] [tasks]
/daily-agenda analyze patterns --last 7 days
```

**Expert Usage (L3):**
```
/daily-agenda auto-plan --from-goals --energy-profile
/daily-agenda dynamic-reprioritize --real-time
/daily-agenda sync-calendar --google-calendar --outlook
```

## Tier 1: Guided Agenda Planning

**Unlock:** Session 1

### Capabilities

**Basic Daily Planning:**
- Create structured daily agendas with time blocks
- Add tasks with time estimates and priority levels
- Get task recommendations for your agenda
- Review and adjust agenda throughout the day
- Track completion status and capture learnings

**Task Management:**
- Add tasks with descriptions and time estimates
- Mark priority levels (urgent, important, normal, low)
- Add tasks to specific time blocks
- Move tasks between time blocks
- Mark tasks complete and record time actually spent

**Daily Review:**
- End-of-day agenda review
- Summarize accomplishments
- Identify incomplete tasks for carryover
- Track time estimation accuracy
- Capture insights for future planning

### Templates

**Standard Day Template:**
```
Morning Block (9:00-12:00)
- Deep work tasks (3 hours)
- Break every 50-60 minutes

Afternoon Block (1:00-5:00)
- Collaboration and meetings
- Admin tasks
- Break every 90 minutes

Evening Block (5:00-7:00)
- Wrap up tasks
- Planning for tomorrow
- Review accomplishments
```

**Meeting-Heavy Day Template:**
```
Pre-Meeting Prep (8:30-9:00)
- Review materials
- Set objectives

Meeting Blocks (9:00-4:00)
- 5-6 scheduled meetings
- 15-min breaks between meetings

Post-Meeting (4:00-5:00)
- Process meeting notes
- Follow-up actions
- Plan next day
```

### Examples

**Example 1: Create Daily Agenda**
```
User: /daily-agenda plan today

PersonalOS:
Today's Agenda - Wednesday, March 27:

Morning (9:00-12:00) - Deep Work Block
[09:00-10:30] Write report on Q1 performance metrics [Urgent]
[10:45-12:00] Code review for PR #234 [Important]

Afternoon (1:00-5:00) - Collaboration Block
[1:00-2:00] Team sync meeting [Urgent]
[2:15-3:00] Client call - Russell Mackey [Important]
[3:15-4:00] Respond to emails [Normal]
[4:15-5:00] Process meeting notes [Normal]

Evening (5:00-6:00) - Review & Planning
[5:00-5:30] Complete task wrap-up
[5:30-6:00] Plan tomorrow's agenda

Total tasks: 7
Deep work time: 2.5 hours
Meeting time: 2.5 hours
Admin time: 2 hours
```

**Example 2: Add Task**
```
User: /daily-agenda add task "Review contract draft" 2:30pm urgent

PersonalOS:
✓ Task added to your agenda:

[2:30-4:30] Review contract draft [Urgent]

Updated Afternoon Block:
[2:15-3:00] ⚠️ MOVED to 4:30-5:15 - Client call - Russell Mackey
[3:15-4:00] ⚠️ MOVED to after 5:15 - Respond to emails
[4:15-5:15] Review contract draft [Urgent] - NEW
[5:15-5:45] Client call - Russell Mackey [Important]
[5:45-6:30] Respond to emails [Normal]

Note: Client call time may need adjustment. Consider rescheduling if 4:30 is too late.
```

**Example 3: Review Progress**
```
User: /daily-agenda review progress

PersonalOS:
Daily Progress - Wednesday, March 27 (5:00 PM):

Completed: ✓ 5/7 tasks (71%)
  ✓ Write report on Q1 performance metrics (took 90 min, est. 90 min ✓)
  ✓ Team sync meeting (took 50 min, est. 60 min ✓)
  ✓ Client call - Russell Mackey (took 35 min, est. 45 min ✓)
  ✓ Respond to emails (took 40 min, est. 45 min ✓)
  ✓ Meeting notes processing (took 25 min, est. 45 min ✓)

Remaining: 2 tasks
  ⏳ Code review for PR #234 (scheduled 6:00-7:00 PM)
  ⏳ Review contract draft (scheduled 7:00-9:00 PM)

Time Estimation Accuracy:
- On target: 4 tasks
- Underestimated: 0 tasks
- Overestimated: 1 task (saved 20 min)

Carryover to tomorrow:
- None (both remaining tasks scheduled today)
```

### Best Practices

1. **Plan your day the night before** - Reduces decision fatigue in the morning
2. **Schedule deep work first** - Tackle complex tasks when energy is highest
3. **Build buffer time** - Add 15-30 minute buffers between major tasks
4. **Group similar tasks** - Batch emails, meetings, admin work
5. **Review and adjust** - Check agenda mid-morning and afternoon
6. **Be realistic** - Don't over-schedule your day
7. **Track completion** - Mark tasks done and record actual time

### Common Mistakes

❌ **Mistake 1:** Overloading the agenda
- Fix: Aim for 6-8 major tasks max; everything else is a bonus

❌ **Mistake 2:** No time buffers between tasks
- Fix: Add 15-minute buffers between major time blocks

❌ **Mistake 3:** Ignoring energy levels
- Fix: Schedule deep work during peak energy, admin tasks during low energy

❌ **Mistake 4:** Not planning the night before
- Fix: Create tomorrow's agenda today at end-of-day review

❌ **Mistake 5:** Rigid schedule with no flexibility
- Fix: Build in flex time and be ready to adjust

## Tier 2: Advanced Optimization

**Unlock:** Session 5

### Additional Capabilities

**Energy-Based Planning:**
- Map your daily energy patterns (peak, moderate, low periods)
- Schedule tasks based on energy requirements
- Track how energy levels change over weeks
- Identify optimal focus time windows
- Schedule recovery and renewal breaks

**Time Blocking Mastery:**
- Create dedicated focus time blocks (2-4 hours uninterrupted)
- Implement Pomodoro technique within blocks
- Batch shallow tasks into admin blocks
- Designate "office hours" for interruptions
- Protect deep work from meetings and notifications

**Agenda Optimization:**
- Analyze historical completion patterns
- Suggest optimal task sequencing
- Identify best times for different task types
- Predict over-scheduling risks
- Recommend schedule adjustments

**Cross-Day Planning:**
- Multi-day task decomposition
- Weekly goal tracking
- Rolling agenda (tomorrow's agenda built from today's)
- Sprint-based planning (2-4 week cycles)
- Quarterly goal alignment

### Advanced Examples

**Example 1: Energy-Based Plan**
```
User: /daily-agenda optimize --energy-based

PersonalOS:
Based on your energy profile (last 14 days):

Peak Energy: 9:30 AM - 12:30 PM (2 hours)
  - Best for: Deep work, problem-solving, creative tasks
  - Tasks scheduled: Write Q1 report, Architecture design

Moderate Energy: 2:00 PM - 4:30 PM (2.5 hours)
  - Best for: Collaboration, meetings, code reviews
  - Tasks scheduled: Team sync, Client calls, Code review

Low Energy: 4:30 PM - 6:00 PM (1.5 hours)
  - Best for: Admin, email processing, planning
  - Tasks scheduled: Email, Process notes, Plan tomorrow

Optimized Agenda:
[09:30-12:30] DEEP WORK BLOCK
  [09:30-10:45] Write Q1 performance report [Peak energy task]
  [11:00-12:30] Design system architecture [Peak energy task]

[2:00-4:30] COLLABORATION BLOCK
  [2:00-3:00] Team sync meeting [Moderate energy task]
  [3:15-4:30] Code review for PR #234 [Moderate energy task]

[4:30-6:00] ADMIN BLOCK
  [4:30-5:15] Respond to emails [Low energy task]
  [5:15-6:00] Plan tomorrow's agenda [Low energy task]

Recommendation: Take a 20-min walk between 12:30-2:00 to recharge
```

**Example 2: Focus Time Blocking**
```
User: /daily-agenda block focus-time 3hours "Q1 report draft"

PersonalOS:
✓ Focus time block created:

FOCUS BLOCK - Wednesday 9:30 AM - 12:30 PM (3 hours)

Task: Q1 report draft completion

Protection rules:
✓ No meetings scheduled during this block
✓ Notifications silenced
✓ Do Not Disturb enabled
✓ Away status set in Slack/Teams

Success checklist:
[ ] Clear desk and close unnecessary apps
[ ] Get water/coffee before starting
[ ] Put phone in another room
[ ] Set specific goal for this block
[ ] Take 5-min break at 11:30 AM

Backup plan: If interrupted, remaining work moves to tomorrow 9:30-11:30 AM
```

**Example 3: Pattern Analysis**
```
User: /daily-agenda analyze patterns --last 7 days

PersonalOS:
Agenda Pattern Analysis (March 20-26):

Task Completion:
- Total tasks scheduled: 63
- Completed: 48 (76%)
- Carried over: 15 (24%)

Time Estimation:
- Accurate (within 10%): 27 tasks (56%)
- Underestimated (took longer): 15 tasks (31%)
- Overestimated (took less): 6 tasks (12%)
- Average underestimation: 27 minutes
- Tasks most underestimated: Code reviews, debugging, writing

Energy Patterns:
- Peak window: 9:30 AM - 12:30 PM (consistently)
- Dip: 2:30 PM - 3:30 PM (post-lunch)
- Second wind: 4:00 PM - 5:30 PM

Interruption Impact:
- Tasks with interruptions: 12
- Average delay: 23 minutes
- Most common interruptor: Unscheduled meetings (40%)

Recommendations:
1. Add 30% buffer time for code reviews and debugging
2. Schedule lighter tasks during 2:30-3:30 PM dip
3. Protect morning focus time more aggressively
4. Add buffer after meeting-heavy blocks
```

### Advanced Best Practices

1. **Protect deep work** - Schedule it first, defend it aggressively
2. **Use energy mapping** - Track when you're at your best and schedule accordingly
3. **Batch shallow work** - Group emails, admin, meetings into blocks
4. **Add realistic buffers** - 20-30% buffer for complex tasks
5. **Review weekly patterns** - Identify your productivity rhythms
6. **Build in flexibility** - Leave 1-2 hours unscheduled for emergencies
7. **Track estimation accuracy** - Learn your biases and adjust

### Advanced Common Mistakes

❌ **Mistake 1:** Ignoring energy patterns
- Fix: Track energy for 2 weeks, then schedule based on data

❌ **Mistake 2:** Not protecting focus time
- Fix: Mark focus blocks in calendar, set DND, communicate boundaries

❌ **Mistake 3:** Underestimating complex tasks consistently
- Fix: Multiply estimates by 1.3 for complex tasks

❌ **Mistake 4:** No buffer time between major blocks
- Fix: Add 20-30 minute transitions between deep work, meetings, admin

❌ **Mistake 5:** Not tracking completion accuracy
- Fix: Always record actual time vs estimated, analyze weekly

## Tier 3: Anticipatory Auto-Planning

**Unlock:** Session 10

### Expert Capabilities

**Automatic Agenda Generation:**
- Pull from goals and priorities automatically
- Generate multiple agenda options based on different strategies
- Apply learning from past performance patterns
- Integrate calendar availability and conflicts
- Suggest optimal task sequencing

**Dynamic Reprioritization:**
- Real-time agenda adjustment based on new information
- Rebalance day when tasks take longer than expected
- Emergency task insertion with automatic rescheduling
- Adaptive scheduling based on energy fluctuations
- Proactive alerts for over-scheduling risks

**Calendar Integration:**
- Sync with Google Calendar, Outlook, Apple Calendar
- Auto-import meetings and events
- Conflict detection and resolution
- Shared agenda with team members
- Cross-platform availability

**Predictive Insights:**
- Predict day completion probability
- Identify bottlenecks before they occur
- Suggest optimal task delegation
- Forecast week ahead based on current trajectory
- Recommend schedule adjustments for better outcomes

### Expert Examples

**Example 1: Auto-Plan from Goals**
```
User: /daily-agenda auto-plan --from-goals --energy-profile

PersonalOS:
Auto-generated agenda for March 28 (Thursday):

Based on your current goals:
- Goal 1: Complete Q1 performance report (due Friday) [High priority]
- Goal 2: Ship feature X PR (80% complete) [Medium priority]
- Goal 3: Prepare client presentation (meeting Friday) [High priority]

Generated Agenda Option 1 (Balanced):
Morning Deep Work (9:30-12:30)
  [09:30-11:00] Complete Q1 report sections 2-3 [Goal 1]
  [11:15-12:30] Finalize feature X code [Goal 2]

Afternoon Collaboration (2:00-5:00)
  [2:00-3:00] Review client presentation draft [Goal 3]
  [3:15-4:00] Team sync [Scheduled meeting]
  [4:15-5:00] Email and admin

Evening Wrap-up (5:30-6:30)
  [5:30-6:00] Final Q1 report review
  [6:00-6:30] Plan tomorrow and prep for client meeting

Confidence Score: 85% (Based on your energy profile and historical patterns)

Alternative: Option 2 (Focus on report first, client meeting prep moved to tomorrow AM)
Alternative: Option 3 (Split deep work across morning and afternoon)

Which option would you prefer?
```

**Example 2: Dynamic Reprioritization**
```
User: (At 2:30 PM) The Q1 report is taking longer than expected. I need help adjusting.

PersonalOS:
⚠️ AGENDA ADJUSTMENT ALERT

Current Status:
- Q1 report: 2 hours completed, 1 hour remaining (estimated)
- Original schedule: Complete by 12:30 PM, but currently only 60% done

Impact Analysis:
Remaining tasks today:
  ✓ Client meeting prep (scheduled 2:00-3:00) - Can shift to tomorrow AM
  ✓ Team sync (scheduled 3:15-4:00) - Fixed meeting, cannot move
  ✓ Email/admin (scheduled 4:15-5:00) - Can reduce to 30 min

Recommended Adjustment:

UPDATED AGENDA:
[2:00-3:15] Complete Q1 report (pushing through)
[3:15-4:00] Team sync (fixed)
[4:00-4:45] Quick client meeting prep (key points only)
[4:45-5:15] High-priority emails only

Carryover to tomorrow:
- Full client presentation prep (9:00-10:30 AM)
- Remaining emails (10:30-11:00 AM)

Alternative: Defer Q1 report completion to tomorrow AM, do full client prep now

Which approach do you prefer?
```

**Example 3: Calendar Sync**
```
User: /daily-agenda sync-calendar --google-calendar --outlook

PersonalOS:
✓ Calendar sync complete

Agenda Updated with Events:

Already Scheduled:
  [9:30-10:30] Q1 report work (from your agenda)
  [11:00-12:00] Deep work block (from your agenda)

Pulled from Calendars:
  [2:00-3:00] Team standup (Outlook)
  [4:00-5:00] Product review meeting (Google Calendar)
  [5:30-6:30] Gym session (Google Calendar)

Conflict Detected:
⚠️ Your agenda had "Email/admin" scheduled 4:15-5:00, but Product review meeting is 4:00-5:00

Resolution Options:
1. Cancel email block, do emails before standup (1:30-2:00)
2. Reduce email block to 30 min after meeting (5:15-5:45)
3. Move deep work earlier (8:30-10:30)

Recommended: Option 1 - Quick emails before meeting, preserve deep work

Agenda updated with:
- 2 calendar events integrated
- 1 conflict resolved
- Sync set to run every 30 minutes
```

### Expert Best Practices

1. **Trust but verify** - Review auto-generated agendas, then accept or modify
2. **Enable dynamic adjustments** - Let the system rebalance when plans change
3. **Use calendar integration** - Avoid conflicts by syncing all events
4. **Monitor confidence scores** - Pay attention to low-confidence predictions
5. **Build learning cycles** - System improves with your feedback and patterns
6. **Set delegation triggers** - Auto-suggest tasks to offload when overloaded
7. **Use predictive alerts** - Get early warnings about scheduling risks

### Expert Common Mistakes

❌ **Mistake 1:** Blindly accepting auto-generated agendas
- Fix: Always review generated agendas, adjust based on context

❌ **Mistake 2:** Not enabling calendar sync
- Fix: Connect all calendars to avoid conflicts and double-booking

❌ **Mistake 3:** Ignoring confidence scores
- Fix: When confidence < 70%, manually review and adjust

❌ **Mistake 4:** Not using dynamic rebalancing
- Fix: Enable real-time adjustments when plans go off-track

❌ **Mistake 5:** Not providing feedback to improve predictions
- Fix: Mark when auto-plans work or don't work, system learns from patterns

## Integration with Other Skills

- **habit-tracker**: Track daily agenda planning as a habit
- **goal-tracker**: Align daily tasks with long-term goals
- **pomodoro**: Use Pomodoro technique within time blocks
- **task-automation**: Automate recurring agenda items and reminders
- **scheduled-jobs**: Automate daily agenda creation and review

## Troubleshooting

**Issue:** Tasks consistently taking longer than estimated
- Fix: Add 30% buffer time; track which task types you underestimate

**Issue:** Frequently interrupted during deep work
- Fix: Set stronger DND, communicate focus time to team, use calendar blocking

**Issue:** Never completing all daily tasks
- Fix: Reduce daily task count to 5-6 max; everything else is bonus

**Issue:** Energy dips in afternoon, can't focus
- Fix: Schedule admin tasks then; take proper lunch; consider shorter deep work blocks

**Issue:** Can't find time for deep work
- Fix: Schedule it first thing (before emails/meetings), protect it aggressively

## Success Metrics

- Daily task completion rate > 70%
- Time estimation accuracy within 20%
- Deep work time > 2 hours/day
- Agenda completion (including review) daily
- Weekly goal alignment > 80%

## After This Skill

| If agenda contains... | Suggest... |
|---|---|
| Blocked tasks | "I see [X] is blocked. Want me to audit your blockers?" |
| Meeting prep needed | "You have [meeting] today. Want me to prep notes?" |
| Overloaded day | "Your plate looks full. Want help prioritizing?" |
| End of day review | `skills/session-summary.md` |