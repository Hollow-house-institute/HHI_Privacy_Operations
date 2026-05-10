#!/data/data/com.termux/files/usr/bin/bash
mkdir -p exports
DATE=$(date +%Y%m%d_%H%M%S)
BUNDLE="exports/hhi_privacy_ops_bundle_$DATE.zip"

bash scripts/generate_checksums.sh

zip -r "$BUNDLE" \
README.md \
PAIN_TO_ARTIFACT_MAPPING.md \
PRIVACY_OPERATIONS_OFFERS.md \
templates \
CANONICAL_CHECKSUMS.sha256

sha256sum "$BUNDLE" > "$BUNDLE.sha256"

echo "[HHI] governance bundle exported:"
echo "$BUNDLE"
