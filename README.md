# Homebrew tap for ai-commit

## Installation

### Using Homebrew

```bash
# Install
brew tap anton-kochev/ai-commit
brew install ai-commit
```

## Updating

When a new version of ai-commit is released, update to the latest version with:

```bash
brew update
brew upgrade ai-commit
```

To check your current version:

```bash
ai-commit --version
```

## For Maintainers

### Automated Formula Updates

This repository uses GitHub Actions to automatically update the formula when new releases are published. The workflow:

- Runs daily at 9 AM UTC to check for new releases
- Can be triggered manually from the Actions tab
- Automatically downloads release artifacts, calculates SHA256 checksums, and updates the formula

#### Manual Trigger

To manually trigger an update to a specific version:

1. Go to the [Actions tab](../../actions/workflows/update-formula.yml)
2. Click "Run workflow"
3. Enter the version number (e.g., `0.4.3`) or leave empty for the latest release
4. Click "Run workflow"

#### How It Works

1. Checks the latest release from [ai-commit repository](https://github.com/anton-kochev/ai-commit/releases)
2. Compares with the current formula version
3. If a new version is available:
   - Downloads all platform-specific release artifacts
   - Calculates SHA256 checksums
   - Updates `Formula/ai-commit.rb`
   - Commits and pushes the changes

### Troubleshooting

If users report getting an old version:

**Check what Homebrew sees:**
```bash
brew info ai-commit
```

**Force Homebrew to update:**
```bash
brew update
brew upgrade ai-commit
```

**Check GitHub Actions logs:**
- Verify the workflow ran successfully
- Check if the formula version matches the latest release

**Verify checksums:**
```bash
VERSION="0.4.3"  # Replace with target version

# Download and verify ARM Mac
curl -L "https://github.com/anton-kochev/ai-commit/releases/download/v${VERSION}/ai-commit-aarch64-apple-darwin.tar.gz" -o /tmp/ai-commit.tar.gz
shasum -a 256 /tmp/ai-commit.tar.gz
```
