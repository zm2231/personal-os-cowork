---
name: unlock-settings
type: configuration
description: Progressive unlock system settings
---

# Progressive Unlock Settings

```yaml
# Enable or disable progressive unlock entirely
enabled: true

# Unlock thresholds (in number of sessions)
thresholds:
  daily_routine: 5      # Unlocks time-based patterns
  shortcuts: 10         # Unlocks command shortcuts
  automations: 21       # Unlocks multi-step workflows

# Alternative thresholds (command repetitions)
# If user reaches these repetition counts, unlock early
repetition_thresholds:
  shortcuts: 10         # Unlocks shortcuts after 10+ command repetitions

# Notification style when skill unlocks
notification_style: celebrate  # Options: celebrate, quiet, minimal
  # celebrate: Full announcement with emoji and examples
  # quiet: Simple notification without examples
  # minimal: Just mark skill as available

# Allow manual unlock override
allow_manual_unlock: true

# Track usage even before unlock
background_tracking: true
  # If false: No pattern detection until unlock
  # If true (recommended): Track patterns, reveal insights on unlock
```

## Configuration Options

### Enabled
**Default:** true

When enabled, skills progressively unlock based on usage. When disabled, all skills are immediately available (may overwhelm new users).

### Thresholds
**Default:** daily_routine: 5, shortcuts: 10, automations: 21

These are the session counts at which skills unlock. Lower values unlock sooner, higher values require more usage.

### Notification Style
**Default:** celebrate

Controls how PersonalOS announces newly unlocked skills:
- **celebrate:** Full announcement with emoji, examples, and suggestions
- **quiet:** Simple notification "New skill available: [name]"
- **minimal:** Just adds skill to table without announcement

### Allow Manual Unlock
**Default:** true

If true, user can manually unlock skills early with commands like "unlock shortcuts". If false, must wait for threshold.

### Background Tracking
**Default:** true

If true, pattern detection happens continuously. When skill unlocks, insights are already available. If false, pattern detection starts only after unlock.

## Example Configurations

### Conservative (Slower Unlocks)
```yaml
enabled: true
thresholds:
  daily_routine: 10     # 10 sessions
  shortcuts: 20        # 20 sessions
  automations: 40      # 40 sessions
notification_style: quiet
```

### Aggressive (Faster Unlocks)
```yaml
enabled: true
thresholds:
  daily_routine: 3      # 3 sessions
  shortcuts: 5          # 5 sessions
  automations: 10      # 10 sessions
notification_style: celebrate
```

### Disabled (All Skills Available)
```yaml
enabled: false
```

---

**File Location:** `personal-os/adaptation/unlock-settings.md`
**Editable:** Yes (user can modify)
**Auto-created:** On first session
