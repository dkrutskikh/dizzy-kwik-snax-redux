# KwikSnax Redux — Art

## Overall Style

The visual style of the game must match classic handheld and arcade games of the late 90s.

Style principles:

- simple and readable graphics
- clear silhouettes for characters and objects
- minimal amount of small details
- high contrast between gameplay elements
- no visual noise

Graphics must remain readable on a small screen and during fast gameplay.

The style combines:

- retro aesthetics
- cartoon-like expressiveness
- bright colors
- clear shapes

Animations must be recognizable from silhouette or motion. Maximum length for looped or gameplay animations: 200 ms. Maximum keyframe count per animation is defined in the pipeline (e.g., 8 keyframes for silhouette clarity). Short one-off effects may use shorter durations (e.g., 67–100 ms).

## Palettes

Color palettes must respect the limitations of handheld consoles.

Rules:

- Maximum 4 colors per sprite. Maximum 16 colors per hardware palette.
- Use predefined palettes only.
- Minimum contrast ratio 4.5:1 between gameplay foreground and background (WCAG AA–equivalent).
- Identical hex or palette indices map to a named semantic table (e.g., "player_primary", "hazard") so validation is deterministic; the same color has one meaning per context.

Palette separation:

- separate palettes for player characters
- separate palettes for enemies
- separate palettes for background
- separate palettes for bonuses and hazards

Palette changes are used to:

- indicate level difficulty
- show object state
- provide visual feedback for bonuses
- distinguish players in cooperative mode

## Characters and Objects

All gameplay objects must be distinguishable by shape and color.

Character requirements:

- clear silhouette
- readable animation
- visible movement direction
- distinguishable states (moving, idle, defeated)

Enemy requirements:

- visually different from the player
- clear movement direction
- noticeable attack or danger animations

Object requirements:

- collectibles must look safe and useful
- dangerous objects must look dangerous
- bonuses must differ in color or shape
- interactive elements must be noticeable

Sprite sizes must fit the limitations of the target platform and must not overload the screen.

## UI / HUD

The interface must be minimal and must not interfere with gameplay.

Rules:

- the play-field occupies most of the screen
- UI is readable at a glance
- important information must always be visible
- UI must not overlap gameplay objects

HUD displays:

- score
- number of lives
- level number
- bonuses
- player status

On dual-screen systems:

- the main screen is used for the play-field
- the secondary screen is used for HUD, statistics, or auxiliary information

UI animations must be ≤200 ms and must not distract from gameplay.
