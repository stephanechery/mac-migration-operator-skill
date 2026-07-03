# Marketplace Distribution

This file tracks public distribution options for Mac Migration Operator Skill.

Repository: https://github.com/stephanechery/mac-migration-operator-skill

## Current Status

| Channel | Status | Evidence | Next step |
| --- | --- | --- | --- |
| GitHub | Published | Public repository exists under `stephanechery/mac-migration-operator-skill`. | Keep README, topics, releases, and security notes current. |
| skills.sh / `npx skills` | Compatible, not yet indexed in search | `npx skills add stephanechery/mac-migration-operator-skill --list` finds `mac-migration-operator`; `npx skills find "mac migration"` did not show it yet. | Wait for indexing, then re-check search. If listing data is wrong, use the skills.sh correction process. |
| ClaudeSkills.info | Blocked by generic submission error | Google sign-in succeeded with `stephanchery@gmail.com`. GitHub URL submission failed twice, including after adding the repository-level `/skills/` layout. ZIP upload also failed with `Failed to create submission` on 2026-07-03. | Re-try later or contact ClaudeSkills maintainers with the repo URL and ZIP SHA-256. |
| SkillsLLM | Submitted for review | GitHub passkey sign-in succeeded as `stephanechery`. SkillsLLM accepted `https://github.com/stephanechery/mac-migration-operator-skill` and showed `Skill submitted successfully! It will be reviewed shortly.` on 2026-07-03. | Watch for approval or feedback, then verify public listing. |
| SkillsMP | Likely indexed/search based | Public docs describe a large collected SKILL.md catalog and GitHub source inspection. | Re-check after GitHub indexing; no clear manual submit form was found. |
| officialskills.sh / VoltAgent awesome-agent-skills | Defer | Contribution guidelines say brand-new skills are not accepted and community-adopted, proven skills should be submitted later. | Revisit after there is usage evidence such as stars, installs, forks, or testimonials. |
| Agensi | Manual creator account required | Agensi supports selling or free listing through a creator flow, scans skills, and pays creators through Stripe Connect. | Decide whether to list a free version or create a paid/support version, then sign in and submit through creator dashboard. |
| Capafy | Added, pending public verification | User reported that the Skill was added to Capafy. Public search for `Mac Migration Operator` did not find an indexed listing yet on 2026-07-03. | Re-check public listing once Capafy finishes review or indexing. |
| mcpservers.org Agent Skills Library | Manual contact/email required, uncertain fit | The Agent Skills Library exists, but the submit form is labeled for MCP servers and requires contact email. | Ask maintainers whether Agent Skills can be submitted through the same form before using it. |

## Suggested Submission Copy

Name:

```text
Mac Migration Operator Skill
```

Short description:

```text
Proof-gated Agent Skill for safer Mac-to-Mac migrations with rollback discipline, validation templates, and optional read-only helper scripts.
```

Repository:

```text
https://github.com/stephanechery/mac-migration-operator-skill
```

Category:

```text
Productivity, workflow automation, developer tools, or utilities
```

Tags:

```text
agent-skills, chatgpt-skills, codex-skills, macos, migration-assistant, mac-migration, productivity, workflow-automation
```

Long description:

```text
Mac Migration Operator Skill helps users move from one Mac to another without losing files, project folders, app access, development setup, automations, or external-drive work. It guides intake, source freeze, transfer planning, first-boot checks, post-migration validation, exact-file gap repair, and old-Mac retirement approval. The package includes templates, examples, documentation, and optional read-only macOS helper scripts.
```

## Recheck Commands

```bash
npx skills add stephanechery/mac-migration-operator-skill --list
npx skills find "mac migration"
```

Next step: watch for SkillsLLM approval or feedback, then re-check ClaudeSkills.info, skills.sh, SkillsMP, Capafy, and SkillsLLM public indexing.

## Compatibility Layout

Some directories expect a repository-level `/skills/` folder. The canonical Skill files are mirrored at:

```text
skills/mac-migration-operator/
```

The `skills` CLI was checked locally after adding this mirror and still found one Skill named `mac-migration-operator`.
