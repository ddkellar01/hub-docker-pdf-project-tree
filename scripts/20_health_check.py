import sys, shutil

def check_disk_space(min_gb=2.0):
    total, used, free = shutil.disk_usage("/")
    free_gb = free / (2**30)
    if free_gb < min_gb:
        print(f"Warning: Low disk space! Only {free_gb:.2f} GB available.")
        sys.exit(1)
    print(f"Health Check Passed: {free_gb:.2f} GB disk space available.")

if __name__ == "__main__":
    check_disk_space()
  
