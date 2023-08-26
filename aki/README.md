---
### Verification:
- [**ASNLookup**](https://rapidapi.com/yaaboukir/api/asn-lookup) 
> 
```bash
curl -qsk "https://asn-lookup.p.rapidapi.com/api?asn=AS13414" -H "Host: asn-lookup.p.rapidapi.com" -H "X-Rapidapi-Host: asn-lookup.p.rapidapi.com" -H "X-Rapidapi-Key: $api_key" -H "Accept":"application/json"
```
- [**AlienVault**](https://otx.alienvault.com/api) 
> 
```bash
curl -qsk "https://otx.alienvault.com/api/v1/user/me" -H "X-OTX-API-KEY: $api_key" -H "Accept":"application/json"   
```
- [**BeVigil**](https://bevigil.com/osint-api/subdomains)  
```bash
curl -qsk "https://osint.bevigil.com/api/example.com/subdomains/" -H "X-Access-Token: $api_key" -H "Accept":"application/json"   
```  
- [**BigDataCloud**](https://www.bigdatacloud.com/docs/api/asn-short-info-api) 
```bash
curl -qsk "https://api-bdc.net/data/asn-info?asn=AS17501&localityLanguage=en&key=$api_key" -H "Accept":"application/json"   
```
- [**BinaryEdge**](https://docs.binaryedge.io/api-v2/) 
```bash
curl -qsk "https://api.binaryedge.io/v2/user/subscription" -H "X-Key: $api_key" -H "Accept":"application/json"   
```  
- [**BuiltWith**](https://api.builtwith.com/domain-api) 
```bash
curl -qsk "https://api.builtwith.com/usagev2/api.json&KEY=$api_key" -H "Accept":"application/json"   
```
- [**Censys**](https://search.censys.io/api) 
```bash
curl -qsk "https://search.censys.io/api/v1/account" -u "$apikey:$secret" -H "accept: application/json"
```
- [**CertCentral**](https://dev.digicert.com/en/certcentral-apis/services-api/users/user-info.html)
```bash
curl -qsk "https://www.digicert.com/services/v2/user" -H "Content-Type: application/json" -H "X-DC-DEVKEY: $api_key"
```
- [**CertSpotter**](https://sslmate.com/help/reference/ct_search_api_v1)
```bash
curl -qsk "https://api.certspotter.com/v1/issuances?domain=example.com" -H "Authorization: Bearer $api_key"
```
- [**Chaos**](https://chaos.projectdiscovery.io/#/docs)
```bash
curl -qsk "https://dns.projectdiscovery.io/dns/example.com/subdomains" -H "Authorization: $api_key" -H "Accept: application/json"
```
- [**Cloudflare**](https://developers.cloudflare.com/api/operations/accounts-list-accounts)
```bash
curl -qsk "https://api.cloudflare.com/client/v4/accounts" -H "Authorization: Bearer $api_key" -H "Content-Type: application/json" -H "Accept: application/json"
```
> - Create API Token >> Templates >> **`Read All Resources`**
> - This Should be a **`BEARER Token`** **NOT** API Key
- [**Facebook**](https://developers.facebook.com/docs/facebook-login/guides/access-tokens#apptokens)
```bash
curl -qsk "https://graph.facebook.com/oauth/access_token?client_id=$apikey&client_secret=$secret&redirect_uri=&grant_type=client_credentials"
```
- [**Fofa**](https://en.fofa.info/api/info)
```bash
curl -qsk "https://fofa.info/api/v1/info/my?email=your_email_in_lowercase&key=your_api_key" 
```
- [**FullHunt**](https://api-docs.fullhunt.io/#authentication)
```bash
curl -qsk "https://fullhunt.io/api/v1/auth/status" -H "X-API-KEY: $api_key" -H "Accept: application/json"
```
- [**GitHub**](https://docs.github.com/en/rest)
```bash
curl -qsk "https://api.github.com/user" -H "Authorization: Bearer $api_key" -H "Accept: application/vnd.github+json"
```
- [**GitLab**](https://docs.gitlab.com/ee/api/users.html)
```bash
curl -qsk "https://gitlab.com/api/v4/user" -H "PRIVATE-TOKEN: $api_key" -H "Accept: application/json"
```
- [**Google Custom Search API**](https://developers.google.com/custom-search/v1/overview#search_engine_id)
```bash
curl -qsk "https://customsearch.googleapis.com/customsearch/v1?q=test&cx=$search_engine_id&key=$google_api_key" -H "Accept: application/json"
```
> - Create API_KEY --> https://developers.google.com/custom-search/v1/overview#api_key
> - Create a new search engine --> https://programmablesearchengine.google.com/controlpanel/create
> - Enable: `Search the entire web`
- [**Hunter**](https://hunter.io/api-documentation/v2#account)
```bash
curl -qsk "https://api.hunter.io/v2/account?api_key=$api_key" -H "Accept: application/json"
```
- [**IntelX**](https://intelx.io/account?tab=developer)
```bash
curl -qsk "https://2.intelx.io/authenticate/info" -H "x-key:$api_key" -H "Accept: application/json" 
```
- [**IPdata**](https://docs.ipdata.co/docs/getting-started)
```bash
curl -qsk "https://api.ipdata.co/?api-key=$api_key" -H "Accept: application/json"
```
- [**IPinfo**](https://ipinfo.io/developers)
```bash
curl -qsk "https://ipinfo.io/me?token=$api_key" -H "Accept: application/json"
```
- [**Ipstack**](https://ipstack.com/documentation)
```bash
curl -qsk "http://api.ipstack.com/check?access_key=$api_access_key"
```
- [**LeakIX**](https://docs.leakix.net/docs/api/authentication/)
```bash
curl -qsk "https://leakix.net/domain/example.com" -H "api-key: $api_key" -H "Accept: application/json"
```
- [**Netlas**](https://netlas-api.readthedocs.io/en/latest/)
```bash
curl -qsk "https://app.netlas.io/api/users/current/" -H "X-Api-Key: $api_key" -H "Accept: application/json"
```
- [**NetworksDB**](https://networksdb.io/api/docs)
```bash
curl -qsk "https://networksdb.io/api/key" -H "X-Api-Key: $api_key" -H "Accept: application/json"
```
- [**PassiveTotal**](https://api.riskiq.net/api/pt_started.html)
```bash
curl -qsk "https://api.riskiq.net/pt/v2/account/quota" -H "Authorization: Basic $api_key" -H "Accept: application/json"
```
- [**Pastebin**](https://psbdmp.cc/api)
```bash
curl -qsk "https://psbdmp.ws/api/v3/dump/KF7hDTp1?key=$api_key"
```
- [**PublicWWW**](https://publicwww.com/profile/api)
```bash
curl -qsk "https://publicwww.com/profile/api_status.xml?key=$api_key"
```
- [**Quake**](https://quake.360.net/quake/#/help?id=5e77423bcb9954d2f8a01656&title=%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E)
```bash
curl -qsk "https://quake.360.net/api/v3/user/info" -H "X-QuakeToken: $api_key" -H "Accept: application/json"
```
- [**RoboTex**](https://www.robtex.com/api/)
```bash
curl -qsk "https://freeapi.robtex.com/ipquery/1.1.1.1?key=$api_key" -H "Accept: application/json"
```
> In case timeouts:
> ```bash
> curl -qsk "https://proapi.robtex.com/ipquery/199.19.54.12?key=$api_key" -H "Accept: application/json"
> ```
- [**Shodan**](https://developer.shodan.io/api)
```bash
curl -qsk "https://api.shodan.io/account/profile?key=$api_key" -H "Accept: application/json"
```
> This has no rate limits: 
>  ```bash
>  curl -qsk "https://api.shodan.io/api-info?key=$api_key" -H "Accept: application/json"
>  ```
- [**SecurityTrails**](https://docs.securitytrails.com/reference/ping)
```bash
curl -qsk "https://api.securitytrails.com/v1/account/usage" -H "APIKEY:$api_key"
```
- [**Spamhaus**](https://docs.spamhaus.com/extended-data/docs/source/02-availability/current/110-API.html)
```bash
curl -qsk "https://api.spamhaus.org/api/v1/login" -d '{"username":"$email_in_lowercase", "password":"$password", "realm":"intel"}' -H "Content-Type: application/json" -H "Accept: application/json"
```
- [**URLScan**](https://urlscan.io/docs/api/)
```bash
curl -qsk "https://urlscan.io/user/quotas/" -H "API-Key: $api_key" -H "Content-Type: application/json"
```
- [**Twitter**](https://developer.twitter.com/en/docs/authentication/oauth-2-0/bearer-tokens)
```bash
curl -u "$apikey:$secret" "https://api.twitter.com/oauth2/token" --data "grant_type=client_credentials" -H "Accept: application/json"
```
- [**VirusTotal**](https://developers.virustotal.com/reference/overview)
```bash
curl -qsk "https://www.virustotal.com/api/v3/ip_addresses/1.1.1.1" -H "x-apikey: $api_key" -H "Content-Type: application/json"
```
- [**WhoisXML**](https://whois.whoisxmlapi.com/documentation/balance-information)
```bash
curl -qsk "https://user.whoisxmlapi.com/user-service/account-balance?apiKey=$api_key" -H "Accept: application/json"
```
- [**WPScan**](https://wpscan.com/docs/api/v3)
```bash
curl -qsk "https://wpscan.com/api/v3/status" -H "Authorization: Token token=$WPSCAN_API_TOKEN" -H "Accept: application/json"
```
> You can use **`jq`** to directly convert the unix time
> ```bash
> curl -qsk "https://wpscan.com/api/v3/status" -H "Authorization: Token token=$WPSCAN_API_TOKEN" -H "Accept: application/json" | jq '. + { requests_reset: ( .requests_reset + (5*3600+45*60) ) | strftime("%Y-%m-%d||Time:%H:%M:%S") }'
> ```
- [**Yandex**](https://yandex.com/dev/xml/doc/dg/concepts/get-request.html)
```bash
curl -qsk "https://yandex.com/search/xml?user=$email_lowercase&key=$apikey&query=example"
```
> You might need to change permitted IP addresses : https://xml.yandex.com/settings/
- [**ZoomEye**](https://www.zoomeye.org/doc#authenticate)
```bash
curl -qsk "https://api.zoomeye.org/user/login" -H "Content-Type: application/json" -d '{"username":"$email_lowercased","password":"$password"}' -H "Accept: application/json"
```
- [**ZoomEyeAPI**](https://www.zoomeye.org/doc#authenticate)
```bash
curl -qsk "https://api.zoomeye.org/resources-info" -H "API-KEY:$api_key" -H "Accept: application/json"
```
