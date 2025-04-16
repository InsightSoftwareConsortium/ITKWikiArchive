from bs4 import BeautifulSoup
import os

def process_html_files(directory):
    """
    Recursively process all index.html files in a directory.
    Remove all content inside <body> after a table that contains a <td> with an <a> tag whose text is 'Welcome'.
    """
    for root, dirs, files in os.walk(directory):
        if 'index.html' in files:
            filepath = os.path.join(root, 'index.html')
            print(f"Processing: {filepath}")
            try:
                with open(filepath, 'r', encoding='utf-8') as file:
                    soup = BeautifulSoup(file, 'html.parser')

                body = soup.body
                if body:
                    # Find the table matching the specific structure
                    target_table = None

                    # Look for tables with the right attributes
                    tables = body.find_all('table', attrs={"width": "100%", "border": "0",
                                                        "cellspacing": "0", "cellpadding": "0"})

                    for table in tables:
                        # Look for td with bgcolor="#F9F9F9"
                        td = table.find('td', attrs={"bgcolor": "#F9F9F9"})
                        if td:
                            # Look for an anchor tag with "Welcome" text within this td
                            welcome_link = td.find('a', string='Welcome')
                            if welcome_link:
                                target_table = table
                                break

                    # If the specific table wasn't found, try a more general approach
                    if not target_table:
                        for table in body.find_all('table'):
                            # Find any a tag containing exactly "Welcome" text
                            if table.find('a', string='Welcome'):
                                target_table = table
                                break

                            # If that fails, try looking for a tag with text containing "Welcome"
                            for a_tag in table.find_all('a'):
                                if a_tag.get_text(strip=True) == 'Welcome':
                                    target_table = table
                                    break

                            if target_table:
                                break

                    if target_table:
                        # Remove all content after the target_table in the body
                        next_siblings = list(target_table.find_next_siblings())
                        for sibling in next_siblings:
                            sibling.decompose()
                        with open(filepath, 'w', encoding='utf-8') as file:
                            file.write(str(soup))
                        print(f"  Modified successfully")
                    else:
                        print(f"  Warning: Target table not found in {filepath}")
                        # Print debugging information about tables found
                        tables = body.find_all('table')
                        print(f"  Found {len(tables)} tables in total")
                else:
                    print(f"  Warning: No <body> tag found in {filepath}")
            except Exception as e:
                print(f"  Error processing {filepath}: {e}")

if __name__ == '__main__':
    directory_to_process = 'Wiki'  # Current directory
    process_html_files(directory_to_process)
