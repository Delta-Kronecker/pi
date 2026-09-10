#!/bin/bash
set -e

MPRIME_URL="https://www.mersenne.org/download/software/v30/p95v3019b20.linux64.tar.gz"
MPRIME_HASH="4ce2377e03deb4cf189523136e26401ba08f67857a128e420dd030d00cdca601"

if [ -f mprime ]; then
    echo "mprime already exists, skipping download"
    exit 0
fi

echo "Downloading mprime v30.19b20..."
wget -q "$MPRIME_URL" -O mprime.tar.gz

echo "Verifying hash..."
echo "$MPRIME_HASH  mprime.tar.gz" | sha256sum -c -

echo "Extracting..."
tar xzf mprime.tar.gz
chmod +x mprime

echo "Cleaning up..."
rm -f mprime.tar.gz

echo "mprime setup complete!"
./mprime -v 2>&1 || true
