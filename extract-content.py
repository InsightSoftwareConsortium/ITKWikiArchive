import os
import re

def process_html_files(directory):
    """
    Recursively process all index.html files in a directory.
    Remove all content inside <body> that comes before '<!-- start content -->'
    and after '<!-- end content -->'.
    """
    # Walk through all directories and files
    for root, dirs, files in os.walk(directory):
        # Check if 'index.html' is in the current directory
        if 'index.html' in files:
            filepath = os.path.join(root, 'index.html')
            print(f"Processing: {filepath}")

            try:
                # Read the file content
                with open(filepath, 'r', encoding='utf-8') as file:
                    content = file.read()

                # Find the body tag positions
                body_start_match = re.search(r'<body[^>]*>', content, re.IGNORECASE)
                body_end_match = re.search(r'</body>', content, re.IGNORECASE)

                if body_start_match and body_end_match:
                    body_start_pos = body_start_match.end()
                    body_end_pos = body_end_match.start()

                    # Get the body content
                    body_content = content[body_start_pos:body_end_pos]

                    # Find the start and end markers
                    start_marker = '<!-- start content -->'
                    end_marker = '<!-- end content -->'

                    start_pos = body_content.find(start_marker)
                    end_pos = body_content.find(end_marker) + len(end_marker)

                    if start_pos != -1 and end_pos != -1:
                        # Extract the content between the markers (including markers)
                        extracted_content = body_content[start_pos:end_pos]

                        # Construct the new HTML
                        new_content = (
                            content[:body_start_pos] +  # Everything before body content
                            extracted_content +         # Only the content between markers
                            content[body_end_pos:]      # Everything after body content
                        )

                        # Write the modified content back to the file
                        with open(filepath, 'w', encoding='utf-8') as file:
                            file.write(new_content)

                        print(f"  Modified successfully")
                    else:
                        print(f"  Warning: Could not find both markers in the body of {filepath}")
                else:
                    print(f"  Warning: Could not find <body> tag in {filepath}")

            except Exception as e:
                print(f"  Error processing {filepath}: {e}")

if __name__ == "__main__":
    # Replace with the directory you want to process
    directory_to_process = 'Wiki'  # Current directory
    process_html_files(directory_to_process)
