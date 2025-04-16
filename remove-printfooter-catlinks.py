from bs4 import BeautifulSoup
import os

def remove_footer_and_catlinks(directory):
    """
    Recursively process all index.html files in a directory.
    Remove all <div> elements with class 'printfooter' or 'catlinks'.
    """
    for root, dirs, files in os.walk(directory):
        if 'index.html' in files:
            filepath = os.path.join(root, 'index.html')
            print(f"Processing: {filepath}")
            try:
                with open(filepath, 'r', encoding='utf-8') as file:
                    soup = BeautifulSoup(file, 'html.parser')

                # Remove all divs with class 'printfooter' or 'catlinks'
                removed = False
                for class_name in ['printfooter', 'catlinks']:
                    for div in soup.find_all('div', class_=class_name):
                        div.decompose()
                        removed = True
                if removed:
                    with open(filepath, 'w', encoding='utf-8') as file:
                        file.write(str(soup))
                    print(f"  Modified successfully")
                else:
                    print(f"  No matching divs found in {filepath}")
            except Exception as e:
                print(f"  Error processing {filepath}: {e}")

if __name__ == '__main__':
    directory_to_process = 'Wiki'  # Current directory
    remove_footer_and_catlinks(directory_to_process)
