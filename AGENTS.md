# AGENTS Guidelines for Design Documents

This document defines **mandatory rules** for AI-assisted writing, editing, and translation of design documentation in this repository.

All AI tools (Cursor, Copilot, Continue, ChatGPT, etc.) must follow these rules when generating or modifying design documents.

These rules apply to:

* Design documents
* Gameplay specifications
* Technical design descriptions
* Controls / UI / UX documents
* Any Markdown documentation in the `/docs` directory

---

## Project Context

This repository contains design documentation for a retro-style arcade game project.

Key priorities:

* Clarity
* Determinism
* Consistency between files
* Long-term maintainability
* Bilingual documentation (English + Russian)

Design documents must describe behavior precisely enough to be used as a source of truth for implementation.

---

## General Documentation Principles

* Prefer clarity and precision over style.
* Avoid unnecessary wording.
* Avoid marketing language.
* Avoid subjective descriptions.

Documentation must be:

* deterministic
* technical
* consistent
* structured
* unambiguous

Every rule described in a document must be implementable.

Do not write vague phrases such as:

* "should feel good"
* "fast gameplay"
* "nice controls"
* "intuitive behavior"

Instead describe exact rules.

---

## Language Rules

Documentation is written in two languages:

* English — primary
* Russian — exact translation

Rules:

* English version is the source of truth
* Russian version must match English exactly in meaning
* No extra information in Russian
* No missing information in Russian
* Section order must be identical
* Headers must be identical
* Lists must be identical

If a document is changed, both languages must be updated.

---

## File Organization

Design document is split into multiple files.

Each file describes one topic.

Examples:

* 0x-gameplay.md
* 0x-controls.md
* 0x-ui.md
* 0x-scoring.md
* 0x-objects.md
* 0x-states.md
* 0x-audio.md

Rules:

* One topic per file
* No duplicated rules across files
* Files must not contradict each other
* Cross-references must be consistent

---

## File Naming

Use lowercase snake_case.

Examples:

* 0x-gameplay.md
* 0x-controls.md
* 0x-ui.md
* 0x-scoring.md
* 0x-objects.md
* 0x-states.md
* 0x-audio.md

Russian files use the same name with `.ru.md`.

Example:

* 0x-gameplay.md
* 0x-gameplay.ru.md

Rules:

* English file must exist
* Russian file must exist
* Names must match exactly

---

## Markdown Format

All documents use Markdown.

Rules:

* Use `#` for title
* Use `##` for sections
* Use `###` for subsections
* Do not skip levels

Correct:

# Title

## Section

### Subsection

Incorrect:

# Title

### Subsection

---

## Section Structure

Each document should use structured sections.

Typical sections:

* Overview
* Rules
* States
* Objects
* Actions
* Constraints
* Edge cases
* Notes

Not all sections are required, but structure must be logical.

---

## Writing Style

Use short sentences.

Prefer lists over paragraphs.

Prefer rules over descriptions.

Good:

Player can carry only one object.
If player picks another object, previous object is dropped.

Bad:

The player is designed in such a way that he should normally
only be able to hold one object at a time.

---

## Terminology Consistency

Use the same terms everywhere.

Examples:

* Player
* Enemy
* Object
* Tile
* Level
* Score
* Combo
* State

Do not rename the same thing in different files.

Wrong:

* Enemy / Monster / NPC

Correct:

* Enemy (always)

---

## Rule Formatting

Rules must be written as statements.

Good:

Player can move in four directions.

Good:

Object disappears after collision.

Bad:

Objects usually disappear.

Bad:

Player should normally move in four directions.

---

## Deterministic Behavior

All mechanics must be deterministic.

Avoid words:

* maybe
* usually
* sometimes
* random (unless specified)
* approximately

If randomness exists, define it.

Example:

Enemy chooses direction randomly every 60 frames.

---

## Numbers and Units

Always specify units.

Examples:

* 60 frames
* 3 seconds
* 16 pixels
* 1 tile

Do not write:

* short time
* small distance
* fast
* slow

---

## Lists

Use `-` for lists.

Do not mix list styles.

Correct:

* Item
* Item
* Item

Incorrect:

* Item

* Item

* Item

---

## Code Blocks

Use code blocks only for:

* input mapping
* state tables
* examples
* pseudo rules

Example:

```
A = Jump
B = Action
```

Do not use code blocks for normal text.

---

## Cross References

When referencing another document, use file name.

Correct:

See gameplay.md
See controls.md

Incorrect:

See previous section
See other file

---

## Translation Rules

Russian file must be a direct translation.

Rules:

* Same headers
* Same order
* Same lists
* Same numbers
* Same formatting

Allowed:

* Grammar differences
* Language differences

Not allowed:

* Extra explanations
* Missing rules
* Rewritten logic

---

## AI Generation Rules

AI must:

* preserve structure
* preserve section order
* preserve terminology
* preserve formatting
* preserve bilingual sync

AI must not:

* merge files
* rename sections
* invent mechanics
* remove rules
* add opinions

If information is missing, AI must ask instead of guessing.

---

## Editing Rules

When modifying document:

* change only requested section
* do not rewrite entire file
* do not reorder sections
* do not change terminology
* do not change numbers

---

## Final Rule

Design documents are specification, not prose.

They must be precise enough to implement the game without guessing.
