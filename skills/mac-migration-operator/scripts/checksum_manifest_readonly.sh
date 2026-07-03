#!/usr/bin/env bash
set -u

usage() {
  printf 'Usage: bash checksum_manifest_readonly.sh FILE [FILE ...]\n'
  printf 'Generates SHA-256 checksums only for files passed as arguments.\n'
}

if [ "$#" -eq 0 ]; then
  usage
  exit 0
fi

if ! command -v shasum >/dev/null 2>&1; then
  printf 'shasum: not found\n' >&2
  exit 1
fi

printf '# SHA-256 checksum manifest\n'
printf '# Generated from user-provided file arguments only.\n\n'

for file_path in "$@"; do
  if [ ! -e "$file_path" ]; then
    printf 'missing: %s\n' "$file_path" >&2
    continue
  fi

  if [ ! -f "$file_path" ]; then
    printf 'skipped non-file: %s\n' "$file_path" >&2
    continue
  fi

  shasum -a 256 "$file_path"
done

