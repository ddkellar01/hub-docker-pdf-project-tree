import os, shutil

def filter_pdfs(src_dir, dest_dir):
    os.makedirs(dest_dir, exist_ok=True)
    for root, dirs, files in os.walk(src_dir):
        for file in files:
            if 'pdf' in file.lower() or file.endswith(('.py', '.js', '.json', '.conf')):
                rel_path = os.path.relpath(root, src_dir)
                dest_path = os.path.join(dest_dir, rel_path)
                os.makedirs(dest_path, exist_ok=True)
                shutil.copy2(os.path.join(root, file), os.path.join(dest_path, file))

if __name__ == "__main__":
    filter_pdfs("extracted-fs", "filtered-pdf-fs")
  
