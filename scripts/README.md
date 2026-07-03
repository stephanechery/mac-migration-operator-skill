# Read-Only Helper Scripts

These scripts collect migration evidence on macOS. They do not copy, delete, move, archive, overwrite, reformat, or clean files.

Run scripts from the package root or adjust the paths from the repository root:

```bash
bash scripts/mac_inventory_readonly.sh
bash scripts/dev_tools_readonly.sh
bash scripts/git_projects_readonly.sh "$HOME/Documents" "$HOME/Projects"
bash scripts/external_drive_compare_readonly.sh "Expected Folder"
bash scripts/checksum_manifest_readonly.sh path/to/file
```

Review output before sharing it. Do not paste secrets, credentials, private project names, or sensitive local paths into issues or chats.

