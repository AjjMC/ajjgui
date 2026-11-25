# AjjGUIL (`ajjguil-lib`) — Programmatic GUI Library for Minecraft 26.3

`ajjguil-lib` is the programmatic library counterpart to [`ajjgui-ingame`](../ajjgui-ingame). It lets other datapacks define, open, mutate, and react to item-based GUIs directly from mcfunctions without in-game shulker compilation, while preserving full compatibility with `ajjgui`'s widget system (`placeholder`, `button`, `counter`, `switch`, `radiobutton`, `itembin`, `itemslot`, `scrollbutton`) and supporting every vanilla block container as well as ported chest boat GUIs.

- **Namespace:** `ajjguil`
- **Target Minecraft Version:** `26.3` (`pack_format`: `[121, 0]`)
- **Co-loading:** Safe to install alongside `ajjgui-ingame` in the same world — `ajjguil-lib` uses the `ajjguil` namespace, `ajjguil.*` scoreboards/tags, and `ajjguil:*` storages, while also accepting legacy `custom_data.ajjgui` widget definitions when registering GUIs.

---

## Table of Contents

1. [Installation & Verification](#installation--verification)
2. [Supported Containers](#supported-containers)
3. [Quick Start](#quick-start)
4. [Public API Reference (`ajjguil:api/*`)](#public-api-reference-ajjguilapi)
5. [GUI Definition Schema (`ajjguil:input gui`)](#gui-definition-schema-ajjguilinput-gui)
6. [Widget SNBT Schema & Click Behavior](#widget-snbt-schema--click-behavior)
7. [Event & Callback System (`#ajjguil:on_*` & `ajjguil:event`)](#event--callback-system-ajjguilon_-ajjguilevent)
8. [Target Resolution Rules](#target-resolution-rules)
9. [Runtime Scoreboards & Storages](#runtime-scoreboards--storages)
10. [Demo GUIs](#demo-guis)
11. [Minecraft 26.3 Notes](#minecraft-263-notes)

---

## Installation & Verification

1. Copy the `ajjguil-lib/` directory into `<world>/datapacks/`.
2. Run `/reload` in-game.
3. Verify initialization:
   ```mcfunction
   /function ajjguil:api/version
   /data get storage ajjguil:data
   ```
   `ajjguil:api/version` returns `121` and sets `ajjguil:data result` to `{version: "26.3", data_pack_format: 121, api_version: 1}`.

---

## Supported Containers

### Block Entity GUIs (`mode: "origin"`)

Tracked via `#ajjguil:containers`:

| Container Type | Slots | Double Variant |
|:---|:---|:---|
| `minecraft:chest`, `minecraft:trapped_chest`, `#minecraft:copper_chests` (single) | `27` | Yes (`54` slots when `type=left`/`right`) |
| `minecraft:barrel`, `#minecraft:shulker_boxes` | `27` | No |
| `minecraft:dispenser`, `minecraft:dropper`, `minecraft:crafter` | `9` | No |
| `minecraft:hopper`, `minecraft:brewing_stand` | `5` | No |
| `minecraft:furnace`, `minecraft:blast_furnace`, `minecraft:smoker` | `3` | No |

> **Note on Double Chests:** Calling `api/open_block`, `api/port`, `api/unport`, `api/get_info`, `api/get_slot`, `api/set_slot`, `api/clear_slot`, `api/set_page`, `api/set_title`, `api/refresh`, or `api/close` while positioned at *either* half of a double chest automatically resolves to the canonical right-half marker.

### Ported Vehicle GUIs (`mode: "ported"`)

- Opened on demand for a specific player via `ajjguil:api/open` or `ajjguil:api/open_page`.
- Spawns a hidden `minecraft:oak_chest_boat` (or custom chest boat via `vehicle` if listed in `#ajjguil:ported_containers`) that the player rides and opens with their inventory key (`E`).
- Includes an actionbar prompt customizable via `ajjguil:data prompt` or per-GUI `prompt` field.

---

## Quick Start

### 1. Register a GUI (`ajjguil:api/register`)

```mcfunction
data modify storage ajjguil:input gui set value {
  id: "my_pack:main_menu",
  size: 27,
  custom_name: {text: "Main Menu", color: "gold"},
  callbacks: {
    on_open: "my_pack:gui/on_open",
    on_click: "my_pack:gui/on_click",
    on_close: "my_pack:gui/on_close"
  },
  pages: [
    [
      {
        Slot: 13b,
        id: "minecraft:diamond",
        count: 1,
        components: {
          "minecraft:custom_name": {text: "Claim Reward", color: "aqua"},
          "minecraft:custom_data": {
            ajjguil: {
              widget: "button",
              id: "claim_btn",
              callback: "my_pack:gui/claim"
            }
          }
        }
      },
      {
        Slot: 26b,
        id: "minecraft:barrier",
        count: 1,
        components: {
          "minecraft:custom_name": {text: "Close", color: "red"},
          "minecraft:custom_data": {ajjguil: {widget: "button", exit: 1b}}
        }
      }
    ]
  ]
}
function ajjguil:api/register
```

### 2. Open as a Player Menu or Bind to a Block

```mcfunction
# Open for executing player @s as a ported chest boat GUI
execute as @p run function ajjguil:api/open {id:"my_pack:main_menu"}

# Or bind permanently to a chest / copper_chest / barrel / etc. at 10 64 10
execute positioned 10 64 10 run function ajjguil:api/port {id:"my_pack:main_menu"}
```

---

## Public API Reference (`ajjguil:api/*`)

### Definition Management

| Function | Arguments / Inputs | Description |
|:---|:---|:---|
| `ajjguil:api/register` | Storage `ajjguil:input gui` | Compiles and registers (or updates) a GUI definition in `ajjguil:registry definitions`. Returns fail if `id` or `pages` is missing. |
| `ajjguil:api/define` | Macro `{id:"...", pages:[...]}` (optional `ajjguil:input options`) | Inline macro wrapper over `api/register`. Copies `ajjguil:input options` if present, sets `id` and `pages`, then registers. |
| `ajjguil:api/undefine` | Macro `{id:"..."}` | Removes the definition with matching `id` from `ajjguil:registry definitions`. |

### Opening, Binding & Closing

| Function | Arguments / Inputs | Description |
|:---|:---|:---|
| `ajjguil:api/open` | Macro `{id:"..."}` (optional `ajjguil:input page`) | Opens a registered ported chest boat GUI for `@s`. |
| `ajjguil:api/open_page` | Macro `{id:"...", page:0}` | Opens a registered ported chest boat GUI for `@s` starting on `page` (0-indexed). |
| `ajjguil:api/open_block` | Macro `{id:"..."}` (optional `ajjguil:input page`) | Binds/opens a registered GUI onto the container block at `~ ~ ~`. |
| `ajjguil:api/port` | Macro `{id:"..."}` | Alias for `ajjguil:api/open_block`. |
| `ajjguil:api/unport` | *(uses block at `~ ~ ~`)* | Fires `on_close`, restores container name/clean state, and removes the `ajjguil.gui_origin` marker. |
| `ajjguil:api/close` | *(uses [Target Resolution](#target-resolution-rules))* | Closes the active/target GUI. If called inside a click callback, defers closing safely until `end_widget` finishes updating slots. For persistent block-entity (`origin`) GUIs, closes the current screen view while keeping the bound GUI marker intact (use `api/unport` to unbind). |

### Runtime Inspection & Mutation

| Function | Arguments / Output | Description |
|:---|:---|:---|
| `ajjguil:api/has_open` | *(uses `@s` / active marker)* | Returns `1` if `@s` currently has a ported GUI open or an active GUI interaction marker exists; `0` otherwise. |
| `ajjguil:api/get_info` | Output: `ajjguil:data result` | Populates `{open: 1b, id, namespace, container, size, page, page_count, mode}` (or `{open: 0b}` if no target GUI exists). Returns `1` on success. |
| `ajjguil:api/get_slot` | Macro `{slot:0}` → `ajjguil:data result` | Reads the item at `slot` on the current page into `ajjguil:data result` (`{item, widget, count, state}`). |
| `ajjguil:api/set_slot` | Macro `{slot:0, item:{...}}` | Compiles/normalizes `item` into `slot` of the current page and refreshes the open container. Safe to call during callbacks on the clicked slot. |
| `ajjguil:api/clear_slot` | Macro `{slot:0}` | Resets `slot` back to the GUI's default `placeholder` (or hidden-tooltip `light_gray_stained_glass_pane`) and refreshes. |
| `ajjguil:api/set_page` | Macro `{page:0}` | Switches the target GUI to `page` (0-indexed, modulo `page_count`), preserving `fixed: 1b` widgets and firing `on_page_change`. |
| `ajjguil:api/set_title` | Macro `{title:{...}}` or `{title:"..."}` | Updates the container `CustomName` from an SNBT text component or quoted string value and refreshes. |
| `ajjguil:api/set_title_text` | Macro `{title:"My Title"}` | Plain-string variant of `api/set_title` that wraps `$(title)` in quotes before applying. |
| `ajjguil:api/refresh` | *(uses target marker)* | Re-renders the target marker's current page into its block entity or ported vehicle. |
| `ajjguil:api/version` | Output: `ajjguil:data result` | Writes `{version:"26.3", data_pack_format:121, api_version:1}` and returns `121`. |

> Internal helper functions (`register_upsert`, `open_block_at`, `open_block_dispatch`, `open_block_init_marker`, `open_block_recompile`, `get_slot_read`, `set_slot_apply`, `unport_marker`) are used internally by the endpoints above.

---

## GUI Definition Schema (`ajjguil:input gui`)

| Field | Type | Default | Description |
|:---|:---|:---|:---|
| `id` | String | **Required** | Unique GUI identifier (e.g., `"my_pack:shop"`). |
| `pages` | List of Item Lists | **Required** | Pages of items (`[{Slot:0b, id:"...", count:1, components:{...}}, ...]`). Empty slots are filled automatically. |
| `size` | Int | `27` | Target slot count (`3`, `5`, `9`, `27`, or `54`). Overridden automatically by block size on `open_block`/`port`. |
| `container` | String | `"chest"` | Metadata label stored in `meta.container` for ported/default definitions. |
| `vehicle` | String | `"minecraft:oak_chest_boat"` | Optional chest-boat/vehicle entity ID from `#ajjguil:ported_containers` for ported GUIs. |
| `custom_name` | Text Component / String | N/A | Container display title. |
| `placeholder` | Item Compound | Light gray glass pane (hidden tooltip) | Default filler item for empty slots and `api/clear_slot`. |
| `persistent` | Byte (`0b`/`1b`) | `0b` | When `1b`, closing a ported GUI writes its live pages, `raw_pages`, and `custom_name` back into the shared `ajjguil:registry` definition (global shared state across all players opening that ported GUI). |
| `prompt` | Text Component / String | Built-in prompt | Custom actionbar prompt shown while a ported GUI is pending/open. |
| `namespace` | String | N/A | Optional metadata tag forwarded into `ajjguil:event gui.namespace`. |
| `callbacks` | Compound | `{}` | Per-GUI event handlers: `{on_open, on_close, on_click, on_page_change, on_item_insert, on_item_remove, on_tick}`. |

---

## Widget SNBT Schema & Click Behavior

Widgets are configured under `components."minecraft:custom_data".ajjguil` (legacy `components."minecraft:custom_data".ajjgui` is also automatically imported and normalized at compile time).

Supported widget types (`widget` key):
- `placeholder` (default when omitted)
- `button`
- `counter` (`values:[1,2,...]`, `state`)
- `switch` (`items:[...]`, `state`)
- `radiobutton` (`disabled:{...}`, `enabled:{...}`, `group:0b`, `state`)
- `itembin` (accepts item insertion, emits `in`, clears inserted stack)
- `itemslot` (`placeholder:{...}`, `size:99`, `state`; supports insertion, removal, stack splitting, and `size` excess clamping)
- `scrollbutton` (`widgets:[[...]]`, `slots:[[...b]]`, plus optional `items` / `state`)

Common per-widget properties:
- `id` (String): Identifier exposed in `ajjguil:event widget.id`.
- `action` (String): Optional tag exposed in `ajjguil:event widget.action`.
- `data` (Any NBT): Custom payload exposed in `ajjguil:event widget.data`.
- `callback` (String): Function ID executed `as @s` (the clicking player) when clicked (e.g., `"my_pack:on_btn"`).
- `command` (String): Inline command executed `as @s` when clicked (legacy shorthand alongside `callback`).
- `page` (Byte/Int) & `relative` (Byte `0b`/`1b`): Navigate to target page on click.
- `fixed` (Byte `0b`/`1b`): Carry widget across page changes.
- `exit` (Byte `0b`/`1b`): Close GUI on click.
- `lock` (String): Vanilla entity tag required on the clicking player (`@s[tag=<lock>]`). Locked clicks still allow `exit: 1b` and fire `#ajjguil:on_click` / `callbacks.on_click` with `gui.locked: 1b`, while suppressing `widget.callback`, `widget.command`, widget state mutations, and item insertion/removal.

---

## Event & Callback System (`#ajjguil:on_*` & `ajjguil:event`)

### Function Tags

Add listener functions to any of these tags in your datapack:

- `#ajjguil:on_open` — Fires when a ported GUI spawns or an origin block GUI marker initializes.
- `#ajjguil:on_close` — Fires when a GUI closes (`exit: 1b`, `api/close`, `api/unport`, ported vehicle dismount/removal, or broken container block).
- `#ajjguil:on_click` — Fires whenever any non-placeholder widget (or locked widget) is clicked.
- `#ajjguil:on_page_change` — Fires when `page` changes via widget or `api/set_page` (includes top-level `page` and `previous_page`).
- `#ajjguil:on_item_insert` — Fires after an `itembin` or `itemslot` accepts inserted item(s) (`type: "item_insert"`).
- `#ajjguil:on_item_remove` — Fires after an `itemslot` returns/removes item(s) (`type: "item_remove"`).
- `#ajjguil:on_tick` — Fires each tick for open GUIs (`type: "tick"`).

In addition to global function tags, per-GUI `callbacks.<event>` and per-widget `callback` run automatically with the same `ajjguil:event` payload.

> **Execution context (`@s`):** `on_click`, `on_item_insert`, `on_item_remove`, and per-widget `callback`/`command` execute `as @s` = the interacting player. `on_open`, `on_close`, `on_page_change`, and `on_tick` execute `as @s` = the GUI marker entity.

### Event Payload (`storage ajjguil:event`)

```snbt
{
  type: "click", // "click" | "item_insert" | "item_remove" | "tick" (and page/previous_page on page change)
  gui: {
    id: "my_pack:shop",
    namespace: "my_pack",
    container: "chest", // or "copper_chest", "double_chest", "barrel", "hopper", "crafter", ...
    slots: 27,
    mode: "origin", // "origin" | "ported"
    page: 0,
    page_count: 2,
    locked: 0b
  },
  player: {
    uuid: [I; ...],
    slot: 11,
    slot_returned: -1
  },
  widget: {
    id: "buy_sword",
    action: "...",
    type: "button",
    state: 0,
    count: 1,
    group: 0b,
    slot: 11b,
    data: {price: 10},
    item: { ... }
  },
  in: { id: "minecraft:diamond", count: 1 },   // present when item inserted
  out: { id: "minecraft:gold_block", count: 2 } // present when item removed
}
```

---

## Target Resolution Rules

Functions such as `api/get_info`, `api/get_slot`, `api/set_slot`, `api/clear_slot`, `api/set_page`, `api/set_title`, `api/set_title_text`, `api/refresh`, `api/close`, and `api/unport` resolve their target marker in this priority order (`ajjguil:internal/select_target_marker`):

1. Currently executing callback marker (`@e[tag=ajjguil.gui_active]`).
2. Executing directly `as` a GUI marker (`@s[tag=ajjguil.gui_origin]` or `@s[tag=ajjguil.gui_ported]`).
3. Executing `as` a player riding an open ported GUI vehicle (`execute on vehicle on passengers`).
4. Executing `positioned` at an origin container block (automatically resolving left halves of double chests to their right-half marker).

---

## Runtime Scoreboards & Storages

### Scoreboards
- `ajjguil` — Internal flags/scratch values
- `ajjguil.page` — Current page index (`0`-based)
- `ajjguil.slot`, `ajjguil.slot_returned` — Interacting player's clicked slot and returned inventory slot
- `ajjguil.state`, `ajjguil.count` — Active widget state and stack count
- `ajjguil.cooldown` — Built-in 8-tick (`0.4s`) cooldown for `itembin`/`itemslot` interactions

### Storages
- `ajjguil:input` — Input staging (`gui`, `options`, `page`)
- `ajjguil:registry` — Compiled GUI definitions list (`definitions`)
- `ajjguil:data` — Version/API metadata (`version`, `api_version`, `data_pack_format`), `result` output, `prompt`, and internal scratch (`temp`)
- `ajjguil:event` — Event context populated during callbacks and tag dispatches

---

## Demo GUIs

Register both built-in examples at any time:

```mcfunction
/function ajjguil:demo/register_examples
```

This registers:
- `ajjguil:demo_shop` — 27-slot interactive shop with `on_open` and `on_click` callbacks (`buy_sword` button, `auto_equip` switch, `recycle` itembin, exit button).
- `ajjguil:demo_vault` — 54-slot double-chest 2-page vault with navigation and close buttons.

Open them via `/function ajjguil:api/open {id:"ajjguil:demo_shop"}` or bind to a chest with `/execute positioned <x> <y> <z> run function ajjguil:api/port {id:"ajjguil:demo_vault"}`.

For a complete standalone consumer datapack integrating with `ajjguil-lib` (load-order guard, all `#ajjguil:on_*` tags, widget callbacks, and runtime mutations), see [`../ajjguil-example/`](../ajjguil-example/README.md).

---

## Minecraft 26.3 Notes

- **Pack Format:** Uses `[121, 0]` (`min_format` / `max_format`) for Minecraft `26.3`.
- **Copper Chests:** Single and double copper chests (`#minecraft:copper_chests`) are natively supported as first-class `double_capable` origin containers.
- **Ported Chest Boats:** Vanilla `26.3` does not ship a `#minecraft:chest_boats` entity tag, and vanilla `on controller` only resolves boat/ride controllers reliably on chest boats (not chest/hopper minecarts, whose container screens also do not open via the player's inventory key). `ajjguil-lib` defaults to `minecraft:oak_chest_boat` and `on passengers[type=player]` with `#ajjguil:ported_containers` covering the 26.3 chest boat/raft variants (`required: false` on optional variants).
- **Component & SNBT Hygiene:** Enforces lowercase `minecraft:container` slot objects (`{slot:0, item:{...}}`), safe `temp.page_source[{Slot:<n>b}]` bounds checks, and clean empty-slot `{Slot:0b}` handling.

---

## License

MIT License — see [`LICENSE.md`](LICENSE.md). Based on [AjjMC/ajjgui](https://github.com/AjjMC/ajjgui).
