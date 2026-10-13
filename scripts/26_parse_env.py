import os

def load_env_file(env_path=".env"):
    if not os.path.exists(env_path):
        return
    with open(env_path, "r") as f:
        for line in f:
            if line.strip() and not line.startswith("#"):
                key, val = line.strip().split("=", 1)
                os.environ.setdefault(key, val)
    print("Environment variables loaded if .env exists.")

if __name__ == "__main__":
    load_env_file()
  
