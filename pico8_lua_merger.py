# Merges multiple .lua files in a single .p8 file
# A single .p8 file has to be created first
# Different files keep their structure in pico8 tabs
from os import listdir

def main():
    # Find the original p8 file containing #include
    original_p8 = ""
    for file in listdir("."):
        if (file.endswith(".p8")): 
            original_p8 = file
            break
        
    # Open the original file in read mode
    original_p8_file = open(original_p8, "r")

    #Create the new compiled file in write mode
    compiled_p8_file = open(f"compiled_{original_p8}", "w")
    
    # Copy each line from original to compiled
    # If one of them starts with include, copy the entire file to 
    # the compiled p8
    for line in original_p8_file.readlines():
        if (line.startswith("#include")):
            file_path = line.replace("#include", '').strip()
            with open(file_path, "r") as lib_path:
                compiled_p8_file.write(
                    "-->8\n" + 
                    f"--------{file_path}--------\n" + 
                    lib_path.read() + "\n"
                )
        else:
            compiled_p8_file.write(line)

    #Close used files
    original_p8_file.close()
    compiled_p8_file.close()


if (__name__ == "__main__"): main()