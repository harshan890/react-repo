import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    host: true,
    allowedHosts: [
      'reactjs-harshan-alb-1418567388.us-east-2.elb.amazonaws.com'
    ]
  }
})
