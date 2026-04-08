---
name: recommendations
description: "Proactive suggestions based on detected patterns to improve efficiency"
---

# Pattern-Based Recommendations

**Purpose:** Proactively suggest improvements, automations, and optimizations based on detected patterns

## How It Works

This skill analyzes patterns detected by pattern-detect.md and generates actionable recommendations that help you work more efficiently.

## When It Runs

- **Automatically**: Weekly review (after pattern-detect runs)
- **Manually**: User says "any suggestions?", "recommend something", "what should I improve?"
- **Proactively**: When a pattern crosses confidence threshold

## Recommendation Types

### 1. Efficiency Recommendations

Save time by automating repetitive work:

```
💡 Efficiency Tip

You perform this workflow 8x/week:
1. git add .
2. git commit -m "update"
3. git push

I can save you 10 minutes/day by automating this as 'publish-code'.

Create this shortcut? (yes/no/customize)
```

### 2. Timing Recommendations

Schedule work for peak productivity:

```
💡 Timing Suggestion

You're 45% more productive between 9-11 AM.

Consider scheduling your hardest tasks then. Your deep work tasks
currently take 60% longer in the afternoon.

Want me to block deep work time on your calendar? (yes/no)
```

### 3. Process Recommendations

Improve workflows and eliminate friction:

```
💡 Process Improvement

You're switching between 3 apps for this workflow:
1. Open Notion → Copy requirements
2. Open VS Code → Paste into comments
3. Open Figma → Reference designs

Here's a streamlined workflow:
1. I paste requirements into code comments automatically
2. I open Figma reference when you switch to VS Code

Try this improved workflow? (yes/see how)
```

### 4. Communication Recommendations

Align with team/client preferences:

```
💡 Communication Tip

Client X responds fastest to emails on Tuesday mornings
(avg response: 2 hours vs. 8 hours other days).

Schedule weekly updates for Tuesday 9 AM?

Set this recurring? (yes/no/customize)
```

## Confidence-Based Delivery

Recommendations are delivered based on confidence level:

| Confidence | Criteria | Delivery |
|------------|----------|----------|
| **High** | Pattern seen 10+ times, clear benefit, never contradicted | Proactive notification with strong suggestion |
| **Medium** | Pattern seen 5-9 times, likely benefit, minor contradictions | "Would you like a suggestion?" |
| **Low** | Pattern seen 3-4 times, potential benefit, untested | Store only, show on request |

### Example: Confidence Progression

**Week 1: Pattern Emerges**
```
User runs: git add → git commit → git push (3x)
Confidence: Low
Action: Store pattern, no notification
```

**Week 2: Pattern Strengthens**
```
User runs: git add → git commit → git push (6 more times, total 9x)
Confidence: Medium
Action: "I've noticed you run git commands in sequence. Want a shortcut?"
User: "Yes"
```

**Week 3: Pattern Confirmed**
```
User runs: git add → git commit → git push (4 more times, total 13x)
Confidence: High
Action: Create shortcut automatically, notify "Git workflow saved"
```

## Recommendation Formats

### Telegram (Concise)

```
💡 Efficiency Tip (Confidence: High)

You're 40% faster in the mornings. Schedule deep work 9-11 AM?

Want me to block time? (yes/no)
```

### Terminal (Detailed)

```
💡 Efficiency Recommendation (Confidence: High)

Pattern: You format code + commit + push (13x/week)
Impact: Saving ~2 hours/week
Action: Create workflow 'publish-code'

This workflow will:
1. Format your code (using your preferred formatter)
2. Create a commit message based on changes
3. Push to current branch

**Before:** 3 separate commands, 2 minutes
**After:** Single command 'publish-code', 30 seconds
**Savings:** ~1.5 minutes × 13 = ~2 hours/week

Create this workflow? (yes/no/customize)
```

## Recommendation Categories

### Automation Candidates

When you repeat a sequence 5+ times:

```
🤖 Automation Opportunity

Workflow detected: "format code + commit + push"
Frequency: 13x/week
Time spent: 26 minutes/week

Suggestion: Create automated workflow
Estimated savings: 19 minutes/week

Create automation? (yes/no/see details)
```

### Efficiency Gains

When tasks take longer than necessary:

```
⚡ Speed Up Opportunity

Task: "Create weekly report"
Current time: 45 minutes
Optimized time: 20 minutes (based on similar reports)
Savings: 25 minutes/week

How: Use weekly-review.md template + auto-fill from priorities

Try optimized version? (yes/keep current)
```

### Scheduling Optimizations

When timing affects quality/speed:

```
📅 Scheduling Suggestion

Deep work tasks take 60% longer after 3 PM.

Recommendation: Schedule deep work for 9 AM - 12 PM
Expected benefit: +40% efficiency on complex tasks

Adjust your calendar? (yes/no)
```

### Tool Suggestions

When better tools exist for your workflows:

```
🔧 Tool Recommendation

You're using VS Code for markdown editing (8x/week).

Suggestion: Try Obsidian for markdown files
Benefits: Better preview, linking, and search
Migration time: 5 minutes (I can help)

Want me to install and configure Obsidian? (yes/maybe/no)
```

## Tracking Recommendation Outcomes

### Acceptance Tracking

Each recommendation is tracked:

```markdown
## Recommendation Log

### 2026-03-26: Git Automation
**Type:** Efficiency
**Confidence:** High
**Status:** ✅ Accepted
**User Feedback:** "This is great, saves so much time"
**Time Saved:** ~2 hours/week (validated)
```

### Rejection Tracking

If you reject a recommendation, the system learns:

```markdown
### 2026-03-25: Email Tone Automation
**Type:** Process
**Confidence:** Medium
**Status:** ❌ Rejected
**Reason:** "I prefer to draft manually"
**Lesson Learned:** Do not suggest email automation for this user
```

### Follow-Up on Accepted Recommendations

After 2 weeks, the system validates:

```
💡 Recommendation Follow-Up

You accepted the "git automation" recommendation on March 12.

Results after 2 weeks:
• Usage: 26 times (consistent with pattern)
• Time saved: ~4 hours (validated estimate)
• Satisfaction: Positive (no complaints)

This recommendation is working well. Keep using it!

Similar recommendations you might like:
• Docker deployment automation (8x/week, ~1.5 hours/week)
• Test suite automation (12x/week, ~1 hour/week)
```

## Weekly Recommendation Report

Every week, you get a summary:

```markdown
## Weekly Recommendation Report

**Period:** March 20-26, 2026
**Patterns Analyzed:** 23
**Recommendations Generated:** 4
**Recommendations Accepted:** 2

### New Recommendations This Week

🎯 **High Priority (High Confidence):**
1. Git automation (13x/week, ~2 hours savings)
   Status: ✅ Accepted
   Next step: I'll create the workflow now

2. Deep work scheduling (8 tasks/week affected)
   Status: ⏳ Pending your response

⚠️ **Medium Priority (Medium Confidence):**
3. Markdown editor switch (8x/week, better UX)
   Status: 📊 Pending more data

🔍 **Low Priority (Low Confidence):**
4. Calendar blocking (3x/week, pattern emerging)
   Status: 📊 Monitoring

### Recommendations from Previous Weeks

✅ **Active & Working:**
- Slack automation (accepted Week 2, saves 1.5 hours/week)
- Meeting notes template (accepted Week 3, saves 30 minutes/meeting)

❌ **Declined:**
- Email tone automation (Week 1 - user prefers manual)

### Impact Summary

Total time saved this week: 2.5 hours
Active recommendations: 2
Pending recommendations: 2
Declined recommendations: 1

### Upcoming Recommendations

Based on emerging patterns:
- Docker deployment automation (8x/week, gaining confidence)
- Test suite automation (12x/week, gaining confidence)
- API documentation generation (5x/week, early detection)
```

## User Control

### Disabling Recommendations

You can disable recommendations entirely:

```
User: "Stop giving me recommendations"
PersonalOS: "Got it. I'll stop suggesting things.

            I'll still detect patterns (for your own insights),
            but I won't proactively suggest actions.

            Enable recommendations anytime: 'turn on recommendations'"
```

### Specific Category Control

Disable specific types:

```
User: "No more scheduling suggestions"
PersonalOS: "Understood. I'll stop suggesting schedule changes.

            You'll still get:
            • Efficiency recommendations
            • Process improvements
            • Tool suggestions

            Re-enable anytime: 'turn on scheduling recommendations'"
```

### Requesting Recommendations

Get suggestions on demand:

```
User: "Any suggestions for improving my workflow?"
User: "What should I automate?"
User: "Recommend something"

PersonalOS: Shows top 3 recommendations based on current patterns
```

## Integration with Other Skills

### Pattern Detect
- pattern-detect provides raw pattern data
- recommendations analyzes patterns for actionable suggestions
- Both run together in weekly review

### Self-Correction
- Error patterns trigger efficiency recommendations
- "You're correcting this 5x/week. Want me to fix it?"

### Optimization
- Recommendations feed into optimization cycles
- Accepted recommendations are tracked for impact validation

### Shortcuts & Automations
- Accepted recommendations become shortcuts/automations
- System automatically creates them after acceptance

## Success Metrics

The recommendation system tracks:

- **Acceptance Rate:** % of recommendations accepted (target: >70%)
- **Impact Validation:** Actual time saved vs. estimated (target: >80%)
- **User Satisfaction:** No complaints after 2 weeks (target: >90%)
- **False Positives:** % of recommendations rejected (target: <30%)

## Privacy & Data

- All pattern analysis is local
- No pattern data leaves your machine
- You can export or delete recommendations anytime

## Commands

You can say:
- "Any suggestions?"
- "What should I automate?"
- "Recommend something"
- "Stop giving recommendations"
- "Show me my recommendations"
- "Weekly recommendation report"

---

**Skill Metadata:**
- Category: Learning
- Frequency: Weekly automatic
- Update Trigger: After pattern-detect runs
- Data Sources: Patterns from pattern-detect.md
- Privacy: Local analysis only, no cloud sync