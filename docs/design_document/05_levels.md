# KwikSnax Redux — Levels

## Level Structure

Levels are designed as compact play-fields with a fixed grid layout, intended for fast arcade-style gameplay.

Each level contains:

- a predefined configuration of walls and obstacles
- collectible objects
- enemies and/or hazards
- a player spawn position
- optional bonus objects

The level must be readable at first glance. Object placement is visible so the player can plan movement without long observation.

Level layouts must support:

- precise movement
- short routes
- tactical decisions
- cooperative gameplay

On dual-screen systems, the main screen displays the play-field. The secondary screen shows score, status, or auxiliary information.

## Pace

Gameplay pace must remain fast and consistent.

Pacing rules:

- The player is always able to perform an action
- Waiting time must be minimal
- Level completion must not require long pauses
- Restart after failure must be instant
- Enemy speed and object density define the overall tempo

Early levels introduce mechanics with lower pressure. Later levels increase pressure through speed and object density without changing the core rules.

The game must support short play sessions and fast retries.

## Difficulty

Difficulty increases gradually within a single game session.

Difficulty increases through one or more of:

- higher enemy count
- faster enemies
- more complex level layouts
- reduced free space
- additional hazards
- fewer safe zones

Difficulty must not increase by introducing more complicated rules.

Challenge must arise from:

- speed
- precision
- positioning
- decision making

Gameplay must remain fair and predictable. When random elements are present, they must not break determinism or player control.

## Level Goals

Each level has a clear objective required to proceed.

Goals are one of:

- collect all required objects
- defeat all enemies
- survive until conditions are met
- activate all required elements

Goals must be:

- visible
- understandable
- achievable without guessing

After the objective is completed:

- the level ends immediately
- score is calculated
- bonuses are awarded
- the next level starts without long delay

Level goals must support replayability, scoring, and speed-running.
