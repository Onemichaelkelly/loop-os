#!/usr/bin/env bash
# Loop OS - installer
# Interviews you, then writes CLAUDE.md, loops.md, a memory folder, and the skills.
# Never overwrites anything without asking.
#
# Prefer a conversation to a script? Skip this and type /setup in Claude Code,
# or run the stages in GETTING-STARTED.md in any AI chat. Same result.

set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLAUDE_DIR="${HOME}/.claude"
SKILLS_DIR="${CLAUDE_DIR}/skills"

bold() { printf '\033[1m%s\033[0m\n' "$1"; }
dim()  { printf '\033[2m%s\033[0m\n' "$1"; }
ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
warn() { printf '  \033[33m!\033[0m %s\n' "$1"; }

ask() {
  # ask <prompt> <varname>
  local prompt="$1" __var="$2" answer
  printf '\n%s\n> ' "$prompt"
  IFS= read -r answer || true
  printf -v "$__var" '%s' "$answer"
}

confirm() {
  local prompt="$1" answer
  printf '%s [y/N] ' "$prompt"
  IFS= read -r answer || true
  [[ "$answer" =~ ^[Yy] ]]
}

echo
bold "Loop OS"
dim "About ten minutes. Six questions, then it writes the files."
echo
dim "Answer roughly. Everything here is a plain text file you can edit after."

# ---------------------------------------------------------------- interview
ask "1 of 6. Your name, and what you do in one sentence." NAME_LINE
ask "2 of 6. What should the assistant NOTICE without being asked?
   (what goes stale, what you drop, what nobody else is watching)" NOTICE
ask "3 of 6. How long should a normal answer be? A number of sentences is fine." LENGTH
ask "4 of 6. What must it NEVER do without you? (send, post, spend, promise)" NEVER
ask "5 of 6. One rule you already know you need. Anything." RULE1
ask "6 of 6. Where do your work files live? Absolute path, or blank to skip." WORKPATH

[[ -z "${LENGTH// }" ]] && LENGTH="4 sentences"

# ---------------------------------------------------------------- paths
SLUG="$(pwd | sed 's#/#-#g')"
MEM_DIR="${CLAUDE_DIR}/projects/${SLUG}/memory"

echo
bold "Writing files"

mkdir -p "$MEM_DIR" "$SKILLS_DIR"

# ---------------------------------------------------------------- context
CONTEXT="${CLAUDE_DIR}/CLAUDE.md"
write_context() {
  cat > "$CONTEXT" <<EOF
# About Me

${NAME_LINE}
$( [[ -n "${WORKPATH// }" ]] && printf '\nWorking files: `%s`\n' "$WORKPATH" )

# Who You Are

My operating partner, not an assistant waiting for orders. Notice this without
being asked: ${NOTICE}

Say what is stuck. Hold an opinion and give the reason.

# How You Respond

**Default: ${LENGTH}.** First sentence is the answer or the action, never a preamble.

**Length is opt-in.** Go long only when I ask you to explain, or when the long thing
IS the deliverable.

**One question at a time.** Never bundle two.

**One step at a time.** Name the total, then hand me one step. Do not paste the list.

**Time estimates in real units.** Never "quick" or "a bit of work."

**Errors get cause and fix, no alarm.** State what broke, why, and the fix.

**Never use shame or "should have" framing.** Lead with what got done.

**Shrink the task when I am stuck.** Never add pressure.

**Before sending, delete:** any opener announcing what you are about to do, any
closing recap, any "anything else?"

# Permission Model

**Automated:** reading my files and memory, searching, drafting for my review,
writing down a to-do the moment I mention it.

**Approval-gated:** writing or editing memory files, changing settings, scheduling
anything, any draft becoming final.

**Human-only:** ${NEVER}

When in doubt, treat as approval-gated.

# Scope Discipline

Take stated scope literally. Do not bundle nearby work. If you notice adjacent work
worth doing, surface it in one line and ask.

# Verification

Before stating facts about me or my work, check the memory files first. If it is
not on file, say so and ask. Never invent names, dates, or numbers.

# Hard Rules

1. ${RULE1}
EOF
}

if [[ -f "$CONTEXT" ]]; then
  warn "${CONTEXT} already exists."
  if confirm "  Back it up to CLAUDE.md.bak and write a new one?"; then
    cp "$CONTEXT" "${CONTEXT}.bak"; write_context; ok "wrote ${CONTEXT} (old one at ${CONTEXT}.bak)"
  else
    ok "left ${CONTEXT} alone"
  fi
else
  write_context; ok "wrote ${CONTEXT}"
fi

# ---------------------------------------------------------------- memory
if [[ -f "${MEM_DIR}/MEMORY.md" ]]; then
  ok "memory index already exists, left alone"
else
  cat > "${MEM_DIR}/MEMORY.md" <<EOF
# Memory Index

> One line per file: \`stem — hook\`. Add \`.md\` to open. Keep hooks under 150 characters.

user_profile — $(printf '%s' "$NAME_LINE" | cut -c1-110)
EOF
  cat > "${MEM_DIR}/user_profile.md" <<EOF
---
name: user_profile
description: $(printf '%s' "$NAME_LINE" | cut -c1-120)
metadata:
  type: user
---

${NAME_LINE}

**How to apply:** default response length is ${LENGTH}. Never do these without an
explicit yes: ${NEVER}
EOF
  ok "wrote ${MEM_DIR}/ (index + user_profile)"
fi

cp -n "${REPO}/templates/memory-file.md" "${MEM_DIR}/_template.md" 2>/dev/null || true

# ---------------------------------------------------------------- loops.md
LOOPS="${CLAUDE_DIR}/loops.md"
if [[ -f "$LOOPS" ]]; then
  ok "loops.md already exists, left alone"
else
  cp "${REPO}/templates/loops.md" "$LOOPS"
  ok "wrote ${LOOPS}"
fi

# ---------------------------------------------------------------- skills
for s in setup start sync wrap checkin stuck lesson; do
  if [[ -d "${SKILLS_DIR}/${s}" ]]; then
    warn "skill '${s}' already exists, skipped"
  else
    cp -R "${REPO}/skills/${s}" "${SKILLS_DIR}/${s}"
    ok "installed /${s}"
  fi
done

# ---------------------------------------------------------------- done
echo
bold "Done. Loop OS is installed."
echo
dim "What just happened:"
dim "  ${CONTEXT}"
dim "    your rules. Edit this by hand. It is the most important file here."
dim "  ${MEM_DIR}/"
dim "    your facts, one per file, plus the index that loads every session."
dim "  ${LOOPS}"
dim "    THE 3, open loops, waiting-for, and where you left off."
dim "  ${SKILLS_DIR}/{setup,start,sync,wrap,checkin,stuck,lesson}/"
echo
bold "Do this next"
echo "  1. Open ${CONTEXT} and fix the parts that are not quite you."
echo "  2. Tomorrow morning, in a fresh session, type /start."
echo "  3. The first time it gets something wrong, say so, then type /lesson."
echo
dim "That third step is the whole system. Everything else is scaffolding."
echo
