# The Mechanics

The load-bearing pieces of Loop OS, each with its reasoning and — for people not using Claude Code — a portable copy-paste prompt version. Every mechanic works standalone; together they form a system.

---

## 1. THE 3 — a daily cap, not a to-do list

A full task list is not information; it's a freeze trigger. Opening a 20-item list usually means doing the least important thing on it, because starting anywhere feels like starting everywhere. Capping the day at three — one needle-mover plus two supporters — is the single highest-impact change in this whole system. Everything else still exists; it just lives in the backlog where it can't stare at you.

**Portable version:**

```
Here's my backlog and anything you know about my week:
[paste]

Pick THE 3 for today: exactly one 🎯 needle-mover plus two supporters. That's the
whole list — do not give me more. Everything you don't pick stays in the backlog,
parked, not lost. For each of the 3, give me the first physical action in one line.
Then stop. Don't show me the rest of the pile.
```

---

## 2. Do / Shrink / Park / Kill

The four honest options for anything stuck. Pushing a stuck task adds shame to it. **Shrink** — make it smaller until it's startable — is the move that actually works. **Park** is a decision, not a failure.

**Portable version:**

```
This has been stuck: [describe].
Give me four options and recommend one:
- DO — smallest first action, startable in 5 minutes
- SHRINK — the laughably easy version that still counts
- PARK — backlog it with a clear conscience, and say why now isn't the time
- KILL — permission to drop it entirely if it's honestly not worth doing
No pep talk. Options and your pick, one line of reasoning.
```

---

## 3. Aging counters

Every open loop carries a count of how many reviews it has survived: c0, c1, c2. At **c3** it isn't allowed to roll over again — a Do/Shrink/Park/Kill decision is forced. Old items either get handled or get honestly released. Nothing nags forever, and nothing silently haunts.

---

## 4. Waiting-For — track what others owe you

What other people promised you slips through the cracks worse than your own to-dos, because it leaves your head the moment they say "I'll handle it." Every delegation or incoming promise gets logged with a follow-up-by date; every /start flags the overdue ones first.

**Portable version:**

```
Log this as a waiting-for: [who] owes me [what], as of [date]. Suggest a follow-up-by
date. Then scan my whole waiting-for list and tell me — first — which items are past
their date and need a nudge today.
```

---

## 5. Capture-in-passing

Half of what gets dropped was said out loud mid-conversation and never written down. The AI listens across the whole session and captures commitments the instant they surface — one-line confirmation, no flow-breaking, with a closing sweep as backstop.

**Portable version:**

```
For the rest of this conversation, run as my capture net. Any time I mention — even
in passing — a to-do, follow-up, commitment, or something I'm waiting on from someone,
capture it immediately and confirm in one line: "✓ Captured: [item]". Don't stop the
conversation. When I say "sweep", re-scan everything and list anything you missed.
```

---

## 6. Three-tier permissions

One blanket rule ("always ask" / "just do it") is wrong in both directions. Three tiers remove the friction:

- **Automated** — reading, summarizing, drafting, organizing, research: just do it.
- **Approval-gated** — anything sent, scheduled, published, or shared: propose, wait for "yes."
- **Human-only** — sending, posting, purchases, strategic calls: never; the human does these.

When unsure: Approval-gated.

---

## 7. Typed memory

A fact about *you* isn't a fact about *this month*. Every saved fact gets a type so it can age correctly:

- **user** — durable truths (stable, rarely expire)
- **feedback** — corrections on how to work with you (highest value; never lose)
- **project** — current-state facts (expire; flag for re-checking)
- **reference** — pointers to where things live

See `memory-model.md` for the full spec.

---

## 8. The session wrap

The difference between a system that compounds and one that resets every morning. End each session: **wins first**, capture sweep, one line on where things stand, and the ONE thing to pick up next time. The next session opens by reading it. Continuity without re-explaining.

---

## 9. The weekly needle

One big rock per week, chosen deliberately, auto-promoted to the top of every day's THE 3. If it gets steamrolled three days running, that's data — the rock is too big and needs shrinking — not a willpower problem.

---

## 10. No-guilt reentry

When the user goes quiet for days and comes back, the greeting is what decides whether they stay. Lead with what's still in place, offer ONE easy entry point, and never open with the overdue pile. Getting back in the chair is the only goal; everything else follows from being in the chair.

**Portable version:**

```
I've been away for [duration]. Catch me up with zero guilt. Lead with what's still in
place. Do NOT open with overdue items. Give me ONE easy entry point — the smallest
thing that gets me moving today. Time-sensitive items come after that, gently.
```
