# Migration Assistant

Migration Assistant is Apple's guided tool for moving a user account, apps, settings, and files from one Mac to another. It is a good first choice when both Macs are available and the user wants a broad transfer.

## Before You Start

1. Keep both Macs plugged into power.
2. Update both Macs only if you already planned to do so. Do not start an operating system upgrade in the middle of a migration.
3. Connect both Macs to a reliable network, or use a direct cable if you know both Macs support it.
4. Pause active work on the source Mac.
5. Fill out `templates/source-freeze-checklist.md` so you know what should exist after transfer.

## Source Mac

1. Leave the source Mac available and awake.
2. Open Migration Assistant from Applications, Utilities.
3. Choose the option to transfer to another Mac.
4. Do not delete, clean, or move files while the transfer is being prepared.

## New Mac

1. On first setup, choose the option to transfer from a Mac, Time Machine backup, or startup disk.
2. If setup is already complete, open Migration Assistant from Applications, Utilities.
3. Choose the source Mac when it appears.
4. Select the user accounts, applications, settings, and files you want to transfer.
5. Wait for the transfer to finish before using the new Mac for new work.

## After Transfer

1. Sign in to the migrated user account.
2. Confirm the expected user name and home folder.
3. Check storage space.
4. Open the most important folders and apps.
5. Start `docs/validation-guide.md` before changing or retiring the old Mac.

## Common Problems

If the source Mac does not appear, check that both Macs are on the same network, awake, and plugged into power. Restart Migration Assistant on both Macs if needed.

If the transfer is slow, leave it running unless it has clearly failed. A large home folder, photo library, or wireless network can make the estimate unreliable.

If an app opens but asks for sign-in, mark it as `blocked` until the account owner signs in. Do not paste passwords or recovery codes into a proof ledger.

Next step: once Migration Assistant completes, open `docs/validation-guide.md` and validate the new Mac before changing the old Mac.
