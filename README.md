# hub-docker-pdf-project-tree

`hub-docker-pdf-project-tree` automates extracting any Docker Hub image's filesystem, isolates PDF-related assets and application logic, and generates a structured repository project tree diagram.

## Features
- Pulls and exports any Docker Hub image filesystem.
- Filters and isolates PDF-related files and source code.
- Generates clean ASCII project trees (`TREE.md`) and JSON structures.
- Fully automated via master runner scripts and Docker/GitHub Actions.

## Quick Start
1. Ensure permissions are set:
   ```bash
   bash scripts/25_audit_permissions.sh
