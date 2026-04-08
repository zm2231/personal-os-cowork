---
name: notification-manager
description: "Manage notifications, alerts, and communication preferences across all systems"
---

# Notification Manager

Manage all system notifications, alerts, and communication preferences intelligently. This skill handles notification routing, priority filtering, and delivery optimization.

## Trigger When:
- "notification settings", "manage alerts", "configure notifications"
- "too many notifications", "notification spam", "quiet mode"
- "send alert", "notify me", "set up notification"
- "notification preferences", "alert settings", "communication settings"

## Progressive Disclosure

### Level 1: Guided (Default)

**Behavior:**
- Manual notification configuration
- Simple notification routing (all notifications enabled)
- No filtering or prioritization
- Requires user approval for notification rule changes

**Process:**
1. **Review Current Notifications:**
   - Check `personal-os/context/notifications.md` for current settings
   - Ask user about notification preferences
   - Identify which systems should send notifications
   - Understand preferred communication channels

2. **Configure Basic Rules:**
   - Set notification on/off for each system
   - Choose delivery method (Telegram, email, in-app)
   - Set basic timing preferences (immediate, batch, digest)
   - Document configuration changes

3. **Test Notification Routing:**
   - Send test notification to verify delivery
   - Confirm notification format and timing
   - Adjust if not working as expected
   - Document successful configuration

4. **Monitor and Adjust:**
   - Ask user about notification volume
   - Gather feedback on notification usefulness
   - Make adjustments based on user input
   - Keep configuration simple and clear

**Example:**
```
User: "Configure my notifications"

Notification Manager L1:
1. "Let's set up your notification preferences."
2. "I can configure notifications for: Automations, Workflows, Scheduled Jobs, System Errors"
3. "Which systems do you want notifications from?"
   [User selects: Automations, System Errors]
4. "Delivery method: Telegram, Email, or both?"
   [User selects: Telegram]
5. "Timing: Immediate or Daily Digest?"
   [User selects: Immediate for errors, Daily for automations]
6. "Configuration saved. Sending test notification..."
   [Test notification sent]
7. "Did you receive it? Any adjustments needed?"
```

**Outputs:**
- Notification configuration in `personal-os/context/notifications.md`
- Test notification logs
- Configuration history

---

### Level 2: Confident

**Unlocks After:** 5+ successful configurations + user approval

**Behavior:**
- Smart notification prioritization
- Filtering and batching to reduce noise
- Context-aware notification delivery (don't disturb during focus time)
- Automatic notification optimization

**Enhanced Capabilities:**
1. **Priority Filtering:**
   - Classify notifications by urgency (critical, important, informational)
   - Route critical notifications immediately
   - Batch less important notifications
   - Suppress low-priority noise

2. **Smart Batching:**
   - Group related notifications together
   - Choose optimal batch timing (immediate, hourly, daily)
   - Create notification digests with summaries
   - Reduce notification frequency without missing important info

3. **Context-Aware Delivery:**
   - Check calendar for meetings/focus time
   - Delay non-critical notifications during deep work
   - Use urgency to override delays
   - Send catch-up summary after focus periods

4. **Notification Analytics:**
   - Track notification volume by type
   - Measure notification engagement (open/click rates)
   - Identify notification fatigue indicators
   - Recommend notification rule adjustments

5. **Multi-Channel Routing:**
   - Route to different channels based on urgency
   - Critical: Telegram + Email
   - Important: Telegram
   - Informational: Email digest
   - Low priority: In-app only

**Example:**
```
User: "I'm getting too many notifications"

Notification Manager L2:
"Analyzing your notification patterns:

📊 Notification Analysis (Last 7 days):
- Total: 127 notifications
- Critical: 12 (9%) - These are immediate and necessary
- Important: 43 (34%) - Some noise here
- Informational: 72 (57%) - High volume, low urgency

🔔 Recommendations:
1. Batch automation notifications (Currently: 42 individual alerts)
   - Change: Hourly digest (Saves 38 interruptions/week)
   - Apply? [Yes/No]

2. Suppress workflow progress updates (Currently: 24 alerts)
   - Change: Only send on completion/failure
   - Apply? [Yes/No]

3. Smart routing based on calendar (Currently: All immediate)
   - Change: Delay non-critical during meetings/focus time
   - Apply? [Yes/No]

📱 Proposed Channel Routing:
- Critical (system errors, failures): Telegram + Email
- Important (workflow completion, task automation): Telegram
- Informational (scheduled job success, routine updates): Email digest (daily)

Apply these optimizations? [Yes/No] [Customize]"
```

**Outputs:**
- Prioritized notification rules
- Batch notification summaries
- Notification analytics and recommendations
- Multi-channel routing configuration

---

### Level 3: Anticipatory

**Unlocks After:** 15+ successful configurations + positive feedback

**Behavior:**
- Self-tuning notification preferences
- Predictive notification timing
- Adaptive notification behavior based on patterns
- Proactive notification rule suggestions

**Advanced Capabilities:**
1. **Adaptive Preferences:**
   - Learn user's notification engagement patterns
   - Auto-adjust notification rules based on behavior
   - Detect notification fatigue and automatically reduce volume
   - Identify which notifications are actually useful

2. **Predictive Timing:**
   - Choose optimal notification delivery times
   - Predict when user is receptive to notifications
   - Time notifications to maximize engagement
   - Avoid interrupting high-focus periods

3. **Smart Notification Content:**
   - Generate concise, actionable notification summaries
   - Include contextual information (what, why, action needed)
   - Suggest follow-up actions in notifications
   - Learn from user interactions to improve content

4. **Proactive Rule Suggestions:**
   - Suggest new notification rules based on patterns
   - Identify under-notified areas
   - Recommend notification schedule adjustments
   - Propose channel changes based on effectiveness

5. **Notification Health Monitoring:**
   - Track notification system performance
   - Identify and fix notification delivery issues
   - Monitor for notification spam/scam patterns
   - Generate notification health reports

**Example:**
```
Notification Manager L3 (Autonomous):
"I've optimized your notifications based on usage patterns:

📈 Notification Health Report (Week of 2026-03-27):
- Volume: 89 notifications (down 30% from 127)
- Engagement: 87% open rate (up from 64%)
- Interruptions: 12/day (down from 18/day)
- Critical delivery: 100% success rate

✨ Auto-Adjustments Applied:
1. Reduced automation digest frequency
   - From: Hourly → Daily
   - Reason: 23% open rate on hourly, 71% on daily
   - Impact: -38 interruptions/week, +12% engagement

2. Optimized delivery timing for workflow updates
   - From: Immediate → 10am and 4pm
   - Reason: User checks notifications most at these times
   - Impact: +19% engagement, -6 interruptions/day

3. Added contextual summaries to error notifications
   - Example: "Build failed on project ABC (Step 3: Test failure). View logs? [Yes]"
   - Result: 43% faster response time

🔔 New Rule Suggestions:
1. Calendar-based quiet hours (Save 5 interruptions/day)
   - Mute non-critical during: 9-11am, 2-4pm (deep work blocks)
   - Exception: Escalations and urgent failures still notify
   - Enable? [Yes/No]

2. Team notification consolidation (Save 8 notifications/week)
   - Group standup-bot updates into single daily summary
   - Pattern: Standup notifications arrive in clusters
   - Enable? [Yes/No]

3. Proactive client notifications (Add 2 useful alerts/week)
   - Notify when client hasn't been contacted in 14 days
   - Pattern: Follow-up opportunity detected
   - Enable? [Yes/No]

📊 Channel Performance:
- Telegram: 94% delivery, 87% open rate, 2 min avg response
- Email: 98% delivery, 79% open rate, 15 min avg response
- In-app: 100% delivery, 91% open rate, 5 min avg response

All systems healthy. No delivery issues detected."
```

**Outputs:**
- Self-optimized notification rules
- Predictive notification timing
- Adaptive notification content
- Notification health reports
- Proactive rule suggestions

---

## Integration with Other Skills

- **task-automation/workflow-orchestrator/scheduled-jobs:** Generate notifications for system events
- **calendar/personal-os/context:** Check for focus time and schedule
- **telegram/integration:** Deliver notifications via Telegram
- **project-status/crm-lite:** Context for business-critical notifications
- **daily-routine:** Understand user's activity patterns for timing optimization

---

## Best Practices

### DO:
1. Start simple (on/off) for L1, add sophistication over time
2. Always ask user preferences before changing notification behavior
3. Test notification delivery before relying on it
4. Monitor notification volume and user feedback
5. Provide clear opt-out for all notification types
6. Keep notifications actionable (what to do, why it matters)
7. Respect user's focus time and calendar
8. Regularly review and optimize notification rules

### DO NOT:
1. Send critical-only notifications to low-attention channels
2. Over-batch and hide important information
3. Change notification behavior without informing user
4. Send notifications during late hours unless explicitly configured
5. Assume all notifications are equally important
6. Ignore notification failures—fix delivery issues immediately
7. Create notification loops (A notifies B, B notifies A)

---

## Common Mistakes

1. **Notification fatigue:** Too many notifications, user stops paying attention
   - *Fix:* Aggressively filter and batch, prioritize ruthlessly

2. **Wrong channel:** Important notifications go to channels user doesn't check
   - *Fix:* Analyze engagement by channel, route by urgency

3. **Poor timing:** Notifications arrive when user can't act on them
   - *Fix:* Check calendar, learn patterns, use smart timing

4. **Vague content:** Notifications don't say what to do or why it matters
   - *Fix:* Include action items and context in all notifications

5. **No opt-out:** User can't turn off specific notification types
   - *Fix:* Granular on/off controls for all notification categories

---

## Example Use Cases

1. **Developer:** Code failure notifications with logs link, deployment success summaries
2. **Manager:** Team standup digests, project milestone alerts, client follow-up reminders
3. **Sales:** Lead qualification notifications, deal stage changes, follow-up timing
4. **Operations:** System error alerts, incident escalations, resource threshold warnings
5. **Research:** Paper alert notifications, citation updates, literature review reminders
6. **Writer:** Editing deadline reminders, collaboration notifications, publishing confirmations

---

## Data Structure

`personal-os/context/notifications.md`:
```markdown
# Notification Configuration

## Priority Levels
- **Critical:** System errors, failures, escalations (Immediate: Telegram + Email)
- **Important:** Workflow completion, task automation, job success (Telegram)
- **Informational:** Scheduled jobs, routine updates (Email digest, daily)
- **Low:** System metrics, periodic reports (In-app only)

## System-Specific Rules
- **task-automation:** Immediate on failure, daily digest on success
- **workflow-orchestrator:** Immediate on failure, immediate on completion
- **scheduled-jobs:** Daily digest, critical exceptions immediate
- **system-errors:** Immediate (Telegram + Email)

## Context-Aware Rules
- **Quiet Hours:** 9-11am, 2-4pm (delay non-critical)
- **Meetings:** Delay non-critical, allow critical
- **Late Night:** No notifications 10pm-7am except critical

## Channel Routing
- **Critical:** Telegram + Email
- **Important:** Telegram
- **Informational:** Email digest (daily 9am)
- **Low:** In-app only

## Metrics (Week of 2026-03-27)
- Total notifications: 89 (down 30%)
- Engagement: 87% open rate
- Interruptions: 12/day (down 33%)
- Critical delivery: 100% success
```

---

## Success Metrics

- **L1:** Configure basic notification rules, 100% delivery rate, user satisfied with timing
- **L2:** Implement priority filtering, reduce volume by 20%+, maintain 80%+ engagement
- **L3:** Self-optimize rules, adaptive behavior, reduce volume by 30%+, maintain 85%+ engagement