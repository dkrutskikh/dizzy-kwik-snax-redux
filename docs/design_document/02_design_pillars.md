# KwikSnax Redux — Design Pillars

## Precise Arcade Responsiveness

Gameplay must be precise and fully predictable. Acceptance criteria:

- Input-to-action latency: ≤16 ms (1 frame at 60 Hz) or ≤8 ms (1 frame at 120 Hz), whichever matches the target refresh rate. Measured from input event to first visible/game-state effect.
- Timing jitter: ≤4 ms peak-to-peak for input-to-action delay across consecutive samples.
- Simulation step: physics and controls update in a single step per frame; step budget ≤8 ms so that 60 Hz is sustained.
- Pass/fail: 99th percentile input latency must meet the target over at least 10,000 samples in automated or manual test runs.

Every player action must produce a consistent result. Deterministic simulation step and fixed update order ensure reproducible behavior. Changes that increase latency, jitter, or step time beyond these thresholds are considered undesirable.


## Real Hardware First

The game is designed primarily for execution on real handheld console hardware.

All technical and design decisions must respect platform constraints, including:

- performance limits
- memory limits
- timing behavior
- graphics hardware restrictions

Correct behavior on emulators is important, but must never take priority over correct behavior on physical devices.

## Deterministic Simulation

The game simulation must be fully deterministic.

Given the same input, the game must always produce the same result regardless of:

- platform
- frame rate
- execution speed
- runtime environment

Determinism is required for:

- predictable controls
- reproducibility
- cooperative gameplay
- debugging
- speed-running


## Simple Rules, Deep Mastery

Core mechanics must be easy to understand but allow a high level of mastery.

Basic mechanics are learnable without explanation. The player is able to:

- optimize routes
- improve timing
- discover efficient strategies
- compete for speed and precision

Complexity emerges from system interaction, not from complicated rules.

## Short Sessions, Fast Restart

The game loop must support short play sessions.

The game allows the player to:

- start quickly
- fail quickly
- restart instantly

Loading times, pauses, and waiting are minimized.

## Cooperative Gameplay Support

The game must function correctly in cooperative play.

Mechanics must be designed so that:

- cooperative play does not break balance
- players do not interfere in unpredictable ways
- gameplay remains readable and controllable

Co-op mode is treated as a primary feature, not an optional add-on.

## Showcase-Level Quality

The project must meet the quality level expected from a ToyGine showcase title.

Code, architecture, and gameplay systems must:

- be stable
- be predictable
- work on constrained hardware
- demonstrate correct execution on real devices

Decisions that simplify development at the cost of runtime quality are considered undesirable.
