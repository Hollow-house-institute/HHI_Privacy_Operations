#!/data/data/com.termux/files/usr/bin/bash
find exports -type f -mtime +30 -delete
find runtime/logs -type f -mtime +14 -delete
find runtime/events -type f -mtime +30 -delete
echo "[HHI] retention pruning complete"
