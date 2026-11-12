# Launch kit — NexaSEC Recon

## 0. Push the hub repo first
```bash
cd nexasec-recon
gh repo create "anvarsadathk/nexasec-recon" --public --source=. --remote=origin --push \
  --description "10 focused offensive-recon tools for bug bounty & pentesting — scope-enforced, dependency-light"
gh repo edit anvarsadathk/nexasec-recon \
  --add-topic security,pentesting,bug-bounty,recon,hacking-tools,osint,infosec,python,cybersecurity,red-team
```
Then **pin** `nexasec-recon` + your 2 best tools on your profile (Profile → Customize your pins).

---

## 1. X / Twitter thread
Post as a thread. First tweet is the hook — the repo link goes on tweet 2+ (links in the first tweet suppress reach).

**Tweet 1**
> I got tired of bloated recon tools, so I built 10 small ones that each do one thing well — subdomains, takeover, JS secrets, CORS, JWT, port scan, dir brute, wayback params, DNS/AXFR, reflected XSS.
>
> 8 of 10 are zero-dependency Python. All open source. 🧵

**Tweet 2**
> Every active tool refuses to run without an explicit --yes-authorized flag. Scope enforcement isn't a README warning, it's in the code. Bug bounty hunters, this is for you.
>
> Toolkit: github.com/anvarsadathk/nexasec-recon

**Tweet 3**
> They chain. Real workflow:
> subhunter → takeover → waybackparams → reflectx
> Passive recon to reflected-param candidates in 4 commands. Pipe-friendly, no framework to learn.

**Tweet 4**
> jwtinspect will decode a token, flag alg:none / weak exp / jku injection, AND crack a weak HS256 secret from a wordlist to prove forgery. One command.

**Tweet 5**
> Clone the lot:
> bash <(curl -fsSL https://raw.githubusercontent.com/anvarsadathk/nexasec-recon/main/install.sh)
>
> MIT licensed. Built by @ NexaSEC. If it saves you time, a ⭐ helps others find it. Feedback + PRs welcome.

---

## 2. LinkedIn post
> After 18 years in offensive security, I kept rebuilding the same small recon scripts on every engagement. So I cleaned them up and open-sourced 10 of them.
>
> 𝗡𝗲𝘅𝗮𝗦𝗘𝗖 𝗥𝗲𝗰𝗼𝗻 — 10 focused tools for bug bounty & pentesting:
> • Subdomain enum + takeover detection
> • JS endpoint/secret extraction
> • CORS, JWT, reflected-XSS testing
> • Async port + content discovery
> • DNS/AXFR + Wayback harvesting
>
> Two principles I care about:
> 1. Each tool does ONE thing and pipes into the next.
> 2. Every active tool hard-aborts out of scope — scope safety is in the code, not a disclaimer.
>
> 8 of 10 need nothing but Python 3. MIT licensed.
>
> 🔗 github.com/anvarsadathk/nexasec-recon
>
> For authorized testing only. Feedback and contributions welcome.
>
> #cybersecurity #bugbounty #pentesting #infosec #redteam #opensource

---

## 3. Reddit
⚠️ Read each subreddit's self-promotion rules first. r/netsec is heavily curated and often rejects tool self-promo — try it only if you can frame genuine technical depth. Safer bets: **r/bugbounty, r/hacking, r/Kalilinux, r/AskNetsec**. Space posts out; don't blast all subs the same hour.

**Title**
> I open-sourced 10 small, single-purpose recon tools (subdomains, takeover, JS secrets, CORS, JWT, XSS reflection) — scope-enforced, mostly zero-dependency

**Body**
> I do a lot of bug bounty and pentest work and got tired of heavy frameworks for simple recon, so I wrote 10 focused CLIs that each do one job and pipe into each other.
>
> - subhunter (CT-log subdomains), takeover, dnsrecon (+AXFR), waybackparams
> - jsendpoints (endpoints + leaked secrets), portwave (async scan), dirquick
> - corscan, jwtinspect (decode + HS256 crack), reflectx (reflected params)
>
> 8 of 10 are pure standard library. Every active tool refuses to run without an explicit --yes-authorized flag so you can't fat-finger an out-of-scope target.
>
> Repo (MIT): https://github.com/anvarsadathk/nexasec-recon
>
> Honest about what they are: small, readable, hackable — not a Burp replacement. Feedback and PRs welcome, especially more takeover fingerprints and secret patterns.

---

## Timing & follow-through
- Post X + LinkedIn same day; Reddit the next day (different audience, avoids looking like a blast).
- Reply to every comment in the first 24h — engagement drives the algorithm on all three.
- A week later: post one "what I learned / most-starred tool" follow-up to re-surface it.
