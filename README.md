# Pico8LuaMerger
Script created mainly to support pico8 development and programming using external code editors. 
Merges multiple .lua files in a single pico8 .p8 file.

**The resulting single pico8 file will have a single tab for each included file in the pico8 native editor**

## Requirements
Your PICO8 project requires the following structure:
- Python3 installed
- A main .p8 file containing the basic callbacks (_init, _draw, _update) or whatever you need
- Multiple `#include` statements **under** the basic callbacks (check template.p8 to see an example)
- That's it, check `compiled_template.p8` to see a result example

## Usage
1. Copy the `pico8_lua_merger.py` script near the main .p8 file
2. Launch the script with `python3 pico8_lua_merger.py`
3. The "compiled" file containing all the .lua files code will be created and called `compiled_<original_file_name>.p8`



https://github.com/framilano/Pico8LuaMerger/assets/28491164/64b22a20-f249-4565-9216-4fe182207005



## Example
You can try this script using the main .p8 file called `template.p8` and all the lua files contained in `libs`

## Suggestions
You can now launch your single compile .p8 file and set a cover for your cartridge, just find a suitable scene in-game and press F7.
Your game is now ready in a single cartridge file.
