Resolve a list of raw domains using dnsx (-d) | puredns (-p) | shuffledns (-s)
```bash

Usage: resdns [-i | --input {UN_RESOLVED_DOMAINS_FILE}] [-o | --output {OUTPUT_RESOLVED_FILE}]

Options:
-a, --all         {DOMAINS_FILE}  Use dnsx (Noisy) + PureDNS + ShuffleDNS
-b, --base        {/path/to/your/root/domains/file}
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
