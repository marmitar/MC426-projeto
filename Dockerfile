# Use a ubuntu based swift image
FROM swift:5.5-focal

# Install OS updates and, if needed, sqlite3
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true \
    && apt-get -q update \
    && apt-get -q dist-upgrade -y \
    && apt-get -q install -y python3 python3-requests python3-bs4 \
    && rm -rf /var/lib/apt/lists/*

# Switch to the new home directory
WORKDIR /app

# Copy entire repo into container
COPY . .

# Move to backend directory to build
WORKDIR ./backend

# First just resolve dependencies.
# This creates a cached layer that can be reused
# as long as your Package.swift/Package.resolved
# files do not change.
COPY ./backend/Package.* ./
RUN swift package resolve

# Build everything, with optimizations
# RUN swift build -c release

# Copy main executable to staging area
# RUN cp "$(swift build --package-path /backend -c release --show-bin-path)/Run" ./

WORKDIR /
