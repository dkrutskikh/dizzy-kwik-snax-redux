# KwikSnax Redux — Controls

## Basic Layout

- The player uses the standard button layout of handheld consoles (GBA / NDS).
- Main control inputs:

| Button                      | Action                                              |
| --------------------------- | --------------------------------------------------- |
| D-pad / directional buttons | Character movement (up, down, left, right)          |
| A                           | Primary action (collect / attack / interact)        |
| B                           | Cancel / secondary action / dodge                   |
| L / R                       | Additional functions / mode switching (if required) |
| Start                       | Pause / menu                                        |
| Select                      | Quick access to level info / statistics             |

- On dual-screen systems, controls are designed so that the main screen remains focused on gameplay, while the secondary screen displays information without interrupting player actions.

## Actions

Primary player actions:

- **Movement** — move the character in four directions.
- **Collect / Interact** — pick up items, activate bonuses, defeat enemies.
- **Dodge / Secondary action** — safe movement, avoidance, or context-specific action.
- **Pause / Menu** — control game state, restart level, view stats.

Additional actions are context-sensitive. The available action is determined by the closest interactive object or the player's current state in the level.

## Context Rules

- Each button performs an action only when the correct context is present.
- Example: the A button attacks an enemy when the player is near one, otherwise it collects an item.
- Context actions must not block the core gameplay loop: the player must always be able to move and avoid danger.
- In cooperative mode, context actions must consider the position and state of all players to avoid conflicts.

## Accessibility

- Controls use a minimal button set. Each button maps to one primary action or one context action.
- Alternative control layouts are supported, including left-handed preference.
- Rumble (vibration feedback) is supported for hardware that provides it:

  - short vibration when collecting an item
  - medium vibration on contact with enemy or hazard
  - long vibration when losing a life or completing a level

- Vibration can be enabled, disabled, or adjusted in the settings menu.
