import os, json

def directory_to_dict(dir_path):
    tree = {'name': os.path.basename(dir_path), 'type': 'directory', 'children': []}
    try:
        lst = sorted(os.listdir(dir_path))
    except PermissionError:
        return tree
    for item in lst:
        full_path = os.path.join(dir_path, item)
        if os.path.isdir(full_path):
            tree['children'].append(directory_to_dict(full_path))
        else:
            tree['children'].append({'name': item, 'type': 'file'})
    return tree

if __name__ == "__main__":
    if os.path.exists("filtered-pdf-fs"):
        data = directory_to_dict("filtered-pdf-fs")
        os.makedirs("output", exist_ok=True)
        with open("output/structure.json", "w") as f:
            json.dump(data, f, indent=2)
        print("Exported JSON structure to output/structure.json")
      
