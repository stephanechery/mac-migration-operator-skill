# Contributing

Contributions are welcome when they preserve the safety model.

Before opening a pull request:

1. Keep the source Mac rollback rule intact.
2. Avoid destructive commands.
3. Do not collect secrets.
4. Add or update examples when behavior changes.
5. Test shell scripts on macOS with read-only sample output.

Write for non-technical Mac users first. Put advanced notes in clearly marked sections, and keep commands optional unless the user has asked for them.

Keep examples public-safe. Do not include private names, private paths, client data, project names, credentials, logs with personal data, or screenshots that expose account information.

For docs, prefer clear steps with a concrete next step at the end. For scripts, prefer read-only checks, minimal output, and visible warnings before any future write-capable behavior.

Next step: before submitting a pull request, run a private-content search and confirm the change keeps the old Mac available as rollback.
