#!/bin/bash
# One-command setup: copies vault template + skills to your machine.
# Run from the repo root: bash notes-system/setup.sh

set -e

VAULT="${NOTES_VAULT:-$HOME/notes}"
SKILLS="$HOME/.claude/skills"

echo "Setting up notes vault at: $VAULT"
echo "Setting up skills at:      $SKILLS"
echo ""

# Create vault
mkdir -p "$VAULT"/_inbox "$VAULT"/_templates "$VAULT"/wiki "$VAULT"/sources "$VAULT"/projects "$VAULT"/daily

# Copy vault template files (don't overwrite existing)
for f in vault/CLAUDE.md vault/_index.md vault/_log.md vault/_inbox/inbox.md vault/_templates/wiki-page.md vault/_templates/daily-note.md; do
  dest="$VAULT/${f#vault/}"
  if [ ! -f "$dest" ]; then
    cp "$(dirname "$0")/$f" "$dest"
    echo "  created: $dest"
  else
    echo "  skipped (exists): $dest"
  fi
done

# Copy skills
mkdir -p "$SKILLS"
for skill in capture ingest-note process-inbox wiki-query weekly-review; do
  src="$(dirname "$0")/.claude/skills/$skill"
  dst="$SKILLS/$skill"
  if [ ! -d "$dst" ]; then
    cp -r "$src" "$dst"
    echo "  skill installed: /$skill"
  else
    echo "  skill skipped (exists): /$skill"
  fi
done

echo ""
echo "Done! Next steps:"
echo "  1. Open $VAULT as an Obsidian vault"
echo "  2. Enable Obsidian Sync in Settings > Sync"
echo "  3. cd $VAULT && claude"
echo "  4. Type /capture to test your first note"
