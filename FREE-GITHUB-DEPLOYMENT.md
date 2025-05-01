# Free GitHub Deployment Guide

This is a step-by-step guide to deploy your numerical differentiation app for free using GitHub Pages.

## Step 1: Download the Deployment Package

1. The file `numerical-differentiation-for-github.tar.gz` contains all the files you need
2. In the Replit file explorer, right-click on this file and select "Download"

## Step 2: Create a GitHub Account (if you don't have one)

1. Go to [GitHub](https://github.com/) and sign up for a free account

## Step 3: Create a New Repository

1. Click the "+" in the top-right corner of GitHub and select "New repository"
2. Name your repository (e.g., "numerical-differentiation")
3. Make it public
4. Click "Create repository"

## Step 4: Upload the Files

### Option A: Upload via Browser (Easiest)

1. Extract the downloaded `numerical-differentiation-for-github.tar.gz` on your computer
2. In your new GitHub repository, click "Add file" > "Upload files"
3. Drag and drop all the files from the extracted folder
4. Commit the changes

### Option B: Use Git (Advanced)

1. Extract the downloaded `numerical-differentiation-for-github.tar.gz` on your computer
2. Open a terminal or command prompt in the extracted folder
3. Run these commands (replace the URL with your repository URL):

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/your-repo-name.git
git push -u origin main
```

## Step 5: Set Up GitHub Pages

1. Wait a few minutes after uploading all files
2. Go to your repository's "Settings" tab
3. In the left sidebar, click on "Pages"
4. Under "Build and deployment", select:
   - Source: "GitHub Actions"

## Step 6: Wait for Deployment

1. Go to the "Actions" tab of your repository
2. You should see the workflow running
3. Wait for it to complete (this may take a few minutes)

## Step 7: Access Your Deployed Website

1. Once deployed, your site will be available at: `https://yourusername.github.io/your-repo-name/`
2. This is a completely free hosting solution!

## Troubleshooting

If you have any issues:
1. Make sure all files were properly uploaded
2. Check the Actions tab for any error messages
3. Verify that GitHub Pages is properly configured

## Future Updates

To update your website in the future:
1. Simply upload new files to your repository
2. The GitHub Action will automatically rebuild and deploy your site