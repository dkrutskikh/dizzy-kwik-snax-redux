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

Sprite and texture constraints (handheld GBA / NDS primary; desktop build may use larger caps where documented):

- Maximum gameplay sprite canvas: 128×128 px per character or large object; 64×64 px for small props; UI icons 32×32 px.
- Maximum atlas / texture: 2048×2048 px per texture; maximum 256 distinct sprite cells referenced per atlas build.
- Memory budget: ≤100 KB uncompressed source per gameplay sprite file (PNG or project format); ≤2 MB per atlas sheet after packing.
- Scaling: on target handheld hardware, 1 game pixel maps 1:1 to the physical LCD pixel grid for the primary mode; no fractional UI scale on hardware paths. Desktop / emulator builds may use integer scale factors only (1×, 2×, 3×) from a fixed table.
- Concurrent on-screen sprites: maximum 64 drawn sprites per frame on handheld targets; maximum 200 on desktop debug builds unless a level overrides with a lower cap in data.
- Pixel coverage: moving gameplay sprites must not cover more than 40% of the play-field pixel area in aggregate per frame (reject or LOD if exceeded).

## UI / HUD

The interface must be minimal and must not interfere with gameplay.

Rules:

- the play-field occupies most of the screen
- UI is readable at a glance
- important information must always be visible
- UI must not overlap gameplay objects

HUD elements (art perspective) are laid out per the full specification in [UX](08_ux.md), which defines enemy count, combo counter, level timer, second player status, and update rules.

On dual-screen systems:

- the main screen is used for the play-field
- the secondary screen is used for HUD, statistics, or auxiliary information

UI animations must be ≤200 ms and must not distract from gameplay.
