# AjjGUIL Example Pack (`ajjguil-example`)

A minimal, self-contained reference datapack showing how a consumer pack integrates with [`ajjguil-lib`](../ajjguil-lib/README.md) on **Minecraft Java Edition `26.3`** — covering both **Ported (Player Menu) GUIs** and **Block Entity GUIs (`mode: "origin"`)**.

## Setup

1. Install **both** `ajjguil-lib/` and `ajjguil-example/` into your world's `datapacks/` folder.
2. Run `/reload`.
3. `example:load` automatically waits for `ajjguil:data {api_ready:1b}` (or schedules 1 tick later if load order differs) and registers all example GUIs (`example:menu`, `example:block_vault`, `example:block_station`, `example:block_hopper`).

## Quick Commands

| Command | Effect |
|:---|:---|
| `/function example:open` | Opens `example:menu` as a ported chest boat GUI for `@s` |
| `/function example:block/spawn_demo_blocks` | Places 4 ready-to-use Block GUI containers (`Double Chest`, `Copper Chest`, `Crafter`, `Hopper`) 3 blocks south (`~ ~ ~3`) of `@s` |
| `/execute positioned <x> <y> <z> run function example:port_here` | Binds `example:menu` (27-slot) to the container block at `<x> <y> <z>` |
| `/execute positioned <x> <y> <z> run function example:block/bind_vault` | Binds `example:block_vault` (54-slot 2-page vault) to the double chest at `<x> <y> <z>` |
| `/execute positioned <x> <y> <z> run function example:block/bind_station` | Binds `example:block_station` (9-slot crafting station) to the crafter/dispenser/dropper at `<x> <y> <z>` |
| `/execute positioned <x> <y> <z> run function example:block/bind_hopper` | Binds `example:block_hopper` (5-slot machine panel) to the hopper/brewing stand at `<x> <y> <z>` |
| `/execute positioned <x> <y> <z> run function example:unport_here` | Unbinds any Block GUI from the container block at `<x> <y> <z>` |
| `/function example:toggle_vip` | Toggles the `example.vip` tag on `@s` to test locked widgets |

## Included Examples

### 1. Ported & 27-Slot Menu (`example:menu`)
- Demonstrates all 8 widget types (`button`, `switch`, `counter`, `radiobutton`, `itemslot`, `itembin`, `scrollbutton`, `placeholder`), `fixed: 1b` exit buttons, relative page navigation, `lock:"example.vip"`, global `#ajjguil:on_*` tag listeners, per-GUI callbacks, and runtime title/slot mutations.

### 2. Block Entity GUIs (`example:block_*`)
- **`example:block_vault` (54-slot Double Chest / Double Copper Chest):** 2-page persistent vault with two 64-max `itemslot`s, an `itembin` incinerator, `api/get_info` container inspection (`inspect_info`), live `api/set_title_text` renaming (`rename_vault`), and page navigation on slots `49`/`45`.
- **`example:block_station` (9-slot Crafter / Dispenser / Dropper):** Processing station demonstrating reading one slot with `api/get_slot` (`process_input`), clearing it with `api/clear_slot`, and spawning an interactive reward button in Slot 4 with `api/set_slot` (`claim_output`).
- **`example:block_hopper` (5-slot Hopper / Brewing Stand):** Compact machine control panel with a 3-state `switch`, 4-step `counter`, and `exit: 1b` button.
