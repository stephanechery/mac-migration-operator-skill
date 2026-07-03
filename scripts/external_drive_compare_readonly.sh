#!/usr/bin/env bash
set -u

is_external_volume() {
  volume_path="$1"

  diskutil info "$volume_path" 2>/dev/null | awk -F: '
    $1 ~ /^[[:space:]]*Internal$/ {
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2)
      if ($2 == "No") found = 1
    }
    $1 ~ /^[[:space:]]*Device Location$/ {
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2)
      if ($2 == "External") found = 1
    }
    $1 ~ /^[[:space:]]*Protocol$/ {
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2)
      if ($2 == "USB" || $2 == "FireWire" || $2 == "Thunderbolt") found = 1
    }
    END { exit(found ? 0 : 1) }
  '
}

if command -v diskutil >/dev/null 2>&1; then
  diskutil_available="true"
  printf 'Mounted external volumes\n\n'
else
  diskutil_available="false"
  printf 'diskutil unavailable, candidate volumes only\n\n'
fi

found_volume="false"

for volume_path in /Volumes/*; do
  [ -e "$volume_path" ] || continue
  [ -d "$volume_path" ] || continue
  volume_name="$(basename "$volume_path")"

  if [ "$diskutil_available" = "false" ] || is_external_volume "$volume_path"; then
    found_volume="true"
    printf '%s\n' "$volume_name"

    if [ "$#" -gt 0 ]; then
      for expected_name in "$@"; do
        if [ -e "$volume_path/$expected_name" ]; then
          printf '  present: %s\n' "$expected_name"
        else
          printf '  missing: %s\n' "$expected_name"
        fi
      done
    fi
  fi
done

if [ "$found_volume" = "false" ]; then
  if [ "$diskutil_available" = "true" ]; then
    printf 'No mounted external volumes found.\n'
  else
    printf 'No candidate volumes found under /Volumes.\n'
  fi
fi
