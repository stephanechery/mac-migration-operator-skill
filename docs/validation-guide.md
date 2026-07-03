# Validation Guide

Validation proves that the new Mac is ready for real use. It should happen before the old Mac is erased, traded in, repurposed, or packed away.

## Evidence Labels

Use these labels in the proof ledger:

- `confirmed`: checked directly on the new Mac
- `user-confirmed`: reported clearly by the user
- `inferred`: likely but not checked directly
- `missing`: expected item was not found
- `blocked`: cannot be checked yet

## First Boot Checks

1. Confirm the new Mac name and macOS version.
2. Confirm the main user account opens.
3. Confirm Wi-Fi or Ethernet works.
4. Confirm storage has enough free space.
5. Confirm Apple ID and keychain status without recording passwords.
6. Confirm the old Mac is still available as rollback.

## File Checks

1. Open the home folder.
2. Check Desktop, Documents, Downloads, Pictures, Movies, Music, and any custom work folders.
3. Compare expected folders from the intake form.
4. Mark each result in `templates/proof-ledger.md`.
5. If something is missing, check whether it exists on the source Mac before calling it a transfer failure.

## App Checks

1. Open the user's most important apps.
2. Confirm each app starts.
3. Confirm recent documents or projects appear where expected.
4. Mark apps that need sign-in as `blocked`.
5. Avoid recording passwords, tokens, recovery keys, or private account data.

## Account Checks

1. Check email account presence.
2. Check browser profiles and bookmarks.
3. Check password manager access without exposing vault content.
4. Check cloud drive sync status.
5. Check calendar, contacts, and messaging apps if they matter to the user.

## Repair Rules

1. Prefer exact missing files or exact missing folders.
2. Copy from the safest source: the old Mac, a trusted backup, or the cloud service of record.
3. Record before and after evidence.
4. Avoid broad overwrites unless the user explicitly approves the risk.

Next step: fill out `templates/proof-ledger.md` with the first boot, file, app, and account checks.
