---
name: shortcuts
type: workflow
tier: unlocked
description: Discover and surface frequently-used commands and workflows
triggers:
  - User repeats command pattern 10+ times
  - System detects consistent multi-step workflows
progressive_unlock: true
session_threshold: 10
---

# Workflow Shortcuts

**Purpose:** Progressive discovery of frequently-used commands and workflows

## How It Works

This skill monitors user commands and detects patterns. When you repeat a command or workflow 10+ times, it's automatically surfaced as a shortcut.

## Unlock Status

**Current State:** Locked (waiting for usage data)

**Required:** 10+ repetitions of a command pattern
**Current Usage:** Tracking active

## Discovered Shortcuts

*No shortcuts discovered yet. This will populate after ~10 sessions.*

## Example Shortcuts

Once unlocked, you'll see shortcuts like:

### Shortcut: Send Telegram Message
```yaml
trigger: "send message to [contact] on Telegram"
pattern:
  1. Identify contact via Cowork Telegram integration
  2. Compose message
  3. Send via send_message tool
usage_count: 12 (last 7 days)
efficiency_gain: 60% faster than manual
```

### Shortcut: Daily Standup Summary
```yaml
trigger: "create standup summary"
pattern:
  1. Check recent tasks and commits
  2. Format into standup template
  3. Send to team channel
usage_count: 8 (last 7 days)
efficiency_gain: 45% faster than manual
```

## How Shortcuts Are Created

1. **Pattern Detection**: System tracks all user commands and workflows
2. **Frequency Analysis**: Commands used 10+ times are candidates
3. **Efficiency Check**: Must save meaningful time (≥30% faster)
4. **User Approval**: You confirm before adding to permanent shortcuts
5. **Progressive Unlock**: Appears after Session 10+

## Managing Shortcuts

Once unlocked, you can:
- **Add shortcuts manually**: "Save this as a shortcut called [name]"
- **Edit shortcuts**: "Modify the [shortcut-name] shortcut"
- **Disable shortcuts**: "Disable [shortcut-name] shortcut"
- **Delete shortcuts**: "Delete [shortcut-name] shortcut permanently"

## Usage Analytics

The system tracks:
- How often you use each shortcut
- Time saved per shortcut
- Accuracy of shortcut suggestions
- Which shortcuts become obsolete

## Next Steps

1. Continue using PersonalOS normally
2. System will detect patterns in background
3. After Session 10, review discovered shortcuts
4. Approve/dismiss shortcuts based on usefulness
5. Enjoy faster workflows!

---

**Skill Metadata:**
- Category: Workflow
- Unlock Condition: 10+ sessions OR 10+ command repetitions
- Update Frequency: Real-time monitoring, weekly review
- Integration: Works with all Cowork tools and integrations
