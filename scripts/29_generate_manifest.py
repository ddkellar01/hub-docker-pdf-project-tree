import os, json, hashlib

def generate_manifest(target_dir="output"):
    manifest = {}
    if not os.path.exists(target_dir):
        return
    for root, _, files in os.walk(target_dir):
        for file in files:
            path = os.path.join(root, file)
            with open(path, "rb") as f:
                file_hash = hashlib.sha256(f.read()).hexdigest()
            manifest[path] = file_hash
            
    with open(os.path.join(target_dir, "manifest.json"), "w") as f:
        json.dump(manifest, f, indent=2)
    print("Generated cryptographic manifest for output files.")

if __name__ == "__main__":
    generate_manifest()
