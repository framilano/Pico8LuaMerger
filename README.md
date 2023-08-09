# Pico8LuaMerger
Script created mainly to support pico8 development and programming using external code editors. 
Merges multiple .lua files in a single pico8 .p8 file.

## Requirements
Your PICO8 project requires the following structure:
- Python3 installed
- A main .p8 file containing the basic callbacks (_init, _draw, _update)
- Multiple `#include` statements **under** the basic callbacks (check template.p8 to see an example)
- That's it

## Usage
1. Copy the `pico8_lua_merger.py` script near the main .p8 file
2. Launch the script with `python3 pico8_lua_merger.py`
3. The "compiled" containing all the lua files code will be created and called `compiled_<original_file_name>.p8`

## Example
You can try this script using the main .p8 file called `template.p8` and all the lua files contained in `libs`
