#!/usr/bin/env bash
# NexaSEC Recon — clone the full toolkit.
# Usage: bash install.sh [target_dir]
set -euo pipefail

DIR="${1:-nexasec-recon-tools}"
USER="anvarsadathk"
TOOLS=(subhunter takeover dnsrecon waybackparams jsendpoints
       portwave dirquick corscan jwtinspect reflectx)

echo "[*] Cloning ${#TOOLS[@]} tools into ./$DIR/"
mkdir -p "$DIR" && cd "$DIR"

for t in "${TOOLS[@]}"; do
  if [ -d "$t/.git" ]; then
    echo "[=] $t already present — pulling"
    ( cd "$t" && git pull --quiet )
  else
    echo "[+] cloning $t"
    git clone --quiet "https://github.com/$USER/$t.git"
  fi
done

echo
echo "[*] Installing optional deps (dirquick, dnsrecon) ..."
pip install --quiet aiohttp dnspython 2>/dev/null || \
  echo "[!] pip install skipped — run: pip install aiohttp dnspython"

echo
echo "[+] Done. ${#TOOLS[@]} tools in ./$DIR/"
echo "    Try: python3 $DIR/subhunter/subhunter.py example.com"
