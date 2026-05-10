#!/data/data/com.termux/files/usr/bin/bash
find . -type f \
! -path "./.git/*" \
! -name "*.sha256" \
-exec sha256sum {} \; | sort > CANONICAL_CHECKSUMS.sha256
echo "[HHI] checksum manifest updated"
