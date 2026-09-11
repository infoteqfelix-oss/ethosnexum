#!/bin/sh
# Bootstrap helper for environments without a checked-in Gradle Wrapper JAR.
# GitHub Actions generates the official wrapper before building.
set -e
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "Gradle is not installed. Run the GitHub Actions workflow; it generates the official Gradle Wrapper." >&2
exit 1
