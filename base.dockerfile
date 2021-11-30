# Use a ubuntu based swift image
FROM swift:5.5.1-focal as base

# Install OS updates, python3 and NodeJS
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true \
    && apt-get -q update \
    && apt-get -q dist-upgrade -y \
    && apt-get -q install -y python3 python3-requests python3-bs4 \
    && apt-get --purge remove -y .\*-doc$ && apt-get clean -y && rm -rf /var/lib/apt/lists/*
