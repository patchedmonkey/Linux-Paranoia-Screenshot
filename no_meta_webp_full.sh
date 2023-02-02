#!/bin/bash

# Set file name variable with date
file_name="Screenshot_$(date +%Y_%m_%d_%H:%M:%S).webp"

# Take screenshot
gnome-screenshot -f /tmp/screenshot.png

# Remove metadata
exiftool -all= -overwrite_original /tmp/screenshot.png

# Convert to webp format
cwebp -quiet /tmp/screenshot.png -o /tmp/screenshot.webp

# Save to file
mv /tmp/screenshot.webp ~/Bilder/Screenshots/$file_name

#Delete old images from /tmp dir
shred -xvzfun 10 /tmp/screenshot.png
shred -xvzfun 10 /tmp/screenshot.png

# Or copy to clipboard
xclip -selection clipboard -t image/webp -i ~/Bilder/Screenshots/$file_name
