---
name: notification-manager
description: >
  Configure and manage notification preferences, alert routing, and delivery channels.
  Trigger when user says "configure notifications", "set up Telegram", "too many notifications",
  "send me alerts", "notification settings", or "where do you send output".
---

# Notification Manager

Configures how and where PersonalOS delivers output. Reads and updates `personal-os/context/notifications.md`.

## Step 1: Read Current Config

Read `personal-os/context/notifications.md`. If it has placeholder values (e.g., `[set locally]`), treat it as unconfigured.

Show current state:
```
Current notification setup:
- Primary channel: [value or "not configured"]
- Telegram: [configured / not configured]
- Notion: [configured / not configured]
- Format preference: [value or "not set"]
```

---

## Step 2: Configure Channels

Ask which the user wants to set up or change. Handle each:

### Notion (built-in — no MCP setup needed)

```
"Notion is built-in to Cowork. Just tell me:
1. What's your workspace name?
2. Which page should I use as the parent for outputs?
   (I'll always nest under it — never create top-level pages)"
```

Save workspace name and parent page to `notifications.md`.

### Telegram (push to phone)

Telegram uses the official Claude plugin. Read `personal-os/core/integration/plugins-reference.md` for full setup.

If not yet installed, walk through:
```
"Telegram setup (5 min):

1. Get a token: open @BotFather → /newbot → copy the token
2. In Claude Code:
   /plugin install telegram@claude-plugins-official
   /reload-plugins
   /telegram:configure YOUR_TOKEN
3. Restart: claude --channels plugin:telegram@claude-plugins-official
4. DM your bot → get pairing code → /telegram:access pair <code>
5. /telegram:access policy allowlist

Once connected, I'll send output there automatically."
```

After setup, log in `notifications.md` that Telegram is configured. No token storage needed — the plugin handles credentials at `~/.claude/channels/telegram/.env`.

### iMessage (macOS only)

```
"iMessage setup:

1. System Settings → Privacy & Security → Full Disk Access → add your terminal
2. /plugin install imessage@claude-plugins-official
3. Restart: claude --channels plugin:imessage@claude-plugins-official
4. iMessage yourself to verify"
```

### Slack

```
"/plugin install slack@claude-plugins-official
Complete OAuth in browser — done."
```

### Per-type routing

Ask once, then save:
```
"How do you want different output types routed?

Time-sensitive (urgent flags, deadline alerts): [channel]
Archivable records (session notes, summaries): [channel]
Team-facing outputs (briefs, assignments): [channel]

Defaults: time-sensitive → Telegram, records → Notion or local file."
```

---

## Step 3: Update Files

Write confirmed values to `personal-os/context/notifications.md`.
Update `personal-os/context/output-format.md` with Notion parent page / Obsidian path if changed.

---

## Step 4: Confirm

```
Notification config saved:
✓ Primary: [channel]
✓ Telegram: [configured with test / not set up]
✓ Notion: [parent page / not set up]
✓ Routing: time-sensitive → [X], records → [Y]

Any skills that deliver output will use this config.
```

---

## Delivery Rules (for all skills using notifications)

- Always read `notifications.md` before delivering output — never hardcode a destination
- Telegram messages: lead with the key point, under 200 chars, link to local file for details
- Notion: always append to existing page if today's date page exists; create new if not
- Never send credentials, tokens, or personal data to Telegram
- Mark the sending skill in every Telegram message: `[/skill-name]`
