# KwikSnax Redux — Core Loop

## Game Session

A game session consists of a sequence of levels that the player progresses through until defeat or completion.

A typical session includes:

- Game launch
- Mode selection (single-player / cooperative)
- Level start
- Level completion attempts
- Progression to the next level upon success
- Losing a life on failure
- Game over when all lives are lost or victory conditions are met
- Instant restart option

Sessions are designed to be short and repeatable.
Players should be able to quickly start a new attempt without long load times or pauses.

## Core Loop

The core gameplay loop revolves around a repeating sequence of player actions:

- Assess the current level situation
- Move the character across the play field
- Interact with level objects
- Avoid enemies and hazards
- Defeat enemies or complete level objectives
- Clear the level
- Proceed to the next level

During gameplay, the player constantly makes fast tactical decisions:

- where to move
- when to attack
- when to avoid danger
- how to clear the level efficiently
- how to minimize risk

The core loop must be:

- fast
- readable
- predictable
- suitable for repeated play

## Progression

Progression occurs within a single game session.

Key elements of progression:

- sequential level completion
- gradual difficulty increase
- more enemies
- changing level configurations
- faster game pace
- higher precision requirements for the player

Additional progression elements:

- Score tracking is enabled by default for all game modes.
- Bonuses for speed apply when level completion time is below the level's par time. Bonus is calculated as X points per second saved.
- Bonuses for efficient play apply when the player uses ≤ Y actions or ≤ Z resources. Bonus grants a fixed multiplier or fixed bonus value.
- Leaderboards are enabled when online mode is active. Leaderboards are populated only from authenticated players. Tie-breaking uses timestamp order.

Progression does not complicate the basic rules.
Challenge emerges from speed, object density, and mechanics interactions, not from introducing complex new systems.
