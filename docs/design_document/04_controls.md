# KwikSnax Redux — Controls

## Basic Layout

- The player uses the standard button layout of handheld consoles (GBA / NDS).
- Main control inputs:

- D-pad / directional buttons: Character movement (up, down, left, right)
- A: Primary action (collect / attack / interact)
- B: Cancel / secondary action / dodge
- L / R: Additional functions / mode switching (if required)
- Start: Pause / menu
- Select: Quick access to level info / statistics

- On dual-screen systems, controls are designed so that the main screen remains focused on gameplay, while the secondary screen displays information without interrupting player actions.

## Actions

Primary player actions:

- **Movement** — move the character in four directions.
- **Collect / Interact** — pick up items, activate bonuses, defeat enemies.
- **Dodge / Secondary action** — safe movement, avoidance, or context-specific action.
- **Pause / Menu** — control game state, restart level, view stats.

Additional actions are context-sensitive. The available action is determined by the closest interactive object or the player's current state in the level.

## Context Rules

- Each button performs an action only when the correct context is present. The A button triggers the primary action (collect / attack / interact) according to the selected interactable.
- If multiple interactables are within range, choose the highest-precedence type from the fixed list: Enemy > Bonus > Collectible > Environment. If multiple of the same type exist, choose the nearest by distance. If distances tie, choose the one with the lowest unique ID.
- Context actions must not block the core gameplay loop: the player must always be able to move and avoid danger.
- In cooperative mode, when multiple players could trigger the same context target, the action is attributed by global precedence and then by lowest player ID. Conflicts are not queued; the chosen player's action is executed and the context is consumed. Other players do not preempt once the action has started.

## Accessibility

- Controls use a minimal button set. Each button maps to one primary action or one context action.
- Alternative control layouts are supported, including left-handed preference.
- Rumble (vibration feedback) is supported for hardware that provides it:

  - 100 ms vibration when collecting an item
  - 300 ms vibration on contact with enemy or hazard
  - 800 ms vibration when losing a life or completing a level

- Vibration can be enabled, disabled, or adjusted in the settings menu.
