#!/bin/sh
 
npx tailwindcss -i ./templates/main.css -o ./static/style.css
zola build
