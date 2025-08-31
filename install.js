#!/usr/bin/env node

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

/**
 * Extract content files from git repository
 * @param {string} dest - Destination directory path
 */
function extractContentFromGit(dest) {
  try {
    // Get list of content files from origin/exampleSite branch
    const contentFiles = execSync('git ls-tree -r origin/exampleSite | grep "exampleSite/content/"', { encoding: 'utf8' })
      .trim()
      .split('\n')
      .filter(line => line.length > 0)
      .map(line => {
        const parts = line.split('\t');
        return parts[1]; // Get the file path
      });

    console.log(`📁 Found ${contentFiles.length} content files in repository`);

    // Create content files from git
    for (const filePath of contentFiles) {
      const destPath = path.join(dest, filePath.replace('exampleSite/content/', ''));
      const destDir = path.dirname(destPath);

      // Create directory if it doesn't exist
      if (!fs.existsSync(destDir)) {
        fs.mkdirSync(destDir, { recursive: true });
      }

      // Extract file content from git
      const fileContent = execSync(`git show origin/exampleSite:${filePath}`, { encoding: 'utf8' });
      
      // Write file to destination
      fs.writeFileSync(destPath, fileContent);
      console.log(`   ✅ ${filePath}`);
    }

    return true;
  } catch (error) {
    console.error('❌ Error extracting content from git:', error.message);
    return false;
  }
}

/**
 * Check if we're in a deployment/build environment
 */
function isDeploymentEnvironment() {
  return process.env.CI === 'true' || 
         process.env.NODE_ENV === 'production' ||
         process.env.NIXPACKS_METADATA ||
         process.env.RAILWAY_ENVIRONMENT ||
         process.env.VERCEL ||
         process.env.NETLIFY;
}

/**
 * Main install function
 */
function install() {
  const rootDir = process.cwd();
  const contentDir = path.join(rootDir, 'content');

  console.log('🚀 TailBliss Installation Script');
  console.log('================================');

  // Check if content directory already exists
  if (fs.existsSync(contentDir)) {
    console.log('✅ Content directory already exists at:', contentDir);
    console.log('   Skipping content copy to avoid overwriting existing content.');
    return;
  }

  // In deployment environments, skip content extraction
  if (isDeploymentEnvironment()) {
    console.log('🏗️  Deployment environment detected');
    console.log('   Skipping content extraction - content should be included in deployment');
    console.log('   If you need example content, run this script locally first:');
    console.log('   npm run install');
    console.log('');
    console.log('✅ Install script completed for deployment');
    return;
  }

  // Check if we're in a git repository
  try {
    execSync('git rev-parse --git-dir', { stdio: 'ignore' });
  } catch (error) {
    console.error('❌ Error: This doesn\'t appear to be a git repository.');
    console.error('   Make sure you\'re running this from the TailBliss root directory.');
    console.error('   Or run this in a deployment environment where content is pre-included.');
    process.exit(1);
  }

  // Check if origin/exampleSite branch exists
  try {
    execSync('git show-ref --verify --quiet refs/remotes/origin/exampleSite', { stdio: 'ignore' });
  } catch (error) {
    console.error('❌ Error: origin/exampleSite branch not found.');
    console.error('   Make sure you have fetched the remote branches: git fetch origin');
    process.exit(1);
  }

  console.log('📁 Extracting example content from git repository...');
  console.log('   Source: origin/exampleSite branch exampleSite/content/ directory');
  console.log('   Destination:', contentDir);
  console.log('');

  if (extractContentFromGit(contentDir)) {
    console.log('');
    console.log('✅ Successfully extracted example content!');
    console.log('');
    console.log('🎉 Installation complete!');
    console.log('');
    console.log('Next steps:');
    console.log('  1. Run "npm start" to start the development server');
    console.log('  2. Edit your content in the "content" directory');
    console.log('  3. Customize your site configuration in "hugo.yaml"');
    console.log('');
  } else {
    console.error('❌ Installation failed!');
    process.exit(1);
  }
}

// Run the install function
install();
