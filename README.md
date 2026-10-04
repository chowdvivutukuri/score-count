# Card Night Scorepad

A score sheet for card nights. Add players, type each round's points, and the app keeps running totals, standings and a winner. It's one `index.html` file with no build step and nothing to install.

## Open it

- **On your computer:** download `index.html` and open it in any browser.
- **As a link for your phone:** in this repo go to **Settings → Pages**, set **Source** to *Deploy from a branch*, pick `main` and `/ (root)`, and save. After a minute the app is live at `https://chowdvivutukuri.github.io/score-count/`. Add it to your home screen from the browser's share menu.

## iPhone app (no Mac needed)

The `iOS` folder wraps the same `index.html` in a real iPhone app called **Scorepad**. It opens full screen from its own icon, works offline, and saves games on the phone.

### 1. Build it in the cloud
Every push to `main` builds the app automatically. You can also start a build yourself: **Actions** tab → **Build iPhone app** → **Run workflow**. After about 5 to 10 minutes, open **Releases** on the right side of the repo page and download `Scorepad.ipa` from the newest build. (It's also attached to each run on the Actions page as **Scorepad-ipa**.) If a build fails, download **build-log** from the run and send me the errors.

### 2. Install on your iPhone (Windows)
1. Install **iTunes** and **iCloud** from apple.com (the downloads from Apple's website, not the Microsoft Store versions).
2. Install **Sideloadly** from sideloadly.io.
3. Plug in the iPhone and tap **Trust** on it. Open Sideloadly, drag in `Scorepad.ipa`, enter your Apple ID and press **Start**. Leave the advanced options alone.
4. On the iPhone: **Settings → Privacy & Security → Developer Mode → On** (it restarts). If you already turned this on for Forge, skip it.
5. On the iPhone: **Settings → General → VPN & Device Management →** your Apple ID → **Trust**.

### 3. Every 7 days
Free Apple ID installs expire after 7 days. Plug in, open Sideloadly, drag in the same `Scorepad.ipa` and press Start. Your games stay on the phone.

Changes to `index.html` show up in the iPhone app after the next build. Live sync between phones only works in the claude.ai version, so each phone running the iPhone app keeps its own games.

## What it does

- **Games:** Spades, Rummy or any game you name. Rummy and custom games are a plain score sheet where you choose whether the highest or lowest total wins.
- **Spades bidding:** pick the most cards in a hand when you start (8 by default). Hands go up from 1 card to that number, deal the top hand twice, then come back down to 1, so 8 means 16 hands. Tricks won are capped at the cards dealt, and the game ends itself after the last hand. Everyone bids 1 to 10, then you enter tricks won after the hand. Make your bid and score 10 per trick bid plus 1 per extra trick; miss it and lose 10 per trick bid. Bid 0 to go nil and score 1 point per trick won, with no 10s either way.
- **Scoring:** tap **Add hand**, enter each player's points (use **±** for minus points), and tap a past hand to fix it. Tap **End game** to crown the winner.
- **Players:** animal avatars (tap to change). **Someone's joining** adds a player mid-game at the worst current score. **Someone's leaving** splits that player's points evenly among everyone still playing. Both can be undone.
- **Table talk:** savage, sweary roasts about the scores, with a **Clean mode** switch.
- **Hall of Fame:** all-time wins, win %, biggest hand, hot streaks and more.
- **Extras:** sound effects (mute button at the top), animations on lead changes and wins, and **Copy as spreadsheet** to paste the scores into Excel or Google Sheets.

## Where scores are saved

Opened from this repo or GitHub Pages, games are saved in that browser on that device. Live sync between phones only works in the claude.ai version of the app.
