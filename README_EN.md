## Readme

This screenshot tool is used to post-process images before they are saved on the hard disk or copied to the clipboard.


How it works:

The script uses exiftool to remove the metadata from the image created by gnome-screenshot. Afterwards, the image is converted to WebP format and made metadata-free again with exiftool. The temporary files created during this process are safely deleted with 10 passes of shred.

## Dependencies

    gnome-screenshot
    exiftool
    webp
    xclip

## Installing the dependencies

### Debian/Ubuntu/Mint

<code>sudo apt-get install -y gnome-screenshot exiftool webp xclip shred</code>


### Fedora/RedHat

<code>sudo dnf install -y gnome-screenshot exiftool webp xclip shred</code>
