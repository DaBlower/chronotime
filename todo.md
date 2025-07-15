# ChronoTime Todo

---

## Core Gameplay Systems

- [ ] Artifact Collection Logic
  - [x] Global tracking via Autoload singleton
  - [x] Per-level artifact counter
  - [ ] **UI feedback when collected**
  - [ ] UI artifact tracker

- [ ] Health
  - [ ] Implement killzone
  - [ ] UI health bar

- [ ] Time Period Unlock System
  - [x] Condition check (3 artifacts per period for now) using Globals.gd
    - Features functions to:
      - Check if the amount of artifacts collected in a time period is enough to progress
      - Print the amount of artifacts to the debug console
      - Store the number of artifacts collected in a dictionary
  - [ ] Gate/portal/cloud sweep in transition
  - [ ] Visual effect on unlock

- [ ] Level Progression
  - [ ] Two levels per period with seamless transitions
  - [ ] Checkpoint or resume system
  - [ ] Scene manager to switch levels
---

## Sprite Sheet

- [ ] Base Tile System
  - [ ] Modular terrain blocks (stone, dirt, wall, grass)
  - [ ] Decorative variants (cracks, moss, engravings)
  - [ ] Foreground edges and platform trims

- [ ] Background Assets
  - [ ] Neutral props with stylized silhouettes (pillars, ruins, trees)
  - [ ] Flat lighting for shader tinting
  - [ ] Consistent pixel alignment

- [ ] Lightable Surfaces
  - [ ] Include objects with glow zones (e.g. glyphs, lamps, crystals)
  - [ ] Separately shaded highlights for emissive targeting

- [ ] Transparent Details
  - [ ] Alpha layers for fog, vines, shadows
  - [ ] Useful for overlays or distortion shaders

- [ ] Palette Planning
  - [ ] Midtone base colors across all tiles and props
  - [ ] Avoid time-period-specific hues in the core sheet
  - [ ] Build-in contrast zones for dynamic masking

- [ ] Material Zone Tags
  - [ ] Design areas to reflect implied material (stone vs. metal vs. fabric)
  - [ ] Used for shader-specific effects (e.g. rust, scorch, decay)

- [ ] Detail Layer Integration
  - [ ] Add subtle pattern, symbol, or trim detail
  - [ ] Supports unique shader accents like tech shimmer or magical corruption

- [ ] Compatibility Pass
  - [ ] Check that all elements respond cleanly to tint, warp, and emissive effects
  - [ ] Finalize sprite sheet layout for reuse across time periods

---

## Level Design (names tbd)

- [ ] Shaders
  - [ ] Find suitable sprite sheet
  - [ ] Use shared base tile/sprite sheet across levels
  - [ ] Create time-specific shader material
  - [ ] Connect shader logic to global time period variable
  - [ ] Add transition tween or animation (e.g. time-jump fade)
  - [ ] Design shader effects per time period
    - [ ] Prehistoric – warm tones, moss overlay, flicker
    - [ ] Ancient Egypt – sunbleached yellow, heat distortion
    - [ ] Ancient Greece – pastel lighting, mythic glow
    - [ ] Imperial China – red lantern bloom, ink ripple
    - [ ] Medieval Europe – candle haze, cool shadows
    - [ ] Renaissance – canvas texture, soft glows
    - [ ] Industrial Revolution – smoke overlay, soot filter
    - [ ] Prohibition – sepia tone, vinyl scratches
    - [ ] World Wars – desaturated green, glitch pulses
    - [ ] Modern Day – natural light, graffiti tint
    - [ ] Near Future – neon edge glow, hologram shimmer
    - [ ] Far Future – cosmic gradients, lens warp

- [ ] Prehistoric
  - [ ] Level 1 – Fossil Caverns
    - [ ] Obsidian Blade
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation (shine or pickup flash)
    - [ ] Carved Totem
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation (idle pulse or reveal effect)
    - [ ] Art
    - [ ] Layout
  - [ ] Level 2 – Volcano Ridge
    - [ ] Mammoth Tooth
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Fire Stone Idol
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Create shader
    - [ ] Layout

- [ ] Ancient Egypt
  - [ ] Level 1 – Desert Pathways
    - [ ] Ankh Pendant
      - [ ] Outline
      - [ ] Color palette (gold/blue)
      - [ ] Animation (hover shimmer)
    - [ ] Scarab Disk
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Temple of Ra
    - [ ] Eye of Horus Tablet
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Scepter Fragment
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Create shader
    - [ ] Layout

- [ ] Ancient Greece
  - [ ] Level 1 – Olive Hillside
    - [ ] Laurel Medal
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Philosopher’s Fragment
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Labyrinth of Echoes
    - [ ] Minotaur Horn
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Olympian Torch Head
      - [ ] Outline
      - [ ] Color palette
      - [ ] Animation
    - [ ] Create shader
    - [ ] Layout

- [ ] Imperial China
  - [ ] Level 1 – Lotus Forest
    - [ ] Jade Leaf Token
    - [ ] Silk Ribbon Scroll
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Warlord’s Keep
    - [ ] Dragon Seal Stone
    - [ ] Porcelain Tile Shard
    - [ ] Create shader
    - [ ] Layout

- [ ] Medieval Europe
  - [ ] Level 1 – Castle Road
    - [ ] Blacksmith’s Brand
    - [ ] Goblet of Revelry
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Crypts Below
    - [ ] Bone Rosary
    - [ ] Holy Manuscript Page
    - [ ] Create shader
    - [ ] Layout

- [ ] Renaissance
  - [ ] Level 1 – Fresco Garden
    - [ ] Create shaderist’s Brush
    - [ ] Globe Fragment
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Maestro’s Chamber
    - [ ] Music Scroll
    - [ ] Starry Lens
    - [ ] Create shader
    - [ ] Layout

- [ ] Industrial Revolution
  - [ ] Level 1 – Iron Alleyways
    - [ ] Gear Core
    - [ ] Factory Badge
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Coalworks Facility
    - [ ] Pressure Gauge
    - [ ] Coal Prism
    - [ ] Create shader
    - [ ] Layout

- [ ] Prohibition
  - [ ] Level 1 – City Rooftops
    - [ ] Flapper Comb
    - [ ] Jazz Vinyl
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Speakeasy Basement
    - [ ] Hidden Flask
    - [ ] Club Pass Token
    - [ ] Create shader
    - [ ] Layout

- [ ] World Wars
  - [ ] Level 1 – Trenches Divide
    - [ ] Dog Tag
    - [ ] Field Radio Cap
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Bunker Horizon
    - [ ] Medal of Resolve
    - [ ] Cipher Fragment
    - [ ] Create shader
    - [ ] Layout

- [ ] Modern Day
  - [ ] Level 1 – City Parks
    - [ ] Skateboard Wheel
    - [ ] VHS Tape
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Suburban Rooms
    - [ ] Flip Phone
    - [ ] Graffiti Tag Slab
    - [ ] Create shader
    - [ ] Layout

- [ ] Near Future
  - [ ] Level 1 – Neon Metropolis
    - [ ] Quantum Coin
    - [ ] Augmented Eyepiece
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Sky Grid Arena
    - [ ] Cyber Core Cube
    - [ ] Gravity Chip
    - [ ] Create shader
    - [ ] Layout

- [ ] Far Future
  - [ ] Level 1 – Stasis Wreck
    - [ ] Antimatter Vial
    - [ ] Pod Key
    - [ ] Create shader
    - [ ] Layout
  - [ ] Level 2 – Orbital Gates
    - [ ] Star Map Crystal
    - [ ] Temporal Anchor
    - [ ] Create shader
    - [ ] Layout

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

## Globals.gd singleton

- [x] Autoload Singleton Setup (global.gd)
  - [x] artifacts_collected dictionary
  - [x] add_artifact() method
  - [x] Access from any scene

- [x] Dropdown Time Period Selector
  - [x] Use @export_enum in artifact scripts

---
# Other features
- [ ] Pause Menu and Settings
  - [ ] Music toggle
  - [ ] Quit to main menu
  - [ ] Scene overlay and input handling
- [ ] Music
---
