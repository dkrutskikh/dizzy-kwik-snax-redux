# KwikSnax Redux — Gameplay

## Basic Rules

- The player controls a character who must clear the level of enemies or collect objects according to the level objectives.
- Gameplay emphasizes precise, fast actions and predictable object behavior.
- Levels have limited size and timing. Threat spawns are defined per level: either on a fixed interval (e.g., every X seconds), after Y tasks completed, or on a specific event Z. The level timer starts when the level begins, runs during gameplay, and pauses when the game is paused; it is displayed in seconds; at 0 the level ends (defeat or time-out as defined by the level). The player must complete objectives before the timer expires or before the next threat spawn, as specified by the level data.
- Losing all lives results in the end of the level or session; the player can instantly restart the level for a new attempt.
- The game supports single-player and cooperative modes, with predictable and fair interaction between players.

## Collection and Avoidance

- Levels contain collectible items and hazards to avoid.
- Collecting items awards points. Specific collectible types grant temporary bonuses or speed enhancements.
- The player must constantly plan their route to gather valuable items while avoiding enemies and hazards.
- Avoiding enemies and traps is a key tactical element; mistakes can result in losing a life or points.

## Combos and Scoring

- Points are awarded for collecting items, defeating enemies, and completing levels.
- Combo window: a combo is active for N seconds after a successful collect or defeat. The window resets on each successful action within the window. The combo resets on miss, taking damage, or after N seconds of no qualifying action (inactivity). Example: N = 3 seconds.
- Multiplier formula: score multiplier = 1 + floor(combo_count / K), capped at a maximum (e.g., K = 3, cap = 5). Alternative: base_score * (1 + combo_count * M) with M a fixed constant and cap applied. Exact constants (K, M, cap) are defined in the scoring configuration.
- Completing a level before the par time and without errors grants bonus points (see [Core Loop](01_core_loop.md)).
- Combo and score mechanics reward route optimization and precise timing.

## Object Types

- **Collectibles**
  - Primary source of points
  - Examples: fruits, bonuses, special artifacts

- **Enemies**
  - Can move around the level or attack the player
  - Require route planning or elimination

- **Traps and Hazards**
  - Static or dynamic objects that deal damage
  - Examples: falling objects, spikes, temporary danger zones

- **Bonus Objects**
  - Grant temporary enhancements (speed boost, protection, combo multipliers)
  - Appear after specific player actions or level events

## Defeat & Victory

- **Defeat**: the player loses a life upon contact with an enemy or hazard. Losing all lives ends the level or session.
- **Temporary Defeat**: in cooperative mode, players can continue as long as at least one player remains alive.
- **Victory**: a level is completed when all objectives are met (e.g., collecting all items or defeating all enemies).
- Upon victory, the player receives points for the level, speed and combo bonuses, and then proceeds to the next level.
- Players can instantly start a new level or session to retry or continue progress.
