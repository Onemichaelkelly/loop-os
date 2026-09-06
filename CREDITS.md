# Credits

Loop OS is a distillation of a personal system that was itself built by reading other
people's work. This file records where the ideas came from.

Nothing here ships anyone else's code. Everything below is structure, pattern, or
framing, adopted openly and named so anyone can trace it back and go read the source.
If you recognize something of yours that is not credited here, open an issue and it
gets added.

---

## The direct ancestor

**[`loganhc-09/claude-chief-of-staff`](https://github.com/loganhc-09/claude-chief-of-staff)** by Logan Currie.

The reference architecture for turning Claude Code into a persistent chief of staff.
The shape of this repo, a session-start and session-close cadence wrapped around a
persistent memory layer, comes from studying it. Structure adopted, not code.

If you want the fuller, more capable version of this idea, start there.

---

## Concepts and patterns

**[ADAM Framework](https://github.com/ajsupplycollc/Adam)** by Jereme Strange (MIT).
A 5-layer persistent AI memory and identity framework, and the closest architectural
cousin to the typed memory model in `docs/memory-model.md`. The idea that memory needs
*types* which age at different rates, rather than one undifferentiated pile, traces
here. No ADAM code is in this repo.

**[`joebenscoter86/workspace-architect`](https://github.com/joebenscoter86/workspace-architect)**.
Audit mode as scheduled drift detection. The periodic memory audit in
`docs/memory-model.md` is that idea, scaled down.

**[`ruvnet/ruflo`](https://github.com/ruvnet/ruflo)** (formerly Claude Flow).
The lite-versus-full install split as a packaging model. Why this repo has both a
conversational `/setup` and a plain `install/setup.sh`, and why it ships seven skills
instead of everything.

**[`garrytan/gstack`](https://github.com/garrytan/gstack)**.
The Think, Plan, Build, Review, Test, Ship, Reflect cadence. The wrap-before-you-stand-up
half of this system owes it.

**[`anthropics/knowledge-work-plugins`](https://github.com/anthropics/knowledge-work-plugins)**.
The skill folder convention used in `skills/`.

**Andrej Karpathy's LLM wiki**, gist published early April 2026.
Markdown plus a model as a personal wiki. Framing-level influence, no code. It made a
public category out of something a lot of people were quietly building.

**Internal Family Systems**, Richard Schwartz.
The no-shame, no-"should have" framing throughout the skills is borrowed from IFS
language. It predates this project and is not mine.

**Retrieval-Augmented Generation** (Lewis et al., Facebook AI Research, 2020).
The canonical name for what the memory model does. Applied here to a personal knowledge
base rather than a general corpus, but the pattern is not original to this repo.

**holaOS.** Studied for architectural patterns and deliberately not used. Its license
carries commercial-use and branding conditions, so nothing from it is in this MIT repo,
and nothing from it should be added without reviewing those terms first. Noted here so
the decision does not get quietly reversed later.

---

## Adjacent work worth your time

Same space, same 2026 wave, different approaches. None of their code is here. Listed so
the field is named rather than strawmanned, and because any of these may fit you better
than this one does.

- **[`jdpolasky/chief-of-staff-2`](https://github.com/jdpolasky/chief-of-staff-2)** by ChasingGnosis.
  V2, published after V1 "got too big and bloated and collapsed under its own weight."
  That post-mortem is the most useful thing anyone in this space has written down, and
  the seven-skill cap in this repo is a direct response to it.
- **[`Tuned2aDeadChannel/vault-system`](https://github.com/Tuned2aDeadChannel/vault-system)** by Rusty Spoons.
  A narrowly scoped work vault with a daily "Librarian" routine that spot-checks for
  consistency and escalates when it finds a problem, plus a Manifesto file governing how
  Claude works around his attention. The Manifesto idea and this repo's `CLAUDE.md` are
  solving the same problem from different directions.
- **[`unmutable/ai-chief-of-staff`](https://github.com/unmutable/ai-chief-of-staff)** by Caleb Peavy.
- **[`kbanc85/claudia`](https://github.com/kbanc85/claudia)**. Session management and skill layer.
- **Hermes Agent** by Nous Research. Self-improving agent with persistent memory, earlier
  than this wave and in the same lineage.

---

## What is actually original here

Not much, and that is the point. The pieces I have not seen elsewhere in this shape:

- **The three-item cap as a hard constraint**, not a suggestion. Built for a brain that
  freezes at a wall of tasks, which turns out to produce a system that works better for
  everyone.
- **Aging counters that force a decision.** An open loop that survives three reviews
  gets Do / Shrink / Park / Kill. Nothing haunts you forever.
- **`/lesson`.** One correction, one file, always with the reason attached. This is the
  loop that makes the system improve instead of staying frozen at setup quality.
- **Worked examples instead of blank templates.** Everything in `examples/` is filled in
  by an invented operator, because a blank template cannot teach you how specific to be.

---

*Maintained the same way the memory system is: when something new is adapted, it gets a
section here before it ships.*
