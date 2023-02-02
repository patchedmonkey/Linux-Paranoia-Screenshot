## Readme

Dieses Screenshot Tool dient zur Nachbearbeitung von Bildern, bevor sie auf der Festplatte gespeichert oder in die Zwischenablage kopiert werden. Funktionsweise

Das Script entfernt mit exiftool die Metadaten aus dem von gnome-screenshot erzeugten Bild. Anschließend wird das Bild in das Format WebP konvertiert und erneut mit exiftool metadatenfrei gemacht. Die temporären Dateien, die während dieses Prozesses anfallen, werden mit 10 Durchgängen von shred sicher gelöscht.





## Abhängigkeiten

    gnome-screenshot
    exiftool
    webp
    xclip

## Installation der Abhängigkeiten

### Debian/Ubuntu/Mint

<code>sudo apt-get install -y gnome-screenshot exiftool webp xclip shred</code>


### Fedora/RedHat

<code>sudo dnf install -y gnome-screenshot exiftool webp xclip shred</code>
