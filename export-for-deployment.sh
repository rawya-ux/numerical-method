#!/bin/bash

# Create deployment-ready version
echo "Creating deployment package..."

# Create a directory for the deployment files
mkdir -p deployment

# Copy necessary files
cp -r client deployment/
cp -r shared deployment/
cp vite.config.ts deployment/
cp tsconfig.json deployment/
cp tailwind.config.ts deployment/
cp postcss.config.js deployment/
cp components.json deployment/
cp netlify.toml deployment/

# Create a package.json for deployment
cat > deployment/package.json << 'EOL'
{
  "name": "numerical-differentiation-app",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "serve": "vite preview"
  },
  "dependencies": {
    "@hookform/resolvers": "^3.10.0",
    "@radix-ui/react-accordion": "^1.2.4",
    "@radix-ui/react-dialog": "^1.1.7",
    "@radix-ui/react-dropdown-menu": "^2.1.7",
    "@radix-ui/react-label": "^2.1.3",
    "@radix-ui/react-select": "^2.1.7",
    "@radix-ui/react-slot": "^1.2.0",
    "@tanstack/react-query": "^5.60.5",
    "class-variance-authority": "^0.7.1",
    "clsx": "^2.1.1", 
    "katex": "^0.16.22",
    "lucide-react": "^0.453.0",
    "mathjax": "^3.2.2",
    "mathjs": "^14.4.0",
    "mathlive": "^0.103.0",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-hook-form": "^7.55.0",
    "tailwind-merge": "^2.6.0",
    "tailwindcss-animate": "^1.0.7",
    "wouter": "^3.3.5",
    "zod": "^3.24.2"
  },
  "devDependencies": {
    "@vitejs/plugin-react": "^4.3.2",
    "autoprefixer": "^10.4.20",
    "postcss": "^8.4.47",
    "tailwindcss": "^3.4.17",
    "typescript": "5.6.3",
    "vite": "^5.4.14"
  }
}
EOL

# Create _redirects file for Netlify
cat > deployment/client/_redirects << 'EOL'
/*    /index.html   200
EOL

echo "Deployment package created in 'deployment' directory"
echo "Instructions:"
echo "1. Download the 'deployment' directory"
echo "2. Run 'npm install' in that directory"
echo "3. Run 'npm run build' to build the application"
echo "4. Deploy the 'dist' directory to Netlify or other static hosting"
echo "See DEPLOYMENT.md for detailed instructions"
