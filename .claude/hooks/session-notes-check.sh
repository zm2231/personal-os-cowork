#!/bin/bash
# Stop hook: blocks Claude from ending if no session notes written today.
# Returns {"decision": "block"} so Claude writes notes before stopping.

PERSONAL_OS_ROOT="${PERSONAL_OS_ROOT:-$(git -C "$(dirname "$0")" rev-parse --show-toplevel 2>/dev/null || echo ".")}"
LOGS_DIR="$PERSONAL_OS_ROOT/personal-os/logs/sessions"
TODAY=$(date +%Y-%m-%d)

# Check if today's session notes exist (any file starting with today's date)
if ls "$LOGS_DIR"/${TODAY}*.md 2>/dev/null | grep -q .; then
    # Notes exist — allow stop
    exit 0
fi

# No notes yet — block and tell Claude to write them
cat << EOF
{
  "decision": "block",
  "reason": "No session notes written yet for today. Before finishing, write a brief session log to personal-os/logs/sessions/${TODAY}-[topic].md covering: what was worked on, decisions made, issues encountered, and any skill improvements needed. Keep it under 30 lines."
}
EOF
