# YTM 4S Proxy

A lightweight YouTube Music proxy server designed specifically to run perfectly on legacy devices like the iPhone 4S running iOS 9. 

This project bridges the gap between modern YouTube Music APIs and older WebKit browsers by handling all the heavy lifting (API calls, thumbnail proxying, audio downloading, and caching) on the server side, serving a simple and responsive ES5-compatible web interface to the client.

## Features

- **Legacy Safari Compatible**: Fully functional on iOS 9's Safari browser. Uses pure ES5 JavaScript and legacy CSS techniques (no Flexbox reliance, no modern ES6 features).
- **Server-Side Audio Processing**: Bypasses YouTube's complex streaming, CDN issues, and Range-request problems by utilizing `yt-dlp` to download the audio stream locally to the server before streaming it cleanly to the phone.
- **Robust Caching System**:
  - **Audio Cache**: Downloaded songs are saved locally. Playing them again is instant.
  - **Image Proxy & Cache**: Bypasses Google's CDN CORS/SSL issues by proxying and caching all album art through the server as local JPEGs.
  - **Metadata Cache**: Search queries and track info are cached to dramatically reduce YouTube API calls.
  - **Cache Management**: Includes a dedicated Settings page to monitor cache size and clear them.
- **AJAX Navigation (PJAX)**: Page navigation is handled via AJAX to ensure seamless transitions without interrupting the background audio session.
- **Background Preloading**: Automatically starts pre-fetching the next song in the queue in the background.

## Important iOS 9 Note: Background Audio vs Fullscreen Mode

Apple places severe limitations on background audio in iOS 9. You have two ways to use this web app on your iPhone 4S, and you must choose based on your preference:

### 1. Normal Safari Mode (Recommended)
- **How to use**: Open the Safari browser, type in your server IP, and use it normally.
- **Pros**: **Background audio works perfectly!** You can lock your screen or switch apps, and the music will continue to play. 
- **Cons**: The Safari top URL bar and bottom navigation bar will be visible.

### 2. Fullscreen Web App Mode (Home Screen Icon)
- **How to use**: Tap the "Share" button in Safari and select "Add to Home Screen". Launch the app from your home screen.
- **Pros**: Completely fullscreen experience with no Safari bars. Looks like a native app.
- **Cons**: **No background audio.** iOS 9 forcefully suspends all audio the exact millisecond the screen is locked or the app is minimized when using fullscreen Home Screen apps. There is no workaround for this.

## Setup & Running

1. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```
   *Note: Ensure you have `ffmpeg` installed on your system for audio processing.*

2. **Run the Server**:
   ```bash
   ./monitor_logs.sh
   # Or run directly via Python:
   # python app.py
   ```

3. **Authentication**:
   On first run, navigate to `/login` and provide your YouTube Music `headers_auth.json` data to authenticate and load your library/playlists.

4. **Access**:
   Find your server's local IP address and navigate to `http://<SERVER_IP>:5000` on your iPhone.
