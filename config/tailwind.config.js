import { fontFamily as _fontFamily } from 'tailwindcss/defaultTheme'

export const content = [
  './public/*.html',
  './app/helpers/**/*.rb',
  './app/javascript/**/*.js',
  './app/views/**/*.{erb,haml,html,slim}',
  './node_modules/flowbite/**/*.js'
]
export const theme = {
  extend: {
    fontFamily: {
      sans: ['Inter var', ..._fontFamily.sans],
    },
  },
}
export const plugins = [
  require('flowbite/plugin'),
  // require('@tailwindcss/forms'),
  // require('@tailwindcss/typography'),
  // require('@tailwindcss/container-queries'),
]
