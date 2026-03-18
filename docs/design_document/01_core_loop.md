# KwikSnax Redux — Core Loop

## Game Session

A game session consists of a sequence of levels that the player progresses through until defeat or completion.

A typical session includes:

1. Game launch
2. Mode selection (single-player / cooperative)
3. Level start
4. Level completion attempts
5. Progression to the next level upon success
6. Losing a life on failure
7. Game over when all lives are lost or victory conditions are met
8. Instant restart option

Sessions are designed to be short and repeatable.
Players should be able to quickly start a new attempt without long load times or pauses.

## Core Loop

The core gameplay loop revolves around a repeating sequence of player actions:

1. Assess the current level situation
2. Move the character across the play field
3. Interact with level objects
4. Avoid enemies and hazards
5. Defeat enemies or complete level objectives
6. Clear the level
7. Proceed to the next level

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

Additional progression elements may include:

- score tracking
- bonuses for speed
- bonuses for efficient play
- leaderboards

Progression does not complicate the basic rules.
Challenge emerges from speed, object density, and mechanics interactions, not from introducing complex new systems.
