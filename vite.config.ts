import { defineConfig } from "vite";
import FullReload from "vite-plugin-full-reload";
import RubyPlugin from "vite-plugin-ruby";
import StimulusHMR from "vite-plugin-stimulus-hmr";

export default defineConfig(() => {
  return {
    server: {
      hmr: {
        host: "localhost",
        protocol: "ws",
      },
    },
    plugins: [
      RubyPlugin(),
      StimulusHMR(),
      FullReload(["config/routes.rb", "app/views/**/*"], { delay: 200 }),
    ],
  };
});
