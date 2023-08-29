Project setup
=============

Project setup instructions here.

### Instructions for running the Project

1. Install `python 3.11`
2. Install `poetry`
3. Run the following commands at your terminal and pass through its installations processes

```bash
mkdir -p local
cp core/project/settings/templates/settings.dev.py ./local/settings.dev.py
make env
make install
make migrate
make run-server

```
