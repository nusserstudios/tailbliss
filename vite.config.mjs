import { defineConfig } from 'vite'
import tailwindcss from '@tailwindcss/vite'
import { resolve } from 'path'

export default defineConfig(({ mode }) => ({
  plugins: [
    tailwindcss(),
  ],
  build: {
    // Output to Hugo's theme static directory
    outDir: 'themes/tailbliss/static/css',
    // Clear only the output directory
    emptyOutDir: true,
    // Don't copy public directory
    copyPublicDir: false,

    rollupOptions: {
      input: {
        main: resolve(__dirname, 'themes/tailbliss/assets/css/main.css'),
      },
      output: {
        // Use timestamp-based naming for better cache busting during development
        assetFileNames: (assetInfo) => {
          if (assetInfo.name && assetInfo.name.endsWith('.css')) {
            const timestamp = Date.now().toString(36)
            return mode === 'development' ? `[name].${timestamp}.css` : '[name].[hash].css'
          }
          return mode === 'development' ? `[name].${Date.now().toString(36)}.[ext]` : '[name].[hash].[ext]'
        },
        // Don't create JS files for CSS-only builds
        entryFileNames: () => {
          const timestamp = Date.now().toString(36)
          return mode === 'development' ? `[name].${timestamp}.js` : '[name].[hash].js'
        }
      }
    },
    // Only generate manifest in production
    manifest: mode === 'production',
    // Don't use watch mode - causes infinite loops with Hugo
    watch: null,
  },
  // For development hot reloading
  server: {
    port: 5173,
    hmr: {
      port: 5173,
    },
    watch: {
      // Also ignore output directories in dev server
      ignored: ['**/themes/tailbliss/static/css/**', '**/public/**']
    }
  }
}))