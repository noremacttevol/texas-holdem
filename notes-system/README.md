# Cross-Platform AI Notes System

Karpathy LLM Wiki pattern + Claude Code skills + Obsidian sync.

**The idea:** You capture, Claude organizes. Plain markdown files, synced by Obsidian Sync, with Claude Code as the AI brain on desktop.

## Quick setup (on each computer)

```bash
git clone https://github.com/noremacttevol/texas-holdem
cd texas-holdem
bash notes-system/setup.sh
```

Then open `~/notes` as an Obsidian vault and enable Obsidian Sync.

## Skills installed

| Command | What it does |
|---|---|
| `/capture [thought]` | Instantly adds to inbox — fast, no organizing needed |
| `/ingest-note [file]` | Reads a source, updates wiki, logs it |
| `/process-inbox` | Files all inbox items into wiki pages, clears inbox |
| `/wiki-query [question]` | Answers from your wiki, not Claude's training data |
| `/weekly-review` | Generates weekly review from log + wiki activity |

## Daily workflow

**Phone** (Obsidian mobile):
- Write anything into `_inbox/inbox.md`
- It syncs to all your devices instantly via Obsidian Sync

**Desktop** (Claude Code):
```
cd ~/notes && claude
/process-inbox          ← file what you captured on phone
/ingest-note sources/article.md   ← process a source
/wiki-query what do I know about X?
/weekly-review          ← every Sunday
```

## Autonomous mode with /goal

```
/goal all items in _inbox/inbox.md are filed into wiki/ and inbox is cleared
/goal every wiki page in wiki/ has at least one [[cross-link]] to another page
/goal _index.md has an entry for every file in wiki/
```

Claude works until the condition is met — you don't have to prompt each step.

## Vault structure

```
~/notes/
├── CLAUDE.md           ← Claude's operating instructions
├── _index.md           ← Catalog of all wiki pages
├── _log.md             ← Append-only activity log
├── _inbox/
│   └── inbox.md        ← Quick capture (especially from phone)
├── _templates/         ← Obsidian templates
├── wiki/               ← Concept pages (Claude maintains)
├── sources/            ← Drop articles here for /ingest-note
├── projects/           ← Project notes + tasks
└── daily/              ← Daily notes + weekly reviews
```

## Phone setup

1. Install **Obsidian** on Android
2. Settings → Sync → enable, paste your sync key
3. Your vault appears on the phone — open `_inbox/inbox.md` to start capturing
4. That's it — Claude Code on your computer handles the AI part

## Adding more skills

Skills live in `~/.claude/skills/<name>/SKILL.md`. See [Claude Code docs](https://code.claude.com/docs/en/slash-commands) for the full format.

You can browse community skills at [github.com/glebis/claude-skills](https://github.com/glebis/claude-skills).
