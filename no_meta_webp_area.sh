#!/bin/bash

# Take screenshot of an area
gnome-screenshot -a -f /tmp/screenshot.png

# Set file name variable with date and time
file_name="Screenshot_$(date +%Y_%m_%d_%H:%M:%S).webp"

# Remove metadata
exiftool -all= -overwrite_original /tmp/screenshot.png

# Convert to webp format
cwebp -quiet /tmp/screenshot.png -o /tmp/screenshot.webp

# Create Screenshots directory if not exist
if [ ! -d ~/Bilder/Screenshots ]; then
    mkdir ~/Bilder/Screenshots
fi

# Save to file
mv /tmp/screenshot.webp ~/Bilder/Screenshots/$file_name

#Delete old images from /tmp dir
shred -xvzfun 10 /tmp/screenshot.png
shred -xvzfun 10 /tmp/screenshot.png

# Or copy to clipboard
xclip -selection clipboard -t image/webp -i ~/Bilder/Screenshots/$file_name
