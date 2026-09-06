---
name: lesson
description: Turn a correction into a permanent memory file so the same mistake never costs a second correction. Use for "/lesson", "write that down", "remember that", and automatically whenever the user says "no, not like that", "I already told you", "that's wrong", "too long", or re-does something you produced.
---

# /lesson

A correction that only lives in this conversation will be repeated next week. This
turns it into a file.

Fire on the words, not just the command. "I already told you" is the loudest signal
in the whole system, and it means a lesson that should exist does not.

## Procedure

**1. Name the actual rule.** Not what happened, the rule underneath it. "Too long"
is not a rule. "Default to four sentences unless I ask for the long version" is.

**2. Check for an existing file first.** Read the index. If a file already covers
this, update it rather than creating a near-duplicate. Two files saying almost the
same thing is how a memory system starts lying to you.

**3. Write it.** One fact, one file, named `feedback_<short_slug>.md`:

```markdown
---
name: feedback_<slug>
description: <one line, scannable, says when this applies>
metadata:
  type: feedback
---

<The rule, in plain sentences.>

**Why:** <what actually went wrong. This is the part that keeps the rule alive.>

**How to apply:** <what to do differently, concrete enough to check.>
```

**4. Add the index line.** `stem — hook`, under 150 characters. A file with no index
line does not exist.

**5. Confirm in one line.** `✓ Saved: feedback_<slug>` and move on. Do not
apologize, do not explain at length, do not restart the task from the beginning.

## Rules

- **Always include the why.** A rule with no reason gets deleted in four months by
  someone who does not remember the incident. That someone is usually the person
  who made the rule.
- **Write the rule so it can be checked**, not felt. "Be less formal" cannot be
  checked. "No exclamation points, no 'delighted to'" can.
- If the correction is genuinely one-off, say so and skip the file. Not every "no"
  is a rule, and a memory folder full of noise is as useless as an empty one.
