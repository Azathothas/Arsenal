
---
### About:
- #### What ? :
> Resolves a list of raw domains using [**dnsx**](https://github.com/projectdiscovery/dnsx) (-d) | [**PureDNS**](https://github.com/d3mondev/puredns) (-p) | [**ShuffleDNS**](https://github.com/projectdiscovery/shuffledns) (-s)
- #### What Not ?:
> - By Design, [**resDNS**]() is **Comprehensively Extensive** i.e., It attempts to filter as much as possible while minimizing False Positives.
> - This means, **Higher** values of `wildcard filtering` is hardcoded. (Increases Time)
> - Further, **Threads** & **Rate-Limits** are ***capped*** at **`5000 QPS`** (Slow)
> - Due to reasons & limitations listed above, [**resDNS**]() is NOT Suitable to resolve large ( **`> 100,000`** ) Lists
- #### Why ? :
> - [**dnsx**](https://github.com/projectdiscovery/dnsx) is **`too noisy`** (The Results are Unusable even with wildcard threshold > 100)
> - [**PureDNS**](https://github.com/d3mondev/puredns) is **`lacking in features`** (Can't Specify Individual Domains as Wildcard Filters in **`resolve`** mode)
> - [**ShuffleDNS**](https://github.com/projectdiscovery/shuffledns) [**`doesn't accept multi-domains**](https://github.com/projectdiscovery/shuffledns/issues/159)  
> - [**resDNS**]() is an attempt to simply combine the [***best of all three***](https://github.com/Azathothas/Arsenal/blob/main/resdns/resdns.sh)
---
### **Installation**:
 - **Bash**: 
```bash
!# With root
sudo curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/resdns/resdns.sh" -o "/usr/local/bin/resdns" && sudo chmod +xwr "/usr/local/bin/resdns"
sudo eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/resdns/resdns.sh" --to "/usr/local/bin/resdns"
!# With no root
curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/resdns/resdns.sh" -o "$HOME/bin/resdns" && chmod +xwr "$HOME/bin/resdns"
eget "https://raw.githubusercontent.com/Azathothas/Arsenal/main/resdns/resdns.sh" --to "$HOME/bin/resdns"
!# With no Installaton [Not Recommended]
bash <(curl -qfsSL "https://raw.githubusercontent.com/Azathothas/Arsenal/main/resdns/resdns.sh") {OPTIONS_HERE}
```
---
### Usage:
```bash

Usage: resdns [-i | --input {UN_RESOLVED_DOMAINS_FILE}] [-o | --output {OUTPUT_RESOLVED_FILE}]

Options:
-a, --all         {DOMAINS_FILE}  Use dnsx (Noisy) + PureDNS + ShuffleDNS
-b, --base        {/path/to/your/root/domains/file} # Use https://github.com/Azathothas/Arsenal/tree/main/subxtract (Option -s) to get Roots
-e, --extensive   Runs PureDNS + ShuffleDNS Multiple (2x) Times
-i, --input       {/path/to/your/unresolved/domains/file}
-o, --output      {/path/to/output/file/after/resolving}
-d, --dnsx        {DOMAINS_FILE}  Use dnsX to Resolve (Fast But Very Noisy)
-p, --puredns     {DOMAINS_FILE}  Use PureDNS to Resolve (All Domains at Once)
-r, --rate        Rate Limit (DNS Requests (Queries)/Second) [Default: 5000]
-s, --shuffledns  {DOMAINS_FILE}  Use ShuffleDNS to Resolve (Per Domain | Recommended)
-w, --wildcard    Wildcard Limit (How many checks to perform) [Default: 100]
-h, --help        Show this Help Message
```
