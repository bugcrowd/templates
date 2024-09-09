import os

def remove_first_4_lines(file_path):
    # Read the file and remove the first 4 lines
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Write back all lines except the first 4
    with open(file_path, 'w') as file:
        file.writelines(lines[4:])

def find_and_process_files(root_dir):
    # Walk through the directory structure
    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename == 'template.md':
                file_path = os.path.join(dirpath, filename)
                print(f'Processing {file_path}')
                remove_first_4_lines(file_path)

if __name__ == "__main__":
    # Start from the current directory
    root_directory = '.'
    find_and_process_files(root_directory)
    print("Removed the first 4 lines from all template.md files.")




# Below is the same script written as a shell script.
# Can't run a zsh command on my local though.

# !/bin/zsh

# Find all files named template.md
# files=$(find . -type f -name "template.md")

# Loop through each file and remove the first 4 lines
# for file in $files; do
#     sed -i '1,4d' "$file"
# done

# echo "Removed the first 4 lines from all template.md files."

