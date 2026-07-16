---
name: sync
description: Mid-session checkpoint. Sweeps the conversation for uncaptured commitments, updates loops.md and memory. Lightweight — use when the user says "/sync", "checkpoint", or mid-way through a long session.
---

# /sync — mid-session checkpoint

## Steps

1. **Sweep the conversation so far** for anything stated in passing that wasn't captured: to-dos, follow-ups, things the user is waiting on from others, decisions made. This is the backstop to live capture, not a replacement for it.

2. **Route each catch:**
   - To-dos → `loops.md` Open loops (with `c0`) or Backlog
   - Things owed by others → Waiting For, with a follow-up-by date
   - Durable facts or corrections → the relevant memory file (update existing files; only create a new one when nothing fits)

3. **Confirm captures in one line each:** "✓ Captured: …"

4. **Check drift.** If THE 3 no longer matches what the session actually became, say so and propose the updated version — don't silently rewrite it.

## Rules

- Keep it lightweight — a sync should take under a minute of the user's attention.
- Memory writes follow the typed model (user / feedback / project / reference) — see `docs/memory-model.md`.
- Don't turn a sync into a planning session. Capture, confirm, hand the floor back.
