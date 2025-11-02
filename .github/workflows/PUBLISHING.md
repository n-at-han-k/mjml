# Publishing @n-at-han-k/mjml-browser-esm to npm

This document explains how to publish the ESM package to npm using the automated GitHub workflow.

## Setup

### 1. Create an npm Access Token

1. Go to [npmjs.com](https://www.npmjs.com) and log in to your account
2. Click on your profile picture → **Access Tokens**
3. Click **Generate New Token** → **Classic Token**
4. Select **Automation** (for CI/CD publishing)
5. Copy the generated token (you won't be able to see it again!)

### 2. Add the Token to GitHub Secrets

1. Go to your GitHub repository
2. Navigate to **Settings** → **Secrets and variables** → **Actions**
3. Click **New repository secret**
4. Name: `NPM_TOKEN`
5. Value: Paste the npm token you copied
6. Click **Add secret**

## Publishing Methods

### Method 1: Manual Publish (Recommended)

1. Go to **Actions** tab in your GitHub repository
2. Select **Publish ESM Package to npm** workflow
3. Click **Run workflow**
4. Select the branch: `claude/esm-module-dist-folder-011CUjDwW2mbghz2wLV93Ce7`
5. (Optional) Enter a version number
6. Click **Run workflow**

The workflow will:
- Checkout the code
- Verify all required files exist
- Show package information
- Publish to npm
- Create a summary report

### Method 2: Tag-based Publish

Push a tag starting with `esm-v` to automatically trigger publishing:

```bash
# Create and push a tag
git tag esm-v4.16.1
git push origin esm-v4.16.1
```

The workflow will automatically run and publish the package.

## Updating the Package Version

To publish a new version:

1. Update the version in `dist/package.json`:
   ```json
   {
     "version": "4.16.2"
   }
   ```

2. Commit and push the change:
   ```bash
   git add dist/package.json
   git commit -m "Bump version to 4.16.2"
   git push
   ```

3. Use one of the publishing methods above

## Troubleshooting

### "401 Unauthorized" Error
- Check that the `NPM_TOKEN` secret is correctly set in GitHub
- Verify the token hasn't expired
- Make sure the token has automation/publish permissions

### "403 Forbidden" Error
- Ensure the package name `@n-at-han-k/mjml-browser-esm` is available
- Verify you have permission to publish under the `@n-at-han-k` scope
- Check that `"access": "public"` is set in package.json

### "EPUBLISHCONFLICT" Error
- This version has already been published
- Bump the version number in `dist/package.json`
- npm doesn't allow overwriting published versions

## Verifying the Published Package

After publishing, verify your package:

```bash
# View on npm
npm view @n-at-han-k/mjml-browser-esm

# Install and test
npm install @n-at-han-k/mjml-browser-esm

# Test in a project
npm install @n-at-han-k/mjml-browser-esm
```

## Package URL

Once published, your package will be available at:
- npm: https://www.npmjs.com/package/@n-at-han-k/mjml-browser-esm
- GitHub: https://github.com/n-at-han-k/mjml
