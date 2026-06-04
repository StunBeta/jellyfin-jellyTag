#!/bin/bash
# Build script for JellyTag Jellyfin plugin
set -e

PLUGIN_DIR="Jellyfin.Plugin.JellyTag"
OUTPUT_DIR="output"

echo "=== Building JellyTag Plugin ==="

# Clean output directory
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# Build and publish plugin
echo "Compiling plugin..."
cd "$PLUGIN_DIR"
DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1 ~/.dotnet/dotnet restore
DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1 ~/.dotnet/dotnet publish -c Release -o publish_out

# Copy necessary DLLs
cd ..
cp "$PLUGIN_DIR/publish_out/Jellyfin.Plugin.JellyTag.dll" "$OUTPUT_DIR/"
# (add any other dependency DLLs you need here)

# -----------------------------------------------------------------
# Create **manifest.json** – the file Jellyfin actually reads
# -----------------------------------------------------------------
cat > "$OUTPUT_DIR/manifest.json" <<'EOF'
{
  "Name": "JellyTag Fork",
  "Version": "2.1.0.0",
  "UniqueId": "e2a1f3c4-5678-90ab-cdef-123456789abc",
  "Description": "Adds quality badges (4K, 1080p, etc.) to media posters and thumbnails. Fork with Canadian French support.",
  "Category": "Display",
  "TargetAbi": "10.11.0.0",
  "Owner": "StunBeta",
  "Repository": "https://github.com/StunBeta/jellyfin-jellyTag",
  "CanUninstall": true,
  "Prerelease": false
}
EOF

# Create ZIP archive for manual installation (optional)
# ---------------------------------------------------
# Uncomment the following lines if you want to produce a zip package
# echo "Creating ZIP archive..."
# cd "$OUTPUT_DIR"
# zip -r "jellytag-2.1.0.0.zip" *.dll manifest.json
# cd ..

echo "\n=== Build complete ==="
echo "Output files in: $OUTPUT_DIR/"

# Instructions for the user
echo "To install the plugin:"
echo "1. Copy the DLL(s) and manifest.json to your Jellyfin plugins folder, e.g."
echo "   mkdir -p /path/to/jellyfin/plugins/JellyTag_Fork"
echo "   cp $OUTPUT_DIR/*.dll $OUTPUT_DIR/manifest.json /path/to/jellyfin/plugins/JellyTag_Fork/"
echo "2. Restart Jellyfin"
