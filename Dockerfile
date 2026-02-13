FROM debian:12-slim

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        sudo curl git ca-certificates build-essential \
    && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV MISE_DATA_DIR="/mise"
ENV MISE_CONFIG_DIR="/mise"
ENV MISE_CACHE_DIR="/mise/cache"
ENV MISE_INSTALL_PATH="/usr/local/bin/mise"
ENV PATH="/mise/shims:$PATH"

RUN curl https://mise.run | sh

WORKDIR /app

COPY mise.toml ./
COPY shell/ ./shell/

RUN mise trust && mise install

CMD ["/bin/bash", "--rcfile", "/app/shell/source_all.sh"]
