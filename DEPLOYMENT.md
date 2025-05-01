# Deployment Guide: Numerical Differentiation Application

## Options for Free Deployment

You have several options to deploy this application for free:

### Option 1: Netlify (Recommended)

1. **Sign up for a free Netlify account** at [netlify.com](https://netlify.com).

2. **Export your code from Replit**:
   - From your Replit project, click on the three dots menu → "Download as zip".
   - Extract the zip file to your local computer.

3. **Prepare the project**:
   - Run these commands in the terminal:
     ```bash
     npm run build
     ```
   - This will create a `dist` folder in your project.

4. **Deploy to Netlify**:
   - Go to [netlify.com](https://netlify.com) and log in.
   - Drag and drop the `client/dist` folder to the Netlify dashboard where it says "Drag and drop your site folder here".
   - Wait for the upload to complete. Netlify will automatically deploy your site.
   - You'll get a random URL like `random-name-123.netlify.app`.

5. **Configure redirects (optional)**:
   - Create a file called `_redirects` in your `dist` folder with this content:
     ```
     /*    /index.html   200
     ```
   - This ensures that all routes are handled by your React application.

### Option 2: GitHub Pages

1. **Create a GitHub repository**:
   - Go to [github.com](https://github.com) and create a new repository.

2. **Export and prepare your code**:
   - Download your code from Replit (as in Option 1).
   - Run `npm run build` to build your project.

3. **Push to GitHub**:
   - Initialize a git repository in your project folder.
   - Add the GitHub repository as a remote.
   - Push your code to GitHub.

4. **Enable GitHub Pages**:
   - Go to your repository on GitHub.
   - Navigate to Settings → Pages.
   - Set the source to the branch where your code is located.
   - Set the folder to `/client/dist`.
   - Save your changes.

5. **Add a base path to your Vite configuration**:
   Since GitHub Pages serves your site from a subfolder, you'll need to update `vite.config.ts` to add a base path matching your repository name.

### Option 3: Vercel

1. **Sign up for a free Vercel account** at [vercel.com](https://vercel.com).

2. **Connect GitHub repository**:
   - Push your code to a GitHub repository.
   - Connect your GitHub account to Vercel.
   - Import your repository.

3. **Configure the build**:
   - Set the build command to `npm run build`.
   - Set the output directory to `client/dist`.

4. **Deploy**:
   - Click Deploy and wait for the process to complete.
   - Vercel will provide you with a URL for your deployed application.

## Keeping Your Application Running

With the free tiers of these platforms, your application will remain online indefinitely as long as it follows their terms of service. There are no time limits on these free deployments for basic usage.

## Limitations of Free Deployment

- Limited bandwidth and resources
- No custom domain (unless you purchase one separately)
- May have reduced priority in terms of performance

These limitations are generally not an issue for educational applications or projects with moderate traffic.