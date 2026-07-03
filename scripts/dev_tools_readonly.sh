#!/usr/bin/env bash
set -u

print_tool() {
  label="$1"
  executable="$2"
  shift 2

  if command -v "$executable" >/dev/null 2>&1; then
    version_output="$("$executable" "$@" 2>/dev/null | head -n 1 || true)"
    if [ -n "$version_output" ]; then
      printf '%-14s %s\n' "$label" "$version_output"
    else
      printf '%-14s found, version unavailable\n' "$label"
    fi
  else
    printf '%-14s not found\n' "$label"
  fi
}

print_app_version() {
  label="$1"
  app_path="$2"

  if [ -d "$app_path" ]; then
    version="$(defaults read "$app_path/Contents/Info" CFBundleShortVersionString 2>/dev/null || true)"
    if [ -n "$version" ]; then
      printf '%-14s %s\n' "$label" "$version"
    else
      printf '%-14s found, version unavailable\n' "$label"
    fi
  else
    printf '%-14s not found\n' "$label"
  fi
}

print_pip_version() {
  if command -v python3 >/dev/null 2>&1; then
    pip_output="$(python3 -m pip --version 2>/dev/null | head -n 1 || true)"
    pip_version="$(printf '%s\n' "$pip_output" | awk '{print $2}')"
    if [ -n "$pip_version" ]; then
      printf '%-14s %s\n' "pip" "$pip_version"
    else
      printf '%-14s not found\n' "pip"
    fi
  else
    printf '%-14s not found\n' "pip"
  fi
}

printf 'Read-only developer tool versions\n\n'
print_tool "Git" "git" "--version"
print_tool "Homebrew" "brew" "--version"
print_tool "Node" "node" "--version"
print_tool "npm" "npm" "--version"
print_tool "pnpm" "pnpm" "--version"
print_tool "Python" "python3" "--version"
print_pip_version
print_tool "GitHub CLI" "gh" "--version"
print_tool "Vercel CLI" "vercel" "--version"
print_tool "Supabase CLI" "supabase" "--version"
print_app_version "Chrome" "/Applications/Google Chrome.app"
print_tool "Xcode tools" "xcodebuild" "-version"
print_tool "xcode-select" "xcode-select" "-p"
