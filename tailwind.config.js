/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "content/**/*.{md,html}",
    "templates/**/*.html"
  ],
  theme: {
    extend: {
      'fontFamily': {
        'handjet': ['Handjet', 'sans-serif']
      }
    },
  },
  plugins: [],
}

