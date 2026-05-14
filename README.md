# Texas Hold'em

Command-line Texas Hold'em poker. Built for the MLS-102 card game project.

## How to run

```bash
python main.py
```

## File structure

| File | What it does |
|------|-------------|
| `card.py` | `Card` class — rank, suit, and numeric value |
| `deck.py` | `Deck` class — builds, shuffles, and deals 52 cards |
| `players.py` | `CmpPlayer` (base) and `HmnPlayer` (subclass) |
| `manager.py` | `TexasHoldemManager` — runs the full game loop |
| `main.py` | Entry point, menu |

## How the game works

Standard Texas Hold'em rules: each player gets 2 hole cards, 5 community cards come out over 4 betting rounds (pre-flop, flop, turn, river), best 5-card hand wins the pot.

Computer players use a simple strategy based on their hole cards. The human player types `fold`, `call`, or `raise` each round.

The game runs until one player has all the chips or the human quits.

## Why Texas Hold'em

I like the movie Tombstone — Doc Holliday plays poker. The computer players are named after Tombstone characters and the game uses a few quotes from the film at the table. Seemed like the right game to build.
