#!/usr/bin/env bash
set -u

usage() {
  printf 'Usage: bash git_projects_readonly.sh ROOT [ROOT ...]\n'
  printf 'Reports repository, branch, dirty_check, remote presence, and last commit hash/date.\n'
}

report_repo() {
  repo="$1"
  scan_root="$2"

  if [ "$repo" = "$scan_root" ]; then
    repo_label="."
  else
    case "$repo" in
      "$scan_root"/*) repo_label="${repo#"$scan_root"/}" ;;
      *) repo_label="$(basename "$repo")" ;;
    esac
  fi

  branch="$(GIT_OPTIONAL_LOCKS=0 git -C "$repo" branch --show-current 2>/dev/null || true)"
  if [ -z "$branch" ]; then
    branch="$(GIT_OPTIONAL_LOCKS=0 git -C "$repo" rev-parse --short HEAD 2>/dev/null || printf 'unknown')"
  fi

  if [ -n "$(GIT_OPTIONAL_LOCKS=0 git -C "$repo" status --porcelain --untracked-files=no 2>/dev/null || true)" ]; then
    dirty_check="dirty"
  else
    dirty_check="clean"
  fi

  if [ -n "$(GIT_OPTIONAL_LOCKS=0 git -C "$repo" remote 2>/dev/null || true)" ]; then
    remote_status="present"
  else
    remote_status="none"
  fi

  last_commit="$(GIT_OPTIONAL_LOCKS=0 git -C "$repo" log -1 --pretty=format:'%h %cs' 2>/dev/null || printf 'none')"

  printf 'Repository: %s\n' "$repo_label"
  printf 'Branch: %s\n' "$branch"
  printf 'dirty_check: %s\n' "$dirty_check"
  printf 'Remote: %s\n' "$remote_status"
  printf 'Last commit: %s\n\n' "$last_commit"
}

if [ "$#" -eq 0 ]; then
  usage
  exit 0
fi

root_index=0

for root in "$@"; do
  if [ ! -d "$root" ]; then
    printf 'Scan root not found.\n\n'
    continue
  fi

  scan_root="$(cd "$root" 2>/dev/null && pwd -P)"
  if [ -z "${scan_root:-}" ]; then
    printf 'Scan root unavailable.\n\n'
    continue
  fi

  printf '== Scan root %s ==\n\n' "$((root_index + 1))"
  found="false"

  while IFS= read -r git_dir; do
    [ -n "$git_dir" ] || continue
    repo="$(dirname "$git_dir")"
    if GIT_OPTIONAL_LOCKS=0 git -C "$repo" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
      found="true"
      report_repo "$repo" "$scan_root"
    fi
  done <<EOF
$(find "$scan_root" -type d -name .git -prune 2>/dev/null | sort)
EOF

  if [ "$found" = "false" ]; then
    printf 'No Git repositories found.\n\n'
  fi

  root_index=$((root_index + 1))
done
