import os, sys

def validate():
    if not os.path.exists("output/TREE.md"):
        print("Error: TREE.md was not generated.")
        sys.exit(1)
    print("Validation passed: TREE.md exists.")

if __name__ == "__main__":
    validate()
  
