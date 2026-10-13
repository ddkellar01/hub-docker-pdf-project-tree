import os

def generate_markdown_badge():
    badge_md = "[![Pipeline Status](https://img.shields.io/badge/pipeline-success-brightgreen.svg)]("#")\n"
    readme_path = "README.md"
    if os.path.exists(readme_path):
        with open(readme_path, "r") as f:
            content = f.read()
        if "pipeline-success" not in content:
            with open(readme_path, "w") as f:
                f.write(badge_md + "\n" + content)
        print("Badge added or verified in README.md.")

if __name__ == "__main__":
    generate_markdown_badge()
  
