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

If not yet configured, walk through full setup:

```
"To get push notifications on your phone via Telegram:

1. Open Telegram → search @BotFather → /start
2. Send: /newbot
3. Follow prompts → get your bot token
4. Open your new bot and send any message
5. Go to: https://api.telegram.org/bot[TOKEN]/getUpdates
6. Find your chat_id in the JSON response

Share your token and chat ID — I'll save them to notifications.md.
That file is gitignored, so credentials stay local."
```

After receiving credentials, save to `notifications.md` and send a test message:
```bash
curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
  -d "chat_id=${CHAT_ID}" \
  -d "text=PersonalOS connected ✓" \
  -d "parse_mode=Markdown"
```

Confirm delivery before finishing.

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
