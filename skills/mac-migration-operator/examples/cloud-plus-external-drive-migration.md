# Cloud Plus External Drive Migration

## Scenario

A user keeps some work in cloud drives and some work on external drives. Finder may show online-only cloud placeholders, and a successful Mac transfer does not prove external-drive permissions, media libraries, or backup contents are usable on the new Mac.

## Recommended Workflow

1. Inventory every cloud service and external drive before transfer, using generic account labels and visible drive names.
2. On the source Mac, confirm cloud uploads are complete and note which folders are fully downloaded or online-only.
3. Freeze the source Mac after the source state is recorded.
4. Transfer the local account and files through the chosen method.
5. On the new Mac, sign in to cloud services, confirm the right account labels, and open representative files before marking them `confirmed`.
6. Mount each external drive on the new Mac, open top-level folders, and open representative files from important folders.
7. If write access matters on an external drive, ask before creating a test file.
8. Record cloud sync delays, online-only files, drive permission issues, and conflict copies in the proof ledger without deleting or overwriting anything during validation.

## Validation Checklist

- Source Mac remains available for rollback and source cloud state is recorded.
- Each cloud service lists account label, sync status, and important top folders.
- Online-only files are not marked `confirmed` until they open successfully or the cloud app confirms offline availability.
- Conflict copies are recorded with paths and modified dates, and neither copy is deleted during validation.
- Each external drive has visible name, purpose, and mount status recorded for the new Mac.
- Representative files open from each important external-drive folder.
- Media libraries are opened with their owning app before being marked `confirmed`.
- Backup drives are validated as backups, not treated as working copies.

## Retirement Gate

Do not retire the source Mac while cloud sync is pending, online-only files remain unproven, conflict copies are unresolved, external drives are unchecked, or media libraries have not opened in their owning app. The retirement packet should separate cloud proof, external-drive proof, deferred checks, and any repair work that may still require the source Mac.
