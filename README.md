# Loop OS

**A personal AI operating system for brains that freeze at walls of tasks.**

Loop OS is the distilled, shareable version of a system that runs daily in the real world — a Chief-of-Staff layer for Claude (or any capable AI assistant) built around one design constraint: it has to work for a brain with ADHD. That constraint turns out to produce a system that works better for everyone.

## The philosophy

Five rules, learned the hard way:

1. **A wall of tasks is a freeze trigger, not information.** The day is capped at THE 3: one needle-mover and two supporters. Everything else is parked, not forgotten.
2. **Shrink, don't push.** When something is stuck, pressure adds shame to it. Making it smaller makes it startable.
3. **Nothing haunts you forever.** Every open loop carries an aging counter. Survive three reviews and a decision is forced: Do, Shrink, Park, or Kill.
4. **Wins first, always.** Every briefing and every wrap leads with evidence of capability. No guilt, no "should have," no overdue-item avalanche as a greeting.
5. **Continuity beats memory.** Each session ends by writing where things stand and the ONE thing to pick up next. The next session starts by reading it. You never re-explain yourself to a blank chat.

## What's in the box

```
loop-os/
├── GETTING-STARTED.md   # Start here — the guided, prompt-by-prompt build path
├── CLAUDE.md            # The operating instructions template — your AI's job description
├── templates/
│   ├── loops.md         # The one shared file: THE 3, open loops, waiting-for, backlog
│   └── MEMORY.md        # Index file for the typed memory system
├── skills/
│   ├── setup/           # First run — interviews you and builds your system files
│   ├── start/           # Morning briefing — THE 3, overdue waiting-fors, one entry point
│   ├── sync/            # Mid-session checkpoint — capture sweep, memory updates
│   ├── wrap/            # Session close — wins first, sweep, standing, the one thing
│   ├── checkin/         # The loop check-in — one question about your current commitment
│   └── stuck/           # Do / Shrink / Park / Kill — for anything that won't move
└── docs/
    ├── mechanics.md     # The load-bearing mechanics, explained
    └── memory-model.md  # Typed memory: user / feedback / project / reference
```

## Quickstart — the system builds itself

You don't fill these files in by hand. The system interviews you into existence — see **[GETTING-STARTED.md](GETTING-STARTED.md)** for the full guided path (six stages, ~15 minutes, one question at a time).

**With Claude Code** (the full experience):

1. Clone this repo and open the folder in Claude Code.
2. Copy the `skills/` folders into `.claude/skills/` in that directory.
3. Type `/setup` — it interviews you, fills in `CLAUDE.md`, builds your `loops.md` and starter memory, and tells you the one habit to keep.
4. Next morning: `/start`.

**Without Claude Code** (any AI chat): run the copy-paste stages in [GETTING-STARTED.md](GETTING-STARTED.md) in order — same interview, same files, no install. Every daily mechanic also has a portable prompt version in `docs/mechanics.md`.

## Status

This is a living system, honed in public. It changes as the real system it's distilled from changes. Nothing here is theory — if a mechanic is in this repo, it survived contact with actual daily use, which mostly means it survived being abandoned and picked back up without guilt.

## License

MIT — take it, adapt it, build on it. If it helps, tell someone about it.
