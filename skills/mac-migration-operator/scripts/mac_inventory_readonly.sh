#!/usr/bin/env bash
set -u

section() {
  printf '\n== %s ==\n' "$1"
}

print_value() {
  printf '%s: %s\n' "$1" "$2"
}

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

section "Mac"
if command_exists sysctl; then
  print_value "Model" "$(sysctl -n hw.model 2>/dev/null || printf 'unknown')"
else
  print_value "Model" "not found"
fi

if command_exists sw_vers; then
  print_value "macOS" "$(sw_vers -productVersion 2>/dev/null || printf 'unknown')"
  build_version="$(sw_vers -buildVersion 2>/dev/null || true)"
  if [ -n "$build_version" ]; then
    print_value "Build" "$build_version"
  fi
else
  print_value "macOS" "not found"
fi

section "Storage Summary"
if command_exists df; then
  df -h /
else
  printf 'df: not found\n'
fi

section "Mounted Volumes"
printf '%-30s %-12s %-16s %s\n' "Name" "Location" "Filesystem" "Protocol"
printf '%-30s %-12s %-16s %s\n' "----" "--------" "----------" "--------"
found_volume="false"
for volume_path in /Volumes/*; do
  [ -e "$volume_path" ] || continue
  [ -d "$volume_path" ] || continue

  volume_name="$(basename "$volume_path")"
  location="unknown"
  filesystem="unknown"
  protocol="unknown"

  if command_exists diskutil; then
    diskutil_output="$(diskutil info "$volume_path" 2>/dev/null || true)"
    location="$(printf '%s\n' "$diskutil_output" | awk -F: '$1 ~ /^[[:space:]]*Device Location$/ { gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2); print $2; exit }')"
    filesystem="$(printf '%s\n' "$diskutil_output" | awk -F: '$1 ~ /^[[:space:]]*File System Personality$/ { gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2); print $2; exit }')"
    protocol="$(printf '%s\n' "$diskutil_output" | awk -F: '$1 ~ /^[[:space:]]*Protocol$/ { gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2); print $2; exit }')"

    case "$protocol" in
      SMB|AFP|NFS|WebDAV) continue ;;
    esac
  fi

  [ -n "$location" ] || location="unknown"
  [ -n "$filesystem" ] || filesystem="unknown"
  [ -n "$protocol" ] || protocol="unknown"
  found_volume="true"
  printf '%-30s %-12s %-16s %s\n' "$volume_name" "$location" "$filesystem" "$protocol"
done

if [ "$found_volume" = "false" ]; then
  printf 'No local mounted volumes found under /Volumes.\n'
fi

section "Common Cloud-Drive Folder Presence"
cloud_roots="
$HOME/Library/CloudStorage
$HOME/Library/Mobile Documents
$HOME/iCloud Drive
$HOME/Dropbox
$HOME/Google Drive
$HOME/OneDrive
$HOME/Box
"

printf '%-35s %s\n' "Folder" "Presence"
printf '%-35s %s\n' "------" "--------"
while IFS= read -r folder; do
  [ -n "$folder" ] || continue
  label="${folder#$HOME/}"
  if [ -d "$folder" ]; then
    printf '%-35s %s\n' "$label" "present"
  else
    printf '%-35s %s\n' "$label" "not found"
  fi
done <<EOF
$cloud_roots
EOF
