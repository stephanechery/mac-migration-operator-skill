# Mac Migration Operator Skill

Mac Migration Operator is an open Agent Skill for moving from one Mac to another with less stress and stronger validation.

It helps a user plan the move, freeze the source Mac, choose a transfer method, validate the new Mac, repair small gaps, and decide when the old Mac can be retired.

Public repository: https://github.com/stephanechery/mac-migration-operator-skill

## What It Does

- Guides Migration Assistant, Time Machine, cloud-drive, external-drive, manual, and hybrid migrations.
- Keeps the source Mac as rollback until validation passes.
- Produces a proof ledger so the user knows what is confirmed and what is still unproven.
- Handles developer and operator checks through optional read-only helpers.

## What It Will Not Do

- It will not wipe, clean, trade in, reformat, or repurpose the old Mac without explicit approval.
- It will not print secrets, passwords, private keys, tokens, cookies, or API keys.
- It will not broadly overwrite folders as a first repair step.
- It will not treat missing source data as a transfer failure without checking the source first.

## Quick Start Prompt

Install or upload this Skill, then ask:

```text
Use the Mac Migration Operator Skill to help me migrate from my old Mac to my new Mac. Start with intake and keep my old Mac available as rollback.
```

If you are already in the middle of a move, use:

```text
Use the Mac Migration Operator Skill. I already transferred to the new Mac and need to validate before I erase or trade in the old Mac.
```

## Advanced Helpers

Optional helper scripts may live in `scripts/` when included in this package. They are read-only by default and are meant for users who are comfortable running terminal commands.

Review every command before running it. Do not paste command output into an issue, chat, or support request until you have checked it for private information.

## Install

Public publishing is GitHub-first. Download or clone the Skill folder from the repository.

ChatGPT users can upload or share the Skill folder where Skills are available. Codex users can place the folder in a project or user skills directory. Compatible Agent Skills tools can install from a GitHub repository when they support that flow.

Direct paid Skill sales are not the main official path today. A public GPT, a ChatGPT App, consulting, support packages, or training material may be better paths later, depending on what the platform supports.

## Safety

Read `SECURITY.md` before running helper scripts or sharing logs. The old Mac should remain available as rollback until the new Mac passes validation and you explicitly approve retirement.

Use evidence labels when recording results:

- `confirmed`: checked directly
- `user-confirmed`: reported clearly by the user
- `inferred`: likely but not checked directly
- `missing`: expected item was not found
- `blocked`: cannot be checked yet

## Docs Map

- `docs/migration-assistant.md`: using Migration Assistant safely.
- `docs/transfer-methods.md`: choosing a transfer method.
- `docs/validation-guide.md`: checking the new Mac before retirement.
- `docs/developer-machine.md`: validating developer tools and projects.
- `docs/cloud-drives.md`: handling cloud sync and online-only files.
- `docs/external-drives.md`: checking external-drive work.
- `docs/retirement-gate.md`: deciding when the old Mac can be retired.
- `docs/publishing-and-installation.md`: publishing and install notes.

## Examples

Use the templates in `templates/` to make the work visible:

- Start with `templates/intake-form.md`.
- Freeze changes with `templates/source-freeze-checklist.md`.
- Track proof with `templates/proof-ledger.md`.
- Use `templates/retirement-approval.md` only after validation is complete.

Next step: start with the Quick Start prompt and fill out the intake form before moving files.
