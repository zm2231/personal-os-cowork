# Channel Plugins — Reference

Official Claude plugins for receiving messages and sending output to external channels.
All install via `/plugin install <name>@claude-plugins-official` inside a Claude Code session.

---

## Telegram

Push notifications and two-way messaging via a Telegram bot.

**Install:**
```
/plugin install telegram@claude-plugins-official
/reload-plugins
```

**Configure** (give it your bot token):
```
/telegram:configure 123456789:AAHfiqksKZ8...
```

**Relaunch with channel:**
```sh
claude --channels plugin:telegram@claude-plugins-official
```

**Pair:** DM your bot on Telegram — it replies with a 6-character code. Then:
```
/telegram:access pair <code>
```

**Lock down after pairing:**
```
/telegram:access policy allowlist
```

**Get a bot token:** Open [@BotFather](https://t.me/BotFather) → `/newbot` → follow prompts → copy token.
**Get your user ID:** Message [@userinfobot](https://t.me/userinfobot).

**What it can do:** Send messages (`reply`), react to messages (`react`), edit its own messages (`edit_message`). Inbound photos land in `~/.claude/channels/telegram/inbox/`. No history or search — bot only sees messages as they arrive.

**Token stored at:** `~/.claude/channels/telegram/.env` (gitignored, local only)

---

## iMessage

Read and send iMessages via macOS Messages app. No external server — reads `chat.db` directly.

**macOS only.**

**Prerequisites:** System Settings → Privacy & Security → Full Disk Access → add your terminal app.

**Install:**
```
/plugin install imessage@claude-plugins-official
```

**Relaunch with channel:**
```sh
claude --channels plugin:imessage@claude-plugins-official
```

**Test:** iMessage yourself from any device — self-chat always gets through.

**Allow others:**
```
/imessage:access allow +15551234567
# or: /imessage:access allow them@icloud.com
```

**What it can do:** Send messages and files (`reply`), fetch full conversation history (`chat_messages`). Inbound images surfaced as local paths. Cannot tapback, edit, or thread (AppleScript limitation).

---

## Slack

Connect to Slack workspaces via OAuth.

**Install:**
```
/plugin install slack@claude-plugins-official
```

Triggers an OAuth flow — sign into your Slack workspace in the browser. No token to manage manually.

---

## Running Multiple Channels

Separate channels with commas:
```sh
claude --channels plugin:telegram@claude-plugins-official,plugin:imessage@claude-plugins-official
```

---

## Tool Stack Questions (Onboarding)

When asking what tools the user uses, these are the relevant options to surface:

| They say... | Plugin to suggest |
|-------------|-------------------|
| Telegram | `telegram@claude-plugins-official` |
| iMessage / texts / Apple Messages | `imessage@claude-plugins-official` (macOS only) |
| Slack | `slack@claude-plugins-official` |

For notification routing: Telegram is best for push alerts (fast, reliable, mobile). iMessage works if they're on Mac and want texts. Slack is best if the team already lives there.
