# A GUI Framework for Minecraft Mapmaking Using In-Game Commands

> **AVAILABLE ON 1.20.5+**
>
> **Please report any bugs in the issues section.**


<p align = "center">
  <img src="repo/gui.gif" width="350">
</p>

<p align = "center">
  <i>A GUI made entirely in-game in under 5 minutes.</i>
</p>

## Overview

Large Minecraft servers often use custom user interfaces in which the inventory of a container (e.g., a chest) is used to display interactive elements to players as in-game items. While plugins have made the design of such menus trivial to server developers, the limitations of Minecraft commands and datapacks make it difficult to replicate these item-based GUIs in situations where plugins are not available.

Various datapacks as well as datapack generators have been made with the intent to provide mapmakers with a GUI framework. However, these are usually basic, being restricted to essential features that rarely go beyond the creation of buttons and page navigation, and they may often not be designed with reliability into account. Furthermore, existing approaches involve datapack templates in which the logic of specific GUIs is hard-coded, requiring mapmakers to understand and modify part of the code.

This framework aims to be the ultimate mapmaking tool for creating and managing complex and robust item-based GUIs in-game, removing the need to write code or ever touch the datapack. This is achieved by simply dragging and dropping items with custom NBT tags in containers within a world, which the datapack can use to generate GUIs according to mapmakers' specifications.

The datapack provides the following features:

* NBT standard for quick and easy creation of advanced item-based GUIs
* Completely in-game workflow, with the entire datapack being a black box that the mapmaker can ignore
* Robust design, support for multiplayer, including personalized GUIs, and no interference with player inventories
* Complete documentation, in-game tutorial and demos

## Downloading and Installing

The datapack can be downloaded from this repository by clicking on "Code" and then "Download ZIP". The folder inside the ZIP file is the datapack. After this folder has been added to the "datapacks" folder of a Minecraft world, ``/reload`` needs to be run in-game. A list of the datapack's commands is available via ``/function ajjgui:__help``. By convention, all functions run directly by the mapmaker start with two underscores. Functions starting with a single underscore are aliases that do not give any feedback messages in the chat. These are meant to be used by the mapmaker as part of their own map's datapack. Any functions not listed here are internal and are not meant to be used.

| Function                           | Description                                             |
|:-----------------------------------|:--------------------------------------------------------|
| ``/function ajjgui:__compile``     | Compiles GUI                                            |
| ``/function ajjgui:__copyright``   | Displays datapack copyright information                 |
| ``/function ajjgui:__decompile``   | Decompiles nearest GUI                                  |
| ``/function ajjgui:__help``        | Displays datapack command list                          |
| ``/function ajjgui:__install``     | Installs datapack                                       |
| ``/function ajjgui:__kit``         | Gives GUI design and compilation kit                    |
| ``/function ajjgui:__manual``      | Displays datapack manual link                           |
| ``/function ajjgui:__open``        | Opens ported GUI with player UUID and GUI ID            |
| ``/function ajjgui:__openself``    | Opens ported GUI of executing player with GUI ID        |
| ``/function ajjgui:__port``        | Ports nearest GUI to player with player UUID and GUI ID |
| ``/function ajjgui:__portself``    | Ports nearest GUI to executing player with GUI ID       |
| ``/function ajjgui:__reload``      | Reloads GUIs                                            |
| ``/function ajjgui:__tutorial``    | Displays GUI design and compilation tutorial            |
| ``/function ajjgui:__uninstall``   | Uninstalls datapack                                     |
| ``/function ajjgui:__version``     | Displays datapack version                               |
| ``/function ajjgui:__widgetdemo/`` | Gives GUI demo widgets                                  |
| ``/function ajjgui:_open``         | Runs ``/function ajjgui:__open`` without feedback       |
| ``/function ajjgui:_openself``     | Runs ``/function ajjgui:__openself`` without feedback   |
| ``/function ajjgui:_port``         | Runs ``/function ajjgui:__port`` without feedback       |
| ``/function ajjgui:_portself``     | Runs ``/function ajjgui:__portself`` without feedback   |
| ``/function ajjgui:_reload``       | Runs ``/function ajjgui:__reload`` without feedback     |

The datapack can be installed by running ``/function ajjgui:__install`` at any location in the world, which generates a shulker box. This needs to be located in a loaded chunk for the datapack to be fully functional and cannot be destroyed. The shulker box can be relocated by repeating the installation command elsewhere. Any updated versions of the datapack are automatically installed at the same location upon reloading the world. The datapack can be uninstalled using ``/function ajjgui:__uninstall``, which removes all data associated with it from the world and decompiles any existing GUIs.

## Creating a GUI

The datapack adopts the concept of [graphical widgets](https://en.wikipedia.org/wiki/Graphical_widget), present in real-world user interfaces. Within the scope of Minecraft's item-based GUIs, and this datapack specifically, every item in a GUI corresponds to an interactive element (e.g., a button).

There are 8 types of GUI widgets available:

* [Placeholder](#placeholder)
* [Button](#button)
* [Counter](#counter)
* [Switch](#switch)
* [Radiobutton](#radiobutton)
* [Itembin](#itembin)
* [Itemslot](#itemslot)
* [Scrollbutton](#scrollbutton)

An in-game tutorial on how to create a GUI is available via ``/function ajjgui:__tutorial``. The tutorial provides the player with premade demo widgets to experiment with. Multiple examples are given, both here and in-game, to help provide a better understanding of their custom NBT. The following section explains all the different types of widgets available and how they can be customized. Once obtained, these items can be placed inside shulker boxes, with each shulker box corresponding to a different GUI page. The shulker boxes can be arranged based on their page number and compiled to build a functional GUI in-game. This manual can be accessed with ``/function ajjgui:__manual``.

## List of GUI Widgets

> **NOTE:** Some of the following commands are too long to fit in the chat box and need to be executed using a command block.

> **NOTE:** For custom NBT, it is important to check that the right data types are being used (e.g., ``{ajjgui:{exit:1b}}`` and not ``{ajjgui:{exit:1}}``), that values are within the specified range (e.g., ``{ajjgui:{exit:1b}}`` and not ``{ajjgui:{exit:2b}}``, where ``ajjgui.exit`` here can only be ``0b`` or ``1b``). The GUI compiler is only capable of initializing required NBT with default values and does not correct errors. While there are cases where errors in custom NBT, such as incorrect data types, may be internally resolved by the datapack at later stages, this behavior is inconsistent and must not be assumed.

> **NOTE:** The ``ajjgui.command``, ``ajjgui.exit``, ``ajjgui.fixed``, ``ajjgui.page`` and ``ajjgui.relative`` NBT tags are covered separately in later sections.

### Placeholder

The *placeholder* is a widget that cannot be interacted with and is used to display an item.

| NBT Tag           | Default                             | Type           |
|:------------------|:------------------------------------|:---------------|
| ``ajjgui.fixed``  | ``0b``                              | Boolean (Byte) |
| ``ajjgui.widget`` | Required (``"placeholder"`` or N/A) | String         |

#### Usage

```
/give @p <item id>[minecraft:custom_data={ajjgui:{widget:"placeholder",<optional ajjgui tags>}}]
```

#### Example

A *placeholder*:

```
/give @p minecraft:black_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"placeholder"}},minecraft:hide_tooltip={}]
```

<p align = "center">
  <img src="repo/placeholder.gif" width="350">
</p>

> **NOTE:** If a GUI slot is empty, the GUI compiler adds a light gray stained glass pane *placeholder* with a blank name in its place.

> **NOTE:** If the ``ajjgui.widget`` NBT tag of any item is not specified, it is set to ``"placeholder"`` by default. Therefore, the entire ``ajjgui`` argument for any *placeholder* is optional, and no specific tags are required.

### Button

The *button* is a widget that changes the GUI page, exits the GUI and/or runs a GUI command when clicked. More information can be found in the following sections.

| NBT Tag             | Default                 | Type           |
|:--------------------|:------------------------|:---------------|
| ``ajjgui.command``  | N/A                     | String         |
| ``ajjgui.exit``     | ``0b``                  | Boolean (Byte) |
| ``ajjgui.fixed``    | ``0b``                  | Boolean (Byte) |
| ``ajjgui.page``     | N/A                     | Byte           |
| ``ajjgui.relative`` | ``0b``                  | Boolean (Byte) |
| ``ajjgui.widget``   | Required (``"button"``) | String         |

#### Usage

```
/give @p <item id>[minecraft:custom_data={ajjgui:{widget:"button",<optional ajjgui tags>}}]
```

#### Examples

More information about [changing GUI pages](#changing-gui-pages), [exiting GUIs](#exiting-guis) and [running GUI commands](#running-gui-commands-and-accessing-data).

### Counter

The *counter* is a widget that changes to a different count of the same item when clicked, following a value sequence. The value sequence is specified in the ``ajjgui.values`` NBT tag. The default value is the one initially used upon creation of the widget. Once a *counter* in its default state is clicked, it changes to the second value in the list and so on. Hence, the first one is not used until the end of the first cycle. After one cycle, the first value is always used instead of the default one. The current state of a *counter* is stored in the ``ajjgui.state`` NBT tag.

| NBT Tag             | Default                  | Type           |
|:--------------------|:-------------------------|:---------------|
| ``ajjgui.command``  | N/A                      | String         |
| ``ajjgui.exit``     | ``0b``                   | Boolean (Byte) |
| ``ajjgui.fixed``    | ``0b``                   | Boolean (Byte) |
| ``ajjgui.page``     | N/A                      | Byte           |
| ``ajjgui.relative`` | ``0b``                   | Boolean (Byte) |
| ``ajjgui.state``    | ``0``                    | Integer        |
| ``ajjgui.values``   | Required                 | Integer List   |
| ``ajjgui.widget``   | Required (``"counter"``) | String         |

#### Usage

```
/give @p <item id>[minecraft:custom_data={ajjgui:{widget:"counter",values:[<value 1>,<value 2>,…,<value N>],<optional ajjgui tags>}}] <default value>
```

where N is the number of states.

#### Examples

1. A *counter* repeating the sequence 1 to 16, starting with 1. The default value is the same as the first value in ``ajjgui.values``:

    ```
    /give @p minecraft:black_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"counter",values:[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]}},minecraft:custom_name='{"text":"Counter Value","italic":false}'] 1
    ```

2. A *counter* repeating the sequence 1 to 4, starting with 1. The default value is the same as the first value in ``ajjgui.values``:

    ```
    /give @p minecraft:black_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"counter",values:[1,2,3,4]}},minecraft:custom_name='{"text":"Counter Value","italic":false}'] 1
    ```

3. A *counter* beginning with a default value of 64, followed by the sequence 2 to 16, that continues by repeating the sequence 1 to 16:

    ```
    /give @p minecraft:black_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"counter",values:[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]}},minecraft:custom_name='{"text":"Counter Value","italic":false}'] 64
    ```

4. A *counter* repeating the sequence 1 to 16, starting with 16. The default value is the same as the first value in ``ajjgui.values`` (now rearranged). The value of ``ajjgui.state`` is set to ``1`` to match the states:

    ```
    /give @p minecraft:black_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"counter",values:[16,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],state:1}},minecraft:custom_name='{"text":"Counter Value","italic":false}'] 16
    ```

<p align = "center">
  <img src="repo/counter.gif" width="350">
</p>

### Switch

The *switch* is a widget that changes to a different item when clicked, following an item sequence. The item sequence is specified in the ``ajjgui.items`` NBT tag. The default item is the one initially used upon creation of the widget. Once a *switch* in its default state is clicked, it changes to the second item in the list and so on. Hence, the first one is not used until the end of the first cycle. After one cycle, the first item is always used instead of the default one. The current state of a *switch* is stored in the ``ajjgui.state`` NBT tag.

| NBT Tag             | Default                 | Type           |
|:--------------------|:------------------------|:---------------|
| ``ajjgui.command``  | N/A                     | String         |
| ``ajjgui.exit``     | ``0b``                  | Boolean (Byte) |
| ``ajjgui.fixed``    | ``0b``                  | Boolean (Byte) |
| ``ajjgui.items``    | Required                | Compound List  |
| ``ajjgui.page``     | N/A                     | Byte           |
| ``ajjgui.relative`` | ``0b``                  | Boolean (Byte) |
| ``ajjgui.state``    | ``0``                   | Integer        |
| ``ajjgui.widget``   | Required (``"switch"``) | String         |

#### Usage

```
/give @p <default item id>[minecraft:custom_data={ajjgui:{widget:"switch",items:[<item 1>,<item 2>,…,<item N>],<optional ajjgui tags>}}]
```

where N is the number of states.

#### Examples

1. A *switch* changing between a "State 0" and a "State 1" state, starting with "State 0". The default item is the same as the first item in ``ajjgui.items``:

    ```
    /give @p minecraft:gray_dye[minecraft:custom_data={ajjgui:{widget:"switch",items:[{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 0","italic":false}'}},{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 1","italic":false}'}}]}},minecraft:custom_name='{"text":"State 0","italic":false}']
    ```

2. A *switch* changing between a "State 0", a "State 1" and a "State 2" state, starting with "State 0". The default item is the same as the first item in ``ajjgui.items``:

    ```
    /give @p minecraft:gray_dye[minecraft:custom_data={ajjgui:{widget:"switch",items:[{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 0","italic":false}'}},{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 1","italic":false}'}},{id:"minecraft:purple_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 2","italic":false}'}}]}},minecraft:custom_name='{"text":"State 0","italic":false}']
    ```

3. A *switch* beginning with a default state, "Default", that continues by changing between a "State 0" and a "State 1" state, starting with "State 1":

    ```
    /give @p minecraft:magenta_dye[minecraft:custom_data={ajjgui:{widget:"switch",items:[{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 0","italic":false}'}},{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 1","italic":false}'}}]}},minecraft:custom_name='{"text":"Default","italic":false}']
    ```

4. A *switch* changing between a "State 0" and a "State 1" state, starting with "State 1". The default item is the same as the first item in ``ajjgui.items`` (now rearranged). The value of ``ajjgui.state`` is set to ``1`` to match the states:

    ```
    /give @p minecraft:lime_dye[minecraft:custom_data={ajjgui:{widget:"switch",items:[{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 1","italic":false}'}},{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 0","italic":false}'}},{id:"minecraft:purple_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 2","italic":false}'}}],state:1}},minecraft:custom_name='{"text":"State 1","italic":false}']
    ```

<p align = "center">
  <img src="repo/switch.gif" width="350">
</p>

### Radiobutton

The *radiobutton* is a widget that changes between a disabled and an enabled state item when clicked. It comes in groups in which only one widget can be enabled at a time, with the rest being disabled. Each item is specified in the ``ajjgui.disabled`` and ``ajjgui.enabled`` NBT tags. The default item is the one initially used upon creation of the widget. Once a *radiobutton* is clicked, it changes to the item corresponding to its enabled state, and all the other *radiobutton* widgets with the same group identifier change to their disabled state. The group identifier of a *radiobutton* is stored in the ``ajjgui.group`` NBT tag. The current state of a *radiobutton* is stored in the ``ajjgui.state`` NBT tag.

| NBT Tag             | Default                      | Type           |
|:--------------------|:-----------------------------|:---------------|
| ``ajjgui.command``  | N/A                          | String         |
| ``ajjgui.disabled`` | Required                     | Compound       |
| ``ajjgui.enabled``  | Required                     | Compound       |
| ``ajjgui.exit``     | ``0b``                       | Boolean (Byte) |
| ``ajjgui.fixed``    | ``0b``                       | Boolean (Byte) |
| ``ajjgui.group``    | ``0b``                       | Byte           |
| ``ajjgui.page``     | N/A                          | Byte           |
| ``ajjgui.relative`` | ``0b``                       | Boolean (Byte) |
| ``ajjgui.state``    | ``0``                        | Integer        |
| ``ajjgui.widget``   | Required (``"radiobutton"``) | String         |

#### Usage

```
/give @p <default item id>[minecraft:custom_data={ajjgui:{widget:"radiobutton",off:<off item>,on:<on item>,<optional ajjgui tags>}}]
```

#### Examples

1. A *radiobutton* on group 0 changing between a "Disabled" and an "Enabled" state, starting with "Disabled":

    ```
    /give @p minecraft:gray_dye[minecraft:custom_data={ajjgui:{widget:"radiobutton",disabled:{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"Disabled","italic":false}'}},enabled:{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"Enabled","italic":false}'}},group:0b}},minecraft:custom_name='{"text":"Disabled","italic":false}']
    ```

2. A *radiobutton* on group 0 beginning with a default state, "Default", that continues by changing between a "Disabled" and an "Enabled" state, starting with "Enabled":

    ```
    /give @p minecraft:magenta_dye[minecraft:custom_data={ajjgui:{widget:"radiobutton",disabled:{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"Disabled","italic":false}'}},enabled:{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"Enabled","italic":false}'}},group:0b}},minecraft:custom_name='{"text":"Default","italic":false}']
    ```

3. A *radiobutton* on group 0 changing between a "Disabled" and an "Enabled" state, starting with "Enabled". The value of ``ajjgui.state`` is set to ``1`` to match the states:

    ```
    /give @p minecraft:lime_dye[minecraft:custom_data={ajjgui:{widget:"radiobutton",disabled:{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"Disabled","italic":false}'}},enabled:{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"Enabled","italic":false}'}},group:0b,state:1}},minecraft:custom_name='{"text":"Enabled","italic":false}']
    ```

<p align = "center">
  <img src="repo/radiobutton.gif" width="350">
</p>

### Itembin

The *itembin* is a widget that clears all items inserted by the player in a particular slot in the GUI.

| NBT Tag             | Default                  | Type           |
|:--------------------|:-------------------------|:---------------|
| ``ajjgui.command``  | N/A                      | String         |
| ``ajjgui.exit``     | ``0b``                   | Boolean (Byte) |
| ``ajjgui.fixed``    | ``0b``                   | Boolean (Byte) |
| ``ajjgui.page``     | N/A                      | Byte           |
| ``ajjgui.relative`` | ``0b``                   | Boolean (Byte) |
| ``ajjgui.widget``   | Required (``"itembin"``) | String         |

#### Usage

```
/give @p <item id>[minecraft:custom_data={ajjgui:{widget:"itembin",<optional ajjgui tags>}}]
```

#### Example

An *itembin*:

```
/give @p minecraft:bucket[minecraft:custom_data={ajjgui:{widget:"itembin"}},minecraft:custom_name='{"text":"Item Bin","italic":false}']
```

<p align = "center">
  <img src="repo/itembin.gif" width="350">
</p>

> **NOTE:** The *itembin* has a built-in cooldown of 0.4s.

### Itemslot

The *itemslot* is a widget that stores items inserted by the player in a particular slot in the GUI. Once one or more stacked items are inserted, the current ones occupying the slot (if any) are replaced and returned to the player's inventory. When the *itemslot* is not being used, a placeholder item occupies the slot. This is stored in the ``ajjgui.placeholder`` NBT tag. The maximum number of items in an *itemslot* is stored in the ``ajjgui.size`` NBT tag, which cannot be larger than ``99``. Any excess items are returned to the player. Whether an *itemslot* has an item in it is determined by the ``ajjgui.state`` NBT tag.

| NBT Tag                | Default                   | Type           |
|:-----------------------|:--------------------------|:---------------|
| ``ajjgui.command``     | N/A                       | String         |
| ``ajjgui.exit``        | ``0b``                    | Boolean (Byte) |
| ``ajjgui.fixed``       | ``0b``                    | Boolean (Byte) |
| ``ajjgui.page``        | N/A                       | Byte           |
| ``ajjgui.placeholder`` | Required                  | Compound       |
| ``ajjgui.relative``    | ``0b``                    | Boolean (Byte) |
| ``ajjgui.size``        | ``99``                    | Intege         |
| ``ajjgui.state``       | ``0``                     | Integer        |
| ``ajjgui.widget``      | Required (``"itemslot"``) | String         |

#### Usage

```
/give @p <default item or placeholder id>[minecraft:custom_data={ajjgui:{widget:"itemslot",placeholder:<placeholder item>,<optional ajjgui tags>}}]
```

#### Examples

1. An empty *itemslot* with a default placeholder item identical to the one specified in ``ajjgui.placeholder`` and a stack size of ``64``:

    ```
    /give @p minecraft:gray_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"itemslot",placeholder:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"text":"Empty","italic":false}'}},size:64}},minecraft:custom_name='{"text":"Empty","italic":false}']
    ```

2. An empty *itemslot* with a default placeholder item identical to the one specified in ``ajjgui.placeholder`` and a stack size of ``16``:

    ```
    /give @p minecraft:gray_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"itemslot",placeholder:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"text":"Empty","italic":false}'}},size:16}},minecraft:custom_name='{"text":"Empty","italic":false}']
    ```

3. An empty *itemslot* with a default placeholder item different from the one specified in ``ajjgui.placeholder`` and a stack size of ``64``:

    ```
    /give @p minecraft:white_stained_glass_pane[minecraft:custom_data={ajjgui:{widget:"itemslot",placeholder:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"text":"Empty","italic":false}'}},size:64}},minecraft:custom_name='{"text":"Default","italic":false}']
    ```

4. An *itemslot* with an item in it by default and a stack size of ``64``. The value of ``ajjgui.state`` is set to ``1`` as the slot is occupied:

    ```
    /give @p minecraft:diamond[minecraft:custom_data={ajjgui:{widget:"itemslot",placeholder:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"text":"Empty","italic":false}'}},size:64,state:1}}]
    ```

<p align = "center">
  <img src="repo/itemslot.gif" width="350">
</p>

> **NOTE:** The *itemslot* has a built-in cooldown of 0.4s.

### Scrollbutton

The *scrollbutton* is a widget that cycles one or more lists of *static* widgets (see notes) across respective GUI slot lists when clicked. This allows for additional space in the GUI. Each widget list is specified in the ``ajjgui.widgets`` NBT tag. Within each widget list, widgets are added in the order they appear in. The slot list associated with each widget list is specified in the ``ajjgui.slots`` NBT tag. Within each slot list, slots are added in the order they are occupied by the respective widget list. The *scrollbutton* also contains the entire functionality of the *switch*, including the ``ajjgui.items`` and ``ajjgui.state`` NBT tags.

| NBT Tag             | Default                       | Type               |
|:--------------------|:------------------------------|:-------------------|
| ``ajjgui.command``  | N/A                           | String             |
| ``ajjgui.exit``     | ``0b``                        | Boolean (Byte)     |
| ``ajjgui.fixed``    | ``0b``                        | Boolean (Byte)     |
| ``ajjgui.items``    | N/A                           | Compound List      |
| ``ajjgui.page``     | N/A                           | Byte               |
| ``ajjgui.relative`` | ``0b``                        | Boolean (Byte)     |
| ``ajjgui.slots``    | Required                      | Byte List List     |
| ``ajjgui.state``    | ``0``                         | Integer            |
| ``ajjgui.widget``   | Required (``"scrollbutton"``) | String             |
| ``ajjgui.widgets``  | Required                      | Compound List List |

#### Usage

```
/give @p <item id>[minecraft:custom_data={ajjgui:{widget:"scrollbutton",widgets:[[<widget 1,1>,<widget 1,2>,…,<widget 1,L_1>],[<widget 2,1>,<widget 2,2>,…,<widget 2,L_2>],…,[<widget N,1>,<widget N,2>,…,<widget N,L_N>]],slots:[[<slot 1,1>,<slot 1,2>,…,<slot 1,M_1>],[<slot 2,1>,<slot 2,2>,…,<slot 2,M_2>],…,[<slot N,1>,<slot N,2>,…,<slot N,M_N>]],<optional ajjgui tags>}}]
```

where L_x and M_y are the numbers of widgets and slots in each widget list and slot list respectively, and N is the number of widget list and slot list pairs.

#### Example

A *scrollbutton* cycling 6 buttons across GUI slots 11, 12, 13 and 14. Each button leads to a different page when clicked. There is a single widget list of length 6 and a single slot list of length 4:

```
/give @p minecraft:spectral_arrow[minecraft:custom_data={ajjgui:{widget:"scrollbutton",widgets:[[{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{ajjgui:{widget:"button",page:0b}},"minecraft:custom_name":'{"text":"Select","italic":false}'}},{id:"minecraft:paper",count:2,components:{"minecraft:custom_data":{ajjgui:{widget:"button",page:1b}},"minecraft:custom_name":'{"text":"Select","italic":false}'}},{id:"minecraft:paper",count:3,components:{"minecraft:custom_data":{ajjgui:{widget:"button",page:2b}},"minecraft:custom_name":'{"text":"Select","italic":false}'}},{id:"minecraft:paper",count:4,components:{"minecraft:custom_data":{ajjgui:{widget:"button",page:3b}},"minecraft:custom_name":'{"text":"Select","italic":false}'}},{id:"minecraft:paper",count:5,components:{"minecraft:custom_data":{ajjgui:{widget:"button",page:4b}},"minecraft:custom_name":'{"text":"Select","italic":false}'}},{id:"minecraft:paper",count:6,components:{"minecraft:custom_data":{ajjgui:{widget:"button",page:5b}},"minecraft:custom_name":'{"text":"Select","italic":false}'}}]],slots:[[11b,12b,13b,14b]]}},minecraft:custom_name='{"text":"Next","italic":false}']
```

<p align = "center">
  <img src="repo/scrollbutton.gif" width="350">
</p>

> **NOTE:** The *scrollbutton* only supports the *placeholder*, *button* and *itembin* widgets.

> **NOTE:** If the ``ajjgui.widget`` NBT tag of any widget is not specified, it is set to ``"placeholder"`` by default. Therefore, the entire ``ajjgui`` argument for any *placeholder* is optional, and no specific tags are required. This, by extension, applies to a *placeholder* widget specified in the ``ajjgui.widgets`` NBT tag of the *scrollbutton*.

## Changing GUI Pages

Each of the widgets discussed previously, excluding the *placeholder*, can be made to change the GUI page when clicked. This is done by specifying a page number in the ``ajjgui.page`` NBT tag. By default, this value is the index of the shulker box in the chest previously used to compile the GUI, where a value of ``0b`` corresponds to the first page. If it is equal to the number of pages, the count resets back to the first page, and negative values may also be used to access pages from the end. The ``ajjgui.relative`` NBT tag can be set to ``1b`` in order for the value of ``ajjgui.page`` to increment the page number from its current value. This, hence, assumes that the current page has an index of ``0b`` and uses this as a reference instead of the first one.

#### Examples

1. A *button* setting the GUI page to the first one:

    ```
    /give @p minecraft:arrow[minecraft:custom_data={ajjgui:{widget:"button",page:0b}},minecraft:custom_name='{"text":"Go to First Page","italic":false}']
    ```

2. A *button* setting the GUI page to the last one:

    ```
    /give @p minecraft:arrow[minecraft:custom_data={ajjgui:{widget:"button",page:-1b}},minecraft:custom_name='{"text":"Go to Last Page","italic":false}']
    ```

3. A *button* setting the GUI page to the next one:

    ```
    /give @p minecraft:arrow[minecraft:custom_data={ajjgui:{widget:"button",page:1b,relative:1b}},minecraft:custom_name='{"text":"Go to Next Page","italic":false}']
    ```

4. A *button* setting the GUI page to the previous one:

    ```
    /give @p minecraft:arrow[minecraft:custom_data={ajjgui:{widget:"button",page:-1b,relative:1b}},minecraft:custom_name='{"text":"Go to Previous Page","italic":false}']
    ```

<p align = "center">
  <img src="repo/button.gif" width="350">
</p>

## Fixed GUI Widgets

Each of the widgets discussed previously can be made to stay on display when the GUI page is changed. This is done by setting the ``ajjgui.fixed`` NBT tag to ``1b``. If a *scrollbutton* is made fixed, its widgets also obtain this property.

#### Example

A *button* staying fixed in its slot when the GUI page is changed:

```
/give @p minecraft:arrow[minecraft:custom_data={ajjgui:{widget:"button",page:1b,relative:1b,fixed:1b}},minecraft:custom_name='{"text":"Go to Next Page","italic":false}']
```

## Exiting GUIs

Each of the widgets discussed previously, excluding the *placeholder*, can be made to exit the GUI when clicked. This is done by setting the ``ajjgui.exit`` NBT tag to ``1b``.

#### Example

A *button* exiting the GUI:

```
/give @p minecraft:barrier[minecraft:custom_data={ajjgui:{widget:"button",exit:1b}},minecraft:custom_name='{"text":"Exit","italic":false}',minecraft:rarity=common]
```

## Porting GUIs to Players

Once a GUI is compiled into a block entity, it is possible to port it to a specific player in a database using their UUID and an identifier unique to each GUI associated with them. This allows for personalized menus based on chest boats. Porting the nearest GUI is achieved with ``/function ajjgui:__port`` using the macro arguments "player" for the UUID integer array and "id" for the GUI identifier. Using the same arguments, ``/function ajjgui:__open`` gives a player access to a GUI from the database. The executing player can use their own UUID with ``/function ajjgui:__portself`` and ``/function ajjgui:__openself``, which only require a GUI identifier as an argument.

#### Example

1. A mapmaker compiles a GUI for a settings menu at coordinates ``10`` ``10`` ``10``. It is intended for each player in the map to have their own settings menu. The following command can be used to port this GUI to all online players. A single underscore is used to hide command feedback:

    ```
    /execute positioned 10 10 10 as @a run function ajjgui:_portself {id:"settings"}
    ```

    Then, a player can open their own GUI with:

    ```
    /function ajjgui:gui_openself {id:"settings"}
    ```

2. By specifying a UUID, offline players can be targeted, and a player can be allowed to open someone else's GUI. For example, the UUID of the player "Ajj" is ``[I; -1547620582, -1960489320, -1638997249, 1765947055]``. The following command can be used to port the nearest GUI to Ajj. A single underscore is used to hide command feedback:

    ```
    /function ajjgui:_port {player:[I;-1547620582,-1960489320,-1638997249,1765947055],id:"settings"}
    ```

    Then, a player can open Ajj's GUI with:

    ```
    /function ajjgui:_open {player:[I;-1547620582,-1960489320,-1638997249,1765947055],id:"settings"}
    ```

## Running GUI Commands and Accessing Data

### Read-Only Data

| Scoreboard Score    | Description       | Type    |
|:--------------------|:------------------|:--------|
| ``@s ajjgui.count`` | Widget item count | Integer |
| ``@s ajjgui.page``  | Page number       | Integer |
| ``@s ajjgui.slot``  | Widget slot       | Integer |
| ``@s ajjgui.state`` | Widget state      | Integer |

| Data Storage NBT       | Description                           | Type          |
|:-----------------------|:--------------------------------------|:--------------|
| ``ajjgui:data in``     | *Itembin* or *itemslot* item inserted | Compound      |
| ``ajjgui:data out``    | *Itemslot* item removed               | Compound      |
| ``ajjgui:data page``   | Page                                  | Compound List |
| ``ajjgui:data widget`` | Widget                                | Compound      |

### Modifiable Data

| Scoreboard Score                                       | Description | Type          |
|:-------------------------------------------------------|:------------|:--------------|
| ``@e[tag=ajjgui.gui_active,limit=1] ajjgui.page``      | Page number | Integer       |

| GUI Marker Entity NBT                                  | Description        | Type          |
|:-------------------------------------------------------|:-------------------|:--------------|
| ``@e[tag=ajjgui.gui_active,limit=1] data.custom_name`` | GUI container name | String        |
| ``@e[tag=ajjgui.gui_active,limit=1] data.gui``         | GUI page list      | Compound List |

Each of the widgets discussed previously, excluding the the *placeholder*, can be made to run commands or functions when clicked. This is done by specifying a command in the ``ajjgui.command`` NBT tag. This command is executed by the player interacting with the widget. Within the command's execution, it is possible to access data exported from the GUI interaction (e.g., whether a *switch* is toggled on) and use it to make decisions.

#### Examples

1. A *button* running a command referencing the player that pressed it:

    ```
    /give @p minecraft:pink_dye[minecraft:custom_data={ajjgui:{widget:"button",command:"say pressed button"}},minecraft:custom_name='{"text":"Command Button","italic":false}']
    ```

2. A *switch* running a command based on its current state:

    ```
    /give @p minecraft:gray_dye[minecraft:custom_data={ajjgui:{widget:"switch",items:[{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 0","italic":false}'}},{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"text":"State 1","italic":false}'}}],command:"function name:func"}},minecraft:custom_name='{"text":"State 0","italic":false}']
    ```

    where the following commands are located in a function ``name:func`` within a map's datapack:

    ```
    execute if score @s ajjgui.state matches 0 run say set switch to State 0
    execute if score @s ajjgui.state matches 1 run say set switch to State 1
    ```

## Directly Modifying GUIs

For every GUI, there is a marker entity located at the container's coordinates with the scoreboard tag ``"ajjgui.gui_origin"`` for block entities or ``"ajjgui.gui_ported"`` for chest boats. Active GUIs additionally have the ``"ajjgui.gui_active"`` scoreboard tag. This marker stores the page value in its ``ajjgui.page`` score, the container name in its ``data.custom_name`` NBT tag and the page list in its ``data.gui`` NBT tag. Each element in this list corresponds to a page, storing widgets in the same format containers use to store items. If the available widget types and tags do not already support a particular functionality, the page number and widget NBT may be directly modified to achieve desired results. This would, for example, be needed if one wanted to modify a GUI without prior user interaction (i.e., without triggering a widget with the ``ajjgui.page`` or ``ajjgui.command`` NBT tags). If the modification command is not triggered by a player using a GUI (i.e., with the ``ajjgui.command`` NBT tag), ``/function ajjgui:_reload`` must follow in the same tick for any changes to be reflected in the GUI. If this is omitted, the datapack assumes that a player is interacting indefinitely with this GUI and causes other active GUIs to break.

#### Examples

1. A command setting the nearest block entity GUI's page to the first one:

    ```
    /scoreboard players set @e[type=minecraft:marker,tag=ajjgui.gui_origin,sort=nearest,limit=1] ajjgui.page 0
    ```

    Then, in the same tick (not required if the above command is run from a widget):

    ```
    /function ajjgui:_reload
    ```

2. A command setting the nearest block entity GUI's first page's first slot item's id to stone:

    ```
    /data modify entity @e[type=minecraft:marker,tag=ajjgui.gui_origin,sort=nearest,limit=1] data.GUI[0][{Slot:0b}].id set value "minecraft:stone"
    ```

    Then, in the same tick (not required if the above command is run from a widget):

    ```
    /function ajjgui:_reload
    ```

3. A button running a command setting its GUI's first page's first slot item's id to stone:

    ```
    /give @p minecraft:pink_dye[minecraft:custom_data={ajjgui:{widget:"button",command:'data modify entity @e[type=minecraft:marker,tag=ajjgui.gui_active,limit=1] data.GUI[0][{Slot:0b}].id set value "minecraft:stone"'}},minecraft:custom_name='{"text":"Command Button","italic":false}']
    ```

    In this example, ``/function ajjgui:_reload`` is not required.

> **NOTE:** The GUI compiler adds the ``ajjgui.meta`` NBT tag to each widget. This must not be changed when directly modifying NBT.

> **NOTE:** Widgets with the ``ajjgui.fixed`` NBT tag set to ``1b`` appear in a new page only when the page is loaded by clicking on widget that has the ``ajjgui.page`` NBT tag. Directly changing a page therefore does not preserve fixed widgets unless they were already cached in the destination page from a previous interaction.

> **NOTE:** Decompiling a GUI resets it to the state it was in when compiled.

## Copyright

Copyright © 2021 - 2024 Ajj (https://github.com/AjjMC/ajjgui)
