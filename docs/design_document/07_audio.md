# KwikSnax Redux — Audio

## Music Style

The soundtrack must match the style of classic arcade and handheld games from the late 90s.

Main requirements:

- short looping tracks
- clear rhythm supporting fast gameplay
- simple and memorable melody
- limited number of instruments
- good clarity on small handheld speakers

Music must:

- support fast-paced gameplay
- not distract from gameplay
- remain clear when looped
- match the visual style of the game

Different themes are used for:

- normal levels
- difficult levels
- bonus situations
- level completion
- defeat

## Sound Effects

Sound effects must be short, clear, and distinguishable by pitch or pattern.

Main rules:

- each type of action must have its own sound
- sounds are recognizable by the player without confusion
- sounds must not mask other important sounds
- sound duration is minimal

Required sound categories:

- movement
- item collection
- enemy destruction
- bonus pickup
- taking damage
- losing a life
- level completion
- danger appearance
- interface events

Sounds must respect the limitations of the target platform. Use the following numeric budgets unless a platform override applies:

- Maximum simultaneous channels: 8 (configurable per platform; mobile/tablet/console tiers may define lower values, e.g., 4–6).
- Sample rate: 22050 Hz or 32768 Hz as defined for the target hardware.
- Volume range: 0.0–1.0 linear or equivalent dB range (e.g., -60 dB to 0 dB); all mixing uses the same scale.

Platform-specific overrides are documented in the audio module. Sounds affecting gameplay must always have priority.

## Dynamics

The audio system must support sound changes depending on the current game situation.

Variations include:

- music speed increase when difficulty rises
- volume changes during danger situations
- temporary sounds for bonuses
- special sounds for combos
- separate signals for cooperative play

Music and sound effects must reinforce player feedback:

- success is accompanied by a clear sound
- mistakes produce a sharp signal
- danger is audible in advance

Sounds must not interfere with controls or reduce gameplay readability. When many events happen at the same time, the system plays sounds in priority order; gameplay-critical sounds have highest priority.
