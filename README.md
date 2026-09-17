# Light Theme for YouTube Music - Safari Extension

![Promo](https://raw.githubusercontent.com/Tech-How/Light-Theme-for-YouTube-Music/main/images/promo.png)

A Safari Web Extension port of the beautiful [Light Theme for YouTube Music](https://github.com/Tech-How/Light-Theme-for-YouTube-Music) originally created by Tristian Dedinas.

This extension injects custom CSS into `music.youtube.com` to completely transform the default dark aesthetic into a clean, modern light theme. 

## Features
- Complete light mode UI for the main content area, left sidebar navigation, top search bar, and bottom player bar.
- Uses Safari Manifest V3 architecture.
- Seamless, lightweight CSS injection.

## Installation (Sideloading)

Since this extension is not currently published on the Mac App Store, you can run it locally as an unsigned extension.

### Method 1: Loading as a Temporary Extension (Easiest)
1. Open Safari.
2. Go to `Safari > Settings > Advanced` and check the box at the bottom for **"Show features for web developers"**.
3. In the menu bar at the top of your screen, click **Develop > Allow Unsigned Extensions**.
4. Then, click **Develop > Web Extension Background Pages > Add Temporary Extension...**
5. Select the `Extension` folder within this repository.
6. The extension will be active immediately. Go to `music.youtube.com` and refresh!

### Method 2: Building via Xcode
1. Ensure you have Xcode installed.
2. Open the `.xcodeproj` file located inside the `XcodeProject` directory.
3. Click the **Play (Build and Run)** button in Xcode. 
4. Once the companion app launches, click "Quit and Open Safari Settings".
5. In Safari, go to the **Develop** menu and check **"Allow Unsigned Extensions"**. *(Note: This setting resets every time Safari is fully quit).*
6. Go to `Safari > Settings > Extensions` and enable "Light Theme for YouTube Music".

## Credits
All credit for the core stylesheet design goes to [Tech-How (Tristian Dedinas)](https://github.com/Tech-How/Light-Theme-for-YouTube-Music). This repository serves as the Safari Manifest V3 wrapper around their excellent work, with added fixes specifically tailored for Safari's layout.
