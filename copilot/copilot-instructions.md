# Copilot Instructions

Global custom instructions for development work in GitHub Codespaces.

## Documentation and Language

- Write all documents in the repository in English.
- Write commit messages in English.
- Write issues in Japanese.

## Commit Messages

- Keep the title (subject line) within 30 characters.
- Keep the body within 3 lines.

## Branching

- Create a separate branch for each development item.
- Never mix multiple development items in a single branch.

## Working from Issues

- When starting work from an issue, record the work details, decisions made,
  and other relevant notes as comments on the issue.
- Keep the issue body up to date so that the final specification always
  remains in the issue body.

## Development Workflow

1. Create a plan first, before writing any code.
2. Delegate the actual implementation to subagents.
3. Select an appropriate model for each subagent based on the scale of the
   implementation (for example, a lightweight model for small fixes and a more
   capable model for large or complex changes).

## Review

- When the implementation is complete, hand the changes to a dedicated review
  agent.
- Use a mid-tier model (e.g., Sonnet) for the review agent by default.
- Use a premium model (e.g., Opus) only for large or security-sensitive
  changes.
- Fix the findings and have the changes reviewed again. Repeat this cycle
  until the review agent reports no further issues, up to 3 rounds. If issues
  remain after that, report them to the user.

## Pull Requests and the Copilot Review Loop

1. After creating a pull request, confirm that a Copilot review has been
   requested automatically.
2. If Copilot review runs automatically, wait about 3 minutes for the review
   to complete, then check the review comments.
3. Repeat the following loop until no new comments appear:
   - Fix the reported issues.
   - Reply to inline comments.
   - Resolve the review threads.
   - Wait for the next review.
