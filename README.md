<h1 align="center">🛰️ NexaSEC Recon</h1>

<p align="center">
  <b>10 focused, dependency-light offensive-recon tools for bug bounty & pentesting.</b><br>
  Each does one thing well, pipes into the next, and refuses to run out of scope.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/tools-10-blue">
  <img src="https://img.shields.io/badge/python-3.8%2B-blue">
  <img src="https://img.shields.io/badge/license-MIT-green">
  <img src="https://img.shields.io/badge/scope-enforced-red">
  <img src="https://img.shields.io/badge/maintained-yes-brightgreen">
</p>

---

## 🧰 The toolkit

| Tool | What it does | Phase | Deps |
|------|--------------|-------|------|
| [**subhunter**](https://github.com/anvarsadathk/subhunter) | Passive subdomain enum from Certificate Transparency logs | Recon | none |
| [**takeover**](https://github.com/anvarsadathk/takeover) | Subdomain takeover detection (15+ service fingerprints) | Recon | none |
| [**dnsrecon**](https://github.com/anvarsadathk/dnsrecon) | DNS record enum + AXFR zone-transfer check | Recon | dnspython |
| [**waybackparams**](https://github.com/anvarsadathk/waybackparams) | Harvest URLs & params from the Wayback Machine (passive) | Recon | none |
| [**jsendpoints**](https://github.com/anvarsadathk/jsendpoints) | Pull hidden endpoints & leaked secrets from JavaScript | Discovery | none |
| [**portwave**](https://github.com/anvarsadathk/portwave) | Fast async TCP port scanner + banner grab (no root) | Discovery | none |
| [**dirquick**](https://github.com/anvarsadathk/dirquick) | Async web content/directory discovery | Discovery | aiohttp |
| [**corscan**](https://github.com/anvarsadathk/corscan) | CORS misconfiguration scanner | Testing | none |
| [**jwtinspect**](https://github.com/anvarsadathk/jwtinspect) | JWT decode + weakness analysis + HS256 secret cracking | Testing | none |
| [**reflectx**](https://github.com/anvarsadathk/reflectx) | Reflected-parameter finder (XSS candidate points) | Testing | none |

> 8 of 10 run on the **Python standard library alone** — clone and go.

---

## ⚡ Install all 10

```bash
# one-liner: clone the whole toolkit into ./nexasec-recon-tools/
bash <(curl -fsSL https://raw.githubusercontent.com/anvarsadathk/nexasec-recon/main/install.sh)
```

Or manually:
```bash
for t in subhunter takeover dnsrecon waybackparams jsendpoints \
         portwave dirquick corscan jwtinspect reflectx; do
  git clone https://github.com/anvarsadathk/$t.git
done
pip install aiohttp dnspython   # for dirquick + dnsrecon
```

---

## 🔗 Example recon chain

```bash
# 1. Find subdomains (passive)
python3 subhunter/subhunter.py target.tld -o subs.txt

# 2. Check them for takeover
python3 takeover/takeover.py -l subs.txt

# 3. Pull historical URLs + params
python3 waybackparams/waybackparams.py target.tld -o urls.txt

# 4. Hunt reflected params on in-scope URLs (active — authorized only)
python3 reflectx/reflectx.py -l urls.txt --yes-authorized
```

Every **active** tool (`portwave`, `dirquick`, `corscan`, `reflectx`) hard-aborts without `--yes-authorized` — scope enforcement is built in, not optional.

---

## ⚠️ Responsible use

These tools are for **authorized security testing only** — assets you own or have explicit, written permission to assess. Unauthorized scanning, enumeration, or exploitation is illegal in most jurisdictions. You are solely responsible for staying in scope and within the law. Report what you find through the proper disclosure or bug-bounty channel.

---

## 👤 Author

Built by **Anvar Sadath K.** — Founder & Director, [NexaSEC Cyber Solution LLP](https://nexasec.in).
VAPT · OSINT · Red Team · API & Web3 Security.

If these save you time, a ⭐ on the individual repos helps more people find them.

## License
MIT — see [LICENSE](LICENSE). Use responsibly.
