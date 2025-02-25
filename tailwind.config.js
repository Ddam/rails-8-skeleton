import { fontFamily as _fontFamily } from "tailwindcss/defaultTheme";

/** @type {import("tailwindcss").Config} */
export default {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/frontend/**/*.tsx",
    "./app/views/**/*.{erb,haml,html,slim}",
    "./node_modules/flowbite/**/*.js",
    "./lib/theme.rb",
  ],

  theme: {
    extend: {
      fontFamily: {
        sans: ["Figtree", ..._fontFamily.sans],
      },
    },
  },

  plugins: [
    require("flowbite/plugin"),
  ],

  darkMode: "media",
};

