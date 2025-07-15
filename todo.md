# ChronoTime Development Checklist

---

## Core Gameplay Systems

- [ ] Artifact Collection Logic
  - [ ] Global tracking via Autoload singleton
  - [ ] Per-level artifact counter
  - [ ] UI feedback when collected

- [ ] Time Period Unlock System
  - [ ] Condition check (e.g. 4 artifacts per period)
  - [ ] Gate or portal scene trigger
  - [ ] Visual effect on unlock

- [ ] Level Progression
  - [ ] Two levels per period with seamless transitions
  - [ ] Checkpoint or resume system
  - [ ] Scene manager to switch levels

---

## Scene Management & Transitions

- [ ] Scene Switching Logic
  - [ ] Use change_scene_to_file()
  - [ ] Use change_scene_to_packed()

- [ ] Custom Transition System
  - [ ] Slide-in overlay
  - [ ] Delay scene change until transition finishes
  - [ ] Optional fade-out or time-themed visual

- [ ] Exported Scene Variables
  - [ ] Use @export var next_scene: PackedScene
  - [ ] Assign scene in Inspector

---

## Visual & Art Pipeline

- [ ] Prehistoric Environment Assets
  - [ ] Terrain tiles and props
  - [ ] Parallax backgrounds
  - [ ] Animated effects (e.g. lava, fire)

- [ ] Artifact Sprite Sheets
  - [ ] Design and animate artifacts per level
  - [ ] Export for use with pickup logic

- [ ] Custom Palettes per Era
  - [ ] Create and assign Aseprite palettes
  - [ ] Use color logic for atmospheric shifts

---

## Global Game Systems

- [ ] Autoload Singleton Setup (global.gd)
  - [ ] artifacts_collected dictionary
  - [ ] add_artifact() method
  - [ ] Access from any scene

- [ ] Dropdown Time Period Selector
  - [ ] Use @export_enum in artifact scripts
  - [ ] Link to constant list in global.gd

- [ ] Pause Menu and Settings
  - [ ] Music toggle
  - [ ] Quit to main menu
  - [ ] Scene overlay and input handling

---
