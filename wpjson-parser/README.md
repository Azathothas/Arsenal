- #### Forked: [NitescuLucian/hacks/tree/main/wpjh](https://github.com/NitescuLucian/hacks/tree/main/wpjh)
---
- #### Why? 
> Get urls from wordpress wp-json route and look if there is one which is not authentificated.
---
- #### Usage Examples
```bash
!# Pipe a WordPress target from STDIN || Use HTTPx to Check Status Code & Length
echo "https://wordpress.tatget" | wpjson-parser | httpx -status-code -content-length -silent
```
- #### Output
```mathematica
https://wordpress.tatget/wp-content/uploads/2019/04/bit_favicon.png [200] [3439]
https://wordpress.tatget/wp-json/wordfence/v1/scan/issue [404] [114]
https://wordpress.tatget/wp-json/wp/v2/media/1070 [200] [1752]
https://wordpress.tatget/wp-json/elementor/v1/globals [401] [98]
https://wordpress.tatget/wp-json/wp-site-health/v1/tests/authorization-header [401] [98]
https://wordpress.tatget/wp-json/wordfence/v1/authenticate-premium [404] [114]
https://wordpress.tatget/wp-json/wp/v2/block-patterns/categories [401] [137]
https://api.w.org/%7Brel%7D [301] [162]
https://wordpress.tatget/wp-json/wp/v2/media/5 [200] [1562]
https://wordpress.tatget/wp-json/elementor/v1/favorites [] [2718]
https://wordpress.tatget/wp-json/wordfence/v1/authenticate [200] [129]
https://wordpress.tatget/wp-json/oembed/1.0 [200] [1648]
https://wordpress.tatget/wp-json/wordfence/v1/config [401] [107]
https://wordpress.tatget/wp-json/wp/v2/block-types [401] [122]
https://wordpress.tatget/wp-json/elementor/v1/globals/colors [401] [98]
https://wordpress.tatget/wp-json/wp/v2/block-directory/search [400] [117]
https://wordpress.tatget/wp-json/wp-site-health/v1 [200] [2211]
https://wordpress.tatget/wp-json/elementor/v1/kit-elements-defaults [401] [98]
https://wordpress.tatget/wp-json/wp/v2/blocks [200] [2]
https://wordpress.tatget/wp-json/wp-site-health/v1/tests/https-status [401] [98]
https://wordpress.tatget/wp-json/ [200] [182071]
https://wordpress.tatget/wp-json/wp-block-editor/v1/url-details [400] [115]
https://wordpress.tatget/wp-json/elementor/v1/template-library/templates [401] [98]
https://wordpress.tatget/wp-json/wordfence/v1/premium-connect [404] [114]
https://wordpress.tatget/wp-json/wordfence/v1 [200] [2389]
https://wordpress.tatget/wp-json/batch/v1 [404] [114]
https://wordpress.tatget/wp-json/wp/v2 [200] [158350]
https://wordpress.tatget/wp-json/wp-block-editor/v1/export [401] [140]
https://wordpress.tatget/wp-json/wp/v2/categories [200] [60849]
https://wordpress.tatget/wp-json/oembed/1.0/embed [400] [115]
https://wordpress.tatget/wp-json/contact-form-7/v1 [200] [1443]
https://wordpress.tatget/wp-json/wp/v2/block-patterns/patterns [401] [127]
https://wordpress.tatget/wp-json/contact-form-7/v1/contact-forms [403] [105]
https://wordpress.tatget/wp-json/wp/v2/comments [200] [2]
https://wordpress.tatget/wp-json/elementor/v1/send-event [401] [98]
https://wordpress.tatget/wp-json/wp-site-health/v1/tests/dotorg-communication [401] [98]
https://wordpress.tatget/wp-json/elementor/v1/globals/typography [401] [98]
https://wordpress.tatget/wp-json/wordfence/v1/disconnect [404] [114]
https://wordpress.tatget/wp-json/wp-site-health/v1/tests/page-cache [401] [98]
https://wordpress.tatget/wp-json/oembed/1.0/proxy [400] [115]
https://wordpress.tatget/wp-json/wp-block-editor/v1 [200] [983]
https://wordpress.tatget/wp-json/wp/v2/menu-items [401] [108]
https://wordpress.tatget/wp-json/wp-site-health/v1/tests/loopback-requests [401] [98]
https://wordpress.tatget/wp-json/wordfence/v1/scan/issues [401] [107]
https://wordpress.tatget/wp-json/wp/v2/media [200] [30429]
https://wordpress.tatget/wp-json/elementor/v1 [200] [5459]
https://wordpress.tatget/wp-json/wordfence/v1/scan [404] [114]
https://wordpress.tatget/wp-json/wp-site-health/v1/tests/background-updates [401] [98]
https://wordpress.tatget/wp-json/wp-site-health/v1/directory-sizes [401] [98]
https://wordpress.tatget/wp-json/wp/v2/menu-locations [401] [112]
https://wordpress.tatget/wp-json/wp/v2/menus [401] [103]
https://wordpress.tatget [200] [104270]
https://wordpress.tatget/wp-json/wp/v2/settings [401] [98]
https://wordpress.tatget/wp-json/wp/v2/navigation [200] [2]
https://wordpress.tatget/wp-json/wp/v2/search [200] [4933]
https://wordpress.tatget/wp-json/wp/v2/pattern-directory/patterns [401] [151]
https://wordpress.tatget/wp-json/wp/v2/plugins [401] [129]
https://wordpress.tatget/wp-json/wp/v2/statuses [200] [404]
https://wordpress.tatget/wp-json/wp/v2/tags [200] [16909]
https://wordpress.tatget/wp-json/wp/v2/sidebars [401] [130]
https://wordpress.tatget/wp-json/wp/v2/template-parts [401] [138]
https://wordpress.tatget/wp-json/wp/v2/themes [401] [111]
https://wordpress.tatget/wp-json/wp/v2/templates/lookup [400] [117]
https://wordpress.tatget/wp-json/wp/v2/templates [401] [138]
https://wordpress.tatget/wp-json/wp/v2/taxonomies [200] [1211]
https://wordpress.tatget/wp-json/wp/v2/template-parts/lookup [400] [117]
https://wordpress.tatget/wp-json/wp/v2/posts [200] [335927]
https://wordpress.tatget/wp-json/wp/v2/types [200] [9709]
https://wordpress.tatget/wp-json/wp/v2/users [401] [108]
https://wordpress.tatget/wp-json/yoast/v1 [200] [8649]
https://wordpress.tatget/wp-json/wp/v2/widgets [401] [130]
https://wordpress.tatget/wp-json/wp/v2/users/me [401] [96]
https://wordpress.tatget/wp-json/yoast/v1/alerts/dismiss [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/configuration/enable_tracking [404] [114]
https://wordpress.tatget/wp-json/wp/v2/widget-types [401] [130]
https://wordpress.tatget/wp-json/yoast/v1/configuration/check_capability [400] [123]
https://developer.wordpress.org/rest-api/ [200] [102881]
https://wordpress.tatget/wp-json/yoast/v1/configuration/get_configuration_state [401] [98]
https://wordpress.tatget/wp-json/yoast/v1/configuration/save_configuration_state [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/file_size [400] [115]
https://wordpress.tatget/wp-json/yoast/v1/configuration/site_representation [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/indexing/complete [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/configuration/social_profiles [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/indexing/indexables-complete [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/get_head [400] [115]
https://wordpress.tatget/wp-json/yoast/v1/indexing/post-type-archives [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/indexing/general [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/indexing/posts [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/integrations/set_active [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/indexing/prepare [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/indexing/terms [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/link-indexing/terms [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/meta/search [401] [98]
https://wordpress.tatget/wp-json/yoast/v1/link-indexing/posts [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/semrush/country_code [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/semrush/authenticate [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/statistics [401] [98]
https://wordpress.tatget/wp-json/yoast/v1/wincher/keyphrases [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/wincher/keyphrases/track [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/semrush/related_keyphrases [400] [156]
https://wordpress.tatget/wp-json/yoast/v1/wincher/authenticate [404] [114]
https://wordpress.tatget/wp-json/yoast/v1/wincher/authorization-url [401] [98]
https://wordpress.tatget/wp-json/yoast/v1/workouts [401] [98]
https://wordpress.tatget/wp-json/yoast/v1/wincher/keyphrases/untrack [404] [114]
https://wordpress.tatget/wp-json/wp/v2/pages [200] [500626]
```
---
```bash
!# Install
!# With root
sudo curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/wpjson-parser" -o "/usr/local/bin/wpjson-parser" && sudo chmod +xwr "/usr/local/bin/wpjson-parser"
sudo eget "https://bin.ajam.dev/x86_64_Linux/wpjson-parser" --to "/usr/local/bin/wpjson-parser"

!# Without ROOT
curl -qfsSL "https://bin.ajam.dev/x86_64_Linux/wpjson-parser" -o "$HOME/bin/wpjson-parser" && chmod +xwr "$HOME/bin/wpjson-parser"
eget "https://bin.ajam.dev/x86_64_Linux/wpjson-parser" --to "$HOME/bin/wpjson-parser"

!# Using go
go install -v "github.com/Azathothas/Arsenal/wpjson-parser@main"
```
---
```bash
!# Build
  cd $(mktemp -d) && mkdir wpjson-parser && cd wpjson-parser
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wpjson-parser/main.go"
  curl -qfsSLJO "https://raw.githubusercontent.com/Azathothas/Arsenal/main/wpjson-parser/go.mod"
  CGO_ENABLED=0 go build -v -ldflags="-s -w -extldflags '-static'" -o "./wpjson-parser"
  file "./wpjson-parser" ; ldd "./wpjson-parser" ; ls -lah "./wpjson-parser"
```
---
