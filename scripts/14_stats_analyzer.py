import os

def analyze_tree_stats(tree_file="output/TREE.md"):
    if not os.path.exists(tree_file):
        print("Tree file not found for stats analysis.")
        return
    with open(tree_file, "r") as f:
        content = f.read()
    lines = content.splitlines()
    total_items = len(lines)
    print(f"Stats - Total node elements in tree output: {total_items}")

if __name__ == "__main__":
    analyze_tree_stats()
  
