---
description: Search and answer questions from the personal wiki. Use when the user asks "what do I know about X", "find my notes on Y", "what have I captured about Z", or any question that should be answered from stored knowledge rather than Claude's training data.
argument-hint: [your question]
allowed-tools: Read Bash
---

## Wiki index
!`cat ~/notes/_index.md 2>/dev/null || echo "(no index yet — run /ingest-note or /process-inbox first)"`

## Instructions

Answer this question using ONLY content from `~/notes/wiki/`:

**Question:** $ARGUMENTS

Steps:
1. Check the index above to identify the 2-4 most relevant wiki pages
2. Read those pages fully
3. Synthesize an answer from what's there — cite which page each piece came from
4. If the answer reveals a useful insight not yet in the wiki, offer to add it: "Want me to add this to [[page-name]]?"
5. If no relevant pages exist, say so clearly and offer to create one

Prefix your answer with: **From your wiki:**
