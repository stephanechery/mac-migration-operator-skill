# Developer Machine

Developer migrations need extra care because projects can depend on local tools, hidden files, credentials, databases, and service logins. Validate the work without printing secrets.

## Project Inventory

1. List the main project folders.
2. For each project, record source path, new Mac path, Git branch, dirty status, and remote presence.
3. Use `templates/project-inventory.tsv` for the inventory.
4. Mark missing or duplicate project folders clearly.

## Tool Checks

Check versions for the tools the user actually needs. Common checks include:

- Xcode Command Line Tools
- Git
- Homebrew
- Node and package managers
- Python and package managers
- Docker or local database tools
- Browser drivers and test runners
- Deployment or hosting CLIs

Do not paste tokens, private keys, cookies, or full credential file contents into any report.

## Project Smoke Tests

For each critical project:

1. Open the project on the new Mac.
2. Confirm Git status.
3. Install dependencies only if the user approves a write step.
4. Run the smallest useful smoke test.
5. Record the command and result in `templates/smoke-test-matrix.md`.

## Auth and Secrets

The goal is to confirm access, not expose secret values.

Safe evidence:

- CLI reports that a user is logged in.
- A project can fetch private dependencies.
- A local app can start against a test environment.

Unsafe evidence:

- Token values.
- Private SSH key contents.
- Cookie files.
- Password manager exports.

## Intel to Apple Silicon

Some tools may need reinstalling or rebuilding after moving from Intel to Apple silicon. Treat this as a compatibility repair, not a migration failure, when the project files are present.

Next step: create a project inventory and run one small smoke test for the most important project before validating the rest.
