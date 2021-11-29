# Use a ubuntu based swift image
FROM swift:5.5-focal

# Install OS updates and, if needed, sqlite3
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true \
    && apt-get -q update \
    && apt-get -q dist-upgrade -y \
    && apt-get -q install -y python3 python3-requests python3-bs4 \
    && rm -rf /var/lib/apt/lists/*
