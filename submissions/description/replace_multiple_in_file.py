import os

def replace_multiple_in_file(file_path, replacements):
    # Read the file content
    with open(file_path, 'r') as file:
        content = file.read()
    
    # Perform all replacements
    for old_text, new_text in replacements.items():
        content = content.replace(old_text, new_text)
    
    # Write the updated content back to the file
    with open(file_path, 'w') as file:
        file.write(content)

def find_and_process_files(root_dir, replacements):
    # Walk through the directory structure
    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename == 'template.md':
                file_path = os.path.join(dirpath, filename)
                print(f'Processing {file_path}')
                replace_multiple_in_file(file_path, replacements)

if __name__ == "__main__":
    # Define the text replacements
    replacements = {
        '##': '####',
        'Javascript': 'JavaScript',
        'curl': 'cURL',
        'denial of service': 'Denial of Service',
        'Navigate to {{url}}': 'Navigate to the following URL: {{URL}}',
        # Add more replacements as needed
    }

    # Start from the current directory
    root_directory = '.'
    find_and_process_files(root_directory, replacements)
    print("Completed all replacements in all template.md files.")
