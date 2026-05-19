# JellyTag Fork

Fork of JellyTag with additional support for Canadian French (VFQ) audio track variant detection.

## Installation from this repository

1. Open Jellyfin and go to **Administration → Dashboard → Plugins → Repositories**
2. Click **Add** and enter:
   - **Name:** `JellyTag Fork`
   - **URL:** `https://raw.githubusercontent.com/StunBeta/jellyfin-jellyTag/main/manifest.json`
3. Click **Save**
4. Go to **Catalog** tab and install JellyTag Fork
5. Restart Jellyfin

## Features Added

- **VFQ (Canadian French):** Shows Canadian flag 🇨🇦 with badge "FR-QC"
- **VFF/VFI/VFR (French):** Shows French flag 🇫🇷 with badge "FR"
- When both French tracks (standard + VFQ) are present, both flags are displayed

## Original Features

- Automatic quality detection from video metadata
- Resolution badges (4K, 1080p, 720p, SD)
- HDR badges (DV, HDR10, HDR10+, HLG)
- Video codec badges (H.264, HEVC, AV1, VP9)
- Audio badges (Atmos, TrueHD, DTS:X, etc.)
- Language flags
- VOST indicator
- Per-panel configuration (poster, thumbnail, backdrop)
- SVG and text badge styles
- Real-time preview
- Image caching

## Requirements

- Jellyfin 10.11.0 or higher
- .NET 9 SDK (for building)

## License

MIT License
