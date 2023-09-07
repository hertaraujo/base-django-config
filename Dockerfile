# Python runtime as the base image
FROM python:3.11.5-bookworm

# Set the working directory in the container
WORKDIR /opt/project

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH .
ENV CORESETTING_IN_DOCKER true

# Install deps
RUN set -xe \
  && apt-get update \
  && apt-get install -y --no-install-recommends build-essential \
  && pip install virtualenvwrapper poetry==1.6.1 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Copy and sintall python dps
COPY ["poetry.lock", "python.toml", "./"]
RUN poetry install --no-root

# Copy project files
COPY ["README.md", "Makefile", "./"]
COPY core core
COPY local local

# Expose the django development server port
EXPOSE 8000


# Set up the entrypoint
COPY scripts/entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
