import cloudflare from '@astrojs/cloudflare'
import react from '@astrojs/react'
import tailwind from '@astrojs/tailwind'

import { defineConfig } from 'astro/config'

export default defineConfig({
  adapter: cloudflare(),
  integrations: [tailwind(), react()],
  vite: {
    publicDir: import.meta.env.PROD ? 'public' : 'dist',
    resolve: {
      // Use react-dom/server.edge instead of react-dom/server.browser for React 19.
      // Without this, MessageChannel from node:worker_threads needs to be polyfilled.
      alias: import.meta.env.PROD && {
        'react-dom/server': 'react-dom/server.edge',
      },
    },
  },
})
