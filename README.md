# Git Branching and Feature Flag Demo

edited short explanation
asd
asd
asd
asd

This project demonstrates Git branching strategies, Pull Requests, code reviews, review feedback, merging, branch deletion, Trunk-Based Development concepts, and feature flags.

This README provides the complete workflow for the assignment, including the **commands to run, actions to perform, and screenshots to capture**.

---

# 1. Prerequisites

Before starting, make sure the following are installed:

- Git
- Node.js
- GitHub or GitLab account
- Visual Studio Code or another text editor
- Git Bash, Command Prompt, or PowerShell

Verify Git:

```bash
git --version
```

Verify Node.js:

```bash
node --version
```

### 📸 SCREENSHOT 1 – Environment Verification

After running the two commands above, take a screenshot.

The screenshot should show:

```text
git --version
node --version
```

The version numbers should be visible.

**Purpose:** Proves that Git and Node.js are installed and ready for the assignment.

---

# 2. Step 1 – Create the Git Repository

Create a new folder:

```bash
mkdir git-branching-feature-flag-demo
cd git-branching-feature-flag-demo
```

Initialize Git:

```bash
git init
```

Rename the default branch to `main`:

```bash
git branch -M main
```

Create the project files:

```text
README.md
.gitignore
config.json
app.js
simulate_workflow.sh
```

Add the initial files:

```bash
git add README.md .gitignore
```

Create the initial commit:

```bash
git commit -m "chore: initialize repository"
```

Check the Git status:

```bash
git status
```

Check the commit:

```bash
git log --oneline --decorate
```

### 📸 SCREENSHOT 2 – Initial Local Repository

Take a screenshot after running:

```bash
git status
git log --oneline --decorate
```

The screenshot should show:

- `main` branch
- Initial commit
- Clean working tree
- Commit message:

```text
chore: initialize repository
```

---

# 3. Connect the Local Repository to GitHub/GitLab

Create a new empty repository on GitHub or GitLab.

Use a repository name such as:

```text
git-branching-feature-flag-demo
```

Do not create another README if you already created one locally.

Connect your local repository:

```bash
git remote add origin https://github.com/<YOUR-USERNAME>/git-branching-feature-flag-demo.git
```

Verify the remote:

```bash
git remote -v
```

Push `main`:

```bash
git push -u origin main
```

### 📸 SCREENSHOT 3 – Remote Repository

Open the GitHub/GitLab repository in your browser.

Take a screenshot showing:

- Repository name
- `main` branch
- `README.md`
- `.gitignore`
- Initial commit
- Repository file list

**Do not include your personal access token or password in the screenshot.**

---

# 4. Step 2 – Create the Feature Branch

Make sure you are on `main`:

```bash
git checkout main
```

Update your local branch:

```bash
git pull --ff-only
```

Create the feature branch:

```bash
git checkout -b feature/new-feature
```

Verify the current branch:

```bash
git branch
```

The output should show:

```text
* feature/new-feature
  main
```

### 📸 SCREENSHOT 4 – Feature Branch Created

Take a screenshot after running:

```bash
git branch
```

The screenshot must clearly show:

```text
* feature/new-feature
  main
```

**Purpose:** Proves that the required feature branch was created.

---

# 5. Step 2 – Modify README.md

Open `README.md`.

Add or update the documentation describing the new feature.

Check the changes:

```bash
git status
```

You can also see the exact changes using:

```bash
git diff
```

### 📸 SCREENSHOT 5 – README Changes

Take a screenshot showing:

```bash
git status
```

and/or:

```bash
git diff
```

The screenshot should demonstrate that `README.md` has been modified while you are working on:

```text
feature/new-feature
```

---

# 6. Commit the Feature

Stage the README:

```bash
git add README.md
```

Commit the change:

```bash
git commit -m "feat: document new feature"
```

Check the commit:

```bash
git log --oneline --decorate --graph --all
```

### 📸 SCREENSHOT 6 – Feature Commit

Take a screenshot showing the Git history.

The screenshot should contain:

```text
feat: document new feature
```

and indicate that the commit is on:

```text
feature/new-feature
```

---

# 7. Step 3 – Push the Feature Branch

Push the branch to GitHub/GitLab:

```bash
git push -u origin feature/new-feature
```

### 📸 SCREENSHOT 7 – Feature Branch Push

Take a screenshot of the terminal after the push completes.

The screenshot should show:

```text
git push -u origin feature/new-feature
```

and a successful push message.

---

# 8. Step 3 – Create the Pull Request

Open your GitHub/GitLab repository.

Create a Pull Request/Merge Request:

```text
feature/new-feature → main
```

Use a title such as:

```text
Add documentation for new feature
```

Use this description:

```text
## Summary

- Added documentation for the new feature.
- Updated the README with the development workflow.
- Prepared the project for review.

## Testing

- Verified Git status.
- Verified Git commit history.
- Reviewed the README changes.

## Review Request

Please review the README changes and provide feedback.
```

Assign a reviewer.

### 📸 SCREENSHOT 8 – Pull Request

Take a screenshot of the Pull Request page.

The screenshot should show:

- PR title
- `feature/new-feature` as source branch
- `main` as target branch
- PR description
- Files changed
- Assigned reviewer

**This is an important screenshot for the assignment.**

---

# 9. Step 4 – Perform the Code Review

Switch to the **Files changed** section of the Pull Request.

Review the README changes.

Leave an inline comment or general PR comment.

Use this example:

```text
Please add a short section explaining how the feature flag
is used in the second part of the assignment. This will make
the README easier to follow when reproducing the workflow.
```

Submit the review/comment.

### 📸 SCREENSHOT 9 – Code Review Comment

Take a screenshot showing:

- Pull Request
- Changed file
- Reviewer comment
- The README line/diff being reviewed
- Reviewer name/account

**The comment must be visible in the screenshot.**

---

# 10. Step 5 – Apply the Review Feedback

Return to your local project.

Make sure you are on the feature branch:

```bash
git checkout feature/new-feature
```

Edit `README.md`.

Add the requested feature-flag instructions.

Check the changes:

```bash
git status
```

Review the difference:

```bash
git diff
```

### 📸 SCREENSHOT 10 – Review Feedback Applied Locally

Take a screenshot showing:

```bash
git status
git diff
```

The screenshot should show that the README was updated in response to the review.

---

# 11. Commit the Review Changes

Stage the updated README:

```bash
git add README.md
```

Commit:

```bash
git commit -m "fix: address code review feedback"
```

Check the history:

```bash
git log --oneline --decorate --graph --all
```

### 📸 SCREENSHOT 11 – Review Feedback Commit

Take a screenshot showing the new commit:

```text
fix: address code review feedback
```

The Git history should show both:

```text
feat: document new feature
fix: address code review feedback
```

---

# 12. Push the Updated Feature Branch

Push the changes:

```bash
git push
```

Return to the Pull Request page.

The new commit should automatically appear in the PR.

### 📸 SCREENSHOT 12 – Updated Pull Request

Take a screenshot showing:

- New commit
- Updated README
- Previous reviewer comment
- Updated Pull Request diff

This proves that the review feedback was implemented.

---

# 13. Step 6 – Merge the Pull Request

After the reviewer approves the Pull Request, merge it into:

```text
main
```

Use the GitHub/GitLab **Merge Pull Request** button.

After the merge, confirm that the PR shows:

```text
Merged
```

### 📸 SCREENSHOT 13 – Merged Pull Request

Take a screenshot showing:

- PR title
- `feature/new-feature → main`
- Merged status
- Merge confirmation
- Completed review

---

# 14. Delete the Feature Branch

Delete the remote feature branch using the GitHub/GitLab interface.

Then clean up your local repository:

```bash
git checkout main
```

Pull the latest changes:

```bash
git pull --ff-only
```

Delete the local branch:

```bash
git branch -d feature/new-feature
```

Clean up deleted remote branches:

```bash
git fetch --prune
```

Check branches:

```bash
git branch -a
```

### 📸 SCREENSHOT 14 – Feature Branch Deleted

Take a screenshot showing:

```bash
git branch -a
```

The feature branch:

```text
feature/new-feature
```

should no longer appear as an active branch.

The `main` branch should remain.

---

# 15. Verify the Main Branch

Run:

```bash
git checkout main
```

Then:

```bash
git pull --ff-only
```

Check the Git history:

```bash
git log --oneline --decorate --graph --all
```

### 📸 SCREENSHOT 15 – Final Main History

Take a screenshot showing:

- `main`
- The feature commit
- The review-feedback commit
- The merged history

This proves that the feature was successfully integrated into `main`.

---

# 16. Step 7 – Create release/v1.0

The assignment requires a release branch called:

```text
release/v1.0
```

Create it from the updated `main`:

```bash
git checkout main
git pull --ff-only
git checkout -b release/v1.0
```

Verify:

```bash
git branch
```

Expected:

```text
  main
* release/v1.0
```

### 📸 SCREENSHOT 16 – Release Branch

Take a screenshot showing:

```bash
git branch
```

The screenshot must clearly show:

```text
* release/v1.0
  main
```

---

# 17. Update README for v1.0

Update `README.md` with the release and feature-flag documentation.

Check the changes:

```bash
git status
```

Commit:

```bash
git add README.md
git commit -m "docs: prepare v1.0 release notes"
```

### 📸 SCREENSHOT 17 – Release Documentation Commit

Take a screenshot showing:

```bash
git log --oneline --decorate --graph --all
```

The screenshot should show:

```text
docs: prepare v1.0 release notes
```

---

# 18. Step 8 – Create the Feature Flag

The project uses:

```text
config.json
```

Create the following configuration:

```json
{
  "enable_new_feature": true
}
```

This means that the new feature is enabled.

---

# 19. Create app.js

The application reads the feature flag from `config.json`.

`app.js`:

```javascript
const fs = require("fs");

const config = JSON.parse(fs.readFileSync("./config.json", "utf8"));

console.log("Application started.");

if (config.enable_new_feature === true) {
  console.log("New Dashboard feature is ENABLED.");
  console.log("Loading the new dashboard...");
} else {
  console.log("New Dashboard feature is DISABLED.");
  console.log("Loading the existing dashboard...");
}
```

Stage the files:

```bash
git add config.json app.js
```

Commit:

```bash
git commit -m "feat: add configurable new dashboard feature flag"
```

### 📸 SCREENSHOT 18 – Feature Flag Commit

Take a screenshot showing:

```bash
git log --oneline --decorate --graph --all
```

The screenshot should show:

```text
feat: add configurable new dashboard feature flag
```

---

# 20. Run the Application with the Feature Enabled

Make sure `config.json` contains:

```json
{
  "enable_new_feature": true
}
```

Run:

```bash
node app.js
```

Expected output:

```text
Application started.
New Dashboard feature is ENABLED.
Loading the new dashboard...
```

### 📸 SCREENSHOT 19 – Feature Enabled

Take a screenshot showing **both**:

1. `config.json` with:

```json
"enable_new_feature": true
```

2. Terminal output:

```text
Application started.
New Dashboard feature is ENABLED.
Loading the new dashboard...
```

This is one of the most important screenshots because it proves that the feature flag works.

---

# 21. Test the Feature Disabled State

Change `config.json` to:

```json
{
  "enable_new_feature": false
}
```

Run:

```bash
node app.js
```

Expected output:

```text
Application started.
New Dashboard feature is DISABLED.
Loading the existing dashboard...
```

### 📸 SCREENSHOT 20 – Feature Disabled

Take a screenshot showing **both**:

1. `config.json` with:

```json
"enable_new_feature": false
```

2. Terminal output:

```text
Application started.
New Dashboard feature is DISABLED.
Loading the existing dashboard...
```

This proves that the application can change behavior without modifying the application code.

---

# 22. Restore the Feature Flag to TRUE

For the final submitted project, restore the feature flag:

```json
{
  "enable_new_feature": true
}
```

Run the application one final time:

```bash
node app.js
```

Confirm:

```text
Application started.
New Dashboard feature is ENABLED.
Loading the new dashboard...
```

### 📸 SCREENSHOT 21 – Final Enabled State

Take a final screenshot showing:

- `config.json`
- `enable_new_feature: true`
- Successful `node app.js` execution
- ENABLED output

---

# 23. Push release/v1.0

Push the release branch:

```bash
git push -u origin release/v1.0
```

### 📸 SCREENSHOT 22 – Release Branch Push

Take a screenshot of the terminal showing the successful push of:

```text
release/v1.0
```

---

# 24. Final Git History

Run:

```bash
git status
```

Then:

```bash
git branch -a
```

Then:

```bash
git log --oneline --decorate --graph --all
```

### 📸 SCREENSHOT 23 – Final Git Repository State

Take a screenshot showing:

- Clean working tree
- `main`
- `release/v1.0`
- Final commits
- Feature flag commit
- Release documentation commit

---

# 25. Optional – Run the Workflow Script

The project includes:

```text
simulate_workflow.sh
```

The script contains the Git commands used for the assignment.

On Git Bash:

```bash
chmod +x simulate_workflow.sh
```

Run:

```bash
./simulate_workflow.sh
```

**Important:** Do not rely on this script for the actual GitHub/GitLab Pull Request, code review, merge, or branch deletion. Those steps should be performed manually so that you can capture the required screenshots.

---

# Complete Screenshot Checklist

The following screenshots should be included in the final Word document:

| #   | Screenshot                   | What It Proves               |
| --- | ---------------------------- | ---------------------------- |
| 1   | Git and Node versions        | Development environment      |
| 2   | Initial Git status/history   | Repository initialization    |
| 3   | GitHub/GitLab repository     | Remote repository            |
| 4   | `feature/new-feature` branch | Feature branch creation      |
| 5   | README diff                  | Feature modification         |
| 6   | Feature commit               | Commit creation              |
| 7   | Feature branch push          | Remote branch                |
| 8   | Pull Request                 | PR creation                  |
| 9   | Reviewer comment             | Code review                  |
| 10  | Updated README/diff          | Review feedback applied      |
| 11  | Review-feedback commit       | Corrective commit            |
| 12  | Updated PR                   | PR updated                   |
| 13  | Merged PR                    | PR successfully merged       |
| 14  | Branch deletion              | Feature branch cleanup       |
| 15  | Main history                 | Feature integrated into main |
| 16  | `release/v1.0`               | Release branch               |
| 17  | Release commit               | README release update        |
| 18  | Feature flag commit          | Feature flag implementation  |
| 19  | Feature enabled              | Flag = true                  |
| 20  | Feature disabled             | Flag = false                 |
| 21  | Final enabled state          | Final configuration          |
| 22  | Release branch push          | Remote release branch        |
| 23  | Final Git state              | Complete workflow            |

---

# Final Expected Repository Structure

```text
git-branching-feature-flag-demo/
│
├── README.md
├── README_initial.md
├── .gitignore
├── config.json
├── app.js
└── simulate_workflow.sh
```

---

# Final Expected Git Branch Structure

After completing the assignment:

```text
main
  │
  ├── Initial commit
  │
  ├── feature/new-feature
  │       │
  │       ├── README change
  │       ├── Code review
  │       └── Review feedback
  │
  └── Merge into main
          │
          ▼
       release/v1.0
          │
          ├── Release documentation
          ├── config.json
          └── app.js
```

The `feature/new-feature` branch should be deleted after merging.

The `release/v1.0` branch remains available for the assignment's release/feature-flag demonstration.

---

# Feature Flag Flow

```text
config.json
     │
     ▼
enable_new_feature
     │
     ├───────────────┐
     │               │
    true           false
     │               │
     ▼               ▼
New Dashboard    Existing Dashboard
```

---

# Expected Final Application Output

## Feature Enabled

```text
Application started.
New Dashboard feature is ENABLED.
Loading the new dashboard...
```

## Feature Disabled

```text
Application started.
New Dashboard feature is DISABLED.
Loading the existing dashboard...
```

---

# Final Submission Checklist

Before submitting the assignment, verify that:

- [ ] GitHub/GitLab repository exists.
- [ ] `main` branch exists.
- [ ] `feature/new-feature` was created.
- [ ] README was modified.
- [ ] Feature commit was created.
- [ ] Feature branch was pushed.
- [ ] Pull Request was created.
- [ ] Reviewer was assigned.
- [ ] Reviewer left a comment.
- [ ] Review feedback was implemented.
- [ ] Corrective commit was created.
- [ ] Pull Request was merged.
- [ ] `feature/new-feature` was deleted.
- [ ] `release/v1.0` was created from `main`.
- [ ] README was updated for the release.
- [ ] `config.json` was created.
- [ ] `app.js` was created.
- [ ] Feature flag was tested with `true`.
- [ ] Feature flag was tested with `false`.
- [ ] Feature flag was restored to `true`.
- [ ] Final screenshots were captured.
- [ ] Screenshots were inserted into the Word document in the correct order.
- [ ] Code ZIP file is included in the submission.
