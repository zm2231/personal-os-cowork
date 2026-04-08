---
name: dispatch-guide
description: "Mobile access to PersonalOS via Cowork Dispatch. Reference when user asks about phone access, mobile tasks, or Telegram."
version: 1.0.0
---

# Dispatch — Mobile Access to PersonalOS

Dispatch is Cowork's built-in mobile feature. Assign tasks from your phone, Claude completes them on your desktop, results delivered to the same conversation.

## Setup (2 minutes)

1. Open Claude Desktop app → sidebar → **Dispatch**
2. Click "Get started"
3. Toggle on: **Allow file access** + **Keep computer awake**
4. Scan QR code with Claude mobile app
5. Done — conversation syncs across phone ↔ desktop automatically

**Requirements:** Pro or Max plan. Computer must be awake, Claude Desktop must be open.

## How It Works With PersonalOS

When you message from your phone via Dispatch:
- Your PersonalOS context loads automatically (same Cowork folder)
- All skills available exactly as on desktop
- Say "using PersonalOS:" to signal you want full context loaded

**Example usage:**
```
"Using PersonalOS: draft my weekly update"
→ PersonalOS loads your priorities + patterns → generates update
→ Result delivered to same phone conversation

"Using PersonalOS: what's blocking me today?"
→ Reads current-priorities.md → surfaces blockers

"Using PersonalOS: log a decision — we're going with Option B for the API design"
→ Logs to decisions.md, acknowledges briefly
```

## Tips

- Start long tasks from phone before a meeting → results ready when you return
- Voice dictation works great with Dispatch — dictate naturally, PersonalOS structures it
- Dispatch uses the same MCP connectors and plugins you've configured in Cowork

## Want Push Notifications?

**Option A — Channels (Claude Code CLI):** Claude Code supports a Channels feature that pushes external events (Telegram, Discord, iMessage) into a running session via the `--channels` flag and channel plugins. Requires an active Claude Code session. See official Claude Code docs for current setup instructions.

**Option B — Scheduled task push:** Configure a Desktop scheduled task to read `personal-os/context/notifications.md` and push output to your preferred channel after completing work. Works without an active session.

For most Cowork users, Dispatch covers mobile access without extra setup.
