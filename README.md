# Base Django Config

Base configuration for any **Django** project with **Docker** and **PostgreSQL**

## Instructions for running developer environment

Follow this steps

1. Make sure you have `python 3.11`, `poetry` and `Docker` installed
2. Run these commands in your terminal at the project root

```bash
mkdir -p local
cp core/project/settings/templates/settings.dev.py ./local/settings.dev.py
make env
make install
make migrate
make run

```

## References

[AWS Guide](https://docs.google.com/document/d/1PAfA3qlRnddMaKoCvF-3kiG3JQ2NK1tckCrn2sfG70c/edit)
<br />
[Pro Django Course](https://www.youtube.com/playlist?list=PL6gx4Cwl9DGDYbs0jJdGefNN8eZRSwWqy)
