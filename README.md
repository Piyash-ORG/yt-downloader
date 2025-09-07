# Termux YouTube Downloader 🐱‍💻

**একটি YouTube downloader স্ক্রিপ্ট Termux-এর জন্য।**  
- Single ভিডিও বা Playlist/Channel ডাউনলোড করতে পারবে।  
- Video + Audio merged `.mp4` ফরম্যাটে।  
- Audio আলাদা mp3 হিসেবে।  
- Default yt-dlp progress bar + Playlist index সমর্থন।    

---

## 📌 Features

- এক বা একাধিক লিঙ্ক ডাউনলোড।  
- Playlist বা Channel থেকে সব ভিডিও একসাথে।  
- Quality options: 1080p, 720p, 480p, 360p, audio.  
- Live default progress bar (% / MB / speed / ETA)।  
- - Videos & audios automatically merged (mp4)।  

---

## ⚡ Installation

1. Termux ইন্সটল করুন।  
2. প্রয়োজনীয় প্যাকেজ ইন্সটল করুন:
```bash
pkg update -y
pkg upgrade -y
pkg install git ffmpeg python -y
pip install yt-dlp

3. GitHub থেকে স্ক্রিপ্ট ক্লোন করুন:



git clone https://github.com/piyash-org/yt-downloader.git
cd yt-downloader

4. স্ক্রিপ্টকে executable করুন:



chmod +x yt-download.sh


---

🚀 Usage

1️⃣ Single Video

./yt-download.sh "https://youtube.com/watch?v=VIDEO_ID" QualityType

2️⃣ Playlist

./yt-download.sh "https://youtube.com/playlist?list=PLAYLIST_ID" QualityType

3️⃣ Audio Only

./yt-download.sh "https://youtube.com/watch?v=VIDEO_ID" audio

স্ক্রিপ্ট Movies ফোল্ডারে ডাউনলোড করবে: /sdcard/Movies

---

📂 Output Example

01 - Video Title.mp4
02 - Another Video.mp4
Song Name - Artist.mp3


---

🛠 Support

যেকোনো সমস্যা বা ফিচার সাজেশন-এর জন্য Telegram: @mhd_piyash


---

💡 Notes

ffmpeg অবশ্যই ইন্সটল থাকতে হবে।

Playlist index দিয়ে নামকরণ হবে, তাই ক্রম ঠিক থাকবে।

ডিফল্ট progress bar দেখাবে % / downloaded MB / total MB / Speed / ETA।



---
