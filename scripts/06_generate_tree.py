import os

def generate_tree(dir_path, prefix=""):
    if not os.path.exists(dir_path): return []
    contents = sorted(os.listdir(dir_path))
    pointers = [("├── " if i < len(contents) - 1 else "└── ") for i in range(len(contents))]
    lines = []
    for pointer, name in zip(pointers, contents):
        path = os.path.join(dir_path, name)
        lines.append(f"{prefix}{pointer}{name}")
        if os.path.isdir(path) and not os.path.islink(path):
            extension = "│   " if pointer == "├── " else "    "
            lines.extend(generate_tree(path, prefix + extension))
    return lines

if __name__ == "__main__":
    tree = generate_tree("filtered-pdf-fs")
    os.makedirs("output", exist_ok=True)
    with open("output/TREE.md", "w") as f:
        f.write("# PDF Project Tree\n\n```text\n" + "\n".join(tree) + "\n```")
          
