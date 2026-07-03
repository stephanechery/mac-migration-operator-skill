# Smoke Test Matrix

Use this matrix to prove the destination Mac can do the work that matters before retiring the source Mac.

Evidence status: `confirmed`, `user-confirmed`, `inferred`, `missing`, or `blocked`.

## Summary

- Destination Mac:
- Test date and time:
- Source Mac available for rollback: yes / no
- Overall result: pass / partial / blocked
- Evidence status:

## Everyday Use

| Workflow | Expected result | Test performed | Result | Evidence status | Notes |
| --- | --- | --- | --- | --- | --- |
| Open a recent document | File opens and edits can be saved |  | pass / fail / blocked |  |  |
| Send and receive email | New message can be sent or received |  | pass / fail / blocked |  |  |
| Open browser profile | Bookmarks and saved sessions appear |  | pass / fail / blocked |  |  |
| Open cloud drive file | File opens from destination |  | pass / fail / blocked |  |  |
| Open critical app | App opens with expected data |  | pass / fail / blocked |  |  |

## Files and Storage

| Area | Source expected | Destination found | Sample checked | Evidence status | Notes |
| --- | --- | --- | --- | --- | --- |
| Desktop | yes / no | yes / no | yes / no |  |  |
| Documents | yes / no | yes / no | yes / no |  |  |
| Photos or media | yes / no | yes / no | yes / no |  |  |
| External drive folder | yes / no | yes / no | yes / no |  |  |

## Advanced Project Tests

| Project or tool | Check | Command or action | Expected result | Actual result | Evidence status | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| Project folder | Open folder |  | Folder exists |  |  |  |
| Git repository | Review state |  | Branch and remote known |  |  |  |
| Local app | Start app |  | App loads locally |  |  |  |
| Test suite | Run smoke test |  | Test passes or known failure is explained |  |  |  |

## Gaps

| Gap | Severity | Source baseline checked | Repair path | Evidence status | Owner |
| --- | --- | --- | --- | --- | --- |
|  | critical / normal / low | yes / no |  |  |  |
|  | critical / normal / low | yes / no |  |  |  |

## Next Step

- Ready for retirement gate: yes / no / blocked
- Reason:
- Next validation action:
