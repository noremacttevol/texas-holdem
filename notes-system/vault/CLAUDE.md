# Notes Wiki — Claude's Instructions

## Vault structure
```
_inbox/inbox.md   ← quick captures (especially from phone) — you process & clear
_index.md         ← catalog of all wiki pages — you maintain
_log.md           ← append-only activity log — you only append
_templates/       ← note templates
wiki/             ← concept/topic pages — you own entirely  
sources/          ← raw articles/PDFs — you read, never modify
projects/         ← project notes and tasks — shared with user
daily/            ← daily and weekly reviews — you generate on request
```

## Skills available
- `/capture [thought]` — add to inbox instantly
- `/ingest-note [file]` — process a source into the wiki
- `/process-inbox` — file everything in inbox into wiki, then clear it
- `/wiki-query [question]` — answer from wiki content only
- `/weekly-review` — generate weekly review from log + wiki

## Wiki page format (always use this)
```markdown
---
tags: [tag1, tag2]
created: YYYY-MM-DD
updated: YYYY-MM-DD
---

# Page Title

One-paragraph summary.

## Key points
- 

## Related
- [[other-page]]
```

## Cross-linking
Always use `[[page-name]]` Obsidian-style links — never bare URLs for internal refs.
Tags go in YAML frontmatter, not inline `#hashtags`.

## Rules
- `sources/` files: read-only, never modify or delete
- `_log.md`: append-only, never edit existing lines
- `_inbox/inbox.md`: process and clear; never leave stale items
- Wiki page names: `lowercase-hyphenated.md`
- Max ~500 words per wiki page — split if it grows larger

## /goal examples for long-running work
```
/goal all items in _inbox/inbox.md are filed into wiki/ and inbox is cleared
/goal _index.md has an entry for every file in wiki/
/goal every wiki page has at least one [[cross-link]] to another page
```
