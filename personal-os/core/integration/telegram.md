---
name: telegram
type: integration
tier: core
description: Cowork Telegram integration for messaging, notifications, and async workflows
triggers:
  - User sends message via Telegram
  - PersonalOS sends proactive notifications
  - Async task completion notifications
always_active: true
---

# Telegram Integration

**Purpose:** Seamless communication between you and PersonalOS via Telegram

## How It Works

This skill leverages Cowork's native Telegram integration to:
- Send you messages and notifications
- Receive your commands and questions
- Handle async workflows (when you're away from desk)
- Deliver reports and summaries

## Capabilities

### 1. Receive Telegram Messages
PersonalOS monitors your Telegram messages to the bot and responds with:
- Answers to questions
- Execution of tasks
- Status updates on ongoing work
- Pattern insights and recommendations

**Example:**
```
User (Telegram): What should I work on today?
PersonalOS (Telegram): Based on your routine patterns, 9-11 AM is your peak
  productivity window. I suggest working on [Priority Task], which aligns with
  your deep work patterns and has high strategic value.
```

### 2. Send Proactive Notifications
PersonalOS will send you notifications for:

#### Pattern Insights
```
📊 Weekly Pattern Report Ready
Your productivity increased 12% this week! Main drivers:
• Morning deep work sessions (9-11 AM) are paying off
• Code review shortcuts saved 45 minutes
• Suggest: Continue this pattern next week
```

#### Task Reminders
```
⏰ Task Reminder
It's 9 AM - based on your patterns, this is prime deep work time.
Ready to work on [Priority Task]?
```

#### Async Completion
```
✅ Task Complete
Your async research task finished early!
Found 5 relevant sources for [Topic].
Full report saved to: ~/research-output/task-name.md
```

#### Weekly Reports
```
📈 Weekly PersonalOS Summary
Period: Mar 17-24, 2026
Sessions: 23 | Tasks: 45 | Avg Rating: 4.2/5

Top insight: You're 45% more productive in mornings.
Recommendation: Schedule important work 9-11 AM.

[Full report attached]
```

### 3. Async Workflows
When you start long-running tasks, PersonalOS will:
1. Acknowledge and begin work
2. Send updates at key milestones
3. Notify you when complete
4. Deliver results via Telegram

**Example:**
```
User (Telegram): Research the latest developments in LLM inference optimization
PersonalOS (Telegram): Starting research now... Expect 20-30 minutes.

[15 minutes later]
PersonalOS (Telegram): 50% complete. Found 8 papers, 3 blog posts, and
  2 GitHub repos. Analyzing now...

[28 minutes later]
PersonalOS (Telegram): ✅ Research complete!

Key findings:
• vLLM's PagedAttention reducing memory by 2-3x
• TensorRT-LLM achieving 3-5x throughput increase
• New quantization methods emerging

Full report: ~/research-output/llm-inference-opt-2026-03-24.md
```

### 4. Command Execution via Telegram
You can run PersonalOS commands from anywhere:

#### Task Commands
```
/status → Show current work and priorities
/routine → Ask for routine-based suggestions
/shortcut [name] → Use a saved shortcut
/patterns → Quick pattern insights
/help → Show available commands
```

#### Context Queries
```
"What's my next priority?"
"How should I organize my day?"
"What's blocking [task]?"
"Summarize what I worked on this week"
```

#### Task Management
```
"Mark [task] as complete"
"Add [task] to my queue"
"Prioritize [task]"
"What's the status of [project]?"
```

## Notification Preferences

You can control what notifications you receive:

```yaml
telegram_notifications:
  weekly_reports: true
  pattern_insights: true
  task_reminders: true
  async_completions: true
  urgent_only: false

notification_timing:
  weekly_report: "Sunday 8 PM"
  daily_reminder: "9 AM"
  quiet_hours: "10 PM - 8 AM"
```

## Privacy & Security

### What's Sent to Telegram
- Task summaries and status updates
- Pattern insights and recommendations
- Research and analysis results
- Productivity metrics (aggregated)

### What's NOT Sent
- Raw conversation logs
- Personal data, credentials, or API keys
- Detailed session transcripts
- File contents (unless explicitly requested)

### Security Features
- Message encryption via Telegram
- No persistent storage on Telegram servers
- Rate limiting to prevent spam
- Emergency stop command: `/stop-notifications`

## Integration Points

### With Daily Routine
```
9 AM → Telegram: "Morning! Peak productivity window. Ready for deep work?"
10 AM → User: "Yes, let's work on [project]"
10 AM → User: "Actually, send me a summary of last week first"
10:02 AM → Telegram: [Weekly summary]
10:05 AM → User: "OK, ready now"
```

### With Shortcuts
```
User: "Use my 'daily standup' shortcut"
Telegram: "Running 'daily standup' shortcut..."

[Shortcut executes]

Telegram: "✅ Daily standup complete. Sent to team channel."
```

### With Pattern Detection
```
[Weekly pattern analysis runs]

Telegram: "📊 Weekly Pattern Report Ready
Insights: 3 | Recommendations: 2
Key finding: Productivity up 12% from morning deep work
Tap 'View Report' for details"
```

### With Async Tasks
```
User: "Start async analysis of [large dataset]"
PersonalOS: "Starting now. Will notify when complete."

[2 hours later, while user is in a meeting]

Telegram: "✅ Analysis Complete
Found 23 insights, 4 anomalies
Results: ~/analysis-results/dataset-2026-03-24.md
Tap 'View Summary' for quick overview"
```

## Setting Up Telegram Integration

### Step 1: Cowork Telegram Bot
Ensure Cowork's Telegram integration is configured:
1. Open Cowork settings
2. Navigate to Integrations → Telegram
3. Connect your Telegram bot
4. Authorize your user ID

### Step 2: PersonalOS Telegram Settings
PersonalOS will automatically detect Cowork's Telegram setup and:
- Register relevant commands
- Set up notification preferences
- Initialize async workflow handling

### Step 3: Test Connection
From Telegram, send:
```
/test-connection
```

PersonalOS should respond with:
```
✅ Telegram connection active
Notifications: Enabled
Async workflows: Ready
```

## Troubleshooting

### Not receiving notifications?
1. Check Telegram bot is connected in Cowork
2. Verify notification preferences are enabled
3. Check if you're in quiet hours
4. Try `/test-connection` from Telegram

### Messages not sending to Telegram?
1. Check internet connection
2. Verify Cowork Telegram integration is active
3. Check error logs: `~/.hermes/personal-os-data/logs/telegram.log`

### Want to pause notifications?
From Telegram: `/pause-notifications [duration]`
- Examples: `/pause-notifications 2h`, `/pause-notifications until tomorrow`

## Advanced Features

### Interactive Buttons
For certain notifications, Telegram will present interactive buttons:

```
📊 Weekly Pattern Report Ready
[View Report] [Dismiss]
```

### Rich Media
When appropriate, PersonalOS will send:
- Charts and graphs for productivity trends
- Tables for task summaries
- Links to full reports
- Images for visualizations

### Context Awareness
Telegram responses adapt to:
- Where you are (home/office/commute)
- What device you're on (mobile/desktop)
- Current time of day
- Your current task context

### Smart Replies
For common queries, PersonalOS provides smart reply options:
```
You: "What should I work on?"
PersonalOS: "Based on patterns, I suggest:

[Priority Task 1] - Deep work, aligns with morning peak
[Priority Task 2] - Quick win, builds momentum
[Priority Task 3] - Prepares for afternoon meeting

Tap to start: [Task 1] [Task 2] [Task 3]"
```

## Best Practices

### 1. Use Telegram for Async Work
- Start long tasks before meetings
- Get notified when complete
- Review results when convenient

### 2. Enable Smart Notifications
- Don't disable all notifications
- Tune frequency, not just on/off
- Use quiet hours for work-life balance

### 3. Leverage Quick Queries
- Use Telegram for quick status checks
- Don't need to open Cowork for simple questions
- "What's my next priority?" takes 5 seconds

### 4. Pattern Awareness
- Pay attention to pattern insights
- They're based on actual usage data
- Small optimizations compound over time

---

**Skill Metadata:**
- Category: Integration
- Dependencies: Cowork Telegram integration
- Always Active: Yes
- Privacy: Local processing, selective data sharing
- Customization: Notification preferences, timing, quiet hours
