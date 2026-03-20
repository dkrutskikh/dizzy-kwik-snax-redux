# KwikSnax Redux — Tech

## Engine

The game is developed using the ToyGine engine.

Engine requirements:

- must run on real hardware without emulation
- identical game logic on all platforms
- fixed simulation step
- minimal input lag
- deterministic behavior
- support for 2D sprite graphics
- support for tile-based backgrounds
- support for a limited number of audio channels
- ability to build using different platform profiles

The engine must allow:

- fast deployment to target hardware
- testing in emulator and on real hardware
- enabling / disabling features via profiles
- performance measurement

The game must use only those engine features
that are available on all target platforms.

## Platform Profiles

The build must use platform profiles.

A profile defines:

- screen resolution
- number of colors
- sprite size limits
- number of on-screen objects
- refresh rate
- number of audio channels
- available memory
- available input devices

Each platform must have its own profile.

Profiles must allow:

- building the game without changing code
- limiting resource usage
- verifying compatibility with the weakest platform

The main profile must match the weakest supported system.


## Limitations (Weakest Platform)

Game design must respect the limitations of the weakest platform.

Limitations may include:

- low screen resolution
- limited color count
- limited number of sprites
- small memory size
- limited CPU speed
- limited number of audio channels
- slow data loading

Rules:

- the game must run reliably on the weakest platform
- all levels must be playable on the weakest platform
- the interface must fit on a small screen
- the number of objects must be limited
- animations must be short

If a feature does not work on the weakest platform,
it must not be required for gameplay.

## Supported Platforms (Plan)

Planned platforms:

- Nintendo GBA
- Nintendo DS
- PC (Windows, Linux, macOS)

Optional / future platforms:

- Nintendo 3DS
- Nintendo Switch
- Nintendo GameCube
- Nintendo Wii / Wii U
- future handheld systems

Requirements:

- the game must run on real hardware
- controls must match the console layout
- frame rate must remain stable
- no dependency on PC-specific features is allowed

Adding new platforms must not break existing ones.

## Technical Goals

Main technical goals:

- stable frame rate
- minimal input lag
- identical gameplay timing on all platforms
- fast level loading
- small build size
- low memory usage
- stable operation on real hardware
- no random crashes

Additional goals:

- replay recording support
- deterministic playback
- automated tests
- performance measurement tools
- CI builds for all platforms

Technical quality has priority over visual effects.
