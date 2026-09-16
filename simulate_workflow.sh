#!/usr/bin/env bash
set -e

# This script demonstrates the local Git history for the assignment.
# It assumes Git is installed and the script is executed inside the project folder.
# The GitHub Pull Request and inline review comment are manual web actions.

echo "=== Step 1: Initialize repository ==="
git init
git branch -M main

git add README.md .gitignore
git commit -m "chore: initialize repository"

echo "=== Step 2: Create feature branch ==="
git checkout -b feature/new-feature

# At this point, edit README.md to the feature-branch version before running:
git add README.md
git commit -m "feat: document new feature"

echo "=== Step 3: Push feature branch ==="
# Replace the URL with your own GitHub/GitLab repository URL.
# git remote add origin https://github.com/<username>/<repository>.git
# git push -u origin feature/new-feature

echo "=== Step 4: Pull Request and review ==="
echo "Manual action: Open a PR from feature/new-feature to main."
echo "Manual action: Reviewer leaves an inline suggestion."

echo "=== Step 5: Apply review suggestion ==="
# Edit README.md according to the review comment, then:
git add README.md
git commit -m "fix: address code review feedback"

# Push the updated feature branch:
# git push

echo "=== Step 6: Merge PR ==="
echo "Manual action: Merge the PR in GitHub/GitLab."
echo "Manual action: Delete feature/new-feature after the merge."

echo "=== Step 7: Create release branch from main ==="
git checkout main
git pull --ff-only 2>/dev/null || true
git checkout -b release/v1.0

# Update README.md for the release/trunk demonstration, then:
git add README.md
git commit -m "docs: prepare v1.0 release notes"

echo "=== Step 8: Add feature flag ==="
git add config.json app.js
git commit -m "feat: add configurable new dashboard feature flag"

echo "=== Final history ==="
git log --oneline --decorate --graph --all

echo "=== Feature flag demo ==="
node app.js
