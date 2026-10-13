import os

def init_environment():
    dirs = ["extracted-fs", "filtered-pdf-fs", "output", "logs"]
    for d in dirs:
        os.makedirs(d, exist_ok=True)
    print("Environment directories initialized successfully.")

if __name__ == "__main__":
    init_environment()
  
