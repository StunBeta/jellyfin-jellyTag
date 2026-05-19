# JellyTag Fork

Fork de JellyTag avec support supplémentaire pour les variants francophones canadiens.

## Installation depuis ce dépôt

1. Ouvrir Jellyfin et aller dans **Administration → Dashboard → Plugins → Repositories**
2. Cliquer sur **Ajouter** et entrer:
   - **Nom:** `JellyTag Fork`
   - **URL:** `https://raw.githubusercontent.com/StunBeta/jellyfin-jellyTag/main/manifest.json`
3. Cliquer sur **Sauvegarder**
4. Aller dans l'onglet **Catalog** et installer JellyTag Fork
5. Redémarrer Jellyfin

## Fonctionnalités ajoutées

- **VFQ (Français Québécois):** Affiche le drapeau canadien 🇨🇦 avec le badge "FR-QC"
- **VFF/VFI/VFR (Français):** Affiche le drapeau français 🇫🇷 avec le badge "FR"
- Quand les deux tracks français (standard + VFQ) sont présentes, les deux drapeaux sont affichés

## Fonctionnalités originales

- Automatic quality detection from video metadata
- Badge de résolution (4K, 1080p, 720p, SD)
- Badge HDR (DV, HDR10, HDR10+, HLG)
- Badge codec vidéo (H.264, HEVC, AV1, VP9)
- Badge audio (Atmos, TrueHD, DTS:X, etc.)
- Drapeaux de langue
- Indicateur VOST
- Configuration par panneau (poster, thumbnail, backdrop)
- Support SVG et texte
- Preview temps réel
- Cache d'images

## Configuration requise

- Jellyfin 10.11.0 ou supérieur
- .NET 9 SDK (pour construire)
