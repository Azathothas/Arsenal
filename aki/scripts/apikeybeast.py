import argparse
import csv
import requests
import os
import sys

from rich.console import Console
from rich.table import Table
from rich.live import Live

console = Console()


def print_banner():
    print("""
 █████╗ ██████╗ ██╗██╗  ██╗███████╗██╗   ██╗██████╗ ███████╗ █████╗ ███████╗████████╗
██╔══██╗██╔══██╗██║██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔════╝╚══██╔══╝
███████║██████╔╝██║█████╔╝ █████╗   ╚████╔╝ ██████╔╝█████╗  ███████║███████╗   ██║   
██╔══██║██╔═══╝ ██║██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██║╚════██║   ██║   
██║  ██║██║     ██║██║  ██╗███████╗   ██║   ██████╔╝███████╗██║  ██║███████║   ██║   
╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   
    """)
    print("\033[1mCoded by ValluvarSploit\033[0m\n")


proxy = {'http':'http://127.0.0.1:8080', 'https':'http://127.0.0.1:8080'}

def get_arguments():
    parser = argparse.ArgumentParser(description=f'Usage:\n\nGet credits of a servcie:\n\tpython apikeybeast.py -s shodan\nGet credits of all services:\n\tpython apikeybeast.py -s all',
                                 formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('-l', '--list', dest="list", action="store_true", help='List supported APIs')
    parser.add_argument('-s', '--service', dest="service", help='Display credit details of single API')
    
    args = parser.parse_args()

    if args.service is None and args.list is False:
        print_banner()
        parser.print_help()
        sys.exit()
    
    return args
    

# def get_services():
#     with open("services.csv", "r") as services:
#         reader = csv.reader(services)
#         header = next(reader)
#         rows = [row for row in reader]
#         return header, rows


# def print_supported_services(header, rows):
#     list_api_table = Table(title="Supported APIs List", show_lines=True)
#     list_api_table.add_column(header[0], no_wrap=True)
#     list_api_table.add_column(header[1], no_wrap=True)

#     for row in rows:
#         list_api_table.add_row(row[0], row[1])

#     console.print(list_api_table)


def create_table_skeleton():
    table = Table(title="API Key Credits Detail", caption="*cpm-credits per month and cpd-credits per day", caption_justify="left" ,show_lines=True)
    table.add_column("API", style="cyan", no_wrap=True)
    table.add_column("PRODUCT", no_wrap=True)
    table.add_column("TIER", no_wrap=True)
    table.add_column("C. USED", no_wrap=True)
    table.add_column("C. LEFT", style="green", no_wrap=True)
    table.add_column("C. TOTAL", no_wrap=True)
    table.add_column("RESETS ON", no_wrap=True)
    table.add_column("USERNAME", style="grey53")
    return table

def get_binary_edge_credits(table):
    api_name = "Binary Edge"
    userName = os.environ.get("BINARY_EDGE_USERNAME")
    apiKey = os.environ.get("BINARY_EDGE_API_KEY")
    # curl -qsk "https://api.binaryedge.io/v2/user/subscription" -H "X-Key: $api_key" -H "Accept":"application/json"   
    try:
        response = requests.get("https://api.binaryedge.io/v2/user/subscription", headers={"X-Key":apiKey,"Accept":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()
            tier = response_json['subscription']['name']
            credits_left = response_json['requests_left']
            credits_total = response_json['requests_plan']
            credits_used = credits_total - credits_left
            credits_reset_date = response_json['end_date']
            product = ""

            table.add_row(
                api_name, product, tier, str(credits_used), str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_builtwith_credits(table):
    api_name = "BuiltWith"
    userName = os.environ.get("BUILT_WITH_USERNAME")
    apiKey = os.environ.get("BUILT_WITH_API_KEY")
    # curl -qsk "https://api.builtwith.com/usagev2/api.json&KEY=$api_key" -H "Accept":"application/json"   
    try:
        response = requests.get("https://api.builtwith.com/usagev2/api.json", params={"KEY":apiKey}, headers={"Accept":"application/json"})
        response_json = response.json()

        if response.status_code == 200 and "purchased" in response_json:
            tier = "Free"
            credits_total = response_json['purchased']
            credits_used = response_json['used']
            credits_left = response_json['remaining']
            credits_reset_date = "NA"
            product = ""

            table.add_row(
                api_name, product, tier, str(credits_used), str(credits_left), f"{credits_total} cpm", str(credits_reset_date), userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_censys_credits(table):
    api_name = "Censys"
    userName = os.environ.get("CENSYS_USERNAME")
    apiKey = os.environ.get("CENSYS_AUTH")
    # curl -s https://search.censys.io/api/v1/account -H "Authorization: Basic apiKey"
    try:
        response = requests.get("https://search.censys.io/api/v1/account", headers={"Authorization": "Basic " + apiKey,"Accept":"application/json"})
        if response.status_code == 200:
            response_json = response.json()
            tier = "Free"
            credits_total = response_json['quota']['allowance']
            credits_used = response_json['quota']['used']
            credits_left = credits_total - credits_used
            credits_reset_date = response_json['quota']['resets_at']
            product = ""

            table.add_row(
                api_name, product,tier, str(credits_used),str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_fullHunt_credits(table):
    api_name = "FullHunt"
    userName = os.environ.get("FullHunt_USERNAME")
    apiKey = os.environ.get("FullHunt_API_KEY")
    # curl -qsk "https://fullhunt.io/api/v1/auth/status" -H "X-API-KEY: $api_key" -H "Accept: application/json"
    try:
        response = requests.get("https://fullhunt.io/api/v1/auth/status", headers={"X-API-KEY":apiKey,"Accept":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()
            tier = response_json['user']['plan']
            credits_total = response_json['user_credits']['total_credits_per_month']
            credits_used = response_json['user_credits']['credits_usage']
            credits_left = response_json['user_credits']['remaining_credits']
            product = ""

            table.add_row(
                api_name, product,tier, str(credits_used),str(credits_left), f"{credits_total} cpm", "NA", userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_hunter_credits(table):
    api_name = "Hunter.IO"
    userName= os.environ.get("HUNTER_USER")
    apiKey = os.environ.get("HUNTER_API_KEY")
    # curl -qsk "https://api.hunter.io/v2/account?api_key=$api_key" -H "Accept: application/json"
    try:
        response = requests.get("https://api.hunter.io/v2/account", params={"api_key":apiKey},headers={"Accept":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()
            userName = response_json['data']['email']
            tier = response_json['data']['plan_name']
            credits_total = response_json['data']['requests']['searches']['available']
            credits_used = response_json['data']['requests']['searches']['used']
            credits_left = credits_total - credits_used
            credits_reset_date = response_json['data']['reset_date']
            product = "Requests"

            table.add_row(
                api_name, product,tier, str(credits_used),str(credits_left), f"{credits_total} cpm", str(credits_reset_date), userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_intelx_credits(table):
    api_name = "IntelX"
    userName = os.environ.get('INTELX_USERNAME')
    apiKey = os.environ.get('INTELX_API_KEY')
    # curl https://2.intelx.io/authenticate/info -H "x-key: API_KEY" -H "User-Agent: IX-Python/0.5" -H "Accept: application/json"
    try:
        response = requests.get("https://2.intelx.io/authenticate/info", headers={"x-key":apiKey,"User-Agent":"IX-Python/0.5", "Accept":"application/json"})
       
        if response.status_code == 200:
            response_json = response.json()
            product_paths = response_json['paths']
            tier = "Academic"
            local_product_path = ['/file/preview','/file/read','/file/view','/intelligent/search','/intelligent/search/export','/phonebook/search']

            for key, value in product_paths.items():
                if key in local_product_path:
                    if value['Path'] == "/file/preview":
                        product = "File Preview"
                    elif value['Path'] == "/file/read":
                        product = "File Read"
                    elif value['Path'] == "/file/view":
                        product = "File View"
                    elif value['Path'] == "/intelligent/search":
                        product = "Search"
                    elif value['Path'] == "/intelligent/search/export":
                        product = "Search Export"
                    elif value['Path'] == "/phonebook/search":
                        product = "Phonebook Search"
                        
                    credits_total = value['CreditMax']
                    credits_left = value['CreditMax']
                    credits_used = credits_total - credits_left
                    credits_reset_date = "Monthly"
                    
                    table.add_row(
                        api_name, product, tier, str(credits_used), str(credits_left), f"{credits_total} cpm", str(credits_reset_date), userName
                        )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_ipinfo_credits(table):
    api_name = "IPinfo"
    userName = os.environ.get("IPINFO_USERNAME")
    apiKey = os.environ.get("IPINFO_API_KEY")
    # curl -qsk "https://ipinfo.io/me?token=$api_key" -H "Accept: application/json"
    try:
        response = requests.get("https://ipinfo.io/me", params={"token":apiKey}, headers={"Accept":"application/json"})
        response_json = response.json()

        if response.status_code == 200 and "token" in response_json:
            tier = "Free"
            credits_total = response_json['requests']['limit']
            credits_used = response_json['requests']['month']
            credits_left = response_json['requests']['remaining']
            credits_reset_date = "Monthly"
            product = ""

            table.add_row(
                api_name, product, tier, str(credits_used),str(credits_left), f"{credits_total} cpm",str(credits_reset_date), userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

#def get_ipinfo_credits(table):
#    api_name = "IPinfo"
#    userName = os.environ.get("IPINFO_USERNAME")
#    apiKey = os.environ.get("IPINFO_API_KEY")
#    try:
#        response = requests.get("https://ipinfo.io/me", params={"token":apiKey}, headers={"Accept":"application/json"})
#        response_json = response.json()
#
#        if response.status_code == 200 and "token" in response_json:
#            tier = "Free"
#            credits_total = response_json['requests']['limit']
#            credits_used = response_json['requests']['month']
#            credits_left = response_json['requests']['remaining']
#            credits_reset_date = "Monthly"
#            product = ""
#
#            table.add_row(
#                api_name, product, tier, str(credits_used),str(credits_left), f"{credits_total} cpm",str(credits_reset_date), userName
#                )
#        else:
#            print(f"[-] An error occurred while authenticating {api_name}!")
#    except Exception as e:
#        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_newtworkdb_credits(table):
    api_name = "Networks DB"
    userName = os.environ.get("NETWORKS_DB_USERNAME")
    apiKey = os.environ.get("NETWORKS_DB_API_KEY")
    # curl -qsk "https://networksdb.io/api/key" -H "X-Api-Key: $api_key" -H "Accept: application/json"
    try:
        response = requests.get("https://networksdb.io/api/key", headers={"X-Api-Key":apiKey,"Accept":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()
            tier = response_json['type']
            credits_total = response_json['req_limit']
            credits_used = response_json['req_count']
            credits_left = response_json['req_left']
            credits_reset_date = response_json['resets_at']
            product = ""

            table.add_row(
                api_name, product, tier.title(), str(credits_used), str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_onyphe_credits(table):
    api_name = "Onyphe"
    userName = os.environ.get("ONYPHE_USERNAME")
    apiKey = os.environ.get("ONYPHE_API_KEY")

    try:
        response = requests.get("https://www.onyphe.io/api/v2/user", headers={"Authorization":f"apikey {apiKey}","Content-Type":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()
            tier = "Free"
            credits_total = 250
            credits_left = response_json['results'][0]['credits']
            credits_used = credits_total - credits_left
            credits_reset_date = "NA"
            product = ""

            table.add_row(
                api_name, product, tier, str(credits_used), str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_passive_total_credits(table):
    api_name = "Passive Total"
    userName = os.environ.get("PASSIVE_TOTAL_USERNAME")
    apiKey = os.environ.get("PASSIVE_TOTAL_API_KEY")
    # curl -qsk https://api.passivetotal.org/v2/account/quota -H "Authorization: Basic"
    try:
        response = requests.get("https://api.passivetotal.org/v2/account/quota", headers={"Authorization": "Bearer " + apiKey,"Accept":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()
            tier = "Free"
            credits_used = response_json['user']['counts']['search_api']
            credits_total = response_json['user']['limits']['search_api']
            credits_left = credits_total - credits_used
            credits_reset_date = response_json['user']['next_reset']
            product = ""

            table.add_row(
                api_name, product,tier, str(credits_used), str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_security_trails_credits(table):
    api_name = "Security Trails"
    userName = os.environ.get("SECURITY_TRAILS_USERNAME")
    apiKey = os.environ.get("SECURITY_TRAILS_API_KEY")
    # curl -qsk "https://api.securitytrails.com/v1/account/usage" -H "APIKEY:$api_key"
    try:
        response = requests.get("https://api.securitytrails.com/v1/account/usage", headers={"APIKEY":apiKey, "Accept":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()
            tier = "Free"
            credits_total = response_json['allowed_monthly_usage']
            credits_used = response_json['current_monthly_usage']
            credits_left = credits_total - credits_used
            credits_reset_date = "Monthly"
            product = ""

            table.add_row(
                api_name, product,tier, str(credits_used), str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_shodan_credits(table):
    api_name = "Shodan"
    userName = os.environ.get("SHODAN_USERNAME")
    apiKey = os.environ.get("SHODAN_API_KEY")
    # curl -qsk "https://api.shodan.io/api-info?key=$api_key" -H "Accept: application/json"
    try:
        response = requests.get("https://api.shodan.io/api-info?key="+apiKey, headers={"Accept":"application/json"})
        
        if response.status_code == 200:
            response_json = response.json()

            tier = "Academic"
            query_credits_total = response_json['usage_limits']['query_credits']
            query_credits_left = response_json['query_credits']
            query_credits_used = query_credits_total - query_credits_left
            reset_on = "Monthly"
            product = "Query"

            table.add_row(
                api_name, product,tier, str(query_credits_used), str(query_credits_left), f"{query_credits_total} cpm", reset_on, userName
                )


            scan_credits_total = response_json['usage_limits']['scan_credits']
            scan_credits_left = response_json['scan_credits']
            scan_credits_used = scan_credits_total - scan_credits_left
            product = "Scan"

            table.add_row(
                api_name, product,tier, str(scan_credits_used), str(scan_credits_left), f"{scan_credits_total} cpm", reset_on, userName
                )

            monitor_credits_total = response_json['usage_limits']['monitored_ips']
            monitor_credits_used = response_json['monitored_ips']
            monitor_credits_left = monitor_credits_total - monitor_credits_used
            product = "Monitor"

            table.add_row(
                api_name, product, tier, str(monitor_credits_used),str(monitor_credits_left), f"{monitor_credits_total} cpm", reset_on, userName
                )
        else:
            print(f"[-] An error occurred while authenticating {api_name}!")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} {product} credits: {e}")

# def get_spamhaus_credits(table):
#     api_name = "Spamhaus"
#     userName = os.environ.get("SPAMHAUS_USERNAME")
#     password = os.environ.get("SPAMHAUS_PASSSWORD")

#     try:
#         login = requests.post(
#             "https://api-pdns.spamhaustech.com/v2/login?pretty", 
#             json={"username":userName,"password":password}, 
#             headers={"Content-Type":"application/json"},proxies=proxy,verify=False
#         )
#         if login.status_code == 200:
#             login_json = login.json()
#             jwt_access_token = login_json["token"]
#         else:
#             print(f"[-] An error occurred while login {api_name}")    
#     except Exception as e:
#         print(f"[-] An error occurred while fetching {api_name} credits: {e}")
    
#     try:
#         response = requests.get(
#             "https://api-pdns.spamhaustech.com/v2/limits", 
#             headers={"Authorization":f"Bearer {jwt_access_token}","Accept":"application/json"}
#         )
#         response_json = response.json()

#         plan = "Free"
#         credits_month_total = response_json['limits']['qpm']
#         credits_month_used = response_json['current']['qpm']
#         credits_month_left = credits_month_total - credits_month_used

#         credits_day_total = response_json['limits']['qpd']
#         credits_day_used = response_json['current']['qpd']
#         credits_day_left = credits_day_total - credits_day_used
#         credits_reset_date = "Undefined"
#         product = ""

#         table.add_row(
#             api_name, 
#             product, 
#             plan, 
#             f"{credits_month_left}\n{credits_day_left}", 
#             f"{credits_month_total} cpm\n{credits_day_total} cpd", 
#             f"{credits_month_used}\n{credits_day_used}", 
#             credits_reset_date,
#             userName
#         )
#     except Exception as e:
#         print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_urlscan_credits(table):
    api_name = "URLScan.io"
    userName = os.environ.get("URLSCANIO_USERNAME")
    apiKey = os.environ.get("URLSCANIO_API_KEY")
    # curl -qsk "https://urlscan.io/user/quotas/" -H "API-Key: $api_key" -H "Content-Type: application/json"
    try:
        response = requests.get("https://urlscan.io/user/quotas", headers={"API-Key":apiKey, "Content-Type":"application/json"})
        response_json = response.json()

        if not response_json['source'] == 'ip-address':
            tier = "Free"
            credits_total = response_json['limits']['search']['day']['limit']
            credits_used = response_json['limits']['search']['day']['used']
            credits_left = response_json['limits']['search']['day']['remaining']
            credits_reset_date = "Day"
            product = "Search"

            table.add_row(
                api_name, product, tier, str(credits_used), str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
                )
        else:
            print(f"[-] An error occurred while login {api_name}")
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_whoisxmlapi_credits(table):
    api_name = "Whois XML API"
    userName = os.environ.get("WHOIS_XML_API_USERNAME")
    apiKey = os.environ.get("WHOIS_XML_API_KEY")
    # curl -qsk "https://user.whoisxmlapi.com/user-service/account-balance?apiKey=$api_key" -H "Accept: application/json"
    try:
        response = requests.get(
            "https://user.whoisxmlapi.com/service/account-balance?apiKey="+apiKey, headers={"Accept":"application/json"})
        response_json = response.json()

        for item in response_json['data']:
            product = item['product']['name']
            if product == "Domain Research Suite":
                tier = "Free"
                credits_total = 500
                credits_left = item['credits']
                credits_used = credits_total - credits_left
                table.add_row(
                    api_name, product, tier, str(credits_used), str(credits_left),str(credits_total), "NA", userName
                    )
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def get_zoomeye_credits(table):
    api_name = "ZoomEye"
    userName = os.environ.get("ZOOMEYE_USERNAME")
    password = os.environ.get("ZOOMEYE_PASSWORD")
    # curl -qsk "https://api.zoomeye.org/user/login" -H "Content-Type: application/json" -d '{"username":"$email_lowercased","password":"$password"}' -H "Accept: application/json"
    try:
        login = requests.post("https://api.zoomeye.org/user/login", json={"username":userName,"password":password}, headers={"Accept":"application/json"})
       
        if login.status_code == 200:
            login_json = login.json()
            jwt_access_token = login_json['access_token']
        else:
            print(f"[-] An error occured while login to {api_name}")
    except Exception as e:
        print(f"[-] An error occured while login to Zoomeye: {e}")

    try:
        response = requests.get("https://api.zoomeye.org/resources-info", headers={"Authorization":f"JWT {jwt_access_token}","Accept":"application/json"})
        response_json = response.json()

        tier = response_json['plan']
        credits_total = response_json['quota_info']['remain_total_quota']
        credits_left = response_json['quota_info']['remain_free_quota']
        credits_used = credits_total - credits_left
        credits_reset_date = "Monthly"
        product = ""

        table.add_row(
            api_name, product,tier.title(), str(credits_used), str(credits_left), f"{credits_total} cpm", credits_reset_date, userName
            )
    except Exception as e:
        print(f"[-] An error occurred while fetching {api_name} credits: {e}")

def main():
    services = ['binaryedge','builtwith','censys','fullhunt','hunterio','intelx','ipinfo','networkdb','onyphe','passivetotal','securitytrails','shodan','urlscan','whoisxmlapi','zoomeye','all']
    ARGS = get_arguments()


    if ARGS.list:
        [print(service) for service in services]
        sys.exit()

    if ARGS.service in [ service for service in services]:
        table = create_table_skeleton()
        with Live(table, console=console, screen=False, refresh_per_second=20):            
            if ARGS.service == 'binaryedge':
                get_binary_edge_credits(table)
            elif ARGS.service == 'builtwith':
                get_builtwith_credits(table)
            elif ARGS.service == 'censys':
                get_censys_credits(table)
            elif ARGS.service == 'fullhunt':
                get_fullHunt_credits(table)
            elif ARGS.service == 'hunterio':
                get_hunter_credits(table)
            elif ARGS.service == 'intelx':
                get_intelx_credits(table)
            elif ARGS.service == 'ipinfo':
                get_ipinfo_credits(table)
            elif ARGS.service == 'networkdb':
                get_newtworkdb_credits(table)
            elif ARGS.service == 'onyphe':
                get_onyphe_credits(table)
            elif ARGS.service == 'passivetotal':
                get_passive_total_credits(table)
            elif ARGS.service == 'securitytrails':
                get_security_trails_credits(table)
            elif ARGS.service == 'shodan':
                get_shodan_credits(table)
            # elif ARGS.service == 'spamhaus':
            #     get_spamhaus_credits(table)
            elif ARGS.service == 'urlscan':
                get_urlscan_credits(table)
            elif ARGS.service == 'whoisxmlapi':
                get_whoisxmlapi_credits(table)
            elif ARGS.service == 'zoomeye':
                get_zoomeye_credits(table)
            elif ARGS.service == 'all':
                get_binary_edge_credits(table)
                get_builtwith_credits(table)
                get_censys_credits(table)
                get_fullHunt_credits(table)
                get_hunter_credits(table)
                get_intelx_credits(table)
                get_ipinfo_credits(table)
                get_newtworkdb_credits(table)
                get_onyphe_credits(table)
                get_passive_total_credits(table)
                get_security_trails_credits(table)
                get_shodan_credits(table)
                # get_spamhaus_credits(table)
                get_urlscan_credits(table)
                get_whoisxmlapi_credits(table)
                get_zoomeye_credits(table)
    else:
        print("[-] API not supported")


if __name__ == "__main__":
    main()
