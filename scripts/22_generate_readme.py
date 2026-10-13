import os

TEMPLATE = """# hub-docker-pdf-project-tree

Automates extracting any Docker Hub image's filesystem, isolates PDF-related assets, and generates a repository project tree.

## Usage
```bash
bash scripts/19_master_runner.sh <docker-image>
