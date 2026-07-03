# Developer Migration

## Scenario

A software developer is moving to a new Mac and needs local projects, command line tools, package managers, private repository access, app runtimes, local databases, and deployment tools to work. The goal is to prove the new Mac can run real work while avoiding secret exposure and broad overwrites.

## Recommended Workflow

1. Create a project inventory with generic project labels, source path, target path, Git branch, dirty status, and remote presence.
2. Freeze active source Mac work after committing, stashing, or clearly recording dirty changes.
3. Transfer files through Migration Assistant, Time Machine, external drive, cloud sync, or a hybrid plan.
4. On the new Mac, check Git, Xcode Command Line Tools, Homebrew, Node, Python, Docker or local database tools, browser drivers, and hosting CLIs that the developer actually uses.
5. For each critical project, run the smallest useful smoke test and record the command, result, and date in the smoke test matrix.
6. Validate access by checking logged-in status or successful fetch/build behavior, never by printing tokens, keys, cookies, passwords, or credential files.
7. Repair project gaps with exact-file or exact-folder copies from the source Mac or trusted backup after user approval.

## Validation Checklist

- Source Mac remains available for rollback until all critical projects pass agreed smoke tests.
- Each critical project has a matching entry in the project inventory.
- Git status, current branch, and remote presence are recorded for each critical project.
- Tool versions are checked for the tools used by the projects, not for every tool installed on either Mac.
- Dependency install or rebuild steps are treated as write steps and run only with user approval.
- At least one smoke test passes for each critical project, such as typecheck, unit test, local app start, or build.
- Auth checks prove access without exposing secret values.
- Intel to Apple silicon repair work is labeled as compatibility repair when project files are present.

## Retirement Gate

Do not retire the source Mac while any critical project is `missing`, has unverified dirty changes, cannot fetch dependencies, cannot run its smoke test, or has `blocked` access to required developer services. The retirement packet should include confirmed project paths, smoke test results, deferred risks, and any item that may still require the source Mac for recovery.
