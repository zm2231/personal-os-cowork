# Notifications Config

## Telegram (Primary)

Bot: Z-Claw (`@zain_claude_claw_bot`)
Bot Token: `8509856357:AAEiEH2ADEave-qVE-YxvwxN24XXvHXOX9I`
Zain's Chat ID: `1795434131`
Confirmed working: 2026-03-25

### Send a message (curl — use this pattern in any skill)

```bash
BOT_TOKEN="8509856357:AAEiEH2ADEave-qVE-YxvwxN24XXvHXOX9I"
CHAT_ID="1795434131"

curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
  -d "chat_id=${CHAT_ID}" \
  -d "text=YOUR_MESSAGE_HERE" \
  -d "parse_mode=Markdown"
```

### Formatting tips
- Bold: `*text*`
- Italic: `_text_`
- Code: `` `text` ``
- Always identify the sending skill so Zain knows what triggered it

### When to notify
Skills should send a Telegram message when:
- A scheduled task completes (summary of findings)
- An urgent deadline or action item is detected
- A task requires Zain's attention or approval
- An error occurs during an automated run

Keep messages concise — lead with the most important thing, link to local file for full details.
