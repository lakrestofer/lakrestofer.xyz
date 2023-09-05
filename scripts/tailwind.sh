#!/bin/sh

if [ -z "$(which inotifywait)" ]; then
    echo "inotifywait not installed."
    echo "In most distros, it is available in the inotify-tools package."
    exit 1
fi

counter=0;
 
function run_tailwind() {
    counter=$((counter+1))
    echo "Detected change n. $counter" 
    npx tailwindcss -i ./templates/boilerplate.css -o ./static/style.css
}

run_tailwind

inotifywait --recursive --monitor --format "%e %w%f" \
--event modify,move,create,delete ./templates \
| while read changed; do
    echo $changed
    run_tailwind
done
