import os

# config
root_folder = r"D:\pico8\shared\oris_toolbox\src"
output_filename = "oris_toolbox_mini.p8.lua"


def sort_files(file_paths):
    priority_tuples = []
    for file_path in file_paths:
        with open(os.path.join(root_folder, file_path), 'r', encoding="utf-8") as f:
            config_line = f.readline().strip()
            if config_line.startswith("-- priority:"):
                priority = int(config_line.split(":")[1].strip())
            else:
                priority = 0  # default if no priority
        priority_tuples.append((priority, file_path))
    
    priority_tuples.sort(key=lambda x: x[0])

    return [file_path for _, file_path in priority_tuples]
    
def get_files_in_folder(dir, prefix=""):
    files = []
    dir_list = sorted(os.listdir(dir))
    for f in dir_list:
        if f.endswith('.lua'):
            files.append(os.path.join(prefix, f))
        else:
            files.extend(get_files_in_folder(os.path.join(dir,f), os.path.join(prefix, f)))
    return files


with open(output_filename, "w", encoding="utf-8") as output_file:
    for file_path in  sort_files(get_files_in_folder(root_folder)):
        with open(os.path.join(root_folder, file_path), "r", encoding="utf-8") as f:
            output_file.write(f"-- START OF {file_path}\n")
            output_file.write(f.read())
            output_file.write(f"\n-- END OF {file_path}\n\n")

