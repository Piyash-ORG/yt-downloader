#!/data/data/com.termux/files/usr/bin/bash

# GitHub-ready version

OUTDIR="/sdcard/Movies"
TELEGRAM="@mhd_piyash"

if [ $# -lt 2 ]; then
    echo "Usage: $0 <URL or PlaylistURL> <QUALITY>"
    echo "Quality: 1080p | 720p | 480p | 360p | audio"
    exit 1
fi

URL=$1
QUALITY=$2

case "$QUALITY" in
    1080p)
        FORMAT="bestvideo[height<=1080]+bestaudio/best[height<=1080]"
        ;;
    720p)
        FORMAT="bestvideo[height<=720]+bestaudio/best[height<=720]"
        ;;
    480p)
        FORMAT="bestvideo[height<=480]+bestaudio/best[height<=480]"
        ;;
    360p)
        FORMAT="bestvideo[height<=360]+bestaudio/best[height<=360]"
        ;;
    audio)
        FORMAT="bestaudio"
        ;;
    *)
        echo "❌ Invalid quality! Use: 1080p | 720p | 480p | 360p | audio"
        exit 1
        ;;
esac

echo -e "\n⬇️ Downloading playlist or video: $URL | Quality: $QUALITY"

# Output template: just the title
TEMPLATE="$OUTDIR/%(title)s.%(ext)s"

if [ "$QUALITY" = "audio" ]; then
    yt-dlp -x --audio-format mp3 \
    -o "$TEMPLATE" "$URL"
else
    # Use the best available single format (no merging)
    yt-dlp -f "$FORMAT" -o "$TEMPLATE" "$URL"
fi

# Replace all "|" with "-" in filenames
find "$OUTDIR" -type f -name "*|*" | while read f; do
    NEWFILE=$(echo "$f" | sed 's/|/-/g')
    mv "$f" "$NEWFILE"
done

echo -e "\n✅ All downloads completed!"
echo -e "📨 For support or suggestions, contact me on Telegram: $TELEGRAM"
