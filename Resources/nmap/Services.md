| Service name | Portnum/Protocol | Open Frequency | Optional Comments (I) | Optional Comments (II)|
|--------------|------------------|----------------|-----------------------|-----------------------|
| tcpmux | 1/tcp | 0.001995 | # TCP Port Service Multiplexer [rfc-1078] | TCP Port Service Multiplexer |
| tcpmux | 1/udp | 0.001236 | # TCP Port Service Multiplexer |
| compressnet | 2/tcp | 0.000013 | # Management Utility |
| compressnet | 2/udp | 0.001845 | # Management Utility |
| compressnet | 3/tcp | 0.001242 | # Compression Process |
| compressnet | 3/udp | 0.001532 | # Compression Process |
| rje | 5/tcp | 0.000000 | # Remote Job Entry |
| rje | 5/udp | 0.000593 | # Remote Job Entry |
| echo | 7/sctp | 0.000000 | echo 7/sctp 0.000000 |
| echo | 7/tcp | 0.004855 | echo 7/tcp 0.004855 |
| echo | 7/udp | 0.024679 | echo 7/udp 0.024679 |
| discard | 9/sctp | 0.000000 | # sink null |
| discard | 9/tcp | 0.003764 | # sink null |
| discard | 9/udp | 0.015733 | # sink null |
| systat | 11/tcp | 0.000075 | # Active Users |
| systat | 11/udp | 0.000577 | # Active Users |
| daytime | 13/tcp | 0.003927 | daytime 13/tcp 0.003927 |
| daytime | 13/udp | 0.004827 | daytime 13/udp 0.004827 |
| netstat | 15/tcp | 0.000038 | netstat 15/tcp 0.000038 |
| qotd | 17/tcp | 0.002346 | # Quote of the Day |
| qotd | 17/udp | 0.009209 | # Quote of the Day |
| msp | 18/tcp | 0.000000 | # Message Send Protocol | Message Send Protocol (historic) |
| msp | 18/udp | 0.000610 | # Message Send Protocol |
| chargen | 19/tcp | 0.002559 | # ttytst source Character Generator | Character Generator |
| chargen | 19/udp | 0.015865 | # ttytst source Character Generator |
| ftp-data | 20/sctp | 0.000000 | # File Transfer [Default Data] | FTP |
| ftp-data | 20/tcp | 0.001079 | # File Transfer [Default Data] |
| ftp-data | 20/udp | 0.001878 | # File Transfer [Default Data] |
| ftp | 21/sctp | 0.000000 | # File Transfer [Control] | File Transfer Protocol [Control] |
| ftp | 21/tcp | 0.197667 | # File Transfer [Control] |
| ftp | 21/udp | 0.004844 | # File Transfer [Control] |
| ssh | 22/sctp | 0.000000 | # Secure Shell Login | The Secure Shell (SSH) Protocol |
| ssh | 22/tcp | 0.182286 | # Secure Shell Login |
| ssh | 22/udp | 0.003905 | # Secure Shell Login |
| telnet | 23/tcp | 0.221265 | telnet 23/tcp 0.221265 |
| telnet | 23/udp | 0.006211 | telnet 23/udp 0.006211 |
| priv-mail | 24/tcp | 0.001154 | # any private mail system |
| priv-mail | 24/udp | 0.000329 | # any private mail system |
| smtp | 25/tcp | 0.131314 | # Simple Mail Transfer |
| smtp | 25/udp | 0.001285 | # Simple Mail Transfer |
| rsftp | 26/tcp | 0.007991 | # RSFTP |
| nsw-fe | 27/tcp | 0.000138 | # NSW User System FE |
| nsw-fe | 27/udp | 0.000395 | # NSW User System FE |
| msg-icp | 29/tcp | 0.000025 | # MSG ICP |
| msg-icp | 29/udp | 0.000560 | # MSG ICP |
| msg-auth | 31/tcp | 0.000025 | # MSG Authentication |
| msg-auth | 31/udp | 0.000939 | # MSG Authentication |
| dsp | 33/tcp | 0.001016 | # Display Support Protocol |
| dsp | 33/udp | 0.000560 | # Display Support Protocol |
| priv-print | 35/tcp | 0.000038 | # any private printer server |
| priv-print | 35/udp | 0.000708 | # any private printer server |
| time | 37/tcp | 0.003161 | # timserver |
| time | 37/udp | 0.006458 | # timserver |
| rap | 38/tcp | 0.000025 | # Route Access Protocol |
| rap | 38/udp | 0.002043 | # Route Access Protocol |
| rlp | 39/tcp | 0.000000 | # Resource Location Protocol |
| rlp | 39/udp | 0.000478 | # Resource Location Protocol |
| graphics | 41/tcp | 0.000000 | graphics 41/tcp 0.000000 |
| graphics | 41/udp | 0.000445 | graphics 41/udp 0.000445 |
| nameserver | 42/tcp | 0.000803 | # name | Host Name Server |
| nameserver | 42/udp | 0.005288 | # Host Name Server |
| whois | 43/tcp | 0.000314 | # nicname | Who Is |
| whois | 43/udp | 0.000313 | # nicname |
| mpm-flags | 44/tcp | 0.000025 | # MPM FLAGS Protocol |
| mpm-flags | 44/udp | 0.000659 | # MPM FLAGS Protocol |
| mpm | 45/tcp | 0.000050 | # Message Processing Module [recv] |
| mpm | 45/udp | 0.000741 | # Message Processing Module [recv] |
| mpm-snd | 46/tcp | 0.000000 | # MPM [default send] |
| mpm-snd | 46/udp | 0.000494 | # MPM [default send] |
| ni-ftp | 47/tcp | 0.000075 | # NI FTP |
| ni-ftp | 47/udp | 0.001071 | # NI FTP |
| auditd | 48/tcp | 0.000013 | # Digital Audit Daemon |
| auditd | 48/udp | 0.000708 | # Digital Audit Daemon |
| tacacs | 49/tcp | 0.000665 | # Login Host Protocol (TACACS) |
| tacacs | 49/udp | 0.014020 | # Login Host Protocol (TACACS) |
| re-mail-ck | 50/tcp | 0.000050 | # Remote Mail Checking Protocol |
| re-mail-ck | 50/udp | 0.000428 | # Remote Mail Checking Protocol |
| la-maint | 51/tcp | 0.000038 | # IMP Logical Address Maintenance |
| la-maint | 51/udp | 0.000280 | # IMP Logical Address Maintenance |
| xns-time | 52/tcp | 0.000063 | # XNS Time Protocol |
| xns-time | 52/udp | 0.000362 | # XNS Time Protocol |
| domain | 53/tcp | 0.048463 | # Domain Name Server |
| domain | 53/udp | 0.213496 | # Domain Name Server |
| xns-ch | 54/tcp | 0.000013 | # XNS Clearinghouse |
| xns-ch | 54/udp | 0.000659 | # XNS Clearinghouse |
| isi-gl | 55/tcp | 0.000125 | # ISI Graphics Language |
| isi-gl | 55/udp | 0.000478 | # ISI Graphics Language |
| xns-auth | 56/tcp | 0.000013 | # XNS Authentication |
| xns-auth | 56/udp | 0.001285 | # XNS Authentication |
| priv-term | 57/tcp | 0.000125 | # any private terminal access |
| priv-term | 57/udp | 0.000774 | # any private terminal access |
| xns-mail | 58/tcp | 0.000025 | # XNS Mail |
| xns-mail | 58/udp | 0.000428 | # XNS Mail |
| priv-file | 59/tcp | 0.000088 | # any private file service |
| priv-file | 59/udp | 0.000478 | # any private file service |
| ni-mail | 61/tcp | 0.000000 | # NI MAIL |
| ni-mail | 61/udp | 0.000461 | # NI MAIL |
| acas | 62/tcp | 0.000000 | # ACA Services |
| acas | 62/udp | 0.000264 | # ACA Services |
| via-ftp | 63/tcp | 0.000000 | # whoispp | VIA Systems - FTP & whois++ | whois++ |
| via-ftp | 63/udp | 0.000445 | # VIA Systems - FTP & whois++ |
| covia | 64/tcp | 0.000000 | # Communications Integrator (CI) |
| covia | 64/udp | 0.000593 | # Communications Integrator (CI) |
| tacacs-ds | 65/tcp | 0.000013 | # TACACS-Database Service |
| tacacs-ds | 65/udp | 0.000741 | # TACACS-Database Service |
| sqlnet | 66/tcp | 0.000075 | # sql*net | sql-net | Oracle SQL*NET |
| sqlnet | 66/udp | 0.000544 | # Oracle SQL*NET |
| dhcps | 67/tcp | 0.000013 | # bootps | DHCP/Bootstrap Protocol Server | Bootstrap Protocol Server |
| dhcps | 67/udp | 0.228010 | # DHCP/Bootstrap Protocol Server |
| dhcpc | 68/tcp | 0.000063 | # bootpc | DHCP/Bootstrap Protocol Client | Bootstrap Protocol Client |
| dhcpc | 68/udp | 0.140118 | # DHCP/Bootstrap Protocol Client |
| tftp | 69/tcp | 0.000038 | # Trivial File Transfer |
| tftp | 69/udp | 0.102835 | # Trivial File Transfer |
| gopher | 70/tcp | 0.000226 | gopher 70/tcp 0.000226 |
| gopher | 70/udp | 0.000544 | gopher 70/udp 0.000544 |
| netrjs-1 | 71/tcp | 0.000025 | # Remote Job Service |
| netrjs-1 | 71/udp | 0.000560 | # Remote Job Service |
| netrjs-2 | 72/tcp | 0.000013 | # Remote Job Service |
| netrjs-2 | 72/udp | 0.000494 | # Remote Job Service |
| netrjs-3 | 73/tcp | 0.000025 | # Remote Job Service |
| netrjs-3 | 73/udp | 0.000428 | # Remote Job Service |
| netrjs-4 | 74/tcp | 0.000025 | # Remote Job Service |
| netrjs-4 | 74/udp | 0.000478 | # Remote Job Service |
| priv-dial | 75/tcp | 0.000063 | # any private dial out service |
| priv-dial | 75/udp | 0.000577 | # any private dial out service |
| deos | 76/tcp | 0.000063 | # Distributed External Object Store |
| deos | 76/udp | 0.000675 | # Distributed External Object Store |
| priv-rje | 77/tcp | 0.000113 | # any private RJE service, netrjs |
| priv-rje | 77/udp | 0.000741 | # any private RJE service, netjrs |
| vettcp | 78/tcp | 0.000000 | vettcp 78/tcp 0.000000 |
| vettcp | 78/udp | 0.000626 | vettcp 78/udp 0.000626 |
| finger | 79/tcp | 0.006022 | finger 79/tcp 0.006022 |
| finger | 79/udp | 0.000956 | finger 79/udp 0.000956 |
| http | 80/sctp | 0.000000 | # www-http | www | World Wide Web HTTP |
| http | 80/tcp | 0.484143 | # World Wide Web HTTP |
| http | 80/udp | 0.035767 | # World Wide Web HTTP |
| hosts2-ns | 81/tcp | 0.012056 | # HOSTS2 Name Server |
| hosts2-ns | 81/udp | 0.001005 | # HOSTS2 Name Server |
| xfer | 82/tcp | 0.002923 | # XFER Utility |
| xfer | 82/udp | 0.000659 | # XFER Utility |
| mit-ml-dev | 83/tcp | 0.000539 | # MIT ML Device |
| mit-ml-dev | 83/udp | 0.001203 | # MIT ML Device |
| ctf | 84/tcp | 0.000276 | # Common Trace Facility |
| ctf | 84/udp | 0.000610 | # Common Trace Facility |
| mit-ml-dev | 85/tcp | 0.000690 | # MIT ML Device |
| mit-ml-dev | 85/udp | 0.000610 | # MIT ML Device |
| mfcobol | 86/tcp | 0.000138 | # Micro Focus Cobol |
| mfcobol | 86/udp | 0.000824 | # Micro Focus Cobol |
| priv-term-l | 87/tcp | 0.000125 | # any private terminal link, ttylink |
| kerberos-sec | 88/tcp | 0.006072 | # kerberos | Kerberos (v5) | Kerberos |
| kerberos-sec | 88/udp | 0.013476 | # Kerberos (v5) |
| su-mit-tg | 89/tcp | 0.000376 | # SU/MIT Telnet Gateway |
| su-mit-tg | 89/udp | 0.000494 | # SU/MIT Telnet Gateway |
| dnsix | 90/tcp | 0.000652 | # DNSIX Securit Attribute Token Map |
| dnsix | 90/udp | 0.000511 | # DNSIX Securit Attribute Token Map |
| mit-dov | 91/tcp | 0.000063 | # MIT Dover Spooler |
| mit-dov | 91/udp | 0.000478 | # MIT Dover Spooler |
| npp | 92/tcp | 0.000050 | # Network Printing Protocol |
| npp | 92/udp | 0.000478 | # Network Printing Protocol |
| dcp | 93/tcp | 0.000025 | # Device Control Protocol |
| dcp | 93/udp | 0.000774 | # Device Control Protocol |
| objcall | 94/tcp | 0.000025 | # Tivoli Object Dispatcher |
| objcall | 94/udp | 0.000428 | # Tivoli Object Dispatcher |
| supdup | 95/tcp | 0.000025 | # BSD supdupd(8) |
| supdup | 95/udp | 0.000379 | supdup 95/udp 0.000379 |
| dixie | 96/tcp | 0.000013 | # DIXIE Protocol Specification |
| dixie | 96/udp | 0.000939 | # DIXIE Protocol Specification |
| swift-rvf | 97/tcp | 0.000038 | # Swift Remote Virtural File Protocol |
| swift-rvf | 97/udp | 0.000362 | # Swift Remote Virtural File Protocol |
| linuxconf | 98/tcp | 0.000088 | # tacnews | TAC News |
| tacnews | 98/udp | 0.000560 | # TAC News |
| metagram | 99/tcp | 0.000326 | # Metagram Relay |
| metagram | 99/udp | 0.000972 | # Metagram Relay |
| newacct | 100/tcp | 0.002133 | # [unauthorized use] |
| hostname | 101/tcp | 0.000063 | # hostnames NIC Host Name Server | NIC Host Name Server |
| hostname | 101/udp | 0.000560 | # hostnames NIC Host Name Server |
| iso-tsap | 102/tcp | 0.000138 | # tsap ISO-TSAP Class 0 | ISO-TSAP Class 0 |
| iso-tsap | 102/udp | 0.000544 | # tsap ISO-TSAP Class 0 |
| gppitnp | 103/tcp | 0.000038 | # Genesis Point-to-Point Trans Net, or x400 ISO Email | Genesis Point-to-Point Trans Net |
| gppitnp | 103/udp | 0.000527 | # Genesis Point-to-Point Trans Net |
| acr-nema | 104/tcp | 0.000063 | # ACR-NEMA Digital Imag. & Comm. 300 |
| acr-nema | 104/udp | 0.000643 | # ACR-NEMA Digital Imag. & Comm. 300 |
| csnet-ns | 105/tcp | 0.000000 | # cso | Mailbox Name Nameserver | CCSO name server protocol |
| csnet-ns | 105/udp | 0.000478 | # Mailbox Name Nameserver |
| pop3pw | 106/tcp | 0.005934 | # 3com-tsmux | Eudora compatible PW changer | 3COM-TSMUX |
| 3com-tsmux | 106/udp | 0.000544 | 3com-tsmux 106/udp 0.000544 |
| rtelnet | 107/tcp | 0.000000 | # Remote Telnet | Remote Telnet Service |
| rtelnet | 107/udp | 0.000478 | # Remote Telnet Service |
| snagas | 108/tcp | 0.000013 | # SNA Gateway Access Server |
| snagas | 108/udp | 0.000494 | # SNA Gateway Access Server |
| pop2 | 109/tcp | 0.000188 | # PostOffice V.2 | Post Office Protocol - Version 2 |
| pop2 | 109/udp | 0.000461 | # PostOffice V.2 |
| pop3 | 110/tcp | 0.077142 | # PostOffice V.3 | Post Office Protocol - Version 3 |
| pop3 | 110/udp | 0.001104 | # PostOffice V.3 |
| rpcbind | 111/tcp | 0.030034 | # sunrpc | portmapper, rpcbind | SUN Remote Procedure Call |
| rpcbind | 111/udp | 0.093988 | # portmapper, rpcbind |
| mcidas | 112/tcp | 0.000050 | # McIDAS Data Transmission Protocol |
| mcidas | 112/udp | 0.002208 | # McIDAS Data Transmission Protocol |
| ident | 113/tcp | 0.012370 | # auth | ident, tap, Authentication Service | Authentication Service |
| auth | 113/udp | 0.003031 | # ident, tap, Authentication Service |
| audionews | 114/tcp | 0.000025 | # Audio News Multicast |
| audionews | 114/udp | 0.000362 | # Audio News Multicast |
| sftp | 115/tcp | 0.000025 | # Simple File Transfer Protocol |
| sftp | 115/udp | 0.000346 | # Simple File Transfer Protocol |
| ansanotify | 116/tcp | 0.000013 | # ANSA REX Notify |
| ansanotify | 116/udp | 0.000445 | # ANSA REX Notify |
| uucp-path | 117/tcp | 0.000013 | # UUCP Path Service |
| uucp-path | 117/udp | 0.000527 | # UUCP Path Service |
| sqlserv | 118/tcp | 0.000025 | # SQL Services |
| sqlserv | 118/udp | 0.000791 | # SQL Services |
| nntp | 119/tcp | 0.003262 | # Network News Transfer Protocol |
| nntp | 119/udp | 0.000428 | # Network News Transfer Protocol |
| cfdptkt | 120/tcp | 0.000025 | cfdptkt 120/tcp 0.000025 |
| cfdptkt | 120/udp | 0.010181 | cfdptkt 120/udp 0.010181 |
| erpc | 121/tcp | 0.000000 | # Encore Expedited Remote Pro.Call |
| erpc | 121/udp | 0.000675 | # Encore Expedited Remote Pro.Call |
| smakynet | 122/tcp | 0.000063 | smakynet 122/tcp 0.000063 |
| smakynet | 122/udp | 0.000428 | smakynet 122/udp 0.000428 |
| ntp | 123/tcp | 0.000138 | # Network Time Protocol |
| ntp | 123/udp | 0.330879 | # Network Time Protocol |
| ansatrader | 124/tcp | 0.000013 | # ANSA REX Trader |
| ansatrader | 124/udp | 0.000610 | # ANSA REX Trader |
| locus-map | 125/tcp | 0.000176 | # Locus PC-Interface Net Map Ser |
| locus-map | 125/udp | 0.000478 | # Locus PC-Interface Net Map Ser |
| unitary | 126/tcp | 0.000000 | # nxedit | Unisys Unitary Login | NXEdit |
| unitary | 126/udp | 0.000610 | # Unisys Unitary Login |
| locus-con | 127/tcp | 0.000113 | # Locus PC-Interface Conn Server |
| locus-con | 127/udp | 0.000412 | # Locus PC-Interface Conn Server |
| gss-xlicen | 128/tcp | 0.000013 | # GSS X License Verification |
| gss-xlicen | 128/udp | 0.000494 | # GSS X License Verification |
| pwdgen | 129/tcp | 0.000025 | # Password Generator Protocol |
| pwdgen | 129/udp | 0.000412 | # Password Generator Protocol |
| cisco-fna | 130/tcp | 0.000013 | # cisco FNATIVE |
| cisco-fna | 130/udp | 0.000774 | # cisco FNATIVE |
| cisco-tna | 131/tcp | 0.000000 | # cisco TNATIVE |
| cisco-tna | 131/udp | 0.000560 | # cisco TNATIVE |
| cisco-sys | 132/tcp | 0.000013 | # cisco SYSMAINT |
| cisco-sys | 132/udp | 0.000923 | # cisco SYSMAINT |
| statsrv | 133/tcp | 0.000025 | # Statistics Service |
| statsrv | 133/udp | 0.000758 | # Statistics Service |
| ingres-net | 134/tcp | 0.000000 | # INGRES-NET Service |
| ingres-net | 134/udp | 0.001203 | # INGRES-NET Service |
| msrpc | 135/tcp | 0.047798 | # epmap | Microsoft RPC services | DCE endpoint resolution |
| msrpc | 135/udp | 0.244452 | # Microsoft RPC services |
| profile | 136/tcp | 0.000025 | # PROFILE Naming System |
| profile | 136/udp | 0.051862 | # PROFILE Naming System |
| netbios-ns | 137/tcp | 0.000038 | # NETBIOS Name Service |
| netbios-ns | 137/udp | 0.365163 | # NETBIOS Name Service |
| netbios-dgm | 138/tcp | 0.000025 | # NETBIOS Datagram Service |
| netbios-dgm | 138/udp | 0.297830 | # NETBIOS Datagram Service |
| netbios-ssn | 139/tcp | 0.050809 | # NETBIOS Session Service |
| netbios-ssn | 139/udp | 0.193726 | # NETBIOS Session Service |
| emfis-data | 140/tcp | 0.000000 | # EMFIS Data Service |
| emfis-data | 140/udp | 0.000692 | # EMFIS Data Service |
| emfis-cntl | 141/tcp | 0.000013 | # EMFIS Control Service |
| emfis-cntl | 141/udp | 0.000428 | # EMFIS Control Service |
| bl-idm | 142/tcp | 0.000013 | # Britton-Lee IDM |
| bl-idm | 142/udp | 0.000428 | # Britton-Lee IDM |
| imap | 143/tcp | 0.050420 | # Interim Mail Access Protocol v2 | Internet Message Access Protocol |
| imap | 143/udp | 0.000659 | # Interim Mail Access Protocol v2 |
| news | 144/tcp | 0.004981 | # uma | NewS window system | Universal Management Architecture |
| news | 144/udp | 0.000346 | # NewS window system |
| uaac | 145/tcp | 0.000000 | # UAAC Protocol |
| uaac | 145/udp | 0.001153 | # UAAC Protocol |
| iso-tp0 | 146/tcp | 0.000577 | # ISO-IP0 |
| iso-tp0 | 146/udp | 0.000890 | iso-tp0 146/udp 0.000890 |
| iso-ip | 147/tcp | 0.000000 | iso-ip 147/tcp 0.000000 |
| iso-ip | 147/udp | 0.000511 | iso-ip 147/udp 0.000511 |
| cronus | 148/tcp | 0.000013 | # jargon | CRONUS-SUPPORT | Jargon |
| cronus | 148/udp | 0.000445 | # CRONUS-SUPPORT |
| aed-512 | 149/tcp | 0.000013 | # AED 512 Emulation Service |
| aed-512 | 149/udp | 0.000445 | # AED 512 Emulation Service |
| sql-net | 150/tcp | 0.000013 | sql-net 150/tcp 0.000013 |
| sql-net | 150/udp | 0.000840 | sql-net 150/udp 0.000840 |
| hems | 151/tcp | 0.000013 | hems 151/tcp 0.000013 |
| hems | 151/udp | 0.000412 | hems 151/udp 0.000412 |
| bftp | 152/tcp | 0.000000 | # Background File Transfer Program |
| bftp | 152/udp | 0.000988 | # Background File Transfer Program |
| sgmp | 153/tcp | 0.000000 | sgmp 153/tcp 0.000000 |
| sgmp | 153/udp | 0.000346 | sgmp 153/udp 0.000346 |
| netsc-prod | 154/tcp | 0.000000 | # NETSC |
| netsc-prod | 154/udp | 0.000379 | netsc-prod 154/udp 0.000379 |
| netsc-dev | 155/tcp | 0.000000 | # NETSC |
| netsc-dev | 155/udp | 0.000659 | netsc-dev 155/udp 0.000659 |
| sqlsrv | 156/tcp | 0.000000 | # SQL Service |
| sqlsrv | 156/udp | 0.000461 | # SQL Service |
| knet-cmp | 157/tcp | 0.000113 | # KNET/VM Command/Message Protocol |
| knet-cmp | 157/udp | 0.000247 | # KNET/VM Command/Message Protocol |
| pcmail-srv | 158/tcp | 0.000063 | # PCMail Server |
| pcmail-srv | 158/udp | 0.010148 | # PCMail Server |
| nss-routing | 159/tcp | 0.000000 | nss-routing 159/tcp 0.000000 |
| nss-routing | 159/udp | 0.000329 | nss-routing 159/udp 0.000329 |
| sgmp-traps | 160/tcp | 0.000000 | sgmp-traps 160/tcp 0.000000 |
| sgmp-traps | 160/udp | 0.000824 | sgmp-traps 160/udp 0.000824 |
| snmp | 161/tcp | 0.000790 | snmp 161/tcp 0.000790 |
| snmp | 161/udp | 0.433467 | # Simple Net Mgmt Proto |
| snmptrap | 162/tcp | 0.000013 | # snmp-trap |
| snmptrap | 162/udp | 0.103346 | # snmp-trap |
| cmip-man | 163/tcp | 0.000590 | # CMIP/TCP Manager |
| cmip-man | 163/udp | 0.000840 | # CMIP/TCP Manager |
| cmip-agent | 164/tcp | 0.000000 | # CMIP/TCP Agent |
| smip-agent | 164/udp | 0.000626 | # CMIP/TCP Agent |
| xns-courier | 165/tcp | 0.000000 | # Xerox |
| xns-courier | 165/udp | 0.000379 | # Xerox |
| s-net | 166/tcp | 0.000000 | # Sirius Systems |
| s-net | 166/udp | 0.000461 | # Sirius Systems |
| namp | 167/tcp | 0.000000 | namp 167/tcp 0.000000 |
| namp | 167/udp | 0.000395 | namp 167/udp 0.000395 |
| rsvd | 168/tcp | 0.000013 | rsvd 168/tcp 0.000013 |
| rsvd | 168/udp | 0.000412 | rsvd 168/udp 0.000412 |
| send | 169/tcp | 0.000000 | send 169/tcp 0.000000 |
| send | 169/udp | 0.000494 | send 169/udp 0.000494 |
| print-srv | 170/tcp | 0.000000 | # Network PostScript |
| print-srv | 170/udp | 0.001071 | # Network PostScript |
| multiplex | 171/tcp | 0.000000 | # Network Innovations Multiplex |
| multiplex | 171/udp | 0.000412 | # Network Innovations Multiplex |
| cl-1 | 172/tcp | 0.000000 | # cl/1 | Network Innovations CL/1 |
| cl-1 | 172/udp | 0.000494 | # Network Innovations CL/1 |
| xyplex-mux | 173/tcp | 0.000013 | # Xyplex |
| xyplex-mux | 173/udp | 0.000329 | xyplex-mux 173/udp 0.000329 |
| mailq | 174/tcp | 0.000013 | mailq 174/tcp 0.000013 |
| mailq | 174/udp | 0.000379 | mailq 174/udp 0.000379 |
| vmnet | 175/tcp | 0.000000 | vmnet 175/tcp 0.000000 |
| vmnet | 175/udp | 0.000379 | vmnet 175/udp 0.000379 |
| genrad-mux | 176/tcp | 0.000025 | genrad-mux 176/tcp 0.000025 |
| genrad-mux | 176/udp | 0.000313 | genrad-mux 176/udp 0.000313 |
| xdmcp | 177/tcp | 0.000025 | # X Display Mgr. Control Proto | X Display Manager Control Protocol |
| xdmcp | 177/udp | 0.018551 | # X Display Manager Control Protocol |
| nextstep | 178/tcp | 0.000000 | # NextStep Window Server |
| nextstep | 178/udp | 0.000346 | # NextStep Window Server |
| bgp | 179/sctp | 0.000000 | # Border Gateway Protocol |
| bgp | 179/tcp | 0.010538 | # Border Gateway Protocol |
| bgp | 179/udp | 0.000494 | # Border Gateway Protocol |
| ris | 180/tcp | 0.000038 | # Intergraph |
| ris | 180/udp | 0.000478 | # Intergraph |
| unify | 181/tcp | 0.000025 | unify 181/tcp 0.000025 |
| unify | 181/udp | 0.000181 | unify 181/udp 0.000181 |
| audit | 182/tcp | 0.000038 | # Unisys Audit SITP |
| audit | 182/udp | 0.000297 | # Unisys Audit SITP |
| ocbinder | 183/tcp | 0.000000 | ocbinder 183/tcp 0.000000 |
| ocbinder | 183/udp | 0.000560 | ocbinder 183/udp 0.000560 |
| ocserver | 184/tcp | 0.000013 | ocserver 184/tcp 0.000013 |
| ocserver | 184/udp | 0.000461 | ocserver 184/udp 0.000461 |
| remote-kis | 185/tcp | 0.000013 | remote-kis 185/tcp 0.000013 |
| remote-kis | 185/udp | 0.000428 | remote-kis 185/udp 0.000428 |
| kis | 186/tcp | 0.000000 | # KIS Protocol |
| kis | 186/udp | 0.000280 | # KIS Protocol |
| aci | 187/tcp | 0.000000 | # Application Communication Interface |
| aci | 187/udp | 0.000395 | # Application Communication Interface |
| mumps | 188/tcp | 0.000000 | # Plus Five's MUMPS |
| mumps | 188/udp | 0.000527 | # Plus Five's MUMPS |
| qft | 189/tcp | 0.000013 | # Queued File Transport |
| qft | 189/udp | 0.000461 | # Queued File Transport |
| gacp | 190/tcp | 0.000013 | # Gateway Access Control Protocol |
| cacp | 190/udp | 0.000428 | # Gateway Access Control Protocol |
| prospero | 191/tcp | 0.000013 | # Prospero Directory Service |
| prospero | 191/udp | 0.000857 | # Prospero Directory Service |
| osu-nms | 192/tcp | 0.000013 | # OSU Network Monitoring System |
| osu-nms | 192/udp | 0.004168 | # OSU Network Monitoring System |
| srmp | 193/tcp | 0.000025 | # Spider Remote Monitoring Protocol |
| srmp | 193/udp | 0.000412 | # Spider Remote Monitoring Protocol |
| irc | 194/tcp | 0.000038 | # Internet Relay Chat | Internet Relay Chat Protocol |
| irc | 194/udp | 0.000643 | # Internet Relay Chat Protocol |
| dn6-nlm-aud | 195/tcp | 0.000000 | # DNSIX Network Level Module Audit |
| dn6-nlm-aud | 195/udp | 0.000395 | # DNSIX Network Level Module Audit |
| dn6-smm-red | 196/tcp | 0.000025 | # DNSIX Session Mgt Module Audit Redir |
| dn6-smm-red | 196/udp | 0.000428 | # DNSIX Session Mgt Module Audit Redir |
| dls | 197/tcp | 0.000000 | # Directory Location Service |
| dls | 197/udp | 0.000659 | # Directory Location Service |
| dls-mon | 198/tcp | 0.000000 | # Directory Location Service Monitor |
| dls-mon | 198/udp | 0.001252 | # Directory Location Service Monitor |
| smux | 199/tcp | 0.015945 | # SNMP Unix Multiplexer |
| smux | 199/udp | 0.004152 | smux 199/udp 0.004152 |
| src | 200/tcp | 0.000025 | # IBM System Resource Controller |
| src | 200/udp | 0.000626 | # IBM System Resource Controller |
| at-rtmp | 201/tcp | 0.000038 | # AppleTalk Routing Maintenance |
| at-rtmp | 201/udp | 0.000988 | # AppleTalk Routing Maintenance |
| at-nbp | 202/tcp | 0.000025 | # AppleTalk Name Binding |
| at-nbp | 202/udp | 0.000445 | # AppleTalk Name Binding |
| at-3 | 203/tcp | 0.000000 | # AppleTalk Unused |
| at-3 | 203/udp | 0.000461 | # AppleTalk Unused |
| at-echo | 204/tcp | 0.000025 | # AppleTalk Echo |
| at-echo | 204/udp | 0.000412 | # AppleTalk Echo |
| at-5 | 205/tcp | 0.000013 | # AppleTalk Unused |
| at-5 | 205/udp | 0.000890 | # AppleTalk Unused |
| at-zis | 206/tcp | 0.000025 | # AppleTalk Zone Information |
| at-zis | 206/udp | 0.000956 | # AppleTalk Zone Information |
| at-7 | 207/tcp | 0.000000 | # AppleTalk Unused |
| at-7 | 207/udp | 0.001351 | # AppleTalk Unused |
| at-8 | 208/tcp | 0.000000 | # AppleTalk Unused |
| at-8 | 208/udp | 0.000511 | # AppleTalk Unused |
| tam | 209/tcp | 0.000013 | # qmtp | Trivial Authenticated Mail Protocol | The Quick Mail Transfer Protocol |
| tam | 209/udp | 0.000395 | # Trivial Authenticated Mail Protocol |
| z39.50 | 210/tcp | 0.000125 | # z39-50 | wais, ANSI Z39.50 | ANSI Z39.50 |
| z39.50 | 210/udp | 0.000511 | # wais, ANSI Z39.50 |
| 914c-g | 211/tcp | 0.000427 | # 914c/g | Texas Instruments 914C/G Terminal |
| 914c-g | 211/udp | 0.000329 | # Texas Instruments 914C/G Terminal |
| anet | 212/tcp | 0.000364 | # ATEXSSTR |
| anet | 212/udp | 0.000329 | # ATEXSSTR |
| ipx | 213/tcp | 0.000038 | ipx 213/tcp 0.000038 |
| ipx | 213/udp | 0.000478 | ipx 213/udp 0.000478 |
| vmpwscs | 214/tcp | 0.000038 | # VM PWSCS |
| vmpwscs | 214/udp | 0.000445 | vmpwscs 214/udp 0.000445 |
| softpc | 215/tcp | 0.000000 | # Insignia Solutions |
| softpc | 215/udp | 0.000412 | # Insignia Solutions |
| atls | 216/tcp | 0.000013 | # CAIlic | Access Technology License Server | Computer Associates Int'l License Server |
| atls | 216/udp | 0.000461 | # Access Technology License Server |
| dbase | 217/tcp | 0.000013 | # dBASE Unix |
| dbase | 217/udp | 0.001993 | # dBASE Unix |
| mpp | 218/tcp | 0.000000 | # Netix Message Posting Protocol |
| mpp | 218/udp | 0.000593 | # Netix Message Posting Protocol |
| uarps | 219/tcp | 0.000063 | # Unisys ARPs |
| uarps | 219/udp | 0.000395 | # Unisys ARPs |
| imap3 | 220/tcp | 0.000113 | # Interactive Mail Access Protocol v3 |
| imap3 | 220/udp | 0.000445 | # Interactive Mail Access Protocol v3 |
| fln-spx | 221/tcp | 0.000050 | # Berkeley rlogind with SPX auth |
| fln-spx | 221/udp | 0.000577 | # Berkeley rlogind with SPX auth |
| rsh-spx | 222/tcp | 0.000941 | # Berkeley rshd with SPX auth |
| rsh-spx | 222/udp | 0.000774 | # Berkeley rshd with SPX auth |
| cdc | 223/tcp | 0.000125 | # Certificate Distribution Center |
| cdc | 223/udp | 0.000346 | # Certificate Distribution Center |
| masqdialer | 224/tcp | 0.000025 | masqdialer 224/tcp 0.000025 |
| masqdialer | 224/udp | 0.000000 | masqdialer 224/udp 0.000000 |
| direct | 242/tcp | 0.000000 | direct 242/tcp 0.000000 |
| direct | 242/udp | 0.000362 | direct 242/udp 0.000362 |
| sur-meas | 243/tcp | 0.000000 | # Survey Measurement |
| sur-meas | 243/udp | 0.000494 | # Survey Measurement |
| dayna | 244/tcp | 0.000000 | # inbusiness |
| dayna | 244/udp | 0.000461 | dayna 244/udp 0.000461 |
| link | 245/tcp | 0.000000 | link 245/tcp 0.000000 |
| link | 245/udp | 0.000626 | link 245/udp 0.000626 |
| dsp3270 | 246/tcp | 0.000000 | # Display Systems Protocol |
| dsp3270 | 246/udp | 0.000593 | # Display Systems Protocol |
| subntbcst_tftp | 247/tcp | 0.000000 | # subntbcst-tftp |
| subntbcst_tftp | 247/udp | 0.000412 | subntbcst_tftp 247/udp 0.000412 |
| bhfhs | 248/tcp | 0.000013 | bhfhs 248/tcp 0.000013 |
| bhfhs | 248/udp | 0.000511 | bhfhs 248/udp 0.000511 |
| fw1-secureremote | 256/tcp | 0.000163 | # rap | also "rap" | RAP |
| rap | 256/udp | 0.000692 | rap 256/udp 0.000692 |
| fw1-mc-fwmodule | 257/tcp | 0.000100 | # set | FW1 management console for communication w/modules and also secure electronic transaction (set) port | Secure Electronic Transaction |
| set | 257/udp | 0.000511 | # secure electronic transaction |
| fw1-mc-gui | 258/tcp | 0.000013 | # also yak winsock personal chat |
| yak-chat | 258/udp | 0.000494 | # yak winsock personal chat |
| esro-gen | 259/tcp | 0.000201 | # efficient short remote operations | Efficient Short Remote Operations |
| firewall1-rdp | 259/udp | 0.000840 | # Firewall 1 proprietary RDP protocol http://www.inside-security.de/fw1_rdp_poc.html |
| openport | 260/tcp | 0.000025 | openport 260/tcp 0.000025 |
| openport | 260/udp | 0.000362 | openport 260/udp 0.000362 |
| nsiiops | 261/tcp | 0.000025 | # iiop name service over tls/ssl | IIOP Name Service over TLS/SSL |
| nsiiops | 261/udp | 0.000659 | # iiop name service over tls/ssl |
| arcisdms | 262/tcp | 0.000038 | arcisdms 262/tcp 0.000038 |
| arcisdms | 262/udp | 0.000577 | arcisdms 262/udp 0.000577 |
| hdap | 263/tcp | 0.000000 | hdap 263/tcp 0.000000 |
| hdap | 263/udp | 0.000544 | hdap 263/udp 0.000544 |
| bgmp | 264/tcp | 0.001029 | bgmp 264/tcp 0.001029 |
| fw1-or-bgmp | 264/udp | 0.000461 | # FW1 secureremote alternate |
| maybe-fw1 | 265/tcp | 0.000013 | # x-bone-ctl | X-Bone CTL |
| x-bone-ctl | 265/udp | 0.000000 | # X-Bone CTL |
| sst | 266/tcp | 0.000000 | # SCSI on ST |
| sst | 266/udp | 0.000000 | # SCSI on ST |
| td-service | 267/tcp | 0.000013 | # Tobit David Service Layer |
| td-service | 267/udp | 0.000000 | # Tobit David Service Layer |
| td-replica | 268/tcp | 0.000050 | # Tobit David Replica |
| td-replica | 268/udp | 0.000000 | # Tobit David Replica |
| manet | 269/tcp | 0.000000 | # MANET Protocols |
| manet | 269/udp | 0.000000 | # MANET Protocols |
| gist | 270/tcp | 0.000013 | # Q-mode encapsulation for GIST messages |
| gist | 270/udp | 0.000000 | # Q-mode encapsulation for GIST messages |
| pt-tls | 271/tcp | 0.000013 | # IETF Network Endpoint Assessment (NEA) Posture Transport Protocol over TLS (PT-TLS) |
| http-mgmt | 280/tcp | 0.001844 | http-mgmt 280/tcp 0.001844 |
| http-mgmt | 280/udp | 0.000379 | http-mgmt 280/udp 0.000379 |
| personal-link | 281/tcp | 0.000000 | # Personal Link |
| personal-link | 281/udp | 0.000544 | personal-link 281/udp 0.000544 |
| cableport-ax | 282/tcp | 0.000000 | # cable port a/x | Cable Port A/X |
| cableport-ax | 282/udp | 0.000494 | # cable port a/x |
| rescap | 283/tcp | 0.000000 | rescap 283/tcp 0.000000 |
| rescap | 283/udp | 0.000000 | rescap 283/udp 0.000000 |
| corerjd | 284/tcp | 0.000013 | corerjd 284/tcp 0.000013 |
| corerjd | 284/udp | 0.000000 | corerjd 284/udp 0.000000 |
| fxp | 286/tcp | 0.000000 | # FXP Communication |
| fxp | 286/udp | 0.000000 | # FXP Communication |
| k-block | 287/tcp | 0.000000 | k-block 287/tcp 0.000000 |
| k-block | 287/udp | 0.000000 | # K-BLOCK |
| novastorbakcup | 308/tcp | 0.000025 | # novastor backup | Novastor Backup |
| novastorbakcup | 308/udp | 0.000329 | # novastor backup |
| entrusttime | 309/tcp | 0.000000 | entrusttime 309/tcp 0.000000 |
| entrusttime | 309/udp | 0.000527 | entrusttime 309/udp 0.000527 |
| bhmds | 310/tcp | 0.000000 | bhmds 310/tcp 0.000000 |
| bhmds | 310/udp | 0.000445 | bhmds 310/udp 0.000445 |
| asip-webadmin | 311/tcp | 0.001857 | # appleshare ip webadmin | AppleShare IP WebAdmin |
| asip-webadmin | 311/udp | 0.000494 | # appleshare ip webadmin |
| vslmp | 312/tcp | 0.000000 | vslmp 312/tcp 0.000000 |
| vslmp | 312/udp | 0.000593 | vslmp 312/udp 0.000593 |
| magenta-logic | 313/tcp | 0.000000 | # Magenta Logic |
| magenta-logic | 313/udp | 0.000297 | magenta-logic 313/udp 0.000297 |
| opalis-robot | 314/tcp | 0.000000 | # Opalis Robot |
| opalis-robot | 314/udp | 0.000840 | opalis-robot 314/udp 0.000840 |
| dpsi | 315/tcp | 0.000025 | dpsi 315/tcp 0.000025 |
| dpsi | 315/udp | 0.000379 | dpsi 315/udp 0.000379 |
| decauth | 316/tcp | 0.000013 | decauth 316/tcp 0.000013 |
| decauth | 316/udp | 0.000461 | decauth 316/udp 0.000461 |
| zannet | 317/tcp | 0.000000 | zannet 317/tcp 0.000000 |
| zannet | 317/udp | 0.000346 | zannet 317/udp 0.000346 |
| pkix-timestamp | 318/tcp | 0.000000 | # PKIX TimeStamp |
| pkix-timestamp | 318/udp | 0.000000 | # PKIX TimeStamp |
| ptp-event | 319/tcp | 0.000000 | # PTP Event |
| ptp-event | 319/udp | 0.000000 | # PTP Event |
| ptp-general | 320/tcp | 0.000000 | # PTP General |
| ptp-general | 320/udp | 0.000000 | # PTP General |
| pip | 321/tcp | 0.000000 | pip 321/tcp 0.000000 |
| pip | 321/udp | 0.000593 | pip 321/udp 0.000593 |
| rtsps | 322/tcp | 0.000013 | rtsps 322/tcp 0.000013 |
| rtsps | 322/udp | 0.000000 | # RTSPS |
| rpki-rtr | 323/tcp | 0.000000 | # Resource PKI to Router Protocol |
| rpki-rtr-tls | 324/tcp | 0.000000 | # Resource PKI to Router Protocol over TLS |
| texar | 333/tcp | 0.000113 | # Texar Security Port |
| texar | 333/udp | 0.000330 | # Texar Security Port |
| pdap | 344/tcp | 0.000000 | # Prospero Data Access Protocol |
| pdap | 344/udp | 0.000445 | # Prospero Data Access Protocol |
| pawserv | 345/tcp | 0.000000 | # Perf Analysis Workbench |
| pawserv | 345/udp | 0.000428 | # Perf Analysis Workbench |
| zserv | 346/tcp | 0.000013 | # Zebra server |
| zserv | 346/udp | 0.000428 | # Zebra server |
| fatserv | 347/tcp | 0.000000 | # Fatmen Server |
| fatserv | 347/udp | 0.000708 | # Fatmen Server |
| csi-sgwp | 348/tcp | 0.000000 | # Cabletron Management Protocol |
| csi-sgwp | 348/udp | 0.000511 | # Cabletron Management Protocol |
| mftp | 349/tcp | 0.000000 | mftp 349/tcp 0.000000 |
| mftp | 349/udp | 0.000297 | mftp 349/udp 0.000297 |
| matip-type-a | 350/tcp | 0.000025 | # MATIP Type A |
| matip-type-a | 350/udp | 0.000379 | matip-type-a 350/udp 0.000379 |
| matip-type-b | 351/tcp | 0.000013 | # MATIP Type B or bhoetty also safetp | MATIP Type B | bhoetty |
| matip-type-b | 351/udp | 0.000313 | # MATIP Type B or bhoetty |
| dtag-ste-sb | 352/tcp | 0.000013 | # DTAG, or bhoedap4 | DTAG | bhoedap4 |
| dtag-ste-sb | 352/udp | 0.000593 | # DTAG, or bhoedap4 |
| ndsauth | 353/tcp | 0.000050 | ndsauth 353/tcp 0.000050 |
| ndsauth | 353/udp | 0.000264 | ndsauth 353/udp 0.000264 |
| bh611 | 354/tcp | 0.000000 | bh611 354/tcp 0.000000 |
| bh611 | 354/udp | 0.000560 | bh611 354/udp 0.000560 |
| datex-asn | 355/tcp | 0.000025 | datex-asn 355/tcp 0.000025 |
| datex-asn | 355/udp | 0.000774 | datex-asn 355/udp 0.000774 |
| cloanto-net-1 | 356/tcp | 0.000000 | # Cloanto Net 1 |
| cloanto-net-1 | 356/udp | 0.000610 | cloanto-net-1 356/udp 0.000610 |
| bhevent | 357/tcp | 0.000000 | bhevent 357/tcp 0.000000 |
| bhevent | 357/udp | 0.000478 | bhevent 357/udp 0.000478 |
| shrinkwrap | 358/tcp | 0.000013 | shrinkwrap 358/tcp 0.000013 |
| shrinkwrap | 358/udp | 0.000445 | shrinkwrap 358/udp 0.000445 |
| tenebris_nts | 359/tcp | 0.000000 | # nsrmp | Tenebris Network Trace Service | Network Security Risk Management Protocol |
| tenebris_nts | 359/udp | 0.000494 | # Tenebris Network Trace Service |
| scoi2odialog | 360/tcp | 0.000013 | scoi2odialog 360/tcp 0.000013 |
| scoi2odialog | 360/udp | 0.000560 | scoi2odialog 360/udp 0.000560 |
| semantix | 361/tcp | 0.000013 | semantix 361/tcp 0.000013 |
| semantix | 361/udp | 0.000346 | semantix 361/udp 0.000346 |
| srssend | 362/tcp | 0.000025 | # SRS Send |
| srssend | 362/udp | 0.000445 | # SRS Send |
| rsvp_tunnel | 363/tcp | 0.000000 | # rsvp-tunnel | RSVP Tunnel |
| rsvp_tunnel | 363/udp | 0.002125 | rsvp_tunnel 363/udp 0.002125 |
| aurora-cmgr | 364/tcp | 0.000013 | # Aurora CMGR |
| aurora-cmgr | 364/udp | 0.000395 | aurora-cmgr 364/udp 0.000395 |
| dtk | 365/tcp | 0.000000 | # Deception Tool Kit (www.all.net) |
| dtk | 365/udp | 0.000395 | # Deception Tool Kit (www.all.net) |
| odmr | 366/tcp | 0.000715 | odmr 366/tcp 0.000715 |
| odmr | 366/udp | 0.000478 | odmr 366/udp 0.000478 |
| mortgageware | 367/tcp | 0.000000 | mortgageware 367/tcp 0.000000 |
| mortgageware | 367/udp | 0.000445 | mortgageware 367/udp 0.000445 |
| qbikgdp | 368/tcp | 0.000000 | qbikgdp 368/tcp 0.000000 |
| qbikgdp | 368/udp | 0.000264 | qbikgdp 368/udp 0.000264 |
| rpc2portmap | 369/tcp | 0.000013 | rpc2portmap 369/tcp 0.000013 |
| rpc2portmap | 369/udp | 0.000725 | rpc2portmap 369/udp 0.000725 |
| codaauth2 | 370/tcp | 0.000013 | codaauth2 370/tcp 0.000013 |
| codaauth2 | 370/udp | 0.001038 | codaauth2 370/udp 0.001038 |
| clearcase | 371/tcp | 0.000000 | clearcase 371/tcp 0.000000 |
| clearcase | 371/udp | 0.000593 | clearcase 371/udp 0.000593 |
| ulistserv | 372/tcp | 0.000000 | # ulistproc | Unix Listserv | ListProcessor |
| ulistserv | 372/udp | 0.000593 | # Unix Listserv |
| legent-1 | 373/tcp | 0.000013 | # Legent Corporation (now Computer Associates Intl.) | Legent Corporation |
| legent-1 | 373/udp | 0.000395 | # Legent Corporation (now Computer Associates Intl.) |
| legent-2 | 374/tcp | 0.000000 | # Legent Corporation (now Computer Associates Intl.) | Legent Corporation |
| legent-2 | 374/udp | 0.000610 | # Legent Corporation (now Computer Associates Intl.) |
| hassle | 375/tcp | 0.000000 | hassle 375/tcp 0.000000 |
| hassle | 375/udp | 0.000544 | hassle 375/udp 0.000544 |
| nip | 376/tcp | 0.000000 | # Amiga Envoy Network Inquiry Protocol |
| nip | 376/udp | 0.001120 | # Amiga Envoy Network Inquiry Proto |
| tnETOS | 377/tcp | 0.000000 | # NEC Corporation |
| tnETOS | 377/udp | 0.000725 | # NEC Corporation |
| dsETOS | 378/tcp | 0.000000 | # NEC Corporation |
| dsETOS | 378/udp | 0.000544 | # NEC Corporation |
| is99c | 379/tcp | 0.000000 | # TIA/EIA/IS-99 modem client |
| is99c | 379/udp | 0.000395 | # TIA/EIA/IS-99 modem client |
| is99s | 380/tcp | 0.000013 | # TIA/EIA/IS-99 modem server |
| is99s | 380/udp | 0.000494 | # TIA/EIA/IS-99 modem server |
| hp-collector | 381/tcp | 0.000000 | # hp performance data collector |
| hp-collector | 381/udp | 0.000577 | # hp performance data collector |
| hp-managed-node | 382/tcp | 0.000000 | # hp performance data managed node |
| hp-managed-node | 382/udp | 0.000346 | # hp performance data managed node |
| hp-alarm-mgr | 383/tcp | 0.000013 | # hp performance data alarm manager |
| hp-alarm-mgr | 383/udp | 0.000362 | # hp performance data alarm manager |
| arns | 384/tcp | 0.000000 | # A Remote Network Server System |
| arns | 384/udp | 0.000412 | # A Remote Network Server System |
| ibm-app | 385/tcp | 0.000000 | # IBM Application |
| ibm-app | 385/udp | 0.000692 | # IBM Application |
| asa | 386/tcp | 0.000000 | # ASA Message Router Object Def. |
| asa | 386/udp | 0.000741 | # ASA Message Router Object Def. |
| aurp | 387/tcp | 0.000000 | # Appletalk Update-Based Routing Pro. |
| aurp | 387/udp | 0.001285 | # Appletalk Update-Based Routing Pro. |
| unidata-ldm | 388/tcp | 0.000088 | # Unidata LDM Version 4 | Unidata LDM |
| unidata-ldm | 388/udp | 0.000329 | # Unidata LDM Version 4 |
| ldap | 389/tcp | 0.004717 | # Lightweight Directory Access Protocol |
| ldap | 389/udp | 0.004300 | # Lightweight Directory Access Protocol |
| uis | 390/tcp | 0.000000 | uis 390/tcp 0.000000 |
| uis | 390/udp | 0.000478 | uis 390/udp 0.000478 |
| synotics-relay | 391/tcp | 0.000013 | # SynOptics SNMP Relay Port |
| synotics-relay | 391/udp | 0.000988 | # SynOptics SNMP Relay Port |
| synotics-broker | 392/tcp | 0.000013 | # SynOptics Port Broker Port |
| synotics-broker | 392/udp | 0.000280 | # SynOptics Port Broker Port |
| dis | 393/tcp | 0.000000 | # meta5 | Data Interpretation System | Meta5 |
| dis | 393/udp | 0.001302 | # Data Interpretation System |
| embl-ndt | 394/tcp | 0.000000 | # EMBL Nucleic Data Transfer |
| embl-ndt | 394/udp | 0.000461 | # EMBL Nucleic Data Transfer |
| netcp | 395/tcp | 0.000000 | # NETscout Control Protocol | NetScout Control Protocol |
| netcp | 395/udp | 0.000428 | # NETscout Control Protocol |
| netware-ip | 396/tcp | 0.000000 | # Novell Netware over IP |
| netware-ip | 396/udp | 0.000379 | # Novell Netware over IP |
| mptn | 397/tcp | 0.000025 | # Multi Protocol Trans. Net. |
| mptn | 397/udp | 0.000511 | # Multi Protocol Trans. Net. |
| kryptolan | 398/tcp | 0.000000 | kryptolan 398/tcp 0.000000 |
| kryptolan | 398/udp | 0.000659 | kryptolan 398/udp 0.000659 |
| iso-tsap-c2 | 399/tcp | 0.000025 | # ISO-TSAP Class 2 | ISO Transport Class 2 Non-Control over TCP | ISO Transport Class 2 Non-Control over UDP |
| iso-tsap-c2 | 399/udp | 0.000395 | # ISO-TSAP Class 2 |
| work-sol | 400/tcp | 0.000075 | # osb-sd | Workstation Solutions | Oracle Secure Backup |
| work-sol | 400/udp | 0.000643 | # Workstation Solutions |
| ups | 401/tcp | 0.000025 | # Uninterruptible Power Supply |
| ups | 401/udp | 0.000560 | # Uninterruptible Power Supply |
| genie | 402/tcp | 0.000038 | # Genie Protocol |
| genie | 402/udp | 0.001730 | # Genie Protocol |
| decap | 403/tcp | 0.000025 | decap 403/tcp 0.000025 |
| decap | 403/udp | 0.001021 | decap 403/udp 0.001021 |
| nced | 404/tcp | 0.000025 | nced 404/tcp 0.000025 |
| nced | 404/udp | 0.000478 | nced 404/udp 0.000478 |
| ncld | 405/tcp | 0.000000 | ncld 405/tcp 0.000000 |
| ncld | 405/udp | 0.000379 | ncld 405/udp 0.000379 |
| imsp | 406/tcp | 0.000163 | # Interactive Mail Support Protocol |
| imsp | 406/udp | 0.000560 | # Interactive Mail Support Protocol |
| timbuktu | 407/tcp | 0.001129 | timbuktu 407/tcp 0.001129 |
| timbuktu | 407/udp | 0.005305 | timbuktu 407/udp 0.005305 |
| prm-sm | 408/tcp | 0.000013 | # Prospero Resource Manager Sys. Man. |
| prm-sm | 408/udp | 0.000445 | # Prospero Resource Manager Sys. Man. |
| prm-nm | 409/tcp | 0.000000 | # Prospero Resource Manager Node Man. |
| prm-nm | 409/udp | 0.000461 | # Prospero Resource Manager Node Man. |
| decladebug | 410/tcp | 0.000025 | # DECLadebug Remote Debug Protocol |
| decladebug | 410/udp | 0.000494 | # DECLadebug Remote Debug Protocol |
| rmt | 411/tcp | 0.000088 | # Remote MT Protocol |
| rmt | 411/udp | 0.000560 | # Remote MT Protocol |
| synoptics-trap | 412/tcp | 0.000025 | # Trap Convention Port |
| synoptics-trap | 412/udp | 0.000511 | # Trap Convention Port |
| smsp | 413/tcp | 0.000013 | # Storage Management Services Protocol |
| smsp | 413/udp | 0.000395 | smsp 413/udp 0.000395 |
| infoseek | 414/tcp | 0.000013 | infoseek 414/tcp 0.000013 |
| infoseek | 414/udp | 0.000346 | infoseek 414/udp 0.000346 |
| bnet | 415/tcp | 0.000025 | bnet 415/tcp 0.000025 |
| bnet | 415/udp | 0.000445 | bnet 415/udp 0.000445 |
| silverplatter | 416/tcp | 0.000201 | silverplatter 416/tcp 0.000201 |
| silverplatter | 416/udp | 0.000675 | silverplatter 416/udp 0.000675 |
| onmux | 417/tcp | 0.000226 | # Meeting maker |
| onmux | 417/udp | 0.000774 | # Meeting maker |
| hyper-g | 418/tcp | 0.000025 | hyper-g 418/tcp 0.000025 |
| hyper-g | 418/udp | 0.000544 | hyper-g 418/udp 0.000544 |
| ariel1 | 419/tcp | 0.000138 | # Ariel 1 |
| ariel1 | 419/udp | 0.000544 | ariel1 419/udp 0.000544 |
| smpte | 420/tcp | 0.000013 | smpte 420/tcp 0.000013 |
| smpte | 420/udp | 0.000511 | smpte 420/udp 0.000511 |
| ariel2 | 421/tcp | 0.000000 | # Ariel 2 |
| ariel2 | 421/udp | 0.000428 | ariel2 421/udp 0.000428 |
| ariel3 | 422/tcp | 0.000025 | # Ariel 3 |
| ariel3 | 422/udp | 0.000346 | ariel3 422/udp 0.000346 |
| opc-job-start | 423/tcp | 0.000013 | # IBM Operations Planning and Control Start |
| opc-job-start | 423/udp | 0.000329 | # IBM Operations Planning and Control Start |
| opc-job-track | 424/tcp | 0.000000 | # IBM Operations Planning and Control Track |
| opc-job-track | 424/udp | 0.000610 | # IBM Operations Planning and Control Track |
| icad-el | 425/tcp | 0.000326 | # ICAD |
| icad-el | 425/udp | 0.000428 | icad-el 425/udp 0.000428 |
| smartsdp | 426/tcp | 0.000000 | smartsdp 426/tcp 0.000000 |
| smartsdp | 426/udp | 0.001104 | smartsdp 426/udp 0.001104 |
| svrloc | 427/tcp | 0.005382 | # Server Location |
| svrloc | 427/udp | 0.018270 | # Server Location |
| ocs_cmu | 428/tcp | 0.000013 | # ocs-cmu |
| ocs_cmu | 428/udp | 0.000329 | ocs_cmu 428/udp 0.000329 |
| ocs_amu | 429/tcp | 0.000000 | # ocs-amu |
| ocs_amu | 429/udp | 0.000428 | ocs_amu 429/udp 0.000428 |
| utmpsd | 430/tcp | 0.000000 | utmpsd 430/tcp 0.000000 |
| utmpsd | 430/udp | 0.000362 | utmpsd 430/udp 0.000362 |
| utmpcd | 431/tcp | 0.000000 | utmpcd 431/tcp 0.000000 |
| utmpcd | 431/udp | 0.000461 | utmpcd 431/udp 0.000461 |
| iasd | 432/tcp | 0.000013 | iasd 432/tcp 0.000013 |
| iasd | 432/udp | 0.000577 | iasd 432/udp 0.000577 |
| nnsp | 433/tcp | 0.000000 | # Usenet, Network News Transfer | NNTP for transit servers (NNSP) |
| nnsp | 433/udp | 0.000445 | nnsp 433/udp 0.000445 |
| mobileip-agent | 434/tcp | 0.000013 | mobileip-agent 434/tcp 0.000013 |
| mobileip-agent | 434/udp | 0.002257 | mobileip-agent 434/udp 0.002257 |
| mobilip-mn | 435/tcp | 0.000013 | mobilip-mn 435/tcp 0.000013 |
| mobilip-mn | 435/udp | 0.000511 | mobilip-mn 435/udp 0.000511 |
| dna-cml | 436/tcp | 0.000000 | dna-cml 436/tcp 0.000000 |
| dna-cml | 436/udp | 0.000379 | dna-cml 436/udp 0.000379 |
| comscm | 437/tcp | 0.000025 | comscm 437/tcp 0.000025 |
| comscm | 437/udp | 0.000741 | comscm 437/udp 0.000741 |
| dsfgw | 438/tcp | 0.000013 | dsfgw 438/tcp 0.000013 |
| dsfgw | 438/udp | 0.000725 | dsfgw 438/udp 0.000725 |
| dasp | 439/tcp | 0.000013 | dasp 439/tcp 0.000013 |
| dasp | 439/udp | 0.000412 | dasp 439/udp 0.000412 |
| sgcp | 440/tcp | 0.000063 | sgcp 440/tcp 0.000063 |
| sgcp | 440/udp | 0.000807 | sgcp 440/udp 0.000807 |
| decvms-sysmgt | 441/tcp | 0.000138 | decvms-sysmgt 441/tcp 0.000138 |
| decvms-sysmgt | 441/udp | 0.000395 | decvms-sysmgt 441/udp 0.000395 |
| cvc_hostd | 442/tcp | 0.000138 | # cvc-hostd |
| cvc_hostd | 442/udp | 0.000774 | cvc_hostd 442/udp 0.000774 |
| https | 443/sctp | 0.000000 | # http protocol over TLS/SSL |
| https | 443/tcp | 0.208669 | # secure http (SSL) |
| https | 443/udp | 0.010840 | https 443/udp 0.010840 |
| snpp | 444/tcp | 0.004466 | # Simple Network Paging Protocol |
| snpp | 444/udp | 0.000873 | # Simple Network Paging Protocol |
| microsoft-ds | 445/tcp | 0.056944 | # SMB directly over IP |
| microsoft-ds | 445/udp | 0.253118 | microsoft-ds 445/udp 0.253118 |
| ddm-rdb | 446/tcp | 0.000075 | # DDM-Remote Relational Database Access |
| ddm-rdb | 446/udp | 0.000461 | ddm-rdb 446/udp 0.000461 |
| ddm-dfm | 447/tcp | 0.000138 | # DDM-Distributed File Management |
| ddm-dfm | 447/udp | 0.000675 | ddm-dfm 447/udp 0.000675 |
| ddm-ssl | 448/tcp | 0.000050 | # ddm-byte | DDM-Remote DB Access Using Secure Sockets |
| ddm-ssl | 448/udp | 0.000511 | # ddm-byte |
| as-servermap | 449/tcp | 0.000063 | # AS Server Mapper |
| as-servermap | 449/udp | 0.000675 | # AS Server Mapper |
| tserver | 450/tcp | 0.000050 | # Computer Supported Telecomunication Applications |
| tserver | 450/udp | 0.000692 | tserver 450/udp 0.000692 |
| sfs-smp-net | 451/tcp | 0.000013 | # Cray Network Semaphore server |
| sfs-smp-net | 451/udp | 0.000774 | # Cray Network Semaphore server |
| sfs-config | 452/tcp | 0.000013 | # Cray SFS config server |
| sfs-config | 452/udp | 0.000297 | # Cray SFS config server |
| creativeserver | 453/tcp | 0.000025 | creativeserver 453/tcp 0.000025 |
| creativeserver | 453/udp | 0.000280 | creativeserver 453/udp 0.000280 |
| contentserver | 454/tcp | 0.000038 | contentserver 454/tcp 0.000038 |
| contentserver | 454/udp | 0.000329 | contentserver 454/udp 0.000329 |
| creativepartnr | 455/tcp | 0.000000 | creativepartnr 455/tcp 0.000000 |
| creativepartnr | 455/udp | 0.000758 | creativepartnr 455/udp 0.000758 |
| macon | 456/tcp | 0.000050 | # macon-tcp | macon-udp |
| macon | 456/udp | 0.000494 | macon 456/udp 0.000494 |
| scohelp | 457/tcp | 0.000013 | scohelp 457/tcp 0.000013 |
| scohelp | 457/udp | 0.000610 | scohelp 457/udp 0.000610 |
| appleqtc | 458/tcp | 0.000314 | # apple quick time |
| appleqtc | 458/udp | 0.000725 | # apple quick time |
| ampr-rcmd | 459/tcp | 0.000000 | ampr-rcmd 459/tcp 0.000000 |
| ampr-rcmd | 459/udp | 0.000362 | ampr-rcmd 459/udp 0.000362 |
| skronk | 460/tcp | 0.000013 | skronk 460/tcp 0.000013 |
| skronk | 460/udp | 0.000610 | skronk 460/udp 0.000610 |
| datasurfsrv | 461/tcp | 0.000000 | # DataRampSrv |
| datasurfsrv | 461/udp | 0.000379 | datasurfsrv 461/udp 0.000379 |
| datasurfsrvsec | 462/tcp | 0.000025 | # DataRampSrvSec |
| datasurfsrvsec | 462/udp | 0.000560 | datasurfsrvsec 462/udp 0.000560 |
| alpes | 463/tcp | 0.000000 | alpes 463/tcp 0.000000 |
| alpes | 463/udp | 0.000494 | alpes 463/udp 0.000494 |
| kpasswd5 | 464/tcp | 0.001192 | # Kerberos (v5) | kpasswd |
| kpasswd5 | 464/udp | 0.004300 | # Kerberos (v5) |
| smtps | 465/tcp | 0.013888 | # submissions | igmpv3lite | urd | smtp protocol over TLS/SSL (was ssmtp) | URL Rendesvous Directory for SSM | IGMP over UDP for SSM | URL Rendezvous Directory for SSM | Message Submission over TLS protocol |
| smtps | 465/udp | 0.000527 | # smtp protocol over TLS/SSL (was ssmtp) |
| digital-vrc | 466/tcp | 0.000025 | digital-vrc 466/tcp 0.000025 |
| digital-vrc | 466/udp | 0.000297 | digital-vrc 466/udp 0.000297 |
| mylex-mapd | 467/tcp | 0.000000 | mylex-mapd 467/tcp 0.000000 |
| mylex-mapd | 467/udp | 0.000445 | mylex-mapd 467/udp 0.000445 |
| photuris | 468/tcp | 0.000000 | # Photuris Key Management | proturis |
| photuris | 468/udp | 0.000560 | photuris 468/udp 0.000560 |
| rcp | 469/tcp | 0.000000 | # Radio Control Protocol |
| rcp | 469/udp | 0.000692 | # Radio Control Protocol |
| scx-proxy | 470/tcp | 0.000013 | scx-proxy 470/tcp 0.000013 |
| scx-proxy | 470/udp | 0.000395 | scx-proxy 470/udp 0.000395 |
| mondex | 471/tcp | 0.000000 | mondex 471/tcp 0.000000 |
| mondex | 471/udp | 0.000478 | mondex 471/udp 0.000478 |
| ljk-login | 472/tcp | 0.000013 | ljk-login 472/tcp 0.000013 |
| ljk-login | 472/udp | 0.000758 | ljk-login 472/udp 0.000758 |
| hybrid-pop | 473/tcp | 0.000013 | hybrid-pop 473/tcp 0.000013 |
| hybrid-pop | 473/udp | 0.000445 | hybrid-pop 473/udp 0.000445 |
| tn-tl-w1 | 474/tcp | 0.000000 | # tn-tl-w2 |
| tn-tl-w2 | 474/udp | 0.000214 | tn-tl-w2 474/udp 0.000214 |
| tcpnethaspsrv | 475/tcp | 0.000138 | tcpnethaspsrv 475/tcp 0.000138 |
| tcpnethaspsrv | 475/udp | 0.000643 | tcpnethaspsrv 475/udp 0.000643 |
| tn-tl-fd1 | 476/tcp | 0.000000 | tn-tl-fd1 476/tcp 0.000000 |
| tn-tl-fd1 | 476/udp | 0.000346 | tn-tl-fd1 476/udp 0.000346 |
| ss7ns | 477/tcp | 0.000000 | ss7ns 477/tcp 0.000000 |
| ss7ns | 477/udp | 0.000626 | ss7ns 477/udp 0.000626 |
| spsc | 478/tcp | 0.000000 | spsc 478/tcp 0.000000 |
| spsc | 478/udp | 0.000610 | spsc 478/udp 0.000610 |
| iafserver | 479/tcp | 0.000013 | iafserver 479/tcp 0.000013 |
| iafserver | 479/udp | 0.000675 | iafserver 479/udp 0.000675 |
| loadsrv | 480/tcp | 0.000013 | # iafdbase |
| iafdbase | 480/udp | 0.000461 | iafdbase 480/udp 0.000461 |
| dvs | 481/tcp | 0.000176 | # ph | Ph service |
| ph | 481/udp | 0.000445 | ph 481/udp 0.000445 |
| bgs-nsi | 482/tcp | 0.000000 | bgs-nsi 482/tcp 0.000000 |
| xlog | 482/udp | 0.000577 | xlog 482/udp 0.000577 |
| ulpnet | 483/tcp | 0.000000 | ulpnet 483/tcp 0.000000 |
| ulpnet | 483/udp | 0.000461 | ulpnet 483/udp 0.000461 |
| integra-sme | 484/tcp | 0.000000 | # Integra Software Management Environment |
| integra-sme | 484/udp | 0.001186 | # Integra Software Management Environment |
| powerburst | 485/tcp | 0.000013 | # Air Soft Power Burst |
| powerburst | 485/udp | 0.000725 | # Air Soft Power Burst |
| sstats | 486/tcp | 0.000025 | # avian |
| avian | 486/udp | 0.000379 | avian 486/udp 0.000379 |
| saft | 487/tcp | 0.000013 | # saft Simple Asynchronous File Transfer |
| saft | 487/udp | 0.000428 | # saft Simple Asynchronous File Transfer |
| gss-http | 488/tcp | 0.000000 | gss-http 488/tcp 0.000000 |
| gss-http | 488/udp | 0.000643 | gss-http 488/udp 0.000643 |
| nest-protocol | 489/tcp | 0.000000 | nest-protocol 489/tcp 0.000000 |
| nest-protocol | 489/udp | 0.000544 | nest-protocol 489/udp 0.000544 |
| micom-pfs | 490/tcp | 0.000000 | micom-pfs 490/tcp 0.000000 |
| micom-pfs | 490/udp | 0.000577 | micom-pfs 490/udp 0.000577 |
| go-login | 491/tcp | 0.000050 | go-login 491/tcp 0.000050 |
| go-login | 491/udp | 0.000297 | go-login 491/udp 0.000297 |
| ticf-1 | 492/tcp | 0.000050 | # Transport Independent Convergence for FNA |
| ticf-1 | 492/udp | 0.000610 | # Transport Independent Convergence for FNA |
| ticf-2 | 493/tcp | 0.000025 | # Transport Independent Convergence for FNA |
| ticf-2 | 493/udp | 0.000560 | # Transport Independent Convergence for FNA |
| pov-ray | 494/tcp | 0.000000 | pov-ray 494/tcp 0.000000 |
| pov-ray | 494/udp | 0.000478 | pov-ray 494/udp 0.000478 |
| intecourier | 495/tcp | 0.000000 | intecourier 495/tcp 0.000000 |
| intecourier | 495/udp | 0.000362 | intecourier 495/udp 0.000362 |
| pim-rp-disc | 496/tcp | 0.000013 | pim-rp-disc 496/tcp 0.000013 |
| pim-rp-disc | 496/udp | 0.001153 | pim-rp-disc 496/udp 0.001153 |
| retrospect | 497/tcp | 0.001179 | # Retrospect backup and restore service |
| retrospect | 497/udp | 0.017348 | retrospect 497/udp 0.017348 |
| siam | 498/tcp | 0.000000 | siam 498/tcp 0.000000 |
| siam | 498/udp | 0.000461 | siam 498/udp 0.000461 |
| iso-ill | 499/tcp | 0.000000 | # ISO ILL Protocol |
| iso-ill | 499/udp | 0.000511 | # ISO ILL Protocol |
| isakmp | 500/tcp | 0.001129 | isakmp 500/tcp 0.001129 |
| isakmp | 500/udp | 0.163742 | isakmp 500/udp 0.163742 |
| stmf | 501/tcp | 0.000063 | stmf 501/tcp 0.000063 |
| stmf | 501/udp | 0.001186 | stmf 501/udp 0.001186 |
| mbap | 502/tcp | 0.000151 | # Modbus Application Protocol |
| mbap | 502/udp | 0.001318 | # Modbus Application Protocol |
| intrinsa | 503/tcp | 0.000000 | intrinsa 503/tcp 0.000000 |
| intrinsa | 503/udp | 0.000708 | intrinsa 503/udp 0.000708 |
| citadel | 504/tcp | 0.000000 | citadel 504/tcp 0.000000 |
| citadel | 504/udp | 0.000758 | citadel 504/udp 0.000758 |
| mailbox-lm | 505/tcp | 0.000038 | mailbox-lm 505/tcp 0.000038 |
| mailbox-lm | 505/udp | 0.000807 | mailbox-lm 505/udp 0.000807 |
| ohimsrv | 506/tcp | 0.000000 | ohimsrv 506/tcp 0.000000 |
| ohimsrv | 506/udp | 0.000577 | ohimsrv 506/udp 0.000577 |
| crs | 507/tcp | 0.000050 | crs 507/tcp 0.000050 |
| crs | 507/udp | 0.000593 | crs 507/udp 0.000593 |
| xvttp | 508/tcp | 0.000000 | xvttp 508/tcp 0.000000 |
| xvttp | 508/udp | 0.000461 | xvttp 508/udp 0.000461 |
| snare | 509/tcp | 0.000075 | snare 509/tcp 0.000075 |
| snare | 509/udp | 0.000643 | snare 509/udp 0.000643 |
| fcp | 510/tcp | 0.000063 | # FirstClass Protocol |
| fcp | 510/udp | 0.000923 | # FirstClass Protocol |
| passgo | 511/tcp | 0.000038 | passgo 511/tcp 0.000038 |
| passgo | 511/udp | 0.000610 | passgo 511/udp 0.000610 |
| exec | 512/tcp | 0.000841 | # biff | comsat | BSD rexecd(8) | remote process execution; authentication performed using passwords and UNIX login names | used by mail system to notify users of new mail received; currently receives messages only from processes on the same machine |
| biff | 512/udp | 0.002142 | # comsat |
| login | 513/tcp | 0.005595 | # who | BSD rlogind(8) | remote login a la telnet; automatic authentication performed based on priviledged port numbers and distributed data bases which identify "authentication domains" | maintains data bases showing who's logged in to machines on a local net and the load average of the machine |
| who | 513/udp | 0.002323 | # BSD rwhod(8) |
| shell | 514/tcp | 0.011078 | # syslog | BSD rshd(8) | cmd like exec, but automatic authentication is performed as for login server |
| syslog | 514/udp | 0.119804 | # BSD syslogd(8) |
| printer | 515/tcp | 0.007214 | # spooler (lpd) | spooler |
| printer | 515/udp | 0.011022 | # spooler (lpd) |
| videotex | 516/tcp | 0.000013 | videotex 516/tcp 0.000013 |
| videotex | 516/udp | 0.000807 | videotex 516/udp 0.000807 |
| talk | 517/tcp | 0.000000 | # like tenex link, but across | like tenex link, but across machine - unfortunately, doesn't use link protocol (this is actually just a rendezvous port from which a tcp connection is established) |
| talk | 517/udp | 0.004794 | # BSD talkd(8) |
| ntalk | 518/tcp | 0.000013 | # (talkd) |
| ntalk | 518/udp | 0.022208 | # (talkd) |
| utime | 519/tcp | 0.000000 | # unixtime |
| utime | 519/udp | 0.000560 | # unixtime |
| efs | 520/tcp | 0.000000 | # router | extended file name server | local routing process (on site); uses variant of Xerox NS routing information protocol - RIP |
| route | 520/udp | 0.139376 | # router routed -- RIP |
| ripng | 521/tcp | 0.000000 | ripng 521/tcp 0.000000 |
| ripng | 521/udp | 0.000708 | ripng 521/udp 0.000708 |
| ulp | 522/tcp | 0.000013 | ulp 522/tcp 0.000013 |
| ulp | 522/udp | 0.000511 | ulp 522/udp 0.000511 |
| ibm-db2 | 523/tcp | 0.000113 | ibm-db2 523/tcp 0.000113 |
| ibm-db2 | 523/udp | 0.000461 | ibm-db2 523/udp 0.000461 |
| ncp | 524/tcp | 0.000213 | ncp 524/tcp 0.000213 |
| ncp | 524/udp | 0.000873 | ncp 524/udp 0.000873 |
| timed | 525/tcp | 0.000063 | # timeserver |
| timed | 525/udp | 0.000890 | # timeserver |
| tempo | 526/tcp | 0.000013 | # newdate |
| tempo | 526/udp | 0.000346 | # newdate |
| stx | 527/tcp | 0.000000 | # Stock IXChange |
| stx | 527/udp | 0.000362 | # Stock IXChange |
| custix | 528/tcp | 0.000013 | # Customer IXChange |
| custix | 528/udp | 0.000329 | # Customer IXChange |
| irc | 529/tcp | 0.000000 | # irc-serv | IRC-SERV |
| irc | 529/udp | 0.000544 | irc 529/udp 0.000544 |
| courier | 530/tcp | 0.000013 | # rpc |
| courier | 530/udp | 0.000873 | # rpc |
| conference | 531/tcp | 0.000000 | # chat |
| conference | 531/udp | 0.000824 | # chat |
| netnews | 532/tcp | 0.000000 | # readnews |
| netnews | 532/udp | 0.000758 | # readnews |
| netwall | 533/tcp | 0.000013 | # for emergency broadcasts |
| netwall | 533/udp | 0.000461 | # for emergency broadcasts |
| mm-admin | 534/tcp | 0.000000 | # windream | MegaMedia Admin | windream Admin |
| mm-admin | 534/udp | 0.000379 | # MegaMedia Admin |
| iiop | 535/tcp | 0.000013 | iiop 535/tcp 0.000013 |
| iiop | 535/udp | 0.000329 | iiop 535/udp 0.000329 |
| opalis-rdv | 536/tcp | 0.000025 | opalis-rdv 536/tcp 0.000025 |
| opalis-rdv | 536/udp | 0.000428 | opalis-rdv 536/udp 0.000428 |
| nmsp | 537/tcp | 0.000000 | # Networked Media Streaming Protocol |
| nmsp | 537/udp | 0.000774 | # Networked Media Streaming Protocol |
| gdomap | 538/tcp | 0.000063 | gdomap 538/tcp 0.000063 |
| gdomap | 538/udp | 0.000461 | gdomap 538/udp 0.000461 |
| apertus-ldp | 539/tcp | 0.000000 | # Apertus Technologies Load Determination |
| apertus-ldp | 539/udp | 0.002274 | # Apertus Technologies Load Determination |
| uucp | 540/tcp | 0.000138 | # uucpd |
| uucp | 540/udp | 0.000791 | # uucpd |
| uucp-rlogin | 541/tcp | 0.000489 | uucp-rlogin 541/tcp 0.000489 |
| uucp-rlogin | 541/udp | 0.000807 | uucp-rlogin 541/udp 0.000807 |
| commerce | 542/tcp | 0.000013 | commerce 542/tcp 0.000013 |
| commerce | 542/udp | 0.000675 | commerce 542/udp 0.000675 |
| klogin | 543/tcp | 0.005282 | # Kerberos (v4/v5) |
| klogin | 543/udp | 0.000610 | # Kerberos (v4/v5) |
| kshell | 544/tcp | 0.005269 | # krcmd Kerberos (v4/v5) | krcmd |
| kshell | 544/udp | 0.000527 | # krcmd Kerberos (v4/v5) |
| ekshell | 545/tcp | 0.000276 | # Kerberos encrypted remote shell -kfall | appleqtcsrvr |
| appleqtcsrvr | 545/udp | 0.000478 | appleqtcsrvr 545/udp 0.000478 |
| dhcpv6-client | 546/tcp | 0.000000 | # DHCPv6 Client |
| dhcpv6-client | 546/udp | 0.000840 | # DHCPv6 Client |
| dhcpv6-server | 547/tcp | 0.000000 | # DHCPv6 Server |
| dhcpv6-server | 547/udp | 0.000807 | # DHCPv6 Server |
| afp | 548/tcp | 0.012395 | # afpovertcp | AFP over TCP |
| afp | 548/udp | 0.000774 | # AFP over UDP |
| idfp | 549/tcp | 0.000000 | idfp 549/tcp 0.000000 |
| idfp | 549/udp | 0.000461 | idfp 549/udp 0.000461 |
| new-rwho | 550/tcp | 0.000000 | # new-who |
| new-rwho | 550/udp | 0.001170 | # new-who |
| cybercash | 551/tcp | 0.000000 | cybercash 551/tcp 0.000000 |
| cybercash | 551/udp | 0.000774 | cybercash 551/udp 0.000774 |
| deviceshare | 552/tcp | 0.000013 | # devshr-nts |
| deviceshare | 552/udp | 0.000840 | deviceshare 552/udp 0.000840 |
| pirp | 553/tcp | 0.000038 | pirp 553/tcp 0.000038 |
| pirp | 553/udp | 0.000593 | pirp 553/udp 0.000593 |
| rtsp | 554/tcp | 0.008104 | # Real Time Stream Control Protocol | Real Time Streaming Protocol (RTSP) |
| rtsp | 554/udp | 0.000593 | # Real Time Stream Control Protocol |
| dsf | 555/tcp | 0.000238 | dsf 555/tcp 0.000238 |
| dsf | 555/udp | 0.000329 | dsf 555/udp 0.000329 |
| remotefs | 556/tcp | 0.000125 | # rfs, rfs_server, Brunhoff remote filesystem | rfs server |
| remotefs | 556/udp | 0.000428 | # rfs, rfs_server, Brunhoff remote filesystem |
| openvms-sysipc | 557/tcp | 0.000113 | openvms-sysipc 557/tcp 0.000113 |
| openvms-sysipc | 557/udp | 0.000461 | openvms-sysipc 557/udp 0.000461 |
| sdnskmp | 558/tcp | 0.000000 | sdnskmp 558/tcp 0.000000 |
| sdnskmp | 558/udp | 0.000461 | sdnskmp 558/udp 0.000461 |
| teedtap | 559/tcp | 0.000000 | teedtap 559/tcp 0.000000 |
| teedtap | 559/udp | 0.001433 | teedtap 559/udp 0.001433 |
| rmonitor | 560/tcp | 0.000038 | # rmonitord |
| rmonitor | 560/udp | 0.000626 | # rmonitord |
| monitor | 561/tcp | 0.000038 | monitor 561/tcp 0.000038 |
| monitor | 561/udp | 0.000544 | monitor 561/udp 0.000544 |
| chshell | 562/tcp | 0.000000 | # chcmd |
| chshell | 562/udp | 0.000346 | # chcmd |
| snews | 563/tcp | 0.000916 | # nntps | nntp protocol over TLS/SSL (was snntp) |
| snews | 563/udp | 0.000675 | snews 563/udp 0.000675 |
| 9pfs | 564/tcp | 0.000013 | # plan 9 file service |
| 9pfs | 564/udp | 0.000527 | # plan 9 file service |
| whoami | 565/tcp | 0.000000 | whoami 565/tcp 0.000000 |
| whoami | 565/udp | 0.000445 | whoami 565/udp 0.000445 |
| streettalk | 566/tcp | 0.000000 | streettalk 566/tcp 0.000000 |
| streettalk | 566/udp | 0.000000 | streettalk 566/udp 0.000000 |
| banyan-rpc | 567/tcp | 0.000000 | banyan-rpc 567/tcp 0.000000 |
| banyan-rpc | 567/udp | 0.000544 | banyan-rpc 567/udp 0.000544 |
| ms-shuttle | 568/tcp | 0.000025 | # Microsoft shuttle | microsoft shuttle |
| ms-shuttle | 568/udp | 0.000824 | # Microsoft shuttle |
| ms-rome | 569/tcp | 0.000013 | # Microsoft rome | microsoft rome |
| ms-rome | 569/udp | 0.000758 | # Microsoft rome |
| meter | 570/tcp | 0.000013 | # demon |
| meter | 570/udp | 0.000461 | # demon |
| umeter | 571/tcp | 0.000013 | # meter | udemon |
| umeter | 571/udp | 0.000692 | # udemon |
| sonar | 572/tcp | 0.000013 | sonar 572/tcp 0.000013 |
| sonar | 572/udp | 0.000297 | sonar 572/udp 0.000297 |
| banyan-vip | 573/tcp | 0.000000 | banyan-vip 573/tcp 0.000000 |
| banyan-vip | 573/udp | 0.000939 | banyan-vip 573/udp 0.000939 |
| ftp-agent | 574/tcp | 0.000000 | # FTP Software Agent System |
| ftp-agent | 574/udp | 0.000428 | # FTP Software Agent System |
| vemmi | 575/tcp | 0.000000 | vemmi 575/tcp 0.000000 |
| vemmi | 575/udp | 0.000379 | vemmi 575/udp 0.000379 |
| ipcd | 576/tcp | 0.000000 | ipcd 576/tcp 0.000000 |
| ipcd | 576/udp | 0.000346 | ipcd 576/udp 0.000346 |
| vnas | 577/tcp | 0.000063 | vnas 577/tcp 0.000063 |
| vnas | 577/udp | 0.000972 | vnas 577/udp 0.000972 |
| ipdd | 578/tcp | 0.000075 | ipdd 578/tcp 0.000075 |
| ipdd | 578/udp | 0.000527 | ipdd 578/udp 0.000527 |
| decbsrv | 579/tcp | 0.000000 | decbsrv 579/tcp 0.000000 |
| decbsrv | 579/udp | 0.000544 | decbsrv 579/udp 0.000544 |
| sntp-heartbeat | 580/tcp | 0.000000 | # SNTP HEARTBEAT |
| sntp-heartbeat | 580/udp | 0.000428 | sntp-heartbeat 580/udp 0.000428 |
| bdp | 581/tcp | 0.000000 | # Bundle Discovery Protocol |
| bdp | 581/udp | 0.000395 | # Bundle Discovery Protocol |
| scc-security | 582/tcp | 0.000013 | # SCC Security |
| scc-security | 582/udp | 0.000280 | scc-security 582/udp 0.000280 |
| philips-vc | 583/tcp | 0.000013 | # Philips Video-Conferencing |
| philips-vc | 583/udp | 0.000544 | # Philips Video-Conferencing |
| keyserver | 584/tcp | 0.000000 | # Key Server |
| keyserver | 584/udp | 0.001005 | keyserver 584/udp 0.001005 |
| imap4-ssl | 585/tcp | 0.000000 | # IMAP4+SSL (use of 585 is not recommended, |
| imap4-ssl | 585/udp | 0.000412 | # use 993 instead) |
| password-chg | 586/tcp | 0.000000 | # Password Change |
| password-chg | 586/udp | 0.000758 | password-chg 586/udp 0.000758 |
| submission | 587/tcp | 0.019721 | # Message Submission |
| submission | 587/udp | 0.000692 | submission 587/udp 0.000692 |
| cal | 588/tcp | 0.000000 | cal 588/tcp 0.000000 |
| cal | 588/udp | 0.000544 | cal 588/udp 0.000544 |
| eyelink | 589/tcp | 0.000000 | eyelink 589/tcp 0.000000 |
| eyelink | 589/udp | 0.000461 | eyelink 589/udp 0.000461 |
| tns-cml | 590/tcp | 0.000000 | # TNS CML |
| tns-cml | 590/udp | 0.000577 | tns-cml 590/udp 0.000577 |
| http-alt | 591/tcp | 0.000075 | # FileMaker, Inc. - HTTP Alternate | FileMaker, Inc. - HTTP Alternate (see Port 80) |
| http-alt | 591/udp | 0.000527 | # FileMaker, Inc. - HTTP Alternate |
| eudora-set | 592/tcp | 0.000000 | # Eudora Set |
| eudora-set | 592/udp | 0.000626 | eudora-set 592/udp 0.000626 |
| http-rpc-epmap | 593/tcp | 0.001242 | # HTTP RPC Ep Map |
| http-rpc-epmap | 593/udp | 0.022933 | # HTTP RPC Ep Map |
| tpip | 594/tcp | 0.000000 | tpip 594/tcp 0.000000 |
| tpip | 594/udp | 0.000873 | tpip 594/udp 0.000873 |
| cab-protocol | 595/tcp | 0.000000 | # CAB Protocol |
| cab-protocol | 595/udp | 0.000445 | cab-protocol 595/udp 0.000445 |
| smsd | 596/tcp | 0.000013 | smsd 596/tcp 0.000013 |
| smsd | 596/udp | 0.000544 | smsd 596/udp 0.000544 |
| ptcnameservice | 597/tcp | 0.000000 | # PTC Name Service |
| ptcnameservice | 597/udp | 0.000214 | # PTC Name Service |
| sco-websrvrmg3 | 598/tcp | 0.000013 | # SCO Web Server Manager 3 |
| sco-websrvrmg3 | 598/udp | 0.000626 | # SCO Web Server Manager 3 |
| acp | 599/tcp | 0.000013 | # Aeolon Core Protocol |
| acp | 599/udp | 0.000412 | # Aeolon Core Protocol |
| ipcserver | 600/tcp | 0.000100 | # Sun IPC server |
| ipcserver | 600/udp | 0.000741 | # Sun IPC server |
| syslog-conn | 601/tcp | 0.000025 | # Reliable Syslog Service |
| syslog-conn | 601/udp | 0.000330 | # Reliable Syslog Service |
| xmlrpc-beep | 602/tcp | 0.000100 | # XML-RPC over BEEP |
| xmlrpc-beep | 602/udp | 0.000000 | # XML-RPC over BEEP |
| mnotes | 603/tcp | 0.000063 | # idxp | CommonTime Mnotes PDA Synchronization | IDXP |
| idxp | 603/udp | 0.000991 | # IDXP |
| tunnel | 604/tcp | 0.000025 | tunnel 604/tcp 0.000025 |
| tunnel | 604/udp | 0.000000 | # TUNNEL |
| soap-beep | 605/tcp | 0.000050 | # SOAP over BEEP |
| soap-beep | 605/udp | 0.000661 | # SOAP over BEEP |
| urm | 606/tcp | 0.000088 | # Cray Unified Resource Manager |
| urm | 606/udp | 0.000494 | # Cray Unified Resource Manager |
| nqs | 607/tcp | 0.000025 | nqs 607/tcp 0.000025 |
| nqs | 607/udp | 0.000758 | nqs 607/udp 0.000758 |
| sift-uft | 608/tcp | 0.000025 | # Sender-Initiated/Unsolicited File Transfer |
| sift-uft | 608/udp | 0.000544 | # Sender-Initiated/Unsolicited File Transfer |
| npmp-trap | 609/tcp | 0.000050 | npmp-trap 609/tcp 0.000050 |
| npmp-trap | 609/udp | 0.000379 | npmp-trap 609/udp 0.000379 |
| npmp-local | 610/tcp | 0.000113 | npmp-local 610/tcp 0.000113 |
| npmp-local | 610/udp | 0.000741 | npmp-local 610/udp 0.000741 |
| npmp-gui | 611/tcp | 0.000038 | npmp-gui 611/tcp 0.000038 |
| npmp-gui | 611/udp | 0.000577 | npmp-gui 611/udp 0.000577 |
| hmmp-ind | 612/tcp | 0.000013 | # HMMP Indication |
| hmmp-ind | 612/udp | 0.000000 | # HMMP Indication |
| hmmp-op | 613/tcp | 0.000013 | # HMMP Operation |
| hmmp-op | 613/udp | 0.000330 | # HMMP Operation |
| sshell | 614/tcp | 0.000013 | # SSLshell |
| sshell | 614/udp | 0.000330 | # SSLshell |
| sco-inetmgr | 615/tcp | 0.000063 | # Internet Configuration Manager |
| sco-inetmgr | 615/udp | 0.000330 | # Internet Configuration Manager |
| sco-sysmgr | 616/tcp | 0.000289 | # SCO System Administration Server |
| sco-sysmgr | 616/udp | 0.000330 | # SCO System Administration Server |
| sco-dtmgr | 617/tcp | 0.000226 | # SCO Desktop Administration Server or Arkeia (www.arkeia.com) backup software | SCO Desktop Administration Server |
| sco-dtmgr | 617/udp | 0.001302 | # SCO Desktop Administration Server |
| dei-icda | 618/tcp | 0.000013 | dei-icda 618/tcp 0.000013 |
| dei-icda | 618/udp | 0.000000 | # DEI-ICDA |
| compaq-evm | 619/tcp | 0.000025 | # Compaq EVM |
| compaq-evm | 619/udp | 0.000991 | # Compaq EVM |
| sco-websrvrmgr | 620/tcp | 0.000063 | # SCO WebServer Manager |
| sco-websrvrmgr | 620/udp | 0.000991 | # SCO WebServer Manager |
| escp-ip | 621/tcp | 0.000088 | # ESCP |
| escp-ip | 621/udp | 0.000661 | # ESCP |
| collaborator | 622/tcp | 0.000038 | collaborator 622/tcp 0.000038 |
| collaborator | 622/udp | 0.000000 | # Collaborator |
| oob-ws-http | 623/tcp | 0.000151 | # asf-rmcp | DMTF out-of-band web services management protocol | ASF Remote Management and Control Protocol |
| asf-rmcp | 623/udp | 0.007929 | # ASF Remote Management and Control |
| cryptoadmin | 624/tcp | 0.000038 | # Crypto Admin |
| cryptoadmin | 624/udp | 0.000000 | # Crypto Admin |
| apple-xsrvr-admin | 625/tcp | 0.001869 | # dec_dlm | dec-dlm | Apple Mac Xserver admin | DEC DLM |
| dec_dlm | 625/udp | 0.000000 | # DEC DLM |
| apple-imap-admin | 626/tcp | 0.000025 | # asia | Apple IMAP mail admin | ASIA |
| serialnumberd | 626/udp | 0.021473 | # Mac OS X Server serial number (licensing) daemon |
| passgo-tivoli | 627/tcp | 0.000050 | # PassGo Tivoli |
| passgo-tivoli | 627/udp | 0.000000 | # PassGo Tivoli |
| qmqp | 628/tcp | 0.000038 | # Qmail Quick Mail Queueing |
| qmqp | 628/udp | 0.000661 | # QMQP |
| 3com-amp3 | 629/tcp | 0.000063 | # 3Com AMP3 |
| 3com-amp3 | 629/udp | 0.000000 | # 3Com AMP3 |
| rda | 630/tcp | 0.000050 | rda 630/tcp 0.000050 |
| rda | 630/udp | 0.000330 | # RDA |
| ipp | 631/tcp | 0.006160 | # ipps | Internet Printing Protocol -- for one implementation see http://www.cups.org (Common UNIX Printing System) | IPP (Internet Printing Protocol) | Internet Printing Protocol over HTTPS |
| ipp | 631/udp | 0.450281 | # Internet Printing Protocol |
| bmpp | 632/tcp | 0.000050 | bmpp 632/tcp 0.000050 |
| bmpp | 632/udp | 0.000661 | bmpp 632/udp 0.000661 |
| servstat | 633/tcp | 0.000038 | # Service Status update (Sterling Software) |
| servstat | 633/udp | 0.000000 | # Service Status update (Sterling Software) |
| ginad | 634/tcp | 0.000063 | ginad 634/tcp 0.000063 |
| ginad | 634/udp | 0.000692 | ginad 634/udp 0.000692 |
| rlzdbase | 635/tcp | 0.000075 | # RLZ DBase |
| mount | 635/udp | 0.000511 | # NFS Mount Service |
| ldapssl | 636/tcp | 0.002083 | # ldaps | LDAP over SSL | ldap protocol over TLS/SSL (was sldap) |
| ldaps | 636/udp | 0.000661 | # ldap protocol over TLS/SSL (was sldap) |
| lanserver | 637/tcp | 0.000038 | lanserver 637/tcp 0.000038 |
| lanserver | 637/udp | 0.000428 | lanserver 637/udp 0.000428 |
| mcns-sec | 638/tcp | 0.000050 | mcns-sec 638/tcp 0.000050 |
| mcns-sec | 638/udp | 0.000000 | mcns-sec 638/udp 0.000000 |
| msdp | 639/tcp | 0.000151 | msdp 639/tcp 0.000151 |
| msdp | 639/udp | 0.001321 | # MSDP |
| entrust-sps | 640/tcp | 0.000050 | entrust-sps 640/tcp 0.000050 |
| pcnfs | 640/udp | 0.000890 | # PC-NFS DOS Authentication |
| repcmd | 641/tcp | 0.000088 | repcmd 641/tcp 0.000088 |
| repcmd | 641/udp | 0.000661 | repcmd 641/udp 0.000661 |
| esro-emsdp | 642/tcp | 0.000075 | # ESRO-EMSDP V1.3 |
| esro-emsdp | 642/udp | 0.000000 | # ESRO-EMSDP V1.3 |
| sanity | 643/tcp | 0.000013 | sanity 643/tcp 0.000013 |
| sanity | 643/udp | 0.001982 | # SANity |
| dwr | 644/tcp | 0.000038 | dwr 644/tcp 0.000038 |
| dwr | 644/udp | 0.000991 | dwr 644/udp 0.000991 |
| pssc | 645/tcp | 0.000025 | pssc 645/tcp 0.000025 |
| pssc | 645/udp | 0.000000 | # PSSC |
| ldp | 646/tcp | 0.006549 | # Label Distribution |
| ldp | 646/udp | 0.000000 | # Label Distribution |
| dhcp-failover | 647/tcp | 0.000050 | # DHCP Failover |
| dhcp-failover | 647/udp | 0.000000 | # DHCP Failover |
| rrp | 648/tcp | 0.000577 | # Registry Registrar Protocol (RRP) |
| rrp | 648/udp | 0.000330 | # Registry Registrar Protocol (RRP) |
| cadview-3d | 649/tcp | 0.000063 | # Cadview-3d - streaming 3d models over the internet |
| cadview-3d | 649/udp | 0.000330 | # Cadview-3d - streaming 3d models over the internet |
| obex | 650/tcp | 0.000000 | obex 650/tcp 0.000000 |
| bwnfs | 650/udp | 0.000544 | # BW-NFS DOS Authentication |
| ieee-mms | 651/tcp | 0.000050 | # IEEE MMS |
| ieee-mms | 651/udp | 0.000000 | # IEEE MMS |
| hello-port | 652/tcp | 0.000013 | # HELLO_PORT |
| hello-port | 652/udp | 0.000330 | # HELLO_PORT |
| repscmd | 653/tcp | 0.000063 | # RepCmd |
| repscmd | 653/udp | 0.000661 | # RepCmd |
| aodv | 654/tcp | 0.000038 | aodv 654/tcp 0.000038 |
| aodv | 654/udp | 0.000000 | # AODV |
| tinc | 655/tcp | 0.000100 | tinc 655/tcp 0.000100 |
| tinc | 655/udp | 0.000330 | # TINC |
| spmp | 656/tcp | 0.000038 | spmp 656/tcp 0.000038 |
| spmp | 656/udp | 0.000000 | # SPMP |
| rmc | 657/tcp | 0.000113 | rmc 657/tcp 0.000113 |
| rmc | 657/udp | 0.001321 | # RMC |
| tenfold | 658/tcp | 0.000050 | tenfold 658/tcp 0.000050 |
| tenfold | 658/udp | 0.000000 | # TenFold |
| mac-srvr-admin | 660/tcp | 0.000100 | # MacOS Server Admin |
| mac-srvr-admin | 660/udp | 0.000577 | # MacOS Server Admin |
| hap | 661/tcp | 0.000050 | hap 661/tcp 0.000050 |
| hap | 661/udp | 0.000000 | # HAP |
| pftp | 662/tcp | 0.000013 | pftp 662/tcp 0.000013 |
| pftp | 662/udp | 0.000330 | # PFTP |
| purenoise | 663/tcp | 0.000050 | purenoise 663/tcp 0.000050 |
| purenoise | 663/udp | 0.000000 | # PureNoise |
| secure-aux-bus | 664/tcp | 0.000063 | # asf-secure-rmcp | oob-ws-https | DMTF out-of-band secure web services management protocol | ASF Secure Remote Management and Control Protocol |
| secure-aux-bus | 664/udp | 0.003634 | secure-aux-bus 664/udp 0.003634 |
| sun-dr | 665/tcp | 0.000063 | # Sun DR |
| sun-dr | 665/udp | 0.000000 | # Sun DR |
| doom | 666/tcp | 0.000289 | # mdqs | Id Software Doom | doom Id Software |
| doom | 666/udp | 0.000956 | # doom Id Software |
| disclose | 667/tcp | 0.000238 | # campaign contribution disclosures - SDR Technologies |
| disclose | 667/udp | 0.000330 | # campaign contribution disclosures - SDR Technologies |
| mecomm | 668/tcp | 0.000213 | mecomm 668/tcp 0.000213 |
| mecomm | 668/udp | 0.000000 | # MeComm |
| meregister | 669/tcp | 0.000088 | meregister 669/tcp 0.000088 |
| meregister | 669/udp | 0.000000 | # MeRegister |
| vacdsm-sws | 670/tcp | 0.000038 | vacdsm-sws 670/tcp 0.000038 |
| vacdsm-sws | 670/udp | 0.000000 | # VACDSM-SWS |
| vacdsm-app | 671/tcp | 0.000000 | vacdsm-app 671/tcp 0.000000 |
| vacdsm-app | 671/udp | 0.000000 | # VACDSM-APP |
| vpps-qua | 672/tcp | 0.000025 | vpps-qua 672/tcp 0.000025 |
| vpps-qua | 672/udp | 0.000991 | # VPPS-QUA |
| cimplex | 673/tcp | 0.000050 | cimplex 673/tcp 0.000050 |
| cimplex | 673/udp | 0.000000 | # CIMPLEX |
| acap | 674/tcp | 0.000113 | # ACAP server of Communigate (www.stalker.com) |
| acap | 674/udp | 0.000661 | # ACAP |
| dctp | 675/tcp | 0.000038 | dctp 675/tcp 0.000038 |
| dctp | 675/udp | 0.000330 | # DCTP |
| vpps-via | 676/tcp | 0.000038 | # VPPS Via |
| vpps-via | 676/udp | 0.000000 | # VPPS Via |
| vpp | 677/tcp | 0.000025 | # Virtual Presence Protocol |
| vpp | 677/udp | 0.000000 | # Virtual Presence Protocol |
| ggf-ncp | 678/tcp | 0.000075 | # GNU Generation Foundation NCP |
| ggf-ncp | 678/udp | 0.000000 | # GNU Generation Foundation NCP |
| mrm | 679/tcp | 0.000000 | mrm 679/tcp 0.000000 |
| mrm | 679/udp | 0.000330 | # MRM |
| entrust-aaas | 680/tcp | 0.000038 | entrust-aaas 680/tcp 0.000038 |
| entrust-aaas | 680/udp | 0.000661 | entrust-aaas 680/udp 0.000661 |
| entrust-aams | 681/tcp | 0.000038 | entrust-aams 681/tcp 0.000038 |
| entrust-aams | 681/udp | 0.000991 | entrust-aams 681/udp 0.000991 |
| xfr | 682/tcp | 0.000063 | xfr 682/tcp 0.000063 |
| xfr | 682/udp | 0.002643 | # XFR |
| corba-iiop | 683/tcp | 0.000176 | # CORBA IIOP |
| corba-iiop | 683/udp | 0.003304 | corba-iiop 683/udp 0.003304 |
| corba-iiop-ssl | 684/tcp | 0.000113 | # CORBA IIOP SSL |
| corba-iiop-ssl | 684/udp | 0.002313 | # CORBA IIOP SSL |
| mdc-portmapper | 685/tcp | 0.000038 | # MDC Port Mapper |
| mdc-portmapper | 685/udp | 0.002973 | # MDC Port Mapper |
| hcp-wismar | 686/tcp | 0.000025 | # Hardware Control Protocol Wismar |
| hcp-wismar | 686/udp | 0.002973 | # Hardware Control Protocol Wismar |
| asipregistry | 687/tcp | 0.000188 | asipregistry 687/tcp 0.000188 |
| asipregistry | 687/udp | 0.001982 | asipregistry 687/udp 0.001982 |
| realm-rusd | 688/tcp | 0.000025 | # ApplianceWare managment protocol |
| realm-rusd | 688/udp | 0.001982 | # ApplianceWare managment protocol |
| nmap | 689/tcp | 0.000038 | nmap 689/tcp 0.000038 |
| nmap | 689/udp | 0.001321 | # NMAP |
| vatp | 690/tcp | 0.000088 | # Velazquez Application Transfer Protocol | Velneo Application Transfer Protocol |
| vatp | 690/udp | 0.000330 | # Velazquez Application Transfer Protocol |
| resvc | 691/tcp | 0.000376 | # msexch-routing | The Microsoft Exchange 2000 Server Routing Service | MS Exchange Routing |
| msexch-routing | 691/udp | 0.000330 | # MS Exchange Routing |
| hyperwave-isp | 692/tcp | 0.000038 | hyperwave-isp 692/tcp 0.000038 |
| hyperwave-isp | 692/udp | 0.000000 | # Hyperwave-ISP |
| connendp | 693/tcp | 0.000000 | # almanid Connection Endpoint |
| connendp | 693/udp | 0.000000 | # almanid Connection Endpoint |
| ha-cluster | 694/tcp | 0.000038 | ha-cluster 694/tcp 0.000038 |
| ha-cluster | 694/udp | 0.000661 | ha-cluster 694/udp 0.000661 |
| ieee-mms-ssl | 695/tcp | 0.000063 | ieee-mms-ssl 695/tcp 0.000063 |
| ieee-mms-ssl | 695/udp | 0.000000 | # IEEE-MMS-SSL |
| rushd | 696/tcp | 0.000050 | rushd 696/tcp 0.000050 |
| rushd | 696/udp | 0.000330 | # RUSHD |
| uuidgen | 697/tcp | 0.000025 | uuidgen 697/tcp 0.000025 |
| uuidgen | 697/udp | 0.000330 | # UUIDGEN |
| olsr | 698/tcp | 0.000025 | olsr 698/tcp 0.000025 |
| olsr | 698/udp | 0.000000 | # OLSR |
| accessnetwork | 699/tcp | 0.000025 | # Access Network |
| accessnetwork | 699/udp | 0.000000 | # Access Network |
| epp | 700/tcp | 0.000289 | # Extensible Provisioning Protocol |
| epp | 700/udp | 0.000330 | # Extensible Provisioning Protocol |
| lmp | 701/tcp | 0.000151 | # Link Management Protocol (LMP) |
| lmp | 701/udp | 0.000330 | # Link Management Protocol (LMP) |
| iris-beep | 702/tcp | 0.000050 | # IRIS over BEEP |
| iris-beep | 702/udp | 0.000000 | # IRIS over BEEP |
| elcsd | 704/tcp | 0.000038 | # errlog copy/server daemon |
| elcsd | 704/udp | 0.000923 | # errlog copy/server daemon |
| agentx | 705/tcp | 0.000414 | agentx 705/tcp 0.000414 |
| agentx | 705/udp | 0.000661 | # AgentX |
| silc | 706/tcp | 0.000075 | # Secure Internet Live Conferencing -- http://silcnet.org |
| silc | 706/udp | 0.000330 | # SILC |
| borland-dsj | 707/tcp | 0.000063 | # Borland DSJ |
| borland-dsj | 707/udp | 0.000000 | # Borland DSJ |
| entrustmanager | 709/tcp | 0.000125 | # entrust-kmsh | EntrustManager - NorTel DES auth network see 389/tcp | Entrust Key Management Service Handler |
| entrustmanager | 709/udp | 0.000741 | # EntrustManager - NorTel DES auth network see 389/tcp |
| entrust-ash | 710/tcp | 0.000151 | # Entrust Administration Service Handler |
| entrust-ash | 710/udp | 0.000330 | # Entrust Administration Service Handler |
| cisco-tdp | 711/tcp | 0.000401 | # Cisco TDP |
| cisco-tdp | 711/udp | 0.000330 | # Cisco TDP |
| tbrpf | 712/tcp | 0.000025 | tbrpf 712/tcp 0.000025 |
| tbrpf | 712/udp | 0.000000 | # TBRPF |
| iris-xpc | 713/tcp | 0.000125 | # IRIS over XPC |
| iris-xpc | 713/udp | 0.000000 | # IRIS over XPC |
| iris-xpcs | 714/tcp | 0.000226 | # IRIS over XPCS |
| iris-xpcs | 714/udp | 0.000330 | # IRIS over XPCS |
| iris-lwz | 715/tcp | 0.000088 | iris-lwz 715/tcp 0.000088 |
| iris-lwz | 715/udp | 0.000330 | # IRIS-LWZ |
| pana | 716/tcp | 0.000063 | # PANA Messages |
| pana | 716/udp | 0.000330 | # PANA Messages |
| omfs | 723/tcp | 0.000038 | # OpenMosix File System |
| netviewdm1 | 729/tcp | 0.000100 | # IBM NetView DM/6000 Server/Client |
| netviewdm1 | 729/udp | 0.000857 | # IBM NetView DM/6000 Server/Client |
| netviewdm2 | 730/tcp | 0.000100 | # IBM NetView DM/6000 send/tcp |
| netviewdm2 | 730/udp | 0.000758 | # IBM NetView DM/6000 send/tcp |
| netviewdm3 | 731/tcp | 0.000100 | # IBM NetView DM/6000 receive/tcp |
| netviewdm3 | 731/udp | 0.000741 | # IBM NetView DM/6000 receive/tcp |
| netcp | 740/tcp | 0.000088 | # NETscout Control Protocol |
| netcp | 740/udp | 0.000873 | # NETscout Control Protocol |
| netgw | 741/tcp | 0.000050 | netgw 741/tcp 0.000050 |
| netgw | 741/udp | 0.000428 | netgw 741/udp 0.000428 |
| netrcs | 742/tcp | 0.000013 | # Network based Rev. Cont. Sys. |
| netrcs | 742/udp | 0.000956 | # Network based Rev. Cont. Sys. |
| flexlm | 744/tcp | 0.000013 | # Flexible License Manager |
| flexlm | 744/udp | 0.000659 | # Flexible License Manager |
| fujitsu-dev | 747/tcp | 0.000025 | # Fujitsu Device Control |
| fujitsu-dev | 747/udp | 0.000791 | # Fujitsu Device Control |
| ris-cm | 748/tcp | 0.000113 | # Russell Info Sci Calendar Manager |
| ris-cm | 748/udp | 0.001120 | # Russell Info Sci Calendar Manager |
| kerberos-adm | 749/tcp | 0.000326 | # Kerberos 5 admin/changepw | kerberos administration |
| kerberos-adm | 749/udp | 0.000939 | # Kerberos 5 admin/changepw |
| kerberos | 750/tcp | 0.000063 | # kerberos-iv | loadav | rfile | kdc Kerberos (v4) | kerberos version iv |
| kerberos | 750/udp | 0.001269 | # kdc Kerberos (v4) |
| kadmin | 751/tcp | 0.000038 | # pump | Kerberos `kadmin' (v4) |
| kadmin | 751/udp | 0.000923 | # Kerberos `kadmin' (v4) |
| qrh | 752/tcp | 0.000013 | qrh 752/tcp 0.000013 |
| qrh | 752/udp | 0.000725 | qrh 752/udp 0.000725 |
| rrh | 753/tcp | 0.000013 | rrh 753/tcp 0.000013 |
| rrh | 753/udp | 0.000675 | rrh 753/udp 0.000675 |
| krb_prop | 754/tcp | 0.000088 | # tell | kerberos/v5 server propagation | send |
| tell | 754/udp | 0.000330 | # send |
| nlogin | 758/tcp | 0.000088 | nlogin 758/tcp 0.000088 |
| nlogin | 758/udp | 0.000708 | nlogin 758/udp 0.000708 |
| con | 759/tcp | 0.000025 | con 759/tcp 0.000025 |
| con | 759/udp | 0.000972 | con 759/udp 0.000972 |
| krbupdate | 760/tcp | 0.000050 | # ns | kreg Kerberos (v4) registration |
| ns | 760/udp | 0.001153 | ns 760/udp 0.001153 |
| kpasswd | 761/tcp | 0.000050 | # rxe | kpwd Kerberos (v4) "passwd" |
| rxe | 761/udp | 0.000956 | rxe 761/udp 0.000956 |
| quotad | 762/tcp | 0.000075 | quotad 762/tcp 0.000075 |
| quotad | 762/udp | 0.000626 | quotad 762/udp 0.000626 |
| cycleserv | 763/tcp | 0.000025 | cycleserv 763/tcp 0.000025 |
| cycleserv | 763/udp | 0.000741 | cycleserv 763/udp 0.000741 |
| omserv | 764/tcp | 0.000025 | omserv 764/tcp 0.000025 |
| omserv | 764/udp | 0.001351 | omserv 764/udp 0.001351 |
| webster | 765/tcp | 0.000213 | webster 765/tcp 0.000213 |
| webster | 765/udp | 0.000659 | webster 765/udp 0.000659 |
| phonebook | 767/tcp | 0.000013 | # phone |
| phonebook | 767/udp | 0.002257 | # phone |
| vid | 769/tcp | 0.000075 | vid 769/tcp 0.000075 |
| vid | 769/udp | 0.001252 | vid 769/udp 0.001252 |
| cadlock | 770/tcp | 0.000038 | cadlock 770/tcp 0.000038 |
| cadlock | 770/udp | 0.001269 | cadlock 770/udp 0.001269 |
| rtip | 771/tcp | 0.000063 | rtip 771/tcp 0.000063 |
| rtip | 771/udp | 0.001219 | rtip 771/udp 0.001219 |
| cycleserv2 | 772/tcp | 0.000000 | cycleserv2 772/tcp 0.000000 |
| cycleserv2 | 772/udp | 0.001796 | cycleserv2 772/udp 0.001796 |
| submit | 773/tcp | 0.000013 | # notify |
| notify | 773/udp | 0.001713 | notify 773/udp 0.001713 |
| rpasswd | 774/tcp | 0.000025 | # acmaint_dbd | acmaint-dbd |
| acmaint_dbd | 774/udp | 0.001664 | acmaint_dbd 774/udp 0.001664 |
| entomb | 775/tcp | 0.000013 | # acmaint_transd | acmaint-transd |
| acmaint_transd | 775/udp | 0.001993 | acmaint_transd 775/udp 0.001993 |
| wpages | 776/tcp | 0.000025 | wpages 776/tcp 0.000025 |
| wpages | 776/udp | 0.002043 | wpages 776/udp 0.002043 |
| multiling-http | 777/tcp | 0.000226 | # Multiling HTTP |
| multiling-http | 777/udp | 0.000661 | # Multiling HTTP |
| wpgs | 780/tcp | 0.000151 | wpgs 780/tcp 0.000151 |
| wpgs | 780/udp | 0.002718 | wpgs 780/udp 0.002718 |
| hp-collector | 781/tcp | 0.000013 | # hp performance data collector |
| hp-collector | 781/udp | 0.002636 | # hp performance data collector |
| hp-managed-node | 782/tcp | 0.000100 | # hp performance data managed node |
| hp-managed-node | 782/udp | 0.002933 | # hp performance data managed node |
| spamassassin | 783/tcp | 0.000163 | # Apache SpamAssassin spamd |
| concert | 786/tcp | 0.000100 | concert 786/tcp 0.000100 |
| concert | 786/udp | 0.002900 | concert 786/udp 0.002900 |
| qsc | 787/tcp | 0.001455 | qsc 787/tcp 0.001455 |
| controlit | 799/tcp | 0.000038 | # Remotely possible |
| mdbs_daemon | 800/tcp | 0.000427 | # mdbs-daemon |
| mdbs_daemon | 800/udp | 0.004333 | mdbs_daemon 800/udp 0.004333 |
| device | 801/tcp | 0.000238 | device 801/tcp 0.000238 |
| device | 801/udp | 0.000939 | device 801/udp 0.000939 |
| mbap-s | 802/tcp | 0.000088 | # Modbus Application Protocol Secure |
| ccproxy-http | 808/tcp | 0.002296 | # CCProxy HTTP/Gopher/FTP (over HTTP) proxy |
| fcp-udp | 810/tcp | 0.000063 | # FCP | FCP Datagram |
| fcp-udp | 810/udp | 0.000661 | # FCP Datagram |
| itm-mcell-s | 828/tcp | 0.000063 | itm-mcell-s 828/tcp 0.000063 |
| itm-mcell-s | 828/udp | 0.000330 | itm-mcell-s 828/udp 0.000330 |
| pkix-3-ca-ra | 829/tcp | 0.000125 | # PKIX-3 CA/RA |
| pkix-3-ca-ra | 829/udp | 0.001982 | # PKIX-3 CA/RA |
| netconf-ssh | 830/tcp | 0.000075 | # NETCONF over SSH |
| netconf-ssh | 830/udp | 0.000000 | # NETCONF over SSH |
| netconf-beep | 831/tcp | 0.000050 | # NETCONF over BEEP |
| netconf-beep | 831/udp | 0.000661 | # NETCONF over BEEP |
| netconfsoaphttp | 832/tcp | 0.000038 | # NETCONF for SOAP over HTTPS |
| netconfsoaphttp | 832/udp | 0.000000 | # NETCONF for SOAP over HTTPS |
| netconfsoapbeep | 833/tcp | 0.000063 | # NETCONF for SOAP over BEEP |
| netconfsoapbeep | 833/udp | 0.000661 | # NETCONF for SOAP over BEEP |
| dhcp-failover2 | 847/tcp | 0.000063 | # dhcp-failover 2 |
| dhcp-failover2 | 847/udp | 0.000330 | # dhcp-failover 2 |
| gdoi | 848/tcp | 0.000025 | gdoi 848/tcp 0.000025 |
| gdoi | 848/udp | 0.000330 | # GDOI |
| domain-s | 853/tcp | 0.000025 | # DNS query-response protocol run over TLS/DTLS | DNS query-response protocol run over TLS | DNS query-response protocol run over DTLS or QUIC |
| dlep | 854/tcp | 0.000038 | # Dynamic Link Exchange Protocol (DLEP) |
| iscsi | 860/tcp | 0.000063 | iscsi 860/tcp 0.000063 |
| iscsi | 860/udp | 0.000000 | # iSCSI |
| owamp-control | 861/tcp | 0.000063 | # owamp-test | OWAMP-Test |
| owamp-control | 861/udp | 0.000330 | # OWAMP-Control |
| twamp-control | 862/tcp | 0.000100 | # twamp-test | Two-way Active Measurement Protocol (TWAMP) Control | TWAMP-Test Receiver Port |
| twamp-control | 862/udp | 0.000000 | # Two-way Active Measurement Protocol (TWAMP) Control |
| supfilesrv | 871/tcp | 0.000025 | # SUP server |
| rsync | 873/tcp | 0.003400 | # Rsync server ( http://rsync.samba.org ) |
| rsync | 873/udp | 0.000661 | rsync 873/udp 0.000661 |
| iclcnet-locate | 886/tcp | 0.000038 | # ICL coNETion locate server |
| iclcnet-locate | 886/udp | 0.000330 | # ICL coNETion locate server |
| iclcnet_svinfo | 887/tcp | 0.000025 | # iclcnet-svinfo | ICL coNETion server info |
| iclcnet_svinfo | 887/udp | 0.000991 | # ICL coNETion server info |
| accessbuilder | 888/tcp | 0.000928 | # cddbp | or Audio CD Database | CD Database Protocol |
| accessbuilder | 888/udp | 0.000923 | accessbuilder 888/udp 0.000923 |
| sun-manageconsole | 898/tcp | 0.000339 | # Solaris Management Console Java listener (Solaris 8 & 9) |
| omginitialrefs | 900/tcp | 0.000452 | # OMG Initial Refs |
| omginitialrefs | 900/udp | 0.000661 | # OMG Initial Refs |
| samba-swat | 901/tcp | 0.000552 | # smpnameres | Samba SWAT tool.  Also used by ISS RealSecure. | SMPNAMERES |
| smpnameres | 901/udp | 0.000330 | # SMPNAMERES |
| iss-realsecure | 902/tcp | 0.001468 | # ideafarm-door | ISS RealSecure Sensor | self documenting Telnet Door | self documenting Door: send 0x00 for info |
| ideafarm-door | 902/udp | 0.001982 | # self documenting Door: send 0x00 for info |
| iss-console-mgr | 903/tcp | 0.000176 | # ideafarm-panic | ISS Console Manager | self documenting Telnet Panic Door | self documenting Panic Door: send 0x00 for info |
| ideafarm-panic | 903/udp | 0.001652 | # self documenting Panic Door: send 0x00 for info |
| kink | 910/tcp | 0.000013 | # Kerberized Internet Negotiation of Keys (KINK) |
| kink | 910/udp | 0.000330 | # Kerberized Internet Negotiation of Keys (KINK) |
| xact-backup | 911/tcp | 0.000188 | xact-backup 911/tcp 0.000188 |
| xact-backup | 911/udp | 0.000000 | xact-backup 911/udp 0.000000 |
| apex-mesh | 912/tcp | 0.000527 | # APEX relay-relay service |
| apex-mesh | 912/udp | 0.000000 | # APEX relay-relay service |
| apex-edge | 913/tcp | 0.000151 | # APEX endpoint-relay service |
| apex-edge | 913/udp | 0.000000 | # APEX endpoint-relay service |
| oftep-rpc | 950/tcp | 0.000050 | # Often RPC.statd (on Redhat Linux) |
| rndc | 953/tcp | 0.000138 | # RNDC is used by BIND 9 (& probably other NS) | BIND9 remote name daemon controller |
| securenetpro-sensor | 975/tcp | 0.000038 | securenetpro-sensor 975/tcp 0.000038 |
| ftps-data | 989/tcp | 0.000063 | # ftp protocol, data, over TLS/SSL |
| ftps-data | 989/udp | 0.006277 | # ftp protocol, data, over TLS/SSL |
| ftps | 990/tcp | 0.005570 | # ftp protocol, control, over TLS/SSL |
| ftps | 990/udp | 0.004625 | # ftp protocol, control, over TLS/SSL |
| nas | 991/tcp | 0.000038 | # Netnews Administration System |
| nas | 991/udp | 0.000000 | # Netnews Administration System |
| telnets | 992/tcp | 0.000903 | # telnet protocol over TLS/SSL |
| telnets | 992/udp | 0.000000 | # telnet protocol over TLS/SSL |
| imaps | 993/tcp | 0.027199 | # imap4 protocol over TLS/SSL | IMAP over TLS protocol |
| imaps | 993/udp | 0.000661 | # imap4 protocol over TLS/SSL |
| ircs | 994/tcp | 0.000038 | # irc protocol over TLS/SSL |
| ircs | 994/udp | 0.000000 | # irc protocol over TLS/SSL |
| pop3s | 995/tcp | 0.029921 | # POP3 protocol over TLS/SSL | pop3 protocol over TLS/SSL (was spop3) | POP3 over TLS protocol |
| pop3s | 995/udp | 0.000991 | # pop3 protocol over TLS/SSL (was spop3) |
| xtreelic | 996/tcp | 0.000100 | # XTREE License Server | vsinet |
| vsinet | 996/udp | 0.073362 | vsinet 996/udp 0.073362 |
| maitrd | 997/tcp | 0.000038 | maitrd 997/tcp 0.000038 |
| maitrd | 997/udp | 0.073247 | maitrd 997/udp 0.073247 |
| busboy | 998/tcp | 0.000100 | # puparp |
| puparp | 998/udp | 0.073395 | puparp 998/udp 0.073395 |
| garcon | 999/tcp | 0.000966 | # puprouter | applix | Applix ac |
| applix | 999/udp | 0.073230 | # Applix ac |
| cadlock | 1000/tcp | 0.003149 | # cadlock2 |
| ock | 1000/udp | 0.002142 | ock 1000/udp 0.002142 |
| webpush | 1001/tcp | 0.000364 | # HTTP Web Push |
| windows-icfw | 1002/tcp | 0.000690 | # Windows Internet Connection Firewall or Internet Locator Server for NetMeeting. |
| ufsd | 1008/tcp | 0.000125 | # ufsd  # UFS-aware server |
| ufsd | 1008/udp | 0.004020 | ufsd 1008/udp 0.004020 |
| surf | 1010/tcp | 0.000188 | surf 1010/tcp 0.000188 |
| surf | 1010/udp | 0.000661 | surf 1010/udp 0.000661 |
| exp1 | 1021/tcp | 0.000301 | # RFC3692-style Experiment 1 (*)    [RFC4727] | RFC3692-style Experiment 1 |
| exp1 | 1021/udp | 0.003634 | # RFC3692-style Experiment 1 (*)    [RFC4727] |
| exp2 | 1022/tcp | 0.001217 | # RFC3692-style Experiment 2 (*)    [RFC4727] | RFC3692-style Experiment 2 |
| exp2 | 1022/udp | 0.007929 | # RFC3692-style Experiment 2 (*)    [RFC4727] |
| netvenuechat | 1023/tcp | 0.000953 | # Nortel NetVenue Notification, Chat, Intercom |
| kdm | 1024/tcp | 0.002722 | # K Display Manager (KDE version of xdm) |
| NFS-or-IIS | 1025/tcp | 0.022406 | # blackjack | IIS, NFS, or listener RFS remote_file_sharing | network blackjack |
| blackjack | 1025/udp | 0.041813 | # network blackjack |
| LSA-or-nterm | 1026/tcp | 0.010237 | # cap | nterm remote_login network_terminal | Calendar Access Protocol |
| win-rpc | 1026/udp | 0.024777 | # Commonly used to send MS Messenger spam |
| IIS | 1027/tcp | 0.006724 | # 6a44 | IPv6 Behind NAT44 CPEs |
| ms-lsa | 1028/udp | 0.013443 | ms-lsa 1028/udp 0.013443 |
| ms-lsa | 1029/tcp | 0.003801 | # solid-mux | Solid Mux Server |
| solid-mux | 1029/udp | 0.014536 | # Solid Mux Server |
| iad1 | 1030/tcp | 0.002860 | # BBN IAD |
| iad1 | 1030/udp | 0.008007 | # BBN IAD |
| iad2 | 1031/tcp | 0.002221 | # BBN IAD |
| iad2 | 1031/udp | 0.006639 | # BBN IAD |
| iad3 | 1032/tcp | 0.001719 | # BBN IAD |
| iad3 | 1032/udp | 0.006705 | # BBN IAD |
| netinfo | 1033/tcp | 0.001342 | # netinfo-local | Netinfo is apparently on many OS X boxes. | local netinfo port |
| netinfo-local | 1033/udp | 0.003964 | # local netinfo port |
| zincite-a | 1034/tcp | 0.001064 | # activesync | Zincite.A backdoor | ActiveSync Notifications |
| activesync-notify | 1034/udp | 0.005173 | # Windows Mobile device ActiveSync Notifications |
| multidropper | 1035/tcp | 0.001216 | # mxxrlogin | A Multidropper Adware, or PhoneFree | MX-XR RPC |
| mxxrlogin | 1035/udp | 0.001982 | # MX-XR RPC |
| nsstp | 1036/tcp | 0.001216 | # Nebula Secure Segment Transfer Protocol |
| nsstp | 1036/udp | 0.004295 | # Nebula Secure Segment Transfer Protocol |
| ams | 1037/tcp | 0.001216 | ams 1037/tcp 0.001216 |
| ams | 1037/udp | 0.002313 | # AMS |
| mtqp | 1038/tcp | 0.002053 | # Message Tracking Query Protocol |
| mtqp | 1038/udp | 0.004295 | # Message Tracking Query Protocol |
| sbl | 1039/tcp | 0.002129 | # Streamlined Blackhole |
| sbl | 1039/udp | 0.004295 | # Streamlined Blackhole |
| netsaint | 1040/tcp | 0.001342 | # netarx | Netsaint status daemon | Netarx Netcare |
| netarx | 1040/udp | 0.001982 | # Netarx Netcare |
| danf-ak2 | 1041/tcp | 0.002433 | # AK2 Product |
| danf-ak2 | 1041/udp | 0.004625 | # AK2 Product |
| afrog | 1042/tcp | 0.000988 | # Subnet Roaming |
| afrog | 1042/udp | 0.001982 | # Subnet Roaming |
| boinc | 1043/tcp | 0.000841 | # boinc-client | BOINC Client Control or Microsoft IIS | BOINC Client Control |
| boinc | 1043/udp | 0.003493 | # BOINC Client Control |
| dcutility | 1044/tcp | 0.002205 | # Dev Consortium Utility |
| dcutility | 1044/udp | 0.003304 | # Dev Consortium Utility |
| fpitp | 1045/tcp | 0.000380 | # Fingerprint Image Transfer Protocol |
| fpitp | 1045/udp | 0.004625 | # Fingerprint Image Transfer Protocol |
| wfremotertm | 1046/tcp | 0.000380 | # WebFilter Remote Monitor |
| wfremotertm | 1046/udp | 0.001652 | # WebFilter Remote Monitor |
| neod1 | 1047/tcp | 0.000760 | # Sun's NEO Object Request Broker |
| neod1 | 1047/udp | 0.002973 | # Sun's NEO Object Request Broker |
| neod2 | 1048/tcp | 0.002357 | # Sun's NEO Object Request Broker |
| neod2 | 1048/udp | 0.002313 | # Sun's NEO Object Request Broker |
| td-postman | 1049/tcp | 0.002357 | # Tobit David Postman VPMN |
| td-postman | 1049/udp | 0.003304 | # Tobit David Postman VPMN |
| java-or-OTGfileshare | 1050/tcp | 0.001669 | # cma | J2EE nameserver, also OTG, also called Disk/Application extender. Could also be MiniCommand backdoor OTGlicenseserv | CORBA Management Agent |
| cma | 1050/udp | 0.001652 | # CORBA Management Agent |
| optima-vnet | 1051/tcp | 0.000760 | # Optima VNET |
| optima-vnet | 1051/udp | 0.001321 | optima-vnet 1051/udp 0.001321 |
| ddt | 1052/tcp | 0.000760 | # Dynamic DNS tools | Dynamic DNS Tools |
| ddt | 1052/udp | 0.000991 | # Dynamic DNS tools |
| remote-as | 1053/tcp | 0.002357 | # Remote Assistant (RA) |
| remote-as | 1053/udp | 0.001652 | # Remote Assistant (RA) |
| brvread | 1054/tcp | 0.002357 | brvread 1054/tcp 0.002357 |
| brvread | 1054/udp | 0.002643 | # BRVREAD |
| ansyslmd | 1055/tcp | 0.000760 | # ANSYS - License Manager |
| ansyslmd | 1055/udp | 0.001652 | ansyslmd 1055/udp 0.001652 |
| vfo | 1056/tcp | 0.002357 | vfo 1056/tcp 0.002357 |
| vfo | 1056/udp | 0.002973 | # VFO |
| startron | 1057/tcp | 0.000380 | startron 1057/tcp 0.000380 |
| startron | 1057/udp | 0.001652 | # STARTRON |
| nim | 1058/tcp | 0.001380 | nim 1058/tcp 0.001380 |
| nim | 1058/udp | 0.001466 | nim 1058/udp 0.001466 |
| nimreg | 1059/tcp | 0.001342 | nimreg 1059/tcp 0.001342 |
| nimreg | 1059/udp | 0.001647 | nimreg 1059/udp 0.001647 |
| polestar | 1060/tcp | 0.000760 | polestar 1060/tcp 0.000760 |
| polestar | 1060/udp | 0.001652 | polestar 1060/udp 0.001652 |
| kiosk | 1061/tcp | 0.000380 | kiosk 1061/tcp 0.000380 |
| kiosk | 1061/udp | 0.000991 | # KIOSK |
| veracity | 1062/tcp | 0.000760 | veracity 1062/tcp 0.000760 |
| veracity | 1062/udp | 0.000991 | veracity 1062/udp 0.000991 |
| kyoceranetdev | 1063/tcp | 0.000380 | kyoceranetdev 1063/tcp 0.000380 |
| kyoceranetdev | 1063/udp | 0.000661 | # KyoceraNetDev |
| jstel | 1064/tcp | 0.002357 | jstel 1064/tcp 0.002357 |
| jstel | 1064/udp | 0.001982 | # JSTEL |
| syscomlan | 1065/tcp | 0.002357 | syscomlan 1065/tcp 0.002357 |
| syscomlan | 1065/udp | 0.002313 | # SYSCOMLAN |
| fpo-fns | 1066/tcp | 0.001901 | fpo-fns 1066/tcp 0.001901 |
| fpo-fns | 1066/udp | 0.002643 | fpo-fns 1066/udp 0.002643 |
| instl_boots | 1067/tcp | 0.000728 | # instl-boots | Installation Bootstrap Proto. Serv. |
| instl_boots | 1067/udp | 0.001516 | # Installation Bootstrap Proto. Serv. |
| instl_bootc | 1068/tcp | 0.000941 | # instl-bootc | Installation Bootstrap Proto. Cli. |
| instl_bootc | 1068/udp | 0.004778 | # Installation Bootstrap Proto. Cli. |
| cognex-insight | 1069/tcp | 0.001901 | cognex-insight 1069/tcp 0.001901 |
| cognex-insight | 1069/udp | 0.001982 | cognex-insight 1069/udp 0.001982 |
| gmrupdateserv | 1070/tcp | 0.000380 | gmrupdateserv 1070/tcp 0.000380 |
| gmrupdateserv | 1070/udp | 0.001321 | # GMRUpdateSERV |
| bsquare-voip | 1071/tcp | 0.002205 | bsquare-voip 1071/tcp 0.002205 |
| bsquare-voip | 1071/udp | 0.000330 | # BSQUARE-VOIP |
| cardax | 1072/tcp | 0.000380 | cardax 1072/tcp 0.000380 |
| cardax | 1072/udp | 0.001321 | # CARDAX |
| bridgecontrol | 1073/tcp | 0.000380 | # Bridge Control |
| bridgecontrol | 1073/udp | 0.000000 | # Bridge Control |
| warmspotMgmt | 1074/tcp | 0.001216 | # Warmspot Management Protocol |
| warmspotMgmt | 1074/udp | 0.000661 | # Warmspot Management Protocol |
| rdrmshc | 1075/tcp | 0.000380 | rdrmshc 1075/tcp 0.000380 |
| rdrmshc | 1075/udp | 0.000330 | # RDRMSHC |
| sns_credit | 1076/tcp | 0.000213 | # dab-sti-c | Shared Network Services (SNS) for Canadian credit card authorizations | DAB STI-C |
| dab-sti-c | 1076/udp | 0.000661 | # DAB STI-C |
| imgames | 1077/tcp | 0.000380 | imgames 1077/tcp 0.000380 |
| imgames | 1077/udp | 0.000661 | # IMGames |
| avocent-proxy | 1078/tcp | 0.000380 | # Avocent Proxy Protocol |
| avocent-proxy | 1078/udp | 0.000661 | # Avocent Proxy Protocol |
| asprovatalk | 1079/tcp | 0.000380 | asprovatalk 1079/tcp 0.000380 |
| asprovatalk | 1079/udp | 0.000661 | # ASPROVATalk |
| socks | 1080/tcp | 0.001518 | socks 1080/tcp 0.001518 |
| socks | 1080/udp | 0.002685 | socks 1080/udp 0.002685 |
| pvuniwien | 1081/tcp | 0.000380 | pvuniwien 1081/tcp 0.000380 |
| pvuniwien | 1081/udp | 0.001652 | # PVUNIWIEN |
| amt-esd-prot | 1082/tcp | 0.000380 | amt-esd-prot 1082/tcp 0.000380 |
| amt-esd-prot | 1082/udp | 0.000330 | # AMT-ESD-PROT |
| ansoft-lm-1 | 1083/tcp | 0.000427 | # Anasoft License Manager |
| ansoft-lm-1 | 1083/udp | 0.001236 | # Anasoft License Manager |
| ansoft-lm-2 | 1084/tcp | 0.000263 | # Anasoft License Manager |
| ansoft-lm-2 | 1084/udp | 0.000626 | # Anasoft License Manager |
| webobjects | 1085/tcp | 0.000380 | # Web Objects |
| webobjects | 1085/udp | 0.000661 | # Web Objects |
| cplscrambler-lg | 1086/tcp | 0.000456 | # CPL Scrambler Logging |
| cplscrambler-lg | 1086/udp | 0.000330 | # CPL Scrambler Logging |
| cplscrambler-in | 1087/tcp | 0.000304 | # CPL Scrambler Internal |
| cplscrambler-in | 1087/udp | 0.001321 | # CPL Scrambler Internal |
| cplscrambler-al | 1088/tcp | 0.000456 | # CPL Scrambler Alarm Log |
| cplscrambler-al | 1088/udp | 0.001321 | # CPL Scrambler Alarm Log |
| ff-annunc | 1089/tcp | 0.000304 | # FF Annunciation |
| ff-annunc | 1089/udp | 0.000661 | # FF Annunciation |
| ff-fms | 1090/tcp | 0.000228 | # FF Fieldbus Message Specification |
| ff-fms | 1090/udp | 0.002313 | # FF Fieldbus Message Specification |
| ff-sm | 1091/tcp | 0.000228 | # FF System Management |
| ff-sm | 1091/udp | 0.000000 | # FF System Management |
| obrpd | 1092/tcp | 0.000152 | # Open Business Reporting Protocol |
| obrpd | 1092/udp | 0.000330 | # Open Business Reporting Protocol |
| proofd | 1093/tcp | 0.000380 | proofd 1093/tcp 0.000380 |
| proofd | 1093/udp | 0.000330 | # PROOFD |
| rootd | 1094/tcp | 0.000380 | rootd 1094/tcp 0.000380 |
| rootd | 1094/udp | 0.000330 | # ROOTD |
| nicelink | 1095/tcp | 0.000152 | nicelink 1095/tcp 0.000152 |
| nicelink | 1095/udp | 0.000661 | # NICELink |
| cnrprotocol | 1096/tcp | 0.000380 | # Common Name Resolution Protocol |
| cnrprotocol | 1096/udp | 0.000000 | # Common Name Resolution Protocol |
| sunclustermgr | 1097/tcp | 0.000456 | # Sun Cluster Manager |
| sunclustermgr | 1097/udp | 0.000000 | # Sun Cluster Manager |
| rmiactivation | 1098/tcp | 0.000380 | # RMI Activation |
| rmiactivation | 1098/udp | 0.000991 | # RMI Activation |
| rmiregistry | 1099/tcp | 0.000380 | # RMI Registry |
| rmiregistry | 1099/udp | 0.000661 | # RMI Registry |
| mctp | 1100/tcp | 0.000380 | mctp 1100/tcp 0.000380 |
| mctp | 1100/udp | 0.001652 | # MCTP |
| pt2-discover | 1101/tcp | 0.000076 | pt2-discover 1101/tcp 0.000076 |
| pt2-discover | 1101/udp | 0.001321 | # PT2-DISCOVER |
| adobeserver-1 | 1102/tcp | 0.000152 | # ADOBE SERVER 1 |
| adobeserver-1 | 1102/udp | 0.000661 | # ADOBE SERVER 1 |
| xaudio | 1103/tcp | 0.000151 | # adobeserver-2 | Xaserver # X Audio Server | ADOBE SERVER 2 |
| adobeserver-2 | 1103/udp | 0.000661 | # ADOBE SERVER 2 |
| xrl | 1104/tcp | 0.000380 | xrl 1104/tcp 0.000380 |
| xrl | 1104/udp | 0.000330 | # XRL |
| ftranhc | 1105/tcp | 0.000152 | ftranhc 1105/tcp 0.000152 |
| ftranhc | 1105/udp | 0.001652 | # FTRANHC |
| isoipsigport-1 | 1106/tcp | 0.000380 | isoipsigport-1 1106/tcp 0.000380 |
| isoipsigport-1 | 1106/udp | 0.000661 | # ISOIPSIGPORT-1 |
| isoipsigport-2 | 1107/tcp | 0.000380 | isoipsigport-2 1107/tcp 0.000380 |
| isoipsigport-2 | 1107/udp | 0.000330 | # ISOIPSIGPORT-2 |
| ratio-adp | 1108/tcp | 0.000380 | ratio-adp 1108/tcp 0.000380 |
| ratio-adp | 1108/udp | 0.000330 | ratio-adp 1108/udp 0.000330 |
| kpop | 1109/tcp | 0.000151 | # Pop with Kerberos |
| nfsd-status | 1110/tcp | 0.005809 | # nfsd-keepalive | webadmstart | Cluster status info | Start web admin server | Client status info |
| nfsd-keepalive | 1110/udp | 0.000939 | # Client status info |
| lmsocialserver | 1111/tcp | 0.001140 | # LM Social Server |
| lmsocialserver | 1111/udp | 0.000000 | # LM Social Server |
| msql | 1112/tcp | 0.000276 | # icp | mini-sql server | Intelligent Communication Protocol |
| icp | 1112/udp | 0.000330 | # Intelligent Communication Protocol |
| ltp-deepspace | 1113/tcp | 0.000152 | # Licklider Transmission Protocol |
| ltp-deepspace | 1113/udp | 0.000991 | # Licklider Transmission Protocol |
| mini-sql | 1114/tcp | 0.000228 | # Mini SQL |
| mini-sql | 1114/udp | 0.000330 | # Mini SQL |
| ardus-trns | 1115/tcp | 0.000000 | # ARDUS Transfer |
| ardus-trns | 1115/udp | 0.000000 | # ARDUS Transfer |
| ardus-cntl | 1116/tcp | 0.000076 | # ARDUS Control |
| ardus-cntl | 1116/udp | 0.000661 | # ARDUS Control |
| ardus-mtrns | 1117/tcp | 0.000228 | # ARDUS Multicast Transfer |
| ardus-mtrns | 1117/udp | 0.000330 | # ARDUS Multicast Transfer |
| sacred | 1118/tcp | 0.000076 | sacred 1118/tcp 0.000076 |
| sacred | 1118/udp | 0.000000 | # SACRED |
| bnetgame | 1119/tcp | 0.000228 | # Battle.net Chat/Game Protocol |
| bnetgame | 1119/udp | 0.000330 | # Battle.net Chat/Game Protocol |
| bnetfile | 1120/tcp | 0.000000 | # Battle.net File Transfer Protocol |
| bnetfile | 1120/udp | 0.000330 | # Battle.net File Transfer Protocol |
| rmpp | 1121/tcp | 0.000152 | # Datalode RMPP |
| rmpp | 1121/udp | 0.000000 | # Datalode RMPP |
| availant-mgr | 1122/tcp | 0.000228 | availant-mgr 1122/tcp 0.000228 |
| availant-mgr | 1122/udp | 0.000661 | availant-mgr 1122/udp 0.000661 |
| murray | 1123/tcp | 0.000152 | murray 1123/tcp 0.000152 |
| murray | 1123/udp | 0.000000 | # Murray |
| hpvmmcontrol | 1124/tcp | 0.000304 | # HP VMM Control |
| hpvmmcontrol | 1124/udp | 0.001652 | # HP VMM Control |
| hpvmmagent | 1125/tcp | 0.000076 | # HP VMM Agent |
| hpvmmagent | 1125/udp | 0.000330 | # HP VMM Agent |
| hpvmmdata | 1126/tcp | 0.000152 | # HP VMM Agent |
| hpvmmdata | 1126/udp | 0.000000 | # HP VMM Agent |
| supfiledbg | 1127/tcp | 0.000088 | # kwdb-commn | SUP debugging | KWDB Remote Communication |
| kwdb-commn | 1127/udp | 0.000000 | # KWDB Remote Communication |
| saphostctrl | 1128/tcp | 0.000076 | # SAPHostControl over SOAP/HTTP |
| saphostctrl | 1128/udp | 0.000000 | # SAPHostControl over SOAP/HTTP |
| saphostctrls | 1129/tcp | 0.000000 | # SAPHostControl over SOAP/HTTPS |
| saphostctrls | 1129/udp | 0.000330 | # SAPHostControl over SOAP/HTTPS |
| casp | 1130/tcp | 0.000152 | # CAC App Service Protocol |
| casp | 1130/udp | 0.000330 | # CAC App Service Protocol |
| caspssl | 1131/tcp | 0.000228 | # CAC App Service Protocol Encripted |
| caspssl | 1131/udp | 0.000330 | # CAC App Service Protocol Encripted |
| kvm-via-ip | 1132/tcp | 0.000152 | # KVM-via-IP Management Service |
| kvm-via-ip | 1132/udp | 0.000000 | # KVM-via-IP Management Service |
| dfn | 1133/tcp | 0.000000 | # Data Flow Network |
| dfn | 1133/udp | 0.000330 | # Data Flow Network |
| aplx | 1134/tcp | 0.000076 | # MicroAPL APLX |
| aplx | 1134/udp | 0.000000 | # MicroAPL APLX |
| omnivision | 1135/tcp | 0.000076 | # OmniVision Communication Service |
| omnivision | 1135/udp | 0.000000 | # OmniVision Communication Service |
| hhb-gateway | 1136/tcp | 0.000076 | # HHB Gateway Control |
| hhb-gateway | 1136/udp | 0.000330 | # HHB Gateway Control |
| trim | 1137/tcp | 0.000152 | # TRIM Workgroup Service |
| trim | 1137/udp | 0.000330 | # TRIM Workgroup Service |
| encrypted_admin | 1138/tcp | 0.000228 | # encrypted-admin | encrypted admin requests |
| encrypted_admin | 1138/udp | 0.000000 | # encrypted admin requests |
| cce3x | 1139/tcp | 0.000063 | # evm | ClearCommerce Engine 3.x ( www.clearcommerce.com) | Enterprise Virtual Manager |
| evm | 1139/udp | 0.000661 | # Enterprise Virtual Manager |
| autonoc | 1140/tcp | 0.000000 | # AutoNOC Network Operations Protocol |
| autonoc | 1140/udp | 0.000000 | # AutoNOC Network Operations Protocol |
| mxomss | 1141/tcp | 0.000152 | # User Message Service |
| mxomss | 1141/udp | 0.000000 | # User Message Service |
| edtools | 1142/tcp | 0.000000 | # User Discovery Service |
| edtools | 1142/udp | 0.000000 | # User Discovery Service |
| imyx | 1143/tcp | 0.000076 | # Infomatryx Exchange |
| imyx | 1143/udp | 0.000661 | # Infomatryx Exchange |
| fuscript | 1144/tcp | 0.000076 | # Fusion Script |
| fuscript | 1144/udp | 0.000330 | # Fusion Script |
| x9-icue | 1145/tcp | 0.000152 | # X9 iCue Show Control |
| x9-icue | 1145/udp | 0.000330 | # X9 iCue Show Control |
| audit-transfer | 1146/tcp | 0.000000 | # audit transfer |
| audit-transfer | 1146/udp | 0.000330 | # audit transfer |
| capioverlan | 1147/tcp | 0.000152 | capioverlan 1147/tcp 0.000152 |
| capioverlan | 1147/udp | 0.000330 | # CAPIoverLAN |
| elfiq-repl | 1148/tcp | 0.000380 | # Elfiq Replication Service |
| elfiq-repl | 1148/udp | 0.000661 | # Elfiq Replication Service |
| bvtsonar | 1149/tcp | 0.000152 | # BVT Sonar Service | BlueView Sonar Service |
| bvtsonar | 1149/udp | 0.000330 | # BVT Sonar Service |
| blaze | 1150/tcp | 0.000076 | # Blaze File Server |
| blaze | 1150/udp | 0.000000 | # Blaze File Server |
| unizensus | 1151/tcp | 0.000228 | # Unizensus Login Server |
| unizensus | 1151/udp | 0.000330 | # Unizensus Login Server |
| winpoplanmess | 1152/tcp | 0.000304 | # Winpopup LAN Messenger |
| winpoplanmess | 1152/udp | 0.000000 | # Winpopup LAN Messenger |
| c1222-acse | 1153/tcp | 0.000076 | # ANSI C12.22 Port |
| c1222-acse | 1153/udp | 0.000000 | # ANSI C12.22 Port |
| resacommunity | 1154/tcp | 0.000152 | # Community Service |
| resacommunity | 1154/udp | 0.000000 | # Community Service |
| nfa | 1155/tcp | 0.000000 | # Network File Access |
| nfa | 1155/udp | 0.000890 | # Network File Access |
| iascontrol-oms | 1156/tcp | 0.000076 | # iasControl OMS |
| iascontrol-oms | 1156/udp | 0.000000 | # iasControl OMS |
| iascontrol | 1157/tcp | 0.000076 | # Oracle iASControl |
| iascontrol | 1157/udp | 0.000000 | # Oracle iASControl |
| lsnr | 1158/tcp | 0.000138 | # dbcontrol-oms | Oracle DB listener | dbControl OMS |
| dbcontrol-oms | 1158/udp | 0.000330 | # dbControl OMS |
| oracle-oms | 1159/tcp | 0.000076 | # Oracle OMS |
| oracle-oms | 1159/udp | 0.000000 | # Oracle OMS |
| olsv | 1160/tcp | 0.000000 | # DB Lite Mult-User Server |
| olsv | 1160/udp | 0.000000 | # DB Lite Mult-User Server |
| health-polling | 1161/tcp | 0.000000 | # Health Polling |
| health-polling | 1161/udp | 0.000000 | # Health Polling |
| health-trap | 1162/tcp | 0.000076 | # Health Trap |
| health-trap | 1162/udp | 0.000330 | # Health Trap |
| sddp | 1163/tcp | 0.000152 | # SmartDialer Data Protocol |
| sddp | 1163/udp | 0.000991 | # SmartDialer Data Protocol |
| qsm-proxy | 1164/tcp | 0.000152 | # QSM Proxy Service |
| qsm-proxy | 1164/udp | 0.000330 | # QSM Proxy Service |
| qsm-gui | 1165/tcp | 0.000152 | # QSM GUI Service |
| qsm-gui | 1165/udp | 0.000000 | # QSM GUI Service |
| qsm-remote | 1166/tcp | 0.000152 | # QSM RemoteExec |
| qsm-remote | 1166/udp | 0.000330 | # QSM RemoteExec |
| cisco-ipsla | 1167/sctp | 0.000000 | # Cisco IP SLAs Control Protocol |
| cisco-ipsla | 1167/tcp | 0.000076 | # Cisco IP SLAs Control Protocol |
| cisco-ipsla | 1167/udp | 0.000593 | # Cisco IP SLAs Control Protocol |
| vchat | 1168/tcp | 0.000076 | # VChat Conference Service |
| vchat | 1168/udp | 0.000330 | # VChat Conference Service |
| tripwire | 1169/tcp | 0.000380 | tripwire 1169/tcp 0.000380 |
| tripwire | 1169/udp | 0.000330 | # TRIPWIRE |
| atc-lm | 1170/tcp | 0.000000 | # AT+C License Manager |
| atc-lm | 1170/udp | 0.000330 | # AT+C License Manager |
| atc-appserver | 1171/tcp | 0.000000 | # AT+C FmiApplicationServer |
| atc-appserver | 1171/udp | 0.000000 | # AT+C FmiApplicationServer |
| dnap | 1172/tcp | 0.000000 | # DNA Protocol |
| dnap | 1172/udp | 0.000000 | # DNA Protocol |
| d-cinema-rrp | 1173/tcp | 0.000076 | # D-Cinema Request-Response |
| d-cinema-rrp | 1173/udp | 0.000330 | # D-Cinema Request-Response |
| fnet-remote-ui | 1174/tcp | 0.000152 | # FlashNet Remote Admin |
| fnet-remote-ui | 1174/udp | 0.000000 | # FlashNet Remote Admin |
| dossier | 1175/tcp | 0.000228 | # Dossier Server |
| dossier | 1175/udp | 0.000661 | # Dossier Server |
| indigo-server | 1176/tcp | 0.000076 | # Indigo Home Server |
| indigo-server | 1176/udp | 0.000000 | # Indigo Home Server |
| dkmessenger | 1177/tcp | 0.000000 | # DKMessenger Protocol |
| dkmessenger | 1177/udp | 0.000000 | # DKMessenger Protocol |
| skkserv | 1178/tcp | 0.000050 | # sgi-storman | SKK (kanji input) | SGI Storage Manager |
| sgi-storman | 1178/udp | 0.000000 | # SGI Storage Manager |
| b2n | 1179/tcp | 0.000076 | # Backup To Neighbor |
| b2n | 1179/udp | 0.000000 | # Backup To Neighbor |
| mc-client | 1180/tcp | 0.000076 | # Millicent Client Proxy |
| mc-client | 1180/udp | 0.000000 | # Millicent Client Proxy |
| 3comnetman | 1181/tcp | 0.000000 | # 3Com Net Management |
| 3comnetman | 1181/udp | 0.000000 | # 3Com Net Management |
| accelenet | 1182/tcp | 0.000076 | # accelenet-data | AcceleNet Control | AcceleNet Data |
| accelenet-data | 1182/udp | 0.000000 | # AcceleNet Data |
| llsurfup-http | 1183/tcp | 0.000304 | # LL Surfup HTTP |
| llsurfup-http | 1183/udp | 0.000000 | # LL Surfup HTTP |
| llsurfup-https | 1184/tcp | 0.000076 | # LL Surfup HTTPS |
| llsurfup-https | 1184/udp | 0.000000 | # LL Surfup HTTPS |
| catchpole | 1185/tcp | 0.000152 | # Catchpole port |
| catchpole | 1185/udp | 0.000330 | # Catchpole port |
| mysql-cluster | 1186/tcp | 0.000304 | # MySQL Cluster Manager |
| mysql-cluster | 1186/udp | 0.000000 | # MySQL Cluster Manager |
| alias | 1187/tcp | 0.000152 | # Alias Service |
| alias | 1187/udp | 0.000000 | # Alias Service |
| hp-webadmin | 1188/tcp | 0.000076 | # HP Web Admin |
| hp-webadmin | 1188/udp | 0.000330 | # HP Web Admin |
| unet | 1189/tcp | 0.000000 | # Unet Connection |
| unet | 1189/udp | 0.000330 | # Unet Connection |
| commlinx-avl | 1190/tcp | 0.000076 | # CommLinx GPS / AVL System |
| commlinx-avl | 1190/udp | 0.000000 | # CommLinx GPS / AVL System |
| gpfs | 1191/tcp | 0.000076 | # General Parallel File System |
| gpfs | 1191/udp | 0.000661 | # General Parallel File System |
| caids-sensor | 1192/tcp | 0.000152 | # caids sensors channel |
| caids-sensor | 1192/udp | 0.000000 | # caids sensors channel |
| fiveacross | 1193/tcp | 0.000000 | # Five Across Server |
| fiveacross | 1193/udp | 0.000330 | # Five Across Server |
| openvpn | 1194/tcp | 0.000076 | openvpn 1194/tcp 0.000076 |
| openvpn | 1194/udp | 0.000330 | # OpenVPN |
| rsf-1 | 1195/tcp | 0.000076 | # RSF-1 clustering |
| rsf-1 | 1195/udp | 0.000000 | # RSF-1 clustering |
| netmagic | 1196/tcp | 0.000076 | # Network Magic |
| netmagic | 1196/udp | 0.000000 | # Network Magic |
| carrius-rshell | 1197/tcp | 0.000000 | # Carrius Remote Access |
| carrius-rshell | 1197/udp | 0.000000 | # Carrius Remote Access |
| cajo-discovery | 1198/tcp | 0.000152 | # cajo reference discovery |
| cajo-discovery | 1198/udp | 0.000330 | # cajo reference discovery |
| dmidi | 1199/tcp | 0.000228 | dmidi 1199/tcp 0.000228 |
| dmidi | 1199/udp | 0.000000 | # DMIDI |
| scol | 1200/tcp | 0.000076 | scol 1200/tcp 0.000076 |
| scol | 1200/udp | 0.001321 | # SCOL |
| nucleus-sand | 1201/tcp | 0.000228 | # Nucleus Sand Database Server |
| nucleus-sand | 1201/udp | 0.000000 | # Nucleus Sand Database Server |
| caiccipc | 1202/tcp | 0.000000 | caiccipc 1202/tcp 0.000000 |
| caiccipc | 1202/udp | 0.000000 | caiccipc 1202/udp 0.000000 |
| ssslic-mgr | 1203/tcp | 0.000000 | # License Validation |
| ssslic-mgr | 1203/udp | 0.000661 | # License Validation |
| ssslog-mgr | 1204/tcp | 0.000076 | # Log Request Listener |
| ssslog-mgr | 1204/udp | 0.000000 | # Log Request Listener |
| accord-mgc | 1205/tcp | 0.000000 | accord-mgc 1205/tcp 0.000000 |
| accord-mgc | 1205/udp | 0.000000 | # Accord-MGC |
| anthony-data | 1206/tcp | 0.000000 | # Anthony Data |
| anthony-data | 1206/udp | 0.000661 | # Anthony Data |
| metasage | 1207/tcp | 0.000076 | metasage 1207/tcp 0.000076 |
| metasage | 1207/udp | 0.000330 | # MetaSage |
| seagull-ais | 1208/tcp | 0.000076 | # SEAGULL AIS |
| seagull-ais | 1208/udp | 0.000000 | # SEAGULL AIS |
| ipcd3 | 1209/tcp | 0.000076 | ipcd3 1209/tcp 0.000076 |
| ipcd3 | 1209/udp | 0.000000 | # IPCD3 |
| eoss | 1210/tcp | 0.000076 | eoss 1210/tcp 0.000076 |
| eoss | 1210/udp | 0.000000 | # EOSS |
| groove-dpp | 1211/tcp | 0.000076 | # Groove DPP |
| groove-dpp | 1211/udp | 0.000000 | # Groove DPP |
| lupa | 1212/tcp | 0.000125 | lupa 1212/tcp 0.000125 |
| lupa | 1212/udp | 0.000544 | lupa 1212/udp 0.000544 |
| mpc-lifenet | 1213/tcp | 0.000152 | # MPC LIFENET | Medtronic/Physio-Control LIFENET |
| mpc-lifenet | 1213/udp | 0.000000 | # MPC LIFENET |
| fasttrack | 1214/tcp | 0.000050 | # kazaa | Kazaa File Sharing | KAZAA |
| fasttrack | 1214/udp | 0.001796 | # Kazaa File Sharing |
| scanstat-1 | 1215/tcp | 0.000076 | # scanSTAT 1.0 |
| scanstat-1 | 1215/udp | 0.000661 | # scanSTAT 1.0 |
| etebac5 | 1216/tcp | 0.000152 | # ETEBAC 5 |
| etebac5 | 1216/udp | 0.000330 | # ETEBAC 5 |
| hpss-ndapi | 1217/tcp | 0.000152 | # HPSS NonDCE Gateway |
| hpss-ndapi | 1217/udp | 0.000000 | # HPSS NonDCE Gateway |
| aeroflight-ads | 1218/tcp | 0.001064 | # AeroFlight ADs |
| aeroflight-ads | 1218/udp | 0.000000 | # AeroFlight ADs |
| aeroflight-ret | 1219/tcp | 0.000000 | aeroflight-ret 1219/tcp 0.000000 |
| aeroflight-ret | 1219/udp | 0.000000 | # AeroFlight-Ret |
| quicktime | 1220/tcp | 0.000151 | # qt-serveradmin | Apple Darwin and QuickTime Streaming Administration Servers | QT SERVER ADMIN |
| qt-serveradmin | 1220/udp | 0.000000 | # QT SERVER ADMIN |
| sweetware-apps | 1221/tcp | 0.000076 | # SweetWARE Apps |
| sweetware-apps | 1221/udp | 0.000000 | # SweetWARE Apps |
| nerv | 1222/tcp | 0.000138 | # SNI R&D network |
| nerv | 1222/udp | 0.000346 | # SNI R&D network |
| tgp | 1223/tcp | 0.000076 | # TrulyGlobal Protocol |
| tgp | 1223/udp | 0.000000 | # TrulyGlobal Protocol |
| vpnz | 1224/tcp | 0.000000 | vpnz 1224/tcp 0.000000 |
| vpnz | 1224/udp | 0.000330 | # VPNz |
| slinkysearch | 1225/tcp | 0.000000 | slinkysearch 1225/tcp 0.000000 |
| slinkysearch | 1225/udp | 0.000330 | # SLINKYSEARCH |
| stgxfws | 1226/tcp | 0.000000 | stgxfws 1226/tcp 0.000000 |
| stgxfws | 1226/udp | 0.000330 | # STGXFWS |
| dns2go | 1227/tcp | 0.000000 | dns2go 1227/tcp 0.000000 |
| dns2go | 1227/udp | 0.000330 | # DNS2Go |
| florence | 1228/tcp | 0.000076 | florence 1228/tcp 0.000076 |
| florence | 1228/udp | 0.000000 | # FLORENCE |
| zented | 1229/tcp | 0.000076 | # ZENworks Tiered Electronic Distribution |
| zented | 1229/udp | 0.000330 | # ZENworks Tiered Electronic Distribution |
| periscope | 1230/tcp | 0.000000 | periscope 1230/tcp 0.000000 |
| periscope | 1230/udp | 0.000000 | # Periscope |
| menandmice-lpm | 1231/tcp | 0.000000 | menandmice-lpm 1231/tcp 0.000000 |
| menandmice-lpm | 1231/udp | 0.000330 | menandmice-lpm 1231/udp 0.000330 |
| first-defense | 1232/tcp | 0.000000 | # Remote systems monitoring |
| univ-appserver | 1233/tcp | 0.000152 | # Universal App Server |
| univ-appserver | 1233/udp | 0.000330 | # Universal App Server |
| hotline | 1234/tcp | 0.001217 | # search-agent | Infoseek Search Agent |
| search-agent | 1234/udp | 0.001652 | # Infoseek Search Agent |
| mosaicsyssvc1 | 1235/tcp | 0.000000 | mosaicsyssvc1 1235/tcp 0.000000 |
| mosaicsyssvc1 | 1235/udp | 0.000000 | mosaicsyssvc1 1235/udp 0.000000 |
| bvcontrol | 1236/tcp | 0.000152 | bvcontrol 1236/tcp 0.000152 |
| bvcontrol | 1236/udp | 0.000000 | bvcontrol 1236/udp 0.000000 |
| tsdos390 | 1237/tcp | 0.000000 | tsdos390 1237/tcp 0.000000 |
| tsdos390 | 1237/udp | 0.000991 | tsdos390 1237/udp 0.000991 |
| hacl-qs | 1238/tcp | 0.000000 | hacl-qs 1238/tcp 0.000000 |
| hacl-qs | 1238/udp | 0.000000 | hacl-qs 1238/udp 0.000000 |
| nmsd | 1239/tcp | 0.000076 | nmsd 1239/tcp 0.000076 |
| nmsd | 1239/udp | 0.000000 | # NMSD |
| instantia | 1240/tcp | 0.000076 | instantia 1240/tcp 0.000076 |
| instantia | 1240/udp | 0.000000 | # Instantia |
| nessus | 1241/tcp | 0.000113 | # Nessus or remote message server |
| nessus | 1241/udp | 0.000330 | nessus 1241/udp 0.000330 |
| nmasoverip | 1242/tcp | 0.000000 | # NMAS over IP |
| nmasoverip | 1242/udp | 0.000000 | # NMAS over IP |
| serialgateway | 1243/tcp | 0.000076 | serialgateway 1243/tcp 0.000076 |
| serialgateway | 1243/udp | 0.000000 | # SerialGateway |
| isbconference1 | 1244/tcp | 0.000152 | isbconference1 1244/tcp 0.000152 |
| isbconference1 | 1244/udp | 0.000000 | isbconference1 1244/udp 0.000000 |
| isbconference2 | 1245/tcp | 0.000000 | isbconference2 1245/tcp 0.000000 |
| isbconference2 | 1245/udp | 0.000000 | isbconference2 1245/udp 0.000000 |
| payrouter | 1246/tcp | 0.000000 | payrouter 1246/tcp 0.000000 |
| payrouter | 1246/udp | 0.000000 | payrouter 1246/udp 0.000000 |
| visionpyramid | 1247/tcp | 0.000304 | visionpyramid 1247/tcp 0.000304 |
| visionpyramid | 1247/udp | 0.000000 | # VisionPyramid |
| hermes | 1248/tcp | 0.000477 | hermes 1248/tcp 0.000477 |
| hermes | 1248/udp | 0.000412 | hermes 1248/udp 0.000412 |
| mesavistaco | 1249/tcp | 0.000076 | # Mesa Vista Co |
| mesavistaco | 1249/udp | 0.000330 | # Mesa Vista Co |
| swldy-sias | 1250/tcp | 0.000076 | swldy-sias 1250/tcp 0.000076 |
| swldy-sias | 1250/udp | 0.000000 | swldy-sias 1250/udp 0.000000 |
| servergraph | 1251/tcp | 0.000076 | servergraph 1251/tcp 0.000076 |
| servergraph | 1251/udp | 0.000661 | servergraph 1251/udp 0.000661 |
| bspne-pcc | 1252/tcp | 0.000000 | bspne-pcc 1252/tcp 0.000000 |
| bspne-pcc | 1252/udp | 0.000000 | bspne-pcc 1252/udp 0.000000 |
| q55-pcc | 1253/tcp | 0.000000 | q55-pcc 1253/tcp 0.000000 |
| q55-pcc | 1253/udp | 0.000330 | q55-pcc 1253/udp 0.000330 |
| de-noc | 1254/tcp | 0.000000 | de-noc 1254/tcp 0.000000 |
| de-noc | 1254/udp | 0.000000 | de-noc 1254/udp 0.000000 |
| de-cache-query | 1255/tcp | 0.000000 | de-cache-query 1255/tcp 0.000000 |
| de-cache-query | 1255/udp | 0.000330 | de-cache-query 1255/udp 0.000330 |
| de-server | 1256/tcp | 0.000000 | de-server 1256/tcp 0.000000 |
| de-server | 1256/udp | 0.000661 | de-server 1256/udp 0.000661 |
| shockwave2 | 1257/tcp | 0.000000 | # Shockwave 2 |
| shockwave2 | 1257/udp | 0.000661 | # Shockwave 2 |
| opennl | 1258/tcp | 0.000000 | # Open Network Library |
| opennl | 1258/udp | 0.000000 | # Open Network Library |
| opennl-voice | 1259/tcp | 0.000152 | # Open Network Library Voice |
| opennl-voice | 1259/udp | 0.000330 | # Open Network Library Voice |
| ibm-ssd | 1260/tcp | 0.000000 | ibm-ssd 1260/tcp 0.000000 |
| ibm-ssd | 1260/udp | 0.000330 | ibm-ssd 1260/udp 0.000330 |
| mpshrsv | 1261/tcp | 0.000076 | mpshrsv 1261/tcp 0.000076 |
| mpshrsv | 1261/udp | 0.000000 | mpshrsv 1261/udp 0.000000 |
| qnts-orb | 1262/tcp | 0.000076 | qnts-orb 1262/tcp 0.000076 |
| qnts-orb | 1262/udp | 0.000000 | # QNTS-ORB |
| dka | 1263/tcp | 0.000000 | dka 1263/tcp 0.000000 |
| dka | 1263/udp | 0.000000 | dka 1263/udp 0.000000 |
| prat | 1264/tcp | 0.000076 | prat 1264/tcp 0.000076 |
| prat | 1264/udp | 0.000330 | # PRAT |
| dssiapi | 1265/tcp | 0.000000 | dssiapi 1265/tcp 0.000000 |
| dssiapi | 1265/udp | 0.000000 | # DSSIAPI |
| dellpwrappks | 1266/tcp | 0.000000 | dellpwrappks 1266/tcp 0.000000 |
| dellpwrappks | 1266/udp | 0.000000 | # DELLPWRAPPKS |
| epc | 1267/tcp | 0.000000 | # eTrust Policy Compliance |
| epc | 1267/udp | 0.000000 | # eTrust Policy Compliance |
| propel-msgsys | 1268/tcp | 0.000076 | propel-msgsys 1268/tcp 0.000076 |
| propel-msgsys | 1268/udp | 0.000000 | # PROPEL-MSGSYS |
| watilapp | 1269/tcp | 0.000000 | watilapp 1269/tcp 0.000000 |
| watilapp | 1269/udp | 0.000330 | # WATiLaPP |
| ssserver | 1270/tcp | 0.000138 | # opsmgr | Sun StorEdge Configuration Service | Microsoft Operations Manager |
| opsmgr | 1270/udp | 0.000000 | # Microsoft Operations Manager |
| excw | 1271/tcp | 0.000228 | excw 1271/tcp 0.000228 |
| excw | 1271/udp | 0.000000 | # eXcW |
| cspmlockmgr | 1272/tcp | 0.000380 | cspmlockmgr 1272/tcp 0.000380 |
| cspmlockmgr | 1272/udp | 0.000000 | # CSPMLockMgr |
| emc-gateway | 1273/tcp | 0.000000 | emc-gateway 1273/tcp 0.000000 |
| emc-gateway | 1273/udp | 0.000000 | # EMC-Gateway |
| t1distproc | 1274/tcp | 0.000000 | t1distproc 1274/tcp 0.000000 |
| t1distproc | 1274/udp | 0.000000 | t1distproc 1274/udp 0.000000 |
| ivcollector | 1275/tcp | 0.000000 | ivcollector 1275/tcp 0.000000 |
| ivcollector | 1275/udp | 0.000000 | ivcollector 1275/udp 0.000000 |
| ivmanager | 1276/tcp | 0.000076 | ivmanager 1276/tcp 0.000076 |
| ivmanager | 1276/udp | 0.000000 | ivmanager 1276/udp 0.000000 |
| miva-mqs | 1277/tcp | 0.000152 | # mqs |
| miva-mqs | 1277/udp | 0.000000 | # mqs |
| dellwebadmin-1 | 1278/tcp | 0.000000 | # Dell Web Admin 1 |
| dellwebadmin-1 | 1278/udp | 0.000000 | # Dell Web Admin 1 |
| dellwebadmin-2 | 1279/tcp | 0.000076 | # Dell Web Admin 2 |
| dellwebadmin-2 | 1279/udp | 0.000330 | # Dell Web Admin 2 |
| pictrography | 1280/tcp | 0.000000 | pictrography 1280/tcp 0.000000 |
| pictrography | 1280/udp | 0.000000 | # Pictrography |
| healthd | 1281/tcp | 0.000000 | healthd 1281/tcp 0.000000 |
| healthd | 1281/udp | 0.000000 | healthd 1281/udp 0.000000 |
| emperion | 1282/tcp | 0.000076 | emperion 1282/tcp 0.000076 |
| emperion | 1282/udp | 0.000000 | # Emperion |
| productinfo | 1283/tcp | 0.000000 | # Product Information |
| productinfo | 1283/udp | 0.000000 | # Product Information |
| iee-qfx | 1284/tcp | 0.000000 | iee-qfx 1284/tcp 0.000000 |
| iee-qfx | 1284/udp | 0.000000 | # IEE-QFX |
| neoiface | 1285/tcp | 0.000000 | neoiface 1285/tcp 0.000000 |
| neoiface | 1285/udp | 0.000000 | neoiface 1285/udp 0.000000 |
| netuitive | 1286/tcp | 0.000000 | netuitive 1286/tcp 0.000000 |
| netuitive | 1286/udp | 0.000991 | netuitive 1286/udp 0.000991 |
| routematch | 1287/tcp | 0.000152 | # RouteMatch Com |
| routematch | 1287/udp | 0.000991 | # RouteMatch Com |
| navbuddy | 1288/tcp | 0.000000 | navbuddy 1288/tcp 0.000000 |
| navbuddy | 1288/udp | 0.000000 | # NavBuddy |
| jwalkserver | 1289/tcp | 0.000000 | jwalkserver 1289/tcp 0.000000 |
| jwalkserver | 1289/udp | 0.000000 | # JWalkServer |
| winjaserver | 1290/tcp | 0.000076 | winjaserver 1290/tcp 0.000076 |
| winjaserver | 1290/udp | 0.000000 | # WinJaServer |
| seagulllms | 1291/tcp | 0.000076 | seagulllms 1291/tcp 0.000076 |
| seagulllms | 1291/udp | 0.000330 | # SEAGULLLMS |
| dsdn | 1292/tcp | 0.000000 | dsdn 1292/tcp 0.000000 |
| dsdn | 1292/udp | 0.000000 | dsdn 1292/udp 0.000000 |
| pkt-krb-ipsec | 1293/tcp | 0.000000 | pkt-krb-ipsec 1293/tcp 0.000000 |
| pkt-krb-ipsec | 1293/udp | 0.000000 | # PKT-KRB-IPSec |
| cmmdriver | 1294/tcp | 0.000000 | cmmdriver 1294/tcp 0.000000 |
| cmmdriver | 1294/udp | 0.000330 | # CMMdriver |
| ehtp | 1295/tcp | 0.000000 | # End-by-Hop Transmission Protocol |
| ehtp | 1295/udp | 0.000330 | # End-by-Hop Transmission Protocol |
| dproxy | 1296/tcp | 0.000304 | dproxy 1296/tcp 0.000304 |
| dproxy | 1296/udp | 0.000000 | dproxy 1296/udp 0.000000 |
| sdproxy | 1297/tcp | 0.000076 | sdproxy 1297/tcp 0.000076 |
| sdproxy | 1297/udp | 0.000330 | sdproxy 1297/udp 0.000330 |
| lpcp | 1298/tcp | 0.000000 | lpcp 1298/tcp 0.000000 |
| lpcp | 1298/udp | 0.000000 | lpcp 1298/udp 0.000000 |
| hp-sci | 1299/tcp | 0.000076 | hp-sci 1299/tcp 0.000076 |
| hp-sci | 1299/udp | 0.000330 | hp-sci 1299/udp 0.000330 |
| h323hostcallsc | 1300/tcp | 0.000152 | # H323 Host Call Secure | H.323 Secure Call Control Signalling |
| h323hostcallsc | 1300/udp | 0.000330 | # H323 Host Call Secure |
| ci3-software-1 | 1301/tcp | 0.000152 | ci3-software-1 1301/tcp 0.000152 |
| ci3-software-1 | 1301/udp | 0.000330 | # CI3-Software-1 |
| ci3-software-2 | 1302/tcp | 0.000076 | ci3-software-2 1302/tcp 0.000076 |
| ci3-software-2 | 1302/udp | 0.000661 | # CI3-Software-2 |
| sftsrv | 1303/tcp | 0.000076 | sftsrv 1303/tcp 0.000076 |
| sftsrv | 1303/udp | 0.000000 | sftsrv 1303/udp 0.000000 |
| boomerang | 1304/tcp | 0.000000 | boomerang 1304/tcp 0.000000 |
| boomerang | 1304/udp | 0.000000 | # Boomerang |
| pe-mike | 1305/tcp | 0.000076 | pe-mike 1305/tcp 0.000076 |
| pe-mike | 1305/udp | 0.000000 | pe-mike 1305/udp 0.000000 |
| re-conn-proto | 1306/tcp | 0.000076 | re-conn-proto 1306/tcp 0.000076 |
| re-conn-proto | 1306/udp | 0.000000 | # RE-Conn-Proto |
| pacmand | 1307/tcp | 0.000076 | pacmand 1307/tcp 0.000076 |
| pacmand | 1307/udp | 0.000000 | # Pacmand |
| odsi | 1308/tcp | 0.000076 | # Optical Domain Service Interconnect (ODSI) |
| odsi | 1308/udp | 0.000000 | # Optical Domain Service Interconnect (ODSI) |
| jtag-server | 1309/tcp | 0.000152 | # JTAG server |
| jtag-server | 1309/udp | 0.000000 | # JTAG server |
| husky | 1310/tcp | 0.000380 | husky 1310/tcp 0.000380 |
| husky | 1310/udp | 0.000330 | # Husky |
| rxmon | 1311/tcp | 0.000760 | rxmon 1311/tcp 0.000760 |
| rxmon | 1311/udp | 0.000000 | rxmon 1311/udp 0.000000 |
| sti-envision | 1312/tcp | 0.000000 | # STI Envision |
| sti-envision | 1312/udp | 0.000000 | # STI Envision |
| bmc_patroldb | 1313/tcp | 0.000000 | # bmc-patroldb |
| bmc_patroldb | 1313/udp | 0.000000 | # BMC_PATROLDB |
| pdps | 1314/tcp | 0.000076 | # Photoscript Distributed Printing System |
| pdps | 1314/udp | 0.000330 | # Photoscript Distributed Printing System |
| els | 1315/tcp | 0.000076 | # E.L.S., Event Listener Service |
| els | 1315/udp | 0.000330 | # E.L.S., Event Listener Service |
| exbit-escp | 1316/tcp | 0.000076 | exbit-escp 1316/tcp 0.000076 |
| exbit-escp | 1316/udp | 0.000000 | # Exbit-ESCP |
| vrts-ipcserver | 1317/tcp | 0.000076 | vrts-ipcserver 1317/tcp 0.000076 |
| vrts-ipcserver | 1317/udp | 0.000330 | vrts-ipcserver 1317/udp 0.000330 |
| krb5gatekeeper | 1318/tcp | 0.000076 | krb5gatekeeper 1318/tcp 0.000076 |
| krb5gatekeeper | 1318/udp | 0.000000 | krb5gatekeeper 1318/udp 0.000000 |
| amx-icsp | 1319/tcp | 0.000076 | amx-icsp 1319/tcp 0.000076 |
| amx-icsp | 1319/udp | 0.000000 | # AMX-ICSP |
| amx-axbnet | 1320/tcp | 0.000000 | amx-axbnet 1320/tcp 0.000000 |
| amx-axbnet | 1320/udp | 0.000000 | # AMX-AXBNET |
| pip | 1321/tcp | 0.000076 | pip 1321/tcp 0.000076 |
| pip | 1321/udp | 0.000000 | # PIP |
| novation | 1322/tcp | 0.000152 | novation 1322/tcp 0.000152 |
| novation | 1322/udp | 0.000000 | # Novation |
| brcd | 1323/tcp | 0.000000 | brcd 1323/tcp 0.000000 |
| brcd | 1323/udp | 0.000000 | brcd 1323/udp 0.000000 |
| delta-mcp | 1324/tcp | 0.000076 | delta-mcp 1324/tcp 0.000076 |
| delta-mcp | 1324/udp | 0.000000 | delta-mcp 1324/udp 0.000000 |
| dx-instrument | 1325/tcp | 0.000000 | dx-instrument 1325/tcp 0.000000 |
| dx-instrument | 1325/udp | 0.000330 | # DX-Instrument |
| wimsic | 1326/tcp | 0.000000 | wimsic 1326/tcp 0.000000 |
| wimsic | 1326/udp | 0.000000 | # WIMSIC |
| ultrex | 1327/tcp | 0.000076 | ultrex 1327/tcp 0.000076 |
| ultrex | 1327/udp | 0.000330 | # Ultrex |
| ewall | 1328/tcp | 0.000152 | ewall 1328/tcp 0.000152 |
| ewall | 1328/udp | 0.000000 | # EWALL |
| netdb-export | 1329/tcp | 0.000000 | netdb-export 1329/tcp 0.000000 |
| netdb-export | 1329/udp | 0.000000 | netdb-export 1329/udp 0.000000 |
| streetperfect | 1330/tcp | 0.000076 | streetperfect 1330/tcp 0.000076 |
| streetperfect | 1330/udp | 0.000000 | # StreetPerfect |
| intersan | 1331/tcp | 0.000076 | intersan 1331/tcp 0.000076 |
| intersan | 1331/udp | 0.000000 | intersan 1331/udp 0.000000 |
| pcia-rxp-b | 1332/tcp | 0.000000 | # PCIA RXP-B |
| pcia-rxp-b | 1332/udp | 0.000000 | # PCIA RXP-B |
| passwrd-policy | 1333/tcp | 0.000000 | # Password Policy |
| passwrd-policy | 1333/udp | 0.000000 | # Password Policy |
| writesrv | 1334/tcp | 0.000304 | writesrv 1334/tcp 0.000304 |
| writesrv | 1334/udp | 0.000991 | writesrv 1334/udp 0.000991 |
| digital-notary | 1335/tcp | 0.000000 | # Digital Notary Protocol |
| digital-notary | 1335/udp | 0.000000 | # Digital Notary Protocol |
| ischat | 1336/tcp | 0.000076 | # Instant Service Chat |
| ischat | 1336/udp | 0.000330 | # Instant Service Chat |
| waste | 1337/tcp | 0.000088 | # menandmice-dns | Nullsoft WASTE encrypted P2P app | menandmice DNS |
| menandmice-dns | 1337/udp | 0.000661 | # menandmice DNS |
| wmc-log-svc | 1338/tcp | 0.000000 | # WMC-log-svr |
| wmc-log-svc | 1338/udp | 0.000330 | # WMC-log-svr |
| kjtsiteserver | 1339/tcp | 0.000076 | kjtsiteserver 1339/tcp 0.000076 |
| kjtsiteserver | 1339/udp | 0.000000 | kjtsiteserver 1339/udp 0.000000 |
| naap | 1340/tcp | 0.000076 | naap 1340/tcp 0.000076 |
| naap | 1340/udp | 0.000000 | # NAAP |
| qubes | 1341/tcp | 0.000000 | qubes 1341/tcp 0.000000 |
| qubes | 1341/udp | 0.000000 | # QuBES |
| esbroker | 1342/tcp | 0.000000 | esbroker 1342/tcp 0.000000 |
| esbroker | 1342/udp | 0.000330 | # ESBroker |
| re101 | 1343/tcp | 0.000000 | re101 1343/tcp 0.000000 |
| re101 | 1343/udp | 0.000000 | re101 1343/udp 0.000000 |
| icap | 1344/tcp | 0.000000 | icap 1344/tcp 0.000000 |
| icap | 1344/udp | 0.000330 | # ICAP |
| vpjp | 1345/tcp | 0.000000 | vpjp 1345/tcp 0.000000 |
| vpjp | 1345/udp | 0.000991 | # VPJP |
| alta-ana-lm | 1346/tcp | 0.000050 | # Alta Analytics License Manager |
| alta-ana-lm | 1346/udp | 0.001928 | # Alta Analytics License Manager |
| bbn-mmc | 1347/tcp | 0.000151 | # multi media conferencing |
| bbn-mmc | 1347/udp | 0.000692 | # multi media conferencing |
| bbn-mmx | 1348/tcp | 0.000038 | # multi media conferencing |
| bbn-mmx | 1348/udp | 0.000988 | # multi media conferencing |
| sbook | 1349/tcp | 0.000050 | # Registration Network Protocol |
| sbook | 1349/udp | 0.000873 | # Registration Network Protocol |
| editbench | 1350/tcp | 0.000113 | # Registration Network Protocol |
| editbench | 1350/udp | 0.000577 | # Registration Network Protocol |
| equationbuilder | 1351/tcp | 0.000113 | # Digital Tool Works (MIT) |
| equationbuilder | 1351/udp | 0.000544 | # Digital Tool Works (MIT) |
| lotusnotes | 1352/tcp | 0.001154 | # lotusnote | Lotus Note |
| lotusnotes | 1352/udp | 0.000610 | # Lotus Note |
| relief | 1353/tcp | 0.000100 | # Relief Consulting |
| relief | 1353/udp | 0.000708 | # Relief Consulting |
| rightbrain | 1354/tcp | 0.000038 | # XSIP-network | RightBrain Software | Five Across XSIP Network |
| rightbrain | 1354/udp | 0.000544 | # RightBrain Software |
| intuitive-edge | 1355/tcp | 0.000025 | # Intuitive Edge |
| intuitive-edge | 1355/udp | 0.000527 | # Intuitive Edge |
| cuillamartin | 1356/tcp | 0.000050 | # CuillaMartin Company |
| cuillamartin | 1356/udp | 0.000461 | # CuillaMartin Company |
| pegboard | 1357/tcp | 0.000100 | # Electronic PegBoard |
| pegboard | 1357/udp | 0.000708 | # Electronic PegBoard |
| connlcli | 1358/tcp | 0.000063 | connlcli 1358/tcp 0.000063 |
| connlcli | 1358/udp | 0.000577 | connlcli 1358/udp 0.000577 |
| ftsrv | 1359/tcp | 0.000063 | ftsrv 1359/tcp 0.000063 |
| ftsrv | 1359/udp | 0.000824 | ftsrv 1359/udp 0.000824 |
| mimer | 1360/tcp | 0.000013 | mimer 1360/tcp 0.000013 |
| mimer | 1360/udp | 0.000478 | mimer 1360/udp 0.000478 |
| linx | 1361/tcp | 0.000013 | linx 1361/tcp 0.000013 |
| linx | 1361/udp | 0.000610 | linx 1361/udp 0.000610 |
| timeflies | 1362/tcp | 0.000025 | timeflies 1362/tcp 0.000025 |
| timeflies | 1362/udp | 0.000494 | timeflies 1362/udp 0.000494 |
| ndm-requester | 1363/tcp | 0.000013 | # Network DataMover Requester |
| ndm-requester | 1363/udp | 0.000494 | # Network DataMover Requester |
| ndm-server | 1364/tcp | 0.000063 | # Network DataMover Server |
| ndm-server | 1364/udp | 0.000824 | # Network DataMover Server |
| adapt-sna | 1365/tcp | 0.000025 | # Network Software Associates |
| adapt-sna | 1365/udp | 0.000643 | # Network Software Associates |
| netware-csp | 1366/tcp | 0.000063 | # Novell NetWare Comm Service Platform |
| netware-csp | 1366/udp | 0.000923 | # Novell NetWare Comm Service Platform |
| dcs | 1367/tcp | 0.000013 | dcs 1367/tcp 0.000013 |
| dcs | 1367/udp | 0.000560 | dcs 1367/udp 0.000560 |
| screencast | 1368/tcp | 0.000025 | screencast 1368/tcp 0.000025 |
| screencast | 1368/udp | 0.000379 | screencast 1368/udp 0.000379 |
| gv-us | 1369/tcp | 0.000038 | # GlobalView to Unix Shell |
| gv-us | 1369/udp | 0.000461 | # GlobalView to Unix Shell |
| us-gv | 1370/tcp | 0.000050 | # Unix Shell to GlobalView |
| us-gv | 1370/udp | 0.000725 | # Unix Shell to GlobalView |
| fc-cli | 1371/tcp | 0.000013 | # Fujitsu Config Protocol |
| fc-cli | 1371/udp | 0.000692 | # Fujitsu Config Protocol |
| fc-ser | 1372/tcp | 0.000038 | # Fujitsu Config Protocol |
| fc-ser | 1372/udp | 0.000708 | # Fujitsu Config Protocol |
| chromagrafx | 1373/tcp | 0.000038 | chromagrafx 1373/tcp 0.000038 |
| chromagrafx | 1373/udp | 0.000428 | chromagrafx 1373/udp 0.000428 |
| molly | 1374/tcp | 0.000013 | # EPI Software Systems |
| molly | 1374/udp | 0.000461 | # EPI Software Systems |
| bytex | 1375/tcp | 0.000000 | bytex 1375/tcp 0.000000 |
| bytex | 1375/udp | 0.000494 | bytex 1375/udp 0.000494 |
| ibm-pps | 1376/tcp | 0.000025 | # IBM Person to Person Software |
| ibm-pps | 1376/udp | 0.000577 | # IBM Person to Person Software |
| cichlid | 1377/tcp | 0.000000 | # Cichlid License Manager |
| cichlid | 1377/udp | 0.000593 | # Cichlid License Manager |
| elan | 1378/tcp | 0.000000 | # Elan License Manager |
| elan | 1378/udp | 0.000560 | # Elan License Manager |
| dbreporter | 1379/tcp | 0.000038 | # Integrity Solutions |
| dbreporter | 1379/udp | 0.000560 | # Integrity Solutions |
| telesis-licman | 1380/tcp | 0.000000 | # Telesis Network License Manager |
| telesis-licman | 1380/udp | 0.000610 | # Telesis Network License Manager |
| apple-licman | 1381/tcp | 0.000038 | # Apple Network License Manager |
| apple-licman | 1381/udp | 0.000560 | # Apple Network License Manager |
| udt_os | 1382/tcp | 0.000000 | # udt-os |
| udt_os | 1382/udp | 0.000000 | udt_os 1382/udp 0.000000 |
| gwha | 1383/tcp | 0.000013 | # GW Hannaway Network License Manager |
| gwha | 1383/udp | 0.000659 | # GW Hannaway Network License Manager |
| os-licman | 1384/tcp | 0.000050 | # Objective Solutions License Manager |
| os-licman | 1384/udp | 0.000428 | # Objective Solutions License Manager |
| atex_elmd | 1385/tcp | 0.000050 | # atex-elmd | Atex Publishing License Manager |
| atex_elmd | 1385/udp | 0.000280 | # Atex Publishing License Manager |
| checksum | 1386/tcp | 0.000025 | # CheckSum License Manager |
| checksum | 1386/udp | 0.000511 | # CheckSum License Manager |
| cadsi-lm | 1387/tcp | 0.000038 | # Computer Aided Design Software Inc LM |
| cadsi-lm | 1387/udp | 0.000577 | # Computer Aided Design Software Inc LM |
| objective-dbc | 1388/tcp | 0.000050 | # Objective Solutions DataBase Cache |
| objective-dbc | 1388/udp | 0.000741 | # Objective Solutions DataBase Cache |
| iclpv-dm | 1389/tcp | 0.000050 | # Document Manager |
| iclpv-dm | 1389/udp | 0.000923 | # Document Manager |
| iclpv-sc | 1390/tcp | 0.000025 | # Storage Controller |
| iclpv-sc | 1390/udp | 0.000511 | # Storage Controller |
| iclpv-sas | 1391/tcp | 0.000013 | # Storage Access Server |
| iclpv-sas | 1391/udp | 0.000659 | # Storage Access Server |
| iclpv-pm | 1392/tcp | 0.000000 | # Print Manager |
| iclpv-pm | 1392/udp | 0.000659 | # Print Manager |
| iclpv-nls | 1393/tcp | 0.000025 | # Network Log Server |
| iclpv-nls | 1393/udp | 0.000725 | # Network Log Server |
| iclpv-nlc | 1394/tcp | 0.000025 | # Network Log Client |
| iclpv-nlc | 1394/udp | 0.000445 | # Network Log Client |
| iclpv-wsm | 1395/tcp | 0.000013 | # PC Workstation Manager software |
| iclpv-wsm | 1395/udp | 0.000675 | # PC Workstation Manager software |
| dvl-activemail | 1396/tcp | 0.000013 | # DVL Active Mail |
| dvl-activemail | 1396/udp | 0.000577 | # DVL Active Mail |
| audio-activmail | 1397/tcp | 0.000025 | # Audio Active Mail |
| audio-activmail | 1397/udp | 0.000527 | # Audio Active Mail |
| video-activmail | 1398/tcp | 0.000025 | # Video Active Mail |
| video-activmail | 1398/udp | 0.000774 | # Video Active Mail |
| cadkey-licman | 1399/tcp | 0.000050 | # Cadkey License Manager |
| cadkey-licman | 1399/udp | 0.000643 | # Cadkey License Manager |
| cadkey-tablet | 1400/tcp | 0.000050 | # Cadkey Tablet Daemon |
| cadkey-tablet | 1400/udp | 0.001219 | # Cadkey Tablet Daemon |
| goldleaf-licman | 1401/tcp | 0.000038 | # Goldleaf License Manager |
| goldleaf-licman | 1401/udp | 0.000494 | # Goldleaf License Manager |
| prm-sm-np | 1402/tcp | 0.000050 | # Prospero Resource Manager |
| prm-sm-np | 1402/udp | 0.000659 | # Prospero Resource Manager |
| prm-nm-np | 1403/tcp | 0.000038 | # Prospero Resource Manager |
| prm-nm-np | 1403/udp | 0.000527 | # Prospero Resource Manager |
| igi-lm | 1404/tcp | 0.000050 | # Infinite Graphics License Manager |
| igi-lm | 1404/udp | 0.000494 | # Infinite Graphics License Manager |
| ibm-res | 1405/tcp | 0.000038 | # IBM Remote Execution Starter |
| ibm-res | 1405/udp | 0.000445 | # IBM Remote Execution Starter |
| netlabs-lm | 1406/tcp | 0.000000 | # NetLabs License Manager |
| netlabs-lm | 1406/udp | 0.000643 | # NetLabs License Manager |
| dbsa-lm | 1407/tcp | 0.000013 | # tibet-server | DBSA License Manager | TIBET Data Server |
| dbsa-lm | 1407/udp | 0.000478 | # DBSA License Manager |
| sophia-lm | 1408/tcp | 0.000013 | # Sophia License Manager |
| sophia-lm | 1408/udp | 0.000478 | # Sophia License Manager |
| here-lm | 1409/tcp | 0.000025 | # Here License Manager |
| here-lm | 1409/udp | 0.000395 | # Here License Manager |
| hiq | 1410/tcp | 0.000025 | # HiQ License Manager |
| hiq | 1410/udp | 0.000643 | # HiQ License Manager |
| af | 1411/tcp | 0.000013 | # AudioFile |
| af | 1411/udp | 0.000544 | # AudioFile |
| innosys | 1412/tcp | 0.000038 | innosys 1412/tcp 0.000038 |
| innosys | 1412/udp | 0.000890 | innosys 1412/udp 0.000890 |
| innosys-acl | 1413/tcp | 0.000088 | innosys-acl 1413/tcp 0.000088 |
| innosys-acl | 1413/udp | 0.000577 | innosys-acl 1413/udp 0.000577 |
| ibm-mqseries | 1414/tcp | 0.000088 | # IBM MQSeries |
| ibm-mqseries | 1414/udp | 0.000988 | # IBM MQSeries |
| dbstar | 1415/tcp | 0.000000 | dbstar 1415/tcp 0.000000 |
| dbstar | 1415/udp | 0.000659 | dbstar 1415/udp 0.000659 |
| novell-lu6.2 | 1416/tcp | 0.000013 | # novell-lu6-2 | Novell LU6.2 |
| novell-lu6.2 | 1416/udp | 0.000577 | # Novell LU6.2 |
| timbuktu-srv1 | 1417/tcp | 0.000201 | # Timbuktu Service 1 Port |
| timbuktu-srv1 | 1417/udp | 0.000610 | # Timbuktu Service 1 Port |
| timbuktu-srv2 | 1418/tcp | 0.000013 | # Timbuktu Service 2 Port |
| timbuktu-srv2 | 1418/udp | 0.000478 | # Timbuktu Service 2 Port |
| timbuktu-srv3 | 1419/tcp | 0.000013 | # Timbuktu Service 3 Port |
| timbuktu-srv3 | 1419/udp | 0.004267 | # Timbuktu Service 3 Port |
| timbuktu-srv4 | 1420/tcp | 0.000063 | # Timbuktu Service 4 Port |
| timbuktu-srv4 | 1420/udp | 0.000741 | # Timbuktu Service 4 Port |
| gandalf-lm | 1421/tcp | 0.000000 | # Gandalf License Manager |
| gandalf-lm | 1421/udp | 0.000577 | # Gandalf License Manager |
| autodesk-lm | 1422/tcp | 0.000025 | # Autodesk License Manager |
| autodesk-lm | 1422/udp | 0.000906 | # Autodesk License Manager |
| essbase | 1423/tcp | 0.000013 | # Essbase Arbor Software |
| essbase | 1423/udp | 0.000544 | # Essbase Arbor Software |
| hybrid | 1424/tcp | 0.000025 | # Hybrid Encryption Protocol |
| hybrid | 1424/udp | 0.000527 | # Hybrid Encryption Protocol |
| zion-lm | 1425/tcp | 0.000000 | # Zion Software License Manager |
| zion-lm | 1425/udp | 0.000511 | # Zion Software License Manager |
| sas-1 | 1426/tcp | 0.000025 | # sais | Satellite-data Acquisition System 1 |
| sas-1 | 1426/udp | 0.000445 | # Satellite-data Acquisition System 1 |
| mloadd | 1427/tcp | 0.000013 | # mloadd monitoring tool |
| mloadd | 1427/udp | 0.000659 | # mloadd monitoring tool |
| informatik-lm | 1428/tcp | 0.000000 | # Informatik License Manager |
| informatik-lm | 1428/udp | 0.000659 | # Informatik License Manager |
| nms | 1429/tcp | 0.000013 | # Hypercom NMS |
| nms | 1429/udp | 0.000593 | # Hypercom NMS |
| tpdu | 1430/tcp | 0.000013 | # Hypercom TPDU |
| tpdu | 1430/udp | 0.000478 | # Hypercom TPDU |
| rgtp | 1431/tcp | 0.000000 | # Reverse Gossip Transport |
| rgtp | 1431/udp | 0.000461 | # Reverse Gossip Transport |
| blueberry-lm | 1432/tcp | 0.000025 | # Blueberry Software License Manager |
| blueberry-lm | 1432/udp | 0.000840 | # Blueberry Software License Manager |
| ms-sql-s | 1433/tcp | 0.007929 | # Microsoft-SQL-Server |
| ms-sql-s | 1433/udp | 0.036821 | # Microsoft-SQL-Server |
| ms-sql-m | 1434/tcp | 0.000201 | # Microsoft-SQL-Monitor |
| ms-sql-m | 1434/udp | 0.293184 | # Microsoft-SQL-Monitor |
| ibm-cics | 1435/tcp | 0.000038 | # IBM CICS |
| ibm-cics | 1435/udp | 0.000774 | ibm-cics 1435/udp 0.000774 |
| sas-2 | 1436/tcp | 0.000025 | # saism | Satellite-data Acquisition System 2 |
| sas-2 | 1436/udp | 0.000478 | # Satellite-data Acquisition System 2 |
| tabula | 1437/tcp | 0.000025 | tabula 1437/tcp 0.000025 |
| tabula | 1437/udp | 0.000610 | tabula 1437/udp 0.000610 |
| eicon-server | 1438/tcp | 0.000025 | # Eicon Security Agent/Server |
| eicon-server | 1438/udp | 0.000758 | # Eicon Security Agent/Server |
| eicon-x25 | 1439/tcp | 0.000025 | # Eicon X25/SNA Gateway |
| eicon-x25 | 1439/udp | 0.000297 | # Eicon X25/SNA Gateway |
| eicon-slp | 1440/tcp | 0.000013 | # Eicon Service Location Protocol |
| eicon-slp | 1440/udp | 0.000725 | # Eicon Service Location Protocol |
| cadis-1 | 1441/tcp | 0.000075 | # Cadis License Management |
| cadis-1 | 1441/udp | 0.000857 | # Cadis License Management |
| cadis-2 | 1442/tcp | 0.000025 | # Cadis License Management |
| cadis-2 | 1442/udp | 0.000346 | # Cadis License Management |
| ies-lm | 1443/tcp | 0.000238 | # Integrated Engineering Software |
| ies-lm | 1443/udp | 0.000395 | # Integrated Engineering Software |
| marcam-lm | 1444/tcp | 0.000075 | # Marcam License Management |
| marcam-lm | 1444/udp | 0.000379 | # Marcam License Management |
| proxima-lm | 1445/tcp | 0.000050 | # Proxima License Manager |
| proxima-lm | 1445/udp | 0.000692 | # Proxima License Manager |
| ora-lm | 1446/tcp | 0.000025 | # Optical Research Associates License Manager |
| ora-lm | 1446/udp | 0.000478 | # Optical Research Associates License Manager |
| apri-lm | 1447/tcp | 0.000000 | # Applied Parallel Research LM |
| apri-lm | 1447/udp | 0.000478 | # Applied Parallel Research LM |
| oc-lm | 1448/tcp | 0.000013 | # OpenConnect License Manager |
| oc-lm | 1448/udp | 0.000626 | # OpenConnect License Manager |
| peport | 1449/tcp | 0.000013 | peport 1449/tcp 0.000013 |
| peport | 1449/udp | 0.000379 | peport 1449/udp 0.000379 |
| dwf | 1450/tcp | 0.000000 | # Tandem Distributed Workbench Facility |
| dwf | 1450/udp | 0.000478 | # Tandem Distributed Workbench Facility |
| infoman | 1451/tcp | 0.000013 | # IBM Information Management |
| infoman | 1451/udp | 0.000461 | # IBM Information Management |
| gtegsc-lm | 1452/tcp | 0.000000 | # GTE Government Systems License Man |
| gtegsc-lm | 1452/udp | 0.000445 | # GTE Government Systems License Man |
| genie-lm | 1453/tcp | 0.000013 | # Genie License Manager |
| genie-lm | 1453/udp | 0.000692 | # Genie License Manager |
| interhdl_elmd | 1454/tcp | 0.000025 | # interhdl-elmd | interHDL License Manager |
| interhdl_elmd | 1454/udp | 0.000379 | # interHDL License Manager |
| esl-lm | 1455/tcp | 0.000176 | # ESL License Manager |
| esl-lm | 1455/udp | 0.001417 | # ESL License Manager |
| dca | 1456/tcp | 0.000025 | dca 1456/tcp 0.000025 |
| dca | 1456/udp | 0.000511 | dca 1456/udp 0.000511 |
| valisys-lm | 1457/tcp | 0.000013 | # Valisys License Manager |
| valisys-lm | 1457/udp | 0.001334 | # Valisys License Manager |
| nrcabq-lm | 1458/tcp | 0.000013 | # Nichols Research Corp. |
| nrcabq-lm | 1458/udp | 0.000643 | # Nichols Research Corp. |
| proshare1 | 1459/tcp | 0.000013 | # Proshare Notebook Application |
| proshare1 | 1459/udp | 0.000610 | # Proshare Notebook Application |
| proshare2 | 1460/tcp | 0.000000 | # Proshare Notebook Application |
| proshare2 | 1460/udp | 0.000610 | # Proshare Notebook Application |
| ibm_wrless_lan | 1461/tcp | 0.000188 | # ibm-wrless-lan | IBM Wireless LAN |
| ibm_wrless_lan | 1461/udp | 0.000643 | # IBM Wireless LAN |
| world-lm | 1462/tcp | 0.000013 | # World License Manager |
| world-lm | 1462/udp | 0.000445 | # World License Manager |
| nucleus | 1463/tcp | 0.000000 | nucleus 1463/tcp 0.000000 |
| nucleus | 1463/udp | 0.000297 | nucleus 1463/udp 0.000297 |
| msl_lmd | 1464/tcp | 0.000013 | # msl-lmd | MSL License Manager |
| msl_lmd | 1464/udp | 0.000362 | # MSL License Manager |
| pipes | 1465/tcp | 0.000050 | # Pipes Platform |
| pipes | 1465/udp | 0.000741 | pipes 1465/udp 0.000741 |
| oceansoft-lm | 1466/tcp | 0.000038 | # Ocean Software License Manager |
| oceansoft-lm | 1466/udp | 0.000395 | # Ocean Software License Manager |
| csdmbase | 1467/tcp | 0.000038 | csdmbase 1467/tcp 0.000038 |
| csdmbase | 1467/udp | 0.000873 | csdmbase 1467/udp 0.000873 |
| csdm | 1468/tcp | 0.000000 | csdm 1468/tcp 0.000000 |
| csdm | 1468/udp | 0.000577 | csdm 1468/udp 0.000577 |
| aal-lm | 1469/tcp | 0.000013 | # Active Analysis Limited License Manager |
| aal-lm | 1469/udp | 0.000873 | # Active Analysis Limited License Manager |
| uaiact | 1470/tcp | 0.000013 | # Universal Analytics |
| uaiact | 1470/udp | 0.000362 | # Universal Analytics |
| csdmbase | 1471/tcp | 0.000000 | csdmbase 1471/tcp 0.000000 |
| csdmbase | 1471/udp | 0.000445 | csdmbase 1471/udp 0.000445 |
| csdm | 1472/tcp | 0.000025 | csdm 1472/tcp 0.000025 |
| csdm | 1472/udp | 0.000379 | csdm 1472/udp 0.000379 |
| openmath | 1473/tcp | 0.000013 | openmath 1473/tcp 0.000013 |
| openmath | 1473/udp | 0.000560 | openmath 1473/udp 0.000560 |
| telefinder | 1474/tcp | 0.000050 | telefinder 1474/tcp 0.000050 |
| telefinder | 1474/udp | 0.000461 | telefinder 1474/udp 0.000461 |
| taligent-lm | 1475/tcp | 0.000038 | # Taligent License Manager |
| taligent-lm | 1475/udp | 0.000461 | # Taligent License Manager |
| clvm-cfg | 1476/tcp | 0.000038 | clvm-cfg 1476/tcp 0.000038 |
| clvm-cfg | 1476/udp | 0.000692 | clvm-cfg 1476/udp 0.000692 |
| ms-sna-server | 1477/tcp | 0.000000 | ms-sna-server 1477/tcp 0.000000 |
| ms-sna-server | 1477/udp | 0.000527 | ms-sna-server 1477/udp 0.000527 |
| ms-sna-base | 1478/tcp | 0.000000 | ms-sna-base 1478/tcp 0.000000 |
| ms-sna-base | 1478/udp | 0.000577 | ms-sna-base 1478/udp 0.000577 |
| dberegister | 1479/tcp | 0.000025 | dberegister 1479/tcp 0.000025 |
| dberegister | 1479/udp | 0.000511 | dberegister 1479/udp 0.000511 |
| pacerforum | 1480/tcp | 0.000013 | pacerforum 1480/tcp 0.000013 |
| pacerforum | 1480/udp | 0.000527 | pacerforum 1480/udp 0.000527 |
| airs | 1481/tcp | 0.000000 | airs 1481/tcp 0.000000 |
| airs | 1481/udp | 0.000758 | airs 1481/udp 0.000758 |
| miteksys-lm | 1482/tcp | 0.000013 | # Miteksys License Manager |
| miteksys-lm | 1482/udp | 0.000708 | # Miteksys License Manager |
| afs | 1483/tcp | 0.000025 | # AFS License Manager |
| afs | 1483/udp | 0.000956 | # AFS License Manager |
| confluent | 1484/tcp | 0.000050 | # Confluent License Manager |
| confluent | 1484/udp | 0.001549 | # Confluent License Manager |
| lansource | 1485/tcp | 0.000000 | lansource 1485/tcp 0.000000 |
| lansource | 1485/udp | 0.002323 | lansource 1485/udp 0.002323 |
| nms_topo_serv | 1486/tcp | 0.000038 | # nms-topo-serv |
| nms_topo_serv | 1486/udp | 0.000626 | nms_topo_serv 1486/udp 0.000626 |
| localinfosrvr | 1487/tcp | 0.000000 | localinfosrvr 1487/tcp 0.000000 |
| localinfosrvr | 1487/udp | 0.000428 | localinfosrvr 1487/udp 0.000428 |
| docstor | 1488/tcp | 0.000013 | docstor 1488/tcp 0.000013 |
| docstor | 1488/udp | 0.000544 | docstor 1488/udp 0.000544 |
| dmdocbroker | 1489/tcp | 0.000000 | dmdocbroker 1489/tcp 0.000000 |
| dmdocbroker | 1489/udp | 0.000428 | dmdocbroker 1489/udp 0.000428 |
| insitu-conf | 1490/tcp | 0.000000 | insitu-conf 1490/tcp 0.000000 |
| insitu-conf | 1490/udp | 0.000577 | insitu-conf 1490/udp 0.000577 |
| anynetgateway | 1491/tcp | 0.000013 | anynetgateway 1491/tcp 0.000013 |
| anynetgateway | 1491/udp | 0.000972 | anynetgateway 1491/udp 0.000972 |
| stone-design-1 | 1492/tcp | 0.000075 | stone-design-1 1492/tcp 0.000075 |
| stone-design-1 | 1492/udp | 0.000478 | stone-design-1 1492/udp 0.000478 |
| netmap_lm | 1493/tcp | 0.000025 | # netmap-lm |
| netmap_lm | 1493/udp | 0.000395 | netmap_lm 1493/udp 0.000395 |
| citrix-ica | 1494/tcp | 0.001255 | # ica |
| citrix-ica | 1494/udp | 0.000494 | citrix-ica 1494/udp 0.000494 |
| cvc | 1495/tcp | 0.000075 | cvc 1495/tcp 0.000075 |
| cvc | 1495/udp | 0.000527 | cvc 1495/udp 0.000527 |
| liberty-lm | 1496/tcp | 0.000038 | liberty-lm 1496/tcp 0.000038 |
| liberty-lm | 1496/udp | 0.000412 | liberty-lm 1496/udp 0.000412 |
| rfx-lm | 1497/tcp | 0.000038 | rfx-lm 1497/tcp 0.000038 |
| rfx-lm | 1497/udp | 0.000329 | rfx-lm 1497/udp 0.000329 |
| watcom-sql | 1498/tcp | 0.000025 | # sybase-sqlany | Sybase SQL Any |
| watcom-sql | 1498/udp | 0.000758 | watcom-sql 1498/udp 0.000758 |
| fhc | 1499/tcp | 0.000025 | # Federico Heinz Consultora |
| fhc | 1499/udp | 0.000461 | # Federico Heinz Consultora |
| vlsi-lm | 1500/tcp | 0.000627 | # VLSI License Manager |
| vlsi-lm | 1500/udp | 0.000461 | # VLSI License Manager |
| sas-3 | 1501/tcp | 0.000602 | # saiscm | Satellite-data Acquisition System 3 |
| sas-3 | 1501/udp | 0.000725 | # Satellite-data Acquisition System 3 |
| shivadiscovery | 1502/tcp | 0.000013 | # Shiva |
| shivadiscovery | 1502/udp | 0.000626 | # Shiva |
| imtc-mcs | 1503/tcp | 0.000640 | # Databeam |
| imtc-mcs | 1503/udp | 0.000675 | # Databeam |
| evb-elm | 1504/tcp | 0.000000 | # EVB Software Engineering License Manager |
| evb-elm | 1504/udp | 0.000428 | # EVB Software Engineering License Manager |
| funkproxy | 1505/tcp | 0.000013 | # Funk Software, Inc. |
| funkproxy | 1505/udp | 0.000675 | # Funk Software, Inc. |
| utcd | 1506/tcp | 0.000000 | # Universal Time daemon (utcd) |
| utcd | 1506/udp | 0.000544 | # Universal Time daemon (utcd) |
| symplex | 1507/tcp | 0.000075 | symplex 1507/tcp 0.000075 |
| symplex | 1507/udp | 0.000840 | symplex 1507/udp 0.000840 |
| diagmond | 1508/tcp | 0.000013 | diagmond 1508/tcp 0.000013 |
| diagmond | 1508/udp | 0.000478 | diagmond 1508/udp 0.000478 |
| robcad-lm | 1509/tcp | 0.000013 | # Robcad, Ltd. License Manager |
| robcad-lm | 1509/udp | 0.000593 | # Robcad, Ltd. License Manager |
| mvx-lm | 1510/tcp | 0.000025 | # Midland Valley Exploration Ltd. Lic. Man. |
| mvx-lm | 1510/udp | 0.000511 | # Midland Valley Exploration Ltd. Lic. Man. |
| 3l-l1 | 1511/tcp | 0.000025 | 3l-l1 1511/tcp 0.000025 |
| 3l-l1 | 1511/udp | 0.000577 | 3l-l1 1511/udp 0.000577 |
| wins | 1512/tcp | 0.000000 | # Microsoft's Windows Internet Name Service |
| wins | 1512/udp | 0.000791 | # Microsoft's Windows Internet Name Service |
| fujitsu-dtc | 1513/tcp | 0.000025 | # Fujitsu Systems Business of America, Inc |
| fujitsu-dtc | 1513/udp | 0.000807 | # Fujitsu Systems Business of America, Inc |
| fujitsu-dtcns | 1514/tcp | 0.000000 | # Fujitsu Systems Business of America, Inc |
| fujitsu-dtcns | 1514/udp | 0.001120 | # Fujitsu Systems Business of America, Inc |
| ifor-protocol | 1515/tcp | 0.000038 | ifor-protocol 1515/tcp 0.000038 |
| ifor-protocol | 1515/udp | 0.000758 | ifor-protocol 1515/udp 0.000758 |
| vpad | 1516/tcp | 0.000113 | # Virtual Places Audio data |
| vpad | 1516/udp | 0.000593 | # Virtual Places Audio data |
| vpac | 1517/tcp | 0.000050 | # Virtual Places Audio control |
| vpac | 1517/udp | 0.000428 | # Virtual Places Audio control |
| vpvd | 1518/tcp | 0.000013 | # Virtual Places Video data |
| vpvd | 1518/udp | 0.000758 | # Virtual Places Video data |
| vpvc | 1519/tcp | 0.000025 | # Virtual Places Video control |
| vpvc | 1519/udp | 0.000593 | # Virtual Places Video control |
| atm-zip-office | 1520/tcp | 0.000000 | # atm zip office |
| atm-zip-office | 1520/udp | 0.000428 | # atm zip office |
| oracle | 1521/tcp | 0.001568 | # ncube-lm | Oracle Database | nCube License Manager |
| ncube-lm | 1521/udp | 0.000873 | # nCube License Manager |
| rna-lm | 1522/tcp | 0.000100 | # ricardo-lm | Ricardo North America License Manager |
| rna-lm | 1522/udp | 0.000461 | # Ricardo North America License Manager |
| cichild-lm | 1523/tcp | 0.000050 | # cichild |
| cichild-lm | 1523/udp | 0.000610 | cichild-lm 1523/udp 0.000610 |
| ingreslock | 1524/tcp | 0.000276 | # ingres |
| ingreslock | 1524/udp | 0.001647 | # ingres |
| orasrv | 1525/tcp | 0.000088 | # prospero-np | oracle or Prospero Directory Service non-priv | oracle | Prospero Directory Service non-priv |
| oracle | 1525/udp | 0.000461 | oracle 1525/udp 0.000461 |
| pdap-np | 1526/tcp | 0.000113 | # Prospero Data Access Prot non-priv |
| pdap-np | 1526/udp | 0.000478 | # Prospero Data Access Prot non-priv |
| tlisrv | 1527/tcp | 0.000038 | # oracle |
| tlisrv | 1527/udp | 0.000758 | # oracle |
| mciautoreg | 1528/tcp | 0.000025 | # norp | ngr-t | NGR transport protocol for mobile ad-hoc networks | Not Only a Routeing Protocol |
| mciautoreg | 1528/udp | 0.000445 | mciautoreg 1528/udp 0.000445 |
| support | 1529/tcp | 0.000025 | # coauthor | prmsd gnatsd # cygnus bug tracker | oracle |
| coauthor | 1529/udp | 0.000544 | # oracle |
| rap-service | 1530/tcp | 0.000000 | rap-service 1530/tcp 0.000000 |
| rap-service | 1530/udp | 0.000675 | rap-service 1530/udp 0.000675 |
| rap-listen | 1531/tcp | 0.000025 | rap-listen 1531/tcp 0.000025 |
| rap-listen | 1531/udp | 0.000857 | rap-listen 1531/udp 0.000857 |
| miroconnect | 1532/tcp | 0.000013 | miroconnect 1532/tcp 0.000013 |
| miroconnect | 1532/udp | 0.000708 | miroconnect 1532/udp 0.000708 |
| virtual-places | 1533/tcp | 0.000238 | # Virtual Places Software |
| virtual-places | 1533/udp | 0.000428 | # Virtual Places Software |
| micromuse-lm | 1534/tcp | 0.000000 | micromuse-lm 1534/tcp 0.000000 |
| micromuse-lm | 1534/udp | 0.000461 | micromuse-lm 1534/udp 0.000461 |
| ampr-info | 1535/tcp | 0.000038 | ampr-info 1535/tcp 0.000038 |
| ampr-info | 1535/udp | 0.000610 | ampr-info 1535/udp 0.000610 |
| ampr-inter | 1536/tcp | 0.000000 | ampr-inter 1536/tcp 0.000000 |
| ampr-inter | 1536/udp | 0.000593 | ampr-inter 1536/udp 0.000593 |
| sdsc-lm | 1537/tcp | 0.000025 | # isi-lm |
| sdsc-lm | 1537/udp | 0.000807 | sdsc-lm 1537/udp 0.000807 |
| 3ds-lm | 1538/tcp | 0.000025 | 3ds-lm 1538/tcp 0.000025 |
| 3ds-lm | 1538/udp | 0.000346 | 3ds-lm 1538/udp 0.000346 |
| intellistor-lm | 1539/tcp | 0.000038 | # Intellistor License Manager |
| intellistor-lm | 1539/udp | 0.000412 | # Intellistor License Manager |
| rds | 1540/tcp | 0.000013 | rds 1540/tcp 0.000013 |
| rds | 1540/udp | 0.000428 | rds 1540/udp 0.000428 |
| rds2 | 1541/tcp | 0.000013 | rds2 1541/tcp 0.000013 |
| rds2 | 1541/udp | 0.000395 | rds2 1541/udp 0.000395 |
| gridgen-elmd | 1542/tcp | 0.000013 | gridgen-elmd 1542/tcp 0.000013 |
| gridgen-elmd | 1542/udp | 0.000461 | gridgen-elmd 1542/udp 0.000461 |
| simba-cs | 1543/tcp | 0.000013 | simba-cs 1543/tcp 0.000013 |
| simba-cs | 1543/udp | 0.000461 | simba-cs 1543/udp 0.000461 |
| aspeclmd | 1544/tcp | 0.000025 | aspeclmd 1544/tcp 0.000025 |
| aspeclmd | 1544/udp | 0.000511 | aspeclmd 1544/udp 0.000511 |
| vistium-share | 1545/tcp | 0.000025 | vistium-share 1545/tcp 0.000025 |
| vistium-share | 1545/udp | 0.000544 | vistium-share 1545/udp 0.000544 |
| abbaccuray | 1546/tcp | 0.000000 | abbaccuray 1546/tcp 0.000000 |
| abbaccuray | 1546/udp | 0.000560 | abbaccuray 1546/udp 0.000560 |
| laplink | 1547/tcp | 0.000113 | laplink 1547/tcp 0.000113 |
| laplink | 1547/udp | 0.000544 | laplink 1547/udp 0.000544 |
| axon-lm | 1548/tcp | 0.000025 | # Axon License Manager |
| axon-lm | 1548/udp | 0.000708 | # Axon License Manager |
| shivahose | 1549/tcp | 0.000025 | # shivasound | Shiva Hose | Shiva Sound |
| shivasound | 1549/udp | 0.000610 | # Shiva Sound |
| 3m-image-lm | 1550/tcp | 0.000125 | # Image Storage license manager 3M Company |
| 3m-image-lm | 1550/udp | 0.000362 | # Image Storage license manager 3M Company |
| hecmtl-db | 1551/tcp | 0.000050 | hecmtl-db 1551/tcp 0.000050 |
| hecmtl-db | 1551/udp | 0.000675 | hecmtl-db 1551/udp 0.000675 |
| pciarray | 1552/tcp | 0.000050 | pciarray 1552/tcp 0.000050 |
| pciarray | 1552/udp | 0.000478 | pciarray 1552/udp 0.000478 |
| sna-cs | 1553/tcp | 0.000000 | sna-cs 1553/tcp 0.000000 |
| sna-cs | 1553/udp | 0.000000 | sna-cs 1553/udp 0.000000 |
| caci-lm | 1554/tcp | 0.000000 | # CACI Products Company License Manager |
| caci-lm | 1554/udp | 0.000000 | # CACI Products Company License Manager |
| livelan | 1555/tcp | 0.000000 | livelan 1555/tcp 0.000000 |
| livelan | 1555/udp | 0.000330 | livelan 1555/udp 0.000330 |
| veritas_pbx | 1556/tcp | 0.000152 | # veritas-pbx | VERITAS Private Branch Exchange |
| veritas_pbx | 1556/udp | 0.000000 | # VERITAS Private Branch Exchange |
| arbortext-lm | 1557/tcp | 0.000000 | # ArborText License Manager |
| arbortext-lm | 1557/udp | 0.000000 | # ArborText License Manager |
| xingmpeg | 1558/tcp | 0.000076 | xingmpeg 1558/tcp 0.000076 |
| xingmpeg | 1558/udp | 0.000000 | xingmpeg 1558/udp 0.000000 |
| web2host | 1559/tcp | 0.000076 | web2host 1559/tcp 0.000076 |
| web2host | 1559/udp | 0.000330 | web2host 1559/udp 0.000330 |
| asci-val | 1560/tcp | 0.000076 | # ASCI-RemoteSHADOW |
| asci-val | 1560/udp | 0.000000 | # ASCI-RemoteSHADOW |
| facilityview | 1561/tcp | 0.000000 | facilityview 1561/tcp 0.000000 |
| facilityview | 1561/udp | 0.000000 | facilityview 1561/udp 0.000000 |
| pconnectmgr | 1562/tcp | 0.000000 | pconnectmgr 1562/tcp 0.000000 |
| pconnectmgr | 1562/udp | 0.000000 | pconnectmgr 1562/udp 0.000000 |
| cadabra-lm | 1563/tcp | 0.000000 | # Cadabra License Manager |
| cadabra-lm | 1563/udp | 0.000000 | # Cadabra License Manager |
| pay-per-view | 1564/tcp | 0.000000 | pay-per-view 1564/tcp 0.000000 |
| pay-per-view | 1564/udp | 0.000000 | # Pay-Per-View |
| winddlb | 1565/tcp | 0.000076 | # WinDD |
| winddlb | 1565/udp | 0.000000 | # WinDD |
| corelvideo | 1566/tcp | 0.000076 | corelvideo 1566/tcp 0.000076 |
| corelvideo | 1566/udp | 0.000000 | # CORELVIDEO |
| jlicelmd | 1567/tcp | 0.000000 | jlicelmd 1567/tcp 0.000000 |
| jlicelmd | 1567/udp | 0.000000 | jlicelmd 1567/udp 0.000000 |
| tsspmap | 1568/tcp | 0.000000 | tsspmap 1568/tcp 0.000000 |
| tsspmap | 1568/udp | 0.000000 | tsspmap 1568/udp 0.000000 |
| ets | 1569/tcp | 0.000076 | ets 1569/tcp 0.000076 |
| ets | 1569/udp | 0.000000 | ets 1569/udp 0.000000 |
| orbixd | 1570/tcp | 0.000000 | orbixd 1570/tcp 0.000000 |
| orbixd | 1570/udp | 0.000000 | orbixd 1570/udp 0.000000 |
| rdb-dbs-disp | 1571/tcp | 0.000000 | # Oracle Remote Data Base |
| rdb-dbs-disp | 1571/udp | 0.000000 | # Oracle Remote Data Base |
| chip-lm | 1572/tcp | 0.000000 | # Chipcom License Manager |
| chip-lm | 1572/udp | 0.000330 | # Chipcom License Manager |
| itscomm-ns | 1573/tcp | 0.000000 | itscomm-ns 1573/tcp 0.000000 |
| itscomm-ns | 1573/udp | 0.000000 | itscomm-ns 1573/udp 0.000000 |
| mvel-lm | 1574/tcp | 0.000000 | mvel-lm 1574/tcp 0.000000 |
| mvel-lm | 1574/udp | 0.000000 | mvel-lm 1574/udp 0.000000 |
| oraclenames | 1575/tcp | 0.000000 | oraclenames 1575/tcp 0.000000 |
| oraclenames | 1575/udp | 0.000000 | oraclenames 1575/udp 0.000000 |
| moldflow-lm | 1576/tcp | 0.000000 | # Moldflow License Manager |
| moldflow-lm | 1576/udp | 0.000330 | # Moldflow License Manager |
| hypercube-lm | 1577/tcp | 0.000000 | hypercube-lm 1577/tcp 0.000000 |
| hypercube-lm | 1577/udp | 0.000000 | hypercube-lm 1577/udp 0.000000 |
| jacobus-lm | 1578/tcp | 0.000000 | # Jacobus License Manager |
| jacobus-lm | 1578/udp | 0.000000 | # Jacobus License Manager |
| ioc-sea-lm | 1579/tcp | 0.000000 | ioc-sea-lm 1579/tcp 0.000000 |
| ioc-sea-lm | 1579/udp | 0.000330 | ioc-sea-lm 1579/udp 0.000330 |
| tn-tl-r1 | 1580/tcp | 0.000304 | # tn-tl-r2 |
| tn-tl-r2 | 1580/udp | 0.000000 | tn-tl-r2 1580/udp 0.000000 |
| mil-2045-47001 | 1581/tcp | 0.000000 | mil-2045-47001 1581/tcp 0.000000 |
| mil-2045-47001 | 1581/udp | 0.000000 | # MIL-2045-47001 |
| msims | 1582/tcp | 0.000000 | msims 1582/tcp 0.000000 |
| msims | 1582/udp | 0.000000 | # MSIMS |
| simbaexpress | 1583/tcp | 0.000152 | simbaexpress 1583/tcp 0.000152 |
| simbaexpress | 1583/udp | 0.000000 | simbaexpress 1583/udp 0.000000 |
| tn-tl-fd2 | 1584/tcp | 0.000076 | tn-tl-fd2 1584/tcp 0.000076 |
| tn-tl-fd2 | 1584/udp | 0.000000 | tn-tl-fd2 1584/udp 0.000000 |
| intv | 1585/tcp | 0.000000 | intv 1585/tcp 0.000000 |
| intv | 1585/udp | 0.000661 | intv 1585/udp 0.000661 |
| ibm-abtact | 1586/tcp | 0.000000 | ibm-abtact 1586/tcp 0.000000 |
| ibm-abtact | 1586/udp | 0.000000 | ibm-abtact 1586/udp 0.000000 |
| pra_elmd | 1587/tcp | 0.000000 | # pra-elmd |
| pra_elmd | 1587/udp | 0.000330 | pra_elmd 1587/udp 0.000330 |
| triquest-lm | 1588/tcp | 0.000000 | triquest-lm 1588/tcp 0.000000 |
| triquest-lm | 1588/udp | 0.000000 | triquest-lm 1588/udp 0.000000 |
| vqp | 1589/tcp | 0.000000 | vqp 1589/tcp 0.000000 |
| vqp | 1589/udp | 0.000330 | # VQP |
| gemini-lm | 1590/tcp | 0.000000 | gemini-lm 1590/tcp 0.000000 |
| gemini-lm | 1590/udp | 0.000000 | gemini-lm 1590/udp 0.000000 |
| ncpm-pm | 1591/tcp | 0.000000 | ncpm-pm 1591/tcp 0.000000 |
| ncpm-pm | 1591/udp | 0.000000 | ncpm-pm 1591/udp 0.000000 |
| commonspace | 1592/tcp | 0.000076 | commonspace 1592/tcp 0.000076 |
| commonspace | 1592/udp | 0.000000 | commonspace 1592/udp 0.000000 |
| mainsoft-lm | 1593/tcp | 0.000000 | mainsoft-lm 1593/tcp 0.000000 |
| mainsoft-lm | 1593/udp | 0.000000 | mainsoft-lm 1593/udp 0.000000 |
| sixtrak | 1594/tcp | 0.000152 | sixtrak 1594/tcp 0.000152 |
| sixtrak | 1594/udp | 0.000000 | sixtrak 1594/udp 0.000000 |
| radio | 1595/tcp | 0.000000 | radio 1595/tcp 0.000000 |
| radio | 1595/udp | 0.000000 | radio 1595/udp 0.000000 |
| radio-sm | 1596/tcp | 0.000000 | # radio-bc |
| radio-bc | 1596/udp | 0.000330 | radio-bc 1596/udp 0.000330 |
| orbplus-iiop | 1597/tcp | 0.000000 | orbplus-iiop 1597/tcp 0.000000 |
| orbplus-iiop | 1597/udp | 0.000330 | orbplus-iiop 1597/udp 0.000330 |
| picknfs | 1598/tcp | 0.000076 | picknfs 1598/tcp 0.000076 |
| picknfs | 1598/udp | 0.000000 | picknfs 1598/udp 0.000000 |
| simbaservices | 1599/tcp | 0.000000 | simbaservices 1599/tcp 0.000000 |
| simbaservices | 1599/udp | 0.000330 | simbaservices 1599/udp 0.000330 |
| issd | 1600/tcp | 0.000263 | issd 1600/tcp 0.000263 |
| issd | 1600/udp | 0.000807 | issd 1600/udp 0.000807 |
| aas | 1601/tcp | 0.000000 | aas 1601/tcp 0.000000 |
| aas | 1601/udp | 0.000000 | aas 1601/udp 0.000000 |
| inspect | 1602/tcp | 0.000000 | inspect 1602/tcp 0.000000 |
| inspect | 1602/udp | 0.000000 | inspect 1602/udp 0.000000 |
| picodbc | 1603/tcp | 0.000000 | # pickodbc |
| picodbc | 1603/udp | 0.000000 | # pickodbc |
| icabrowser | 1604/tcp | 0.000000 | icabrowser 1604/tcp 0.000000 |
| icabrowser | 1604/udp | 0.000000 | icabrowser 1604/udp 0.000000 |
| slp | 1605/tcp | 0.000076 | # Salutation Manager (Salutation Protocol) |
| slp | 1605/udp | 0.000330 | # Salutation Manager (Salutation Protocol) |
| slm-api | 1606/tcp | 0.000000 | # Salutation Manager (SLM-API) |
| slm-api | 1606/udp | 0.000330 | # Salutation Manager (SLM-API) |
| stt | 1607/tcp | 0.000076 | stt 1607/tcp 0.000076 |
| stt | 1607/udp | 0.000000 | stt 1607/udp 0.000000 |
| smart-lm | 1608/tcp | 0.000000 | # Smart Corp. License Manager |
| smart-lm | 1608/udp | 0.000330 | # Smart Corp. License Manager |
| isysg-lm | 1609/tcp | 0.000000 | isysg-lm 1609/tcp 0.000000 |
| isysg-lm | 1609/udp | 0.000000 | isysg-lm 1609/udp 0.000000 |
| taurus-wh | 1610/tcp | 0.000000 | taurus-wh 1610/tcp 0.000000 |
| taurus-wh | 1610/udp | 0.000330 | taurus-wh 1610/udp 0.000330 |
| ill | 1611/tcp | 0.000000 | # Inter Library Loan |
| ill | 1611/udp | 0.000000 | # Inter Library Loan |
| netbill-trans | 1612/tcp | 0.000000 | # NetBill Transaction Server |
| netbill-trans | 1612/udp | 0.000000 | # NetBill Transaction Server |
| netbill-keyrep | 1613/tcp | 0.000000 | # NetBill Key Repository |
| netbill-keyrep | 1613/udp | 0.000000 | # NetBill Key Repository |
| netbill-cred | 1614/tcp | 0.000000 | # NetBill Credential Server |
| netbill-cred | 1614/udp | 0.000000 | # NetBill Credential Server |
| netbill-auth | 1615/tcp | 0.000076 | # NetBill Authorization Server |
| netbill-auth | 1615/udp | 0.000000 | # NetBill Authorization Server |
| netbill-prod | 1616/tcp | 0.000000 | # NetBill Product Server |
| netbill-prod | 1616/udp | 0.000330 | # NetBill Product Server |
| nimrod-agent | 1617/tcp | 0.000000 | # Nimrod Inter-Agent Communication |
| nimrod-agent | 1617/udp | 0.000000 | # Nimrod Inter-Agent Communication |
| skytelnet | 1618/tcp | 0.000000 | skytelnet 1618/tcp 0.000000 |
| skytelnet | 1618/udp | 0.000330 | skytelnet 1618/udp 0.000330 |
| xs-openstorage | 1619/tcp | 0.000000 | xs-openstorage 1619/tcp 0.000000 |
| xs-openstorage | 1619/udp | 0.000000 | xs-openstorage 1619/udp 0.000000 |
| faxportwinport | 1620/tcp | 0.000076 | faxportwinport 1620/tcp 0.000076 |
| faxportwinport | 1620/udp | 0.000661 | faxportwinport 1620/udp 0.000661 |
| softdataphone | 1621/tcp | 0.000000 | softdataphone 1621/tcp 0.000000 |
| softdataphone | 1621/udp | 0.000330 | softdataphone 1621/udp 0.000330 |
| ontime | 1622/tcp | 0.000076 | ontime 1622/tcp 0.000076 |
| ontime | 1622/udp | 0.000991 | ontime 1622/udp 0.000991 |
| jaleosnd | 1623/tcp | 0.000000 | jaleosnd 1623/tcp 0.000000 |
| jaleosnd | 1623/udp | 0.000330 | jaleosnd 1623/udp 0.000330 |
| udp-sr-port | 1624/tcp | 0.000000 | udp-sr-port 1624/tcp 0.000000 |
| udp-sr-port | 1624/udp | 0.000000 | udp-sr-port 1624/udp 0.000000 |
| svs-omagent | 1625/tcp | 0.000000 | svs-omagent 1625/tcp 0.000000 |
| svs-omagent | 1625/udp | 0.000000 | svs-omagent 1625/udp 0.000000 |
| shockwave | 1626/tcp | 0.000000 | shockwave 1626/tcp 0.000000 |
| shockwave | 1626/udp | 0.000330 | # Shockwave |
| t128-gateway | 1627/tcp | 0.000000 | # T.128 Gateway |
| t128-gateway | 1627/udp | 0.000000 | # T.128 Gateway |
| lontalk-norm | 1628/tcp | 0.000000 | # LonTalk normal |
| lontalk-norm | 1628/udp | 0.000330 | # LonTalk normal |
| lontalk-urgnt | 1629/tcp | 0.000000 | # LonTalk urgent |
| lontalk-urgnt | 1629/udp | 0.000000 | # LonTalk urgent |
| oraclenet8cman | 1630/tcp | 0.000000 | # Oracle Net8 Cman |
| oraclenet8cman | 1630/udp | 0.000000 | # Oracle Net8 Cman |
| visitview | 1631/tcp | 0.000000 | # Visit view |
| visitview | 1631/udp | 0.000330 | # Visit view |
| pammratc | 1632/tcp | 0.000076 | pammratc 1632/tcp 0.000076 |
| pammratc | 1632/udp | 0.000000 | # PAMMRATC |
| pammrpc | 1633/tcp | 0.000000 | pammrpc 1633/tcp 0.000000 |
| pammrpc | 1633/udp | 0.000330 | # PAMMRPC |
| loaprobe | 1634/tcp | 0.000000 | # Log On America Probe |
| loaprobe | 1634/udp | 0.000000 | # Log On America Probe |
| edb-server1 | 1635/tcp | 0.000076 | # EDB Server 1 |
| edb-server1 | 1635/udp | 0.000000 | # EDB Server 1 |
| isdc | 1636/tcp | 0.000000 | # ISP shared public data control |
| isdc | 1636/udp | 0.000000 | # ISP shared public data control |
| islc | 1637/tcp | 0.000000 | # ISP shared local data control |
| islc | 1637/udp | 0.000000 | # ISP shared local data control |
| ismc | 1638/tcp | 0.000076 | # ISP shared management control |
| ismc | 1638/udp | 0.000000 | # ISP shared management control |
| cert-initiator | 1639/tcp | 0.000000 | cert-initiator 1639/tcp 0.000000 |
| cert-initiator | 1639/udp | 0.000330 | cert-initiator 1639/udp 0.000330 |
| cert-responder | 1640/tcp | 0.000000 | cert-responder 1640/tcp 0.000000 |
| cert-responder | 1640/udp | 0.000330 | cert-responder 1640/udp 0.000330 |
| invision | 1641/tcp | 0.000152 | invision 1641/tcp 0.000152 |
| invision | 1641/udp | 0.000000 | # InVision |
| isis-am | 1642/tcp | 0.000000 | isis-am 1642/tcp 0.000000 |
| isis-am | 1642/udp | 0.000000 | isis-am 1642/udp 0.000000 |
| isis-ambc | 1643/tcp | 0.000000 | isis-ambc 1643/tcp 0.000000 |
| isis-ambc | 1643/udp | 0.000000 | isis-ambc 1643/udp 0.000000 |
| saiseh | 1644/tcp | 0.000000 | # Satellite-data Acquisition System 4 |
| sightline | 1645/tcp | 0.000076 | sightline 1645/tcp 0.000076 |
| radius | 1645/udp | 0.023180 | # radius authentication |
| sa-msg-port | 1646/tcp | 0.000000 | sa-msg-port 1646/tcp 0.000000 |
| radacct | 1646/udp | 0.023196 | # radius accounting |
| rsap | 1647/tcp | 0.000000 | rsap 1647/tcp 0.000000 |
| rsap | 1647/udp | 0.000330 | rsap 1647/udp 0.000330 |
| concurrent-lm | 1648/tcp | 0.000000 | concurrent-lm 1648/tcp 0.000000 |
| concurrent-lm | 1648/udp | 0.000000 | concurrent-lm 1648/udp 0.000000 |
| kermit | 1649/tcp | 0.000000 | kermit 1649/tcp 0.000000 |
| kermit | 1649/udp | 0.000000 | kermit 1649/udp 0.000000 |
| nkd | 1650/tcp | 0.000038 | # nkdn |
| nkd | 1650/udp | 0.000774 | nkd 1650/udp 0.000774 |
| shiva_confsrvr | 1651/tcp | 0.000050 | # shiva-confsrvr |
| shiva_confsrvr | 1651/udp | 0.000593 | shiva_confsrvr 1651/udp 0.000593 |
| xnmp | 1652/tcp | 0.000063 | xnmp 1652/tcp 0.000063 |
| xnmp | 1652/udp | 0.000593 | xnmp 1652/udp 0.000593 |
| alphatech-lm | 1653/tcp | 0.000000 | alphatech-lm 1653/tcp 0.000000 |
| alphatech-lm | 1653/udp | 0.000000 | alphatech-lm 1653/udp 0.000000 |
| stargatealerts | 1654/tcp | 0.000000 | stargatealerts 1654/tcp 0.000000 |
| stargatealerts | 1654/udp | 0.000000 | stargatealerts 1654/udp 0.000000 |
| dec-mbadmin | 1655/tcp | 0.000000 | dec-mbadmin 1655/tcp 0.000000 |
| dec-mbadmin | 1655/udp | 0.000000 | dec-mbadmin 1655/udp 0.000000 |
| dec-mbadmin-h | 1656/tcp | 0.000000 | dec-mbadmin-h 1656/tcp 0.000000 |
| dec-mbadmin-h | 1656/udp | 0.000000 | dec-mbadmin-h 1656/udp 0.000000 |
| fujitsu-mmpdc | 1657/tcp | 0.000000 | fujitsu-mmpdc 1657/tcp 0.000000 |
| fujitsu-mmpdc | 1657/udp | 0.000000 | fujitsu-mmpdc 1657/udp 0.000000 |
| sixnetudr | 1658/tcp | 0.000152 | sixnetudr 1658/tcp 0.000152 |
| sixnetudr | 1658/udp | 0.000000 | sixnetudr 1658/udp 0.000000 |
| sg-lm | 1659/tcp | 0.000000 | # Silicon Grail License Manager |
| sg-lm | 1659/udp | 0.000000 | # Silicon Grail License Manager |
| skip-mc-gikreq | 1660/tcp | 0.000000 | skip-mc-gikreq 1660/tcp 0.000000 |
| skip-mc-gikreq | 1660/udp | 0.000000 | skip-mc-gikreq 1660/udp 0.000000 |
| netview-aix-1 | 1661/tcp | 0.000025 | netview-aix-1 1661/tcp 0.000025 |
| netview-aix-1 | 1661/udp | 0.000445 | netview-aix-1 1661/udp 0.000445 |
| netview-aix-2 | 1662/tcp | 0.000025 | netview-aix-2 1662/tcp 0.000025 |
| netview-aix-2 | 1662/udp | 0.000807 | netview-aix-2 1662/udp 0.000807 |
| netview-aix-3 | 1663/tcp | 0.000063 | netview-aix-3 1663/tcp 0.000063 |
| netview-aix-3 | 1663/udp | 0.000527 | netview-aix-3 1663/udp 0.000527 |
| netview-aix-4 | 1664/tcp | 0.000038 | netview-aix-4 1664/tcp 0.000038 |
| netview-aix-4 | 1664/udp | 0.000939 | netview-aix-4 1664/udp 0.000939 |
| netview-aix-5 | 1665/tcp | 0.000000 | netview-aix-5 1665/tcp 0.000000 |
| netview-aix-5 | 1665/udp | 0.000362 | netview-aix-5 1665/udp 0.000362 |
| netview-aix-6 | 1666/tcp | 0.000577 | netview-aix-6 1666/tcp 0.000577 |
| netview-aix-6 | 1666/udp | 0.001186 | netview-aix-6 1666/udp 0.001186 |
| netview-aix-7 | 1667/tcp | 0.000025 | netview-aix-7 1667/tcp 0.000025 |
| netview-aix-7 | 1667/udp | 0.000445 | netview-aix-7 1667/udp 0.000445 |
| netview-aix-8 | 1668/tcp | 0.000038 | netview-aix-8 1668/tcp 0.000038 |
| netview-aix-8 | 1668/udp | 0.000428 | netview-aix-8 1668/udp 0.000428 |
| netview-aix-9 | 1669/tcp | 0.000000 | netview-aix-9 1669/tcp 0.000000 |
| netview-aix-9 | 1669/udp | 0.000412 | netview-aix-9 1669/udp 0.000412 |
| netview-aix-10 | 1670/tcp | 0.000013 | netview-aix-10 1670/tcp 0.000013 |
| netview-aix-10 | 1670/udp | 0.000675 | netview-aix-10 1670/udp 0.000675 |
| netview-aix-11 | 1671/tcp | 0.000013 | netview-aix-11 1671/tcp 0.000013 |
| netview-aix-11 | 1671/udp | 0.000659 | netview-aix-11 1671/udp 0.000659 |
| netview-aix-12 | 1672/tcp | 0.000013 | netview-aix-12 1672/tcp 0.000013 |
| netview-aix-12 | 1672/udp | 0.000824 | netview-aix-12 1672/udp 0.000824 |
| proshare-mc-1 | 1673/tcp | 0.000000 | # Intel Proshare Multicast |
| proshare-mc-1 | 1673/udp | 0.000000 | # Intel Proshare Multicast |
| proshare-mc-2 | 1674/tcp | 0.000000 | # Intel Proshare Multicast |
| proshare-mc-2 | 1674/udp | 0.000000 | # Intel Proshare Multicast |
| pdp | 1675/tcp | 0.000000 | # Pacific Data Products |
| pdp | 1675/udp | 0.000000 | # Pacific Data Products |
| netcomm1 | 1676/tcp | 0.000000 | # netcomm2 |
| netcomm2 | 1676/udp | 0.000000 | netcomm2 1676/udp 0.000000 |
| groupwise | 1677/tcp | 0.000076 | groupwise 1677/tcp 0.000076 |
| groupwise | 1677/udp | 0.000330 | groupwise 1677/udp 0.000330 |
| prolink | 1678/tcp | 0.000000 | prolink 1678/tcp 0.000000 |
| prolink | 1678/udp | 0.000330 | prolink 1678/udp 0.000330 |
| darcorp-lm | 1679/tcp | 0.000000 | darcorp-lm 1679/tcp 0.000000 |
| darcorp-lm | 1679/udp | 0.000000 | darcorp-lm 1679/udp 0.000000 |
| CarbonCopy | 1680/tcp | 0.000063 | # microcom-sbp |
| microcom-sbp | 1680/udp | 0.000330 | microcom-sbp 1680/udp 0.000330 |
| sd-elmd | 1681/tcp | 0.000000 | sd-elmd 1681/tcp 0.000000 |
| sd-elmd | 1681/udp | 0.000000 | sd-elmd 1681/udp 0.000000 |
| lanyon-lantern | 1682/tcp | 0.000000 | lanyon-lantern 1682/tcp 0.000000 |
| lanyon-lantern | 1682/udp | 0.000000 | lanyon-lantern 1682/udp 0.000000 |
| ncpm-hip | 1683/tcp | 0.000076 | ncpm-hip 1683/tcp 0.000076 |
| ncpm-hip | 1683/udp | 0.000000 | ncpm-hip 1683/udp 0.000000 |
| snaresecure | 1684/tcp | 0.000000 | snaresecure 1684/tcp 0.000000 |
| snaresecure | 1684/udp | 0.000000 | # SnareSecure |
| n2nremote | 1685/tcp | 0.000000 | n2nremote 1685/tcp 0.000000 |
| n2nremote | 1685/udp | 0.000661 | n2nremote 1685/udp 0.000661 |
| cvmon | 1686/tcp | 0.000000 | cvmon 1686/tcp 0.000000 |
| cvmon | 1686/udp | 0.000000 | cvmon 1686/udp 0.000000 |
| nsjtp-ctrl | 1687/tcp | 0.000380 | nsjtp-ctrl 1687/tcp 0.000380 |
| nsjtp-ctrl | 1687/udp | 0.000330 | nsjtp-ctrl 1687/udp 0.000330 |
| nsjtp-data | 1688/tcp | 0.000152 | nsjtp-data 1688/tcp 0.000152 |
| nsjtp-data | 1688/udp | 0.000330 | nsjtp-data 1688/udp 0.000330 |
| firefox | 1689/tcp | 0.000000 | firefox 1689/tcp 0.000000 |
| firefox | 1689/udp | 0.000000 | firefox 1689/udp 0.000000 |
| ng-umds | 1690/tcp | 0.000000 | ng-umds 1690/tcp 0.000000 |
| ng-umds | 1690/udp | 0.000000 | ng-umds 1690/udp 0.000000 |
| empire-empuma | 1691/tcp | 0.000076 | empire-empuma 1691/tcp 0.000076 |
| empire-empuma | 1691/udp | 0.000000 | empire-empuma 1691/udp 0.000000 |
| sstsys-lm | 1692/tcp | 0.000000 | sstsys-lm 1692/tcp 0.000000 |
| sstsys-lm | 1692/udp | 0.000000 | sstsys-lm 1692/udp 0.000000 |
| rrirtr | 1693/tcp | 0.000000 | rrirtr 1693/tcp 0.000000 |
| rrirtr | 1693/udp | 0.000000 | rrirtr 1693/udp 0.000000 |
| rrimwm | 1694/tcp | 0.000076 | rrimwm 1694/tcp 0.000076 |
| rrimwm | 1694/udp | 0.000000 | rrimwm 1694/udp 0.000000 |
| rrilwm | 1695/tcp | 0.000000 | rrilwm 1695/tcp 0.000000 |
| rrilwm | 1695/udp | 0.000661 | rrilwm 1695/udp 0.000661 |
| rrifmm | 1696/tcp | 0.000000 | rrifmm 1696/tcp 0.000000 |
| rrifmm | 1696/udp | 0.000330 | rrifmm 1696/udp 0.000330 |
| rrisat | 1697/tcp | 0.000000 | rrisat 1697/tcp 0.000000 |
| rrisat | 1697/udp | 0.000000 | rrisat 1697/udp 0.000000 |
| rsvp-encap-1 | 1698/tcp | 0.000000 | # RSVP-ENCAPSULATION-1 |
| rsvp-encap-1 | 1698/udp | 0.000000 | # RSVP-ENCAPSULATION-1 |
| rsvp-encap-2 | 1699/tcp | 0.000076 | # RSVP-ENCAPSULATION-2 |
| rsvp-encap-2 | 1699/udp | 0.000330 | # RSVP-ENCAPSULATION-2 |
| mps-raft | 1700/tcp | 0.000836 | mps-raft 1700/tcp 0.000836 |
| mps-raft | 1700/udp | 0.000000 | mps-raft 1700/udp 0.000000 |
| l2f | 1701/tcp | 0.000076 | # l2tp |
| L2TP | 1701/udp | 0.076163 | L2TP 1701/udp 0.076163 |
| deskshare | 1702/tcp | 0.000000 | deskshare 1702/tcp 0.000000 |
| deskshare | 1702/udp | 0.000000 | deskshare 1702/udp 0.000000 |
| hb-engine | 1703/tcp | 0.000076 | hb-engine 1703/tcp 0.000076 |
| hb-engine | 1703/udp | 0.000000 | hb-engine 1703/udp 0.000000 |
| bcs-broker | 1704/tcp | 0.000000 | bcs-broker 1704/tcp 0.000000 |
| bcs-broker | 1704/udp | 0.000000 | bcs-broker 1704/udp 0.000000 |
| slingshot | 1705/tcp | 0.000000 | slingshot 1705/tcp 0.000000 |
| slingshot | 1705/udp | 0.000000 | slingshot 1705/udp 0.000000 |
| jetform | 1706/tcp | 0.000000 | jetform 1706/tcp 0.000000 |
| jetform | 1706/udp | 0.000000 | jetform 1706/udp 0.000000 |
| vdmplay | 1707/tcp | 0.000076 | vdmplay 1707/tcp 0.000076 |
| vdmplay | 1707/udp | 0.000000 | vdmplay 1707/udp 0.000000 |
| gat-lmd | 1708/tcp | 0.000076 | gat-lmd 1708/tcp 0.000076 |
| gat-lmd | 1708/udp | 0.000000 | gat-lmd 1708/udp 0.000000 |
| centra | 1709/tcp | 0.000076 | centra 1709/tcp 0.000076 |
| centra | 1709/udp | 0.000000 | centra 1709/udp 0.000000 |
| impera | 1710/tcp | 0.000000 | impera 1710/tcp 0.000000 |
| impera | 1710/udp | 0.000000 | impera 1710/udp 0.000000 |
| pptconference | 1711/tcp | 0.000076 | pptconference 1711/tcp 0.000076 |
| pptconference | 1711/udp | 0.000330 | pptconference 1711/udp 0.000330 |
| registrar | 1712/tcp | 0.000076 | # resource monitoring service |
| registrar | 1712/udp | 0.000330 | # resource monitoring service |
| conferencetalk | 1713/tcp | 0.000076 | conferencetalk 1713/tcp 0.000076 |
| conferencetalk | 1713/udp | 0.000000 | # ConferenceTalk |
| sesi-lm | 1714/tcp | 0.000000 | sesi-lm 1714/tcp 0.000000 |
| sesi-lm | 1714/udp | 0.000000 | sesi-lm 1714/udp 0.000000 |
| houdini-lm | 1715/tcp | 0.000076 | houdini-lm 1715/tcp 0.000076 |
| houdini-lm | 1715/udp | 0.000000 | houdini-lm 1715/udp 0.000000 |
| xmsg | 1716/tcp | 0.000000 | xmsg 1716/tcp 0.000000 |
| xmsg | 1716/udp | 0.000000 | xmsg 1716/udp 0.000000 |
| fj-hdnet | 1717/tcp | 0.000912 | fj-hdnet 1717/tcp 0.000912 |
| fj-hdnet | 1717/udp | 0.000000 | fj-hdnet 1717/udp 0.000000 |
| h323gatedisc | 1718/tcp | 0.000380 | # H.323 Multicast Gatekeeper Discover |
| h225gatedisc | 1718/udp | 0.012554 | # H.225 gatekeeper discovery |
| h323gatestat | 1719/tcp | 0.000152 | # H.323 Unicast Gatekeeper Signaling |
| h323gatestat | 1719/udp | 0.018500 | # H.323 Gatestat |
| h323q931 | 1720/tcp | 0.014277 | # h323hostcall | Interactive media | H.323 Call Control Signalling | H.323 Call Control |
| h323hostcall | 1720/udp | 0.000000 | h323hostcall 1720/udp 0.000000 |
| caicci | 1721/tcp | 0.000152 | caicci 1721/tcp 0.000152 |
| caicci | 1721/udp | 0.000000 | caicci 1721/udp 0.000000 |
| hks-lm | 1722/tcp | 0.000076 | # HKS License Manager |
| hks-lm | 1722/udp | 0.000000 | # HKS License Manager |
| pptp | 1723/tcp | 0.032468 | # Point-to-point tunnelling protocol |
| pptp | 1723/udp | 0.000000 | pptp 1723/udp 0.000000 |
| csbphone | 1724/tcp | 0.000000 | csbphone 1724/tcp 0.000000 |
| csbphone | 1724/udp | 0.000330 | csbphone 1724/udp 0.000330 |
| iden-ralp | 1725/tcp | 0.000000 | iden-ralp 1725/tcp 0.000000 |
| iden-ralp | 1725/udp | 0.000000 | iden-ralp 1725/udp 0.000000 |
| iberiagames | 1726/tcp | 0.000000 | iberiagames 1726/tcp 0.000000 |
| iberiagames | 1726/udp | 0.000330 | # IBERIAGAMES |
| winddx | 1727/tcp | 0.000000 | winddx 1727/tcp 0.000000 |
| winddx | 1727/udp | 0.000000 | winddx 1727/udp 0.000000 |
| telindus | 1728/tcp | 0.000000 | telindus 1728/tcp 0.000000 |
| telindus | 1728/udp | 0.000000 | # TELINDUS |
| citynl | 1729/tcp | 0.000000 | # CityNL License Management |
| citynl | 1729/udp | 0.000330 | # CityNL License Management |
| roketz | 1730/tcp | 0.000076 | roketz 1730/tcp 0.000076 |
| roketz | 1730/udp | 0.000330 | roketz 1730/udp 0.000330 |
| msiccp | 1731/tcp | 0.000000 | msiccp 1731/tcp 0.000000 |
| msiccp | 1731/udp | 0.000000 | # MSICCP |
| proxim | 1732/tcp | 0.000000 | proxim 1732/tcp 0.000000 |
| proxim | 1732/udp | 0.000000 | proxim 1732/udp 0.000000 |
| siipat | 1733/tcp | 0.000000 | # SIMS - SIIPAT Protocol for Alarm Transmission |
| siipat | 1733/udp | 0.000330 | # SIMS - SIIPAT Protocol for Alarm Transmission |
| cambertx-lm | 1734/tcp | 0.000000 | # Camber Corporation License Management |
| cambertx-lm | 1734/udp | 0.000000 | # Camber Corporation License Management |
| privatechat | 1735/tcp | 0.000076 | privatechat 1735/tcp 0.000076 |
| privatechat | 1735/udp | 0.000000 | # PrivateChat |
| street-stream | 1736/tcp | 0.000076 | street-stream 1736/tcp 0.000076 |
| street-stream | 1736/udp | 0.000000 | street-stream 1736/udp 0.000000 |
| ultimad | 1737/tcp | 0.000000 | ultimad 1737/tcp 0.000000 |
| ultimad | 1737/udp | 0.000000 | ultimad 1737/udp 0.000000 |
| gamegen1 | 1738/tcp | 0.000000 | gamegen1 1738/tcp 0.000000 |
| gamegen1 | 1738/udp | 0.000661 | # GameGen1 |
| webaccess | 1739/tcp | 0.000000 | webaccess 1739/tcp 0.000000 |
| webaccess | 1739/udp | 0.000000 | webaccess 1739/udp 0.000000 |
| encore | 1740/tcp | 0.000000 | encore 1740/tcp 0.000000 |
| encore | 1740/udp | 0.000330 | encore 1740/udp 0.000330 |
| cisco-net-mgmt | 1741/tcp | 0.000000 | cisco-net-mgmt 1741/tcp 0.000000 |
| cisco-net-mgmt | 1741/udp | 0.000000 | cisco-net-mgmt 1741/udp 0.000000 |
| 3Com-nsd | 1742/tcp | 0.000000 | 3Com-nsd 1742/tcp 0.000000 |
| 3Com-nsd | 1742/udp | 0.000000 | 3Com-nsd 1742/udp 0.000000 |
| cinegrfx-lm | 1743/tcp | 0.000000 | # Cinema Graphics License Manager |
| cinegrfx-lm | 1743/udp | 0.000330 | # Cinema Graphics License Manager |
| ncpm-ft | 1744/tcp | 0.000000 | ncpm-ft 1744/tcp 0.000000 |
| ncpm-ft | 1744/udp | 0.000000 | ncpm-ft 1744/udp 0.000000 |
| remote-winsock | 1745/tcp | 0.000076 | remote-winsock 1745/tcp 0.000076 |
| remote-winsock | 1745/udp | 0.000000 | remote-winsock 1745/udp 0.000000 |
| ftrapid-1 | 1746/tcp | 0.000000 | ftrapid-1 1746/tcp 0.000000 |
| ftrapid-1 | 1746/udp | 0.000000 | ftrapid-1 1746/udp 0.000000 |
| ftrapid-2 | 1747/tcp | 0.000000 | ftrapid-2 1747/tcp 0.000000 |
| ftrapid-2 | 1747/udp | 0.000000 | ftrapid-2 1747/udp 0.000000 |
| oracle-em1 | 1748/tcp | 0.000000 | oracle-em1 1748/tcp 0.000000 |
| oracle-em1 | 1748/udp | 0.000000 | oracle-em1 1748/udp 0.000000 |
| aspen-services | 1749/tcp | 0.000000 | aspen-services 1749/tcp 0.000000 |
| aspen-services | 1749/udp | 0.000000 | aspen-services 1749/udp 0.000000 |
| sslp | 1750/tcp | 0.000076 | # Simple Socket Library's PortMaster |
| sslp | 1750/udp | 0.000000 | # Simple Socket Library's PortMaster |
| swiftnet | 1751/tcp | 0.000000 | swiftnet 1751/tcp 0.000000 |
| swiftnet | 1751/udp | 0.000000 | # SwiftNet |
| lofr-lm | 1752/tcp | 0.000076 | # Leap of Faith Research License Manager |
| lofr-lm | 1752/udp | 0.000000 | # Leap of Faith Research License Manager |
| predatar-comms | 1753/tcp | 0.000076 | # Predatar Comms Service |
| oracle-em2 | 1754/tcp | 0.000000 | oracle-em2 1754/tcp 0.000000 |
| oracle-em2 | 1754/udp | 0.000000 | oracle-em2 1754/udp 0.000000 |
| wms | 1755/tcp | 0.003350 | # Windows media service | ms-streaming |
| ms-streaming | 1755/udp | 0.000661 | ms-streaming 1755/udp 0.000661 |
| capfast-lmd | 1756/tcp | 0.000000 | capfast-lmd 1756/tcp 0.000000 |
| capfast-lmd | 1756/udp | 0.000000 | capfast-lmd 1756/udp 0.000000 |
| cnhrp | 1757/tcp | 0.000000 | cnhrp 1757/tcp 0.000000 |
| cnhrp | 1757/udp | 0.000000 | cnhrp 1757/udp 0.000000 |
| tftp-mcast | 1758/tcp | 0.000000 | tftp-mcast 1758/tcp 0.000000 |
| tftp-mcast | 1758/udp | 0.000000 | tftp-mcast 1758/udp 0.000000 |
| spss-lm | 1759/tcp | 0.000000 | # SPSS License Manager |
| spss-lm | 1759/udp | 0.000000 | # SPSS License Manager |
| www-ldap-gw | 1760/tcp | 0.000000 | www-ldap-gw 1760/tcp 0.000000 |
| www-ldap-gw | 1760/udp | 0.000000 | www-ldap-gw 1760/udp 0.000000 |
| landesk-rc | 1761/tcp | 0.001756 | # LANDesk Remote Control | cft-0 |
| cft-0 | 1761/udp | 0.002313 | cft-0 1761/udp 0.002313 |
| landesk-rc | 1762/tcp | 0.000038 | # LANDesk Remote Control | cft-1 |
| cft-1 | 1762/udp | 0.000000 | cft-1 1762/udp 0.000000 |
| landesk-rc | 1763/tcp | 0.000025 | # LANDesk Remote Control | cft-2 |
| cft-2 | 1763/udp | 0.000000 | cft-2 1763/udp 0.000000 |
| landesk-rc | 1764/tcp | 0.000000 | # LANDesk Remote Control | cft-3 |
| cft-3 | 1764/udp | 0.000000 | cft-3 1764/udp 0.000000 |
| cft-4 | 1765/tcp | 0.000000 | cft-4 1765/tcp 0.000000 |
| cft-4 | 1765/udp | 0.000000 | cft-4 1765/udp 0.000000 |
| cft-5 | 1766/tcp | 0.000000 | cft-5 1766/tcp 0.000000 |
| cft-5 | 1766/udp | 0.000330 | cft-5 1766/udp 0.000330 |
| cft-6 | 1767/tcp | 0.000000 | cft-6 1767/tcp 0.000000 |
| cft-6 | 1767/udp | 0.000330 | cft-6 1767/udp 0.000330 |
| cft-7 | 1768/tcp | 0.000000 | cft-7 1768/tcp 0.000000 |
| cft-7 | 1768/udp | 0.000000 | cft-7 1768/udp 0.000000 |
| bmc-net-adm | 1769/tcp | 0.000000 | bmc-net-adm 1769/tcp 0.000000 |
| bmc-net-adm | 1769/udp | 0.000000 | bmc-net-adm 1769/udp 0.000000 |
| bmc-net-svc | 1770/tcp | 0.000000 | bmc-net-svc 1770/tcp 0.000000 |
| bmc-net-svc | 1770/udp | 0.000000 | bmc-net-svc 1770/udp 0.000000 |
| vaultbase | 1771/tcp | 0.000000 | vaultbase 1771/tcp 0.000000 |
| vaultbase | 1771/udp | 0.000000 | vaultbase 1771/udp 0.000000 |
| essweb-gw | 1772/tcp | 0.000000 | # EssWeb Gateway |
| essweb-gw | 1772/udp | 0.000000 | # EssWeb Gateway |
| kmscontrol | 1773/tcp | 0.000000 | kmscontrol 1773/tcp 0.000000 |
| kmscontrol | 1773/udp | 0.000330 | # KMSControl |
| global-dtserv | 1774/tcp | 0.000000 | global-dtserv 1774/tcp 0.000000 |
| global-dtserv | 1774/udp | 0.000000 | global-dtserv 1774/udp 0.000000 |
| vdab | 1775/tcp | 0.000000 | # data interchange between visual processing containers |
| femis | 1776/tcp | 0.000000 | # Federal Emergency Management Information System |
| femis | 1776/udp | 0.000000 | # Federal Emergency Management Information System |
| powerguardian | 1777/tcp | 0.000000 | powerguardian 1777/tcp 0.000000 |
| powerguardian | 1777/udp | 0.000000 | powerguardian 1777/udp 0.000000 |
| prodigy-intrnet | 1778/tcp | 0.000000 | # prodigy-internet |
| prodigy-intrnet | 1778/udp | 0.000000 | # prodigy-internet |
| pharmasoft | 1779/tcp | 0.000000 | pharmasoft 1779/tcp 0.000000 |
| pharmasoft | 1779/udp | 0.000330 | pharmasoft 1779/udp 0.000330 |
| dpkeyserv | 1780/tcp | 0.000000 | dpkeyserv 1780/tcp 0.000000 |
| dpkeyserv | 1780/udp | 0.000000 | dpkeyserv 1780/udp 0.000000 |
| answersoft-lm | 1781/tcp | 0.000000 | answersoft-lm 1781/tcp 0.000000 |
| answersoft-lm | 1781/udp | 0.000000 | answersoft-lm 1781/udp 0.000000 |
| hp-hcip | 1782/tcp | 0.000304 | hp-hcip 1782/tcp 0.000304 |
| hp-hcip | 1782/udp | 0.004625 | hp-hcip 1782/udp 0.004625 |
| finle-lm | 1784/tcp | 0.000000 | # Finle License Manager |
| finle-lm | 1784/udp | 0.000000 | # Finle License Manager |
| windlm | 1785/tcp | 0.000000 | # Wind River Systems License Manager |
| windlm | 1785/udp | 0.000000 | # Wind River Systems License Manager |
| funk-logger | 1786/tcp | 0.000000 | funk-logger 1786/tcp 0.000000 |
| funk-logger | 1786/udp | 0.000330 | funk-logger 1786/udp 0.000330 |
| funk-license | 1787/tcp | 0.000000 | funk-license 1787/tcp 0.000000 |
| funk-license | 1787/udp | 0.000000 | funk-license 1787/udp 0.000000 |
| psmond | 1788/tcp | 0.000000 | psmond 1788/tcp 0.000000 |
| psmond | 1788/udp | 0.000000 | psmond 1788/udp 0.000000 |
| hello | 1789/tcp | 0.000000 | hello 1789/tcp 0.000000 |
| hello | 1789/udp | 0.000000 | hello 1789/udp 0.000000 |
| nmsp | 1790/tcp | 0.000000 | # Narrative Media Streaming Protocol |
| nmsp | 1790/udp | 0.000000 | # Narrative Media Streaming Protocol |
| ea1 | 1791/tcp | 0.000076 | ea1 1791/tcp 0.000076 |
| ea1 | 1791/udp | 0.000000 | # EA1 |
| ibm-dt-2 | 1792/tcp | 0.000076 | ibm-dt-2 1792/tcp 0.000076 |
| ibm-dt-2 | 1792/udp | 0.000661 | ibm-dt-2 1792/udp 0.000661 |
| rsc-robot | 1793/tcp | 0.000000 | rsc-robot 1793/tcp 0.000000 |
| rsc-robot | 1793/udp | 0.000000 | rsc-robot 1793/udp 0.000000 |
| cera-bcm | 1794/tcp | 0.000000 | cera-bcm 1794/tcp 0.000000 |
| cera-bcm | 1794/udp | 0.000000 | cera-bcm 1794/udp 0.000000 |
| dpi-proxy | 1795/tcp | 0.000000 | dpi-proxy 1795/tcp 0.000000 |
| dpi-proxy | 1795/udp | 0.000000 | dpi-proxy 1795/udp 0.000000 |
| vocaltec-admin | 1796/tcp | 0.000000 | # Vocaltec Server Administration |
| vocaltec-admin | 1796/udp | 0.000330 | # Vocaltec Server Administration |
| uma | 1797/tcp | 0.000000 | uma 1797/tcp 0.000000 |
| uma | 1797/udp | 0.000000 | # UMA |
| etp | 1798/tcp | 0.000000 | # Event Transfer Protocol |
| etp | 1798/udp | 0.000000 | # Event Transfer Protocol |
| netrisk | 1799/tcp | 0.000076 | netrisk 1799/tcp 0.000076 |
| netrisk | 1799/udp | 0.000000 | # NETRISK |
| ansys-lm | 1800/tcp | 0.000076 | # ANSYS-License manager |
| ansys-lm | 1800/udp | 0.000330 | # ANSYS-License manager |
| msmq | 1801/tcp | 0.002585 | # Microsoft Message Queuing | Microsoft Message Que |
| msmq | 1801/udp | 0.000000 | # Microsoft Message Que |
| concomp1 | 1802/tcp | 0.000000 | concomp1 1802/tcp 0.000000 |
| concomp1 | 1802/udp | 0.000000 | # ConComp1 |
| hp-hcip-gwy | 1803/tcp | 0.000000 | hp-hcip-gwy 1803/tcp 0.000000 |
| hp-hcip-gwy | 1803/udp | 0.000661 | # HP-HCIP-GWY |
| enl | 1804/tcp | 0.000000 | enl 1804/tcp 0.000000 |
| enl | 1804/udp | 0.001652 | # ENL |
| enl-name | 1805/tcp | 0.000152 | enl-name 1805/tcp 0.000152 |
| enl-name | 1805/udp | 0.000000 | # ENL-Name |
| musiconline | 1806/tcp | 0.000076 | musiconline 1806/tcp 0.000076 |
| musiconline | 1806/udp | 0.000000 | # Musiconline |
| fhsp | 1807/tcp | 0.000076 | # Fujitsu Hot Standby Protocol |
| fhsp | 1807/udp | 0.000000 | # Fujitsu Hot Standby Protocol |
| oracle-vp2 | 1808/tcp | 0.000076 | oracle-vp2 1808/tcp 0.000076 |
| oracle-vp2 | 1808/udp | 0.000000 | # Oracle-VP2 |
| oracle-vp1 | 1809/tcp | 0.000000 | oracle-vp1 1809/tcp 0.000000 |
| oracle-vp1 | 1809/udp | 0.000000 | # Oracle-VP1 |
| jerand-lm | 1810/tcp | 0.000000 | # Jerand License Manager |
| jerand-lm | 1810/udp | 0.000000 | # Jerand License Manager |
| scientia-sdb | 1811/tcp | 0.000076 | scientia-sdb 1811/tcp 0.000076 |
| scientia-sdb | 1811/udp | 0.000000 | # Scientia-SDB |
| radius | 1812/sctp | 0.000000 | # RADIUS authentication protocol (RFC 2138) |
| radius | 1812/tcp | 0.000152 | # RADIUS |
| radius | 1812/udp | 0.053839 | # RADIUS authentication protocol (RFC 2138) |
| radacct | 1813/sctp | 0.000000 | # radius-acct | RADIUS accounting protocol (RFC 2139) | RADIUS Accounting |
| radius-acct | 1813/tcp | 0.000000 | # RADIUS Accounting |
| radacct | 1813/udp | 0.010429 | # RADIUS accounting protocol (RFC 2139) |
| tdp-suite | 1814/tcp | 0.000000 | # TDP Suite |
| tdp-suite | 1814/udp | 0.000330 | # TDP Suite |
| mmpft | 1815/tcp | 0.000000 | mmpft 1815/tcp 0.000000 |
| mmpft | 1815/udp | 0.000330 | # MMPFT |
| harp | 1816/tcp | 0.000000 | harp 1816/tcp 0.000000 |
| harp | 1816/udp | 0.000000 | # HARP |
| rkb-oscs | 1817/tcp | 0.000000 | rkb-oscs 1817/tcp 0.000000 |
| rkb-oscs | 1817/udp | 0.000000 | # RKB-OSCS |
| etftp | 1818/tcp | 0.000000 | # Enhanced Trivial File Transfer Protocol |
| etftp | 1818/udp | 0.000330 | # Enhanced Trivial File Transfer Protocol |
| plato-lm | 1819/tcp | 0.000000 | # Plato License Manager |
| plato-lm | 1819/udp | 0.000000 | # Plato License Manager |
| mcagent | 1820/tcp | 0.000000 | mcagent 1820/tcp 0.000000 |
| mcagent | 1820/udp | 0.000000 | mcagent 1820/udp 0.000000 |
| donnyworld | 1821/tcp | 0.000000 | donnyworld 1821/tcp 0.000000 |
| donnyworld | 1821/udp | 0.000000 | donnyworld 1821/udp 0.000000 |
| es-elmd | 1822/tcp | 0.000000 | es-elmd 1822/tcp 0.000000 |
| es-elmd | 1822/udp | 0.000330 | es-elmd 1822/udp 0.000330 |
| unisys-lm | 1823/tcp | 0.000076 | # Unisys Natural Language License Manager |
| unisys-lm | 1823/udp | 0.000000 | # Unisys Natural Language License Manager |
| metrics-pas | 1824/tcp | 0.000000 | metrics-pas 1824/tcp 0.000000 |
| metrics-pas | 1824/udp | 0.000330 | metrics-pas 1824/udp 0.000330 |
| direcpc-video | 1825/tcp | 0.000076 | # DirecPC Video |
| direcpc-video | 1825/udp | 0.000000 | # DirecPC Video |
| ardt | 1826/tcp | 0.000000 | ardt 1826/tcp 0.000000 |
| ardt | 1826/udp | 0.000330 | # ARDT |
| pcm | 1827/tcp | 0.000025 | # asi | PCM Agent (AutoSecure Policy Compliance Manager | ASI |
| asi | 1827/udp | 0.000330 | # ASI |
| itm-mcell-u | 1828/tcp | 0.000000 | itm-mcell-u 1828/tcp 0.000000 |
| itm-mcell-u | 1828/udp | 0.000000 | itm-mcell-u 1828/udp 0.000000 |
| optika-emedia | 1829/tcp | 0.000000 | # Optika eMedia |
| optika-emedia | 1829/udp | 0.000000 | # Optika eMedia |
| net8-cman | 1830/tcp | 0.000000 | # Oracle Net8 CMan Admin |
| net8-cman | 1830/udp | 0.000000 | # Oracle Net8 CMan Admin |
| myrtle | 1831/tcp | 0.000000 | myrtle 1831/tcp 0.000000 |
| myrtle | 1831/udp | 0.000000 | # Myrtle |
| tht-treasure | 1832/tcp | 0.000000 | # ThoughtTreasure |
| tht-treasure | 1832/udp | 0.000000 | # ThoughtTreasure |
| udpradio | 1833/tcp | 0.000000 | udpradio 1833/tcp 0.000000 |
| udpradio | 1833/udp | 0.000000 | udpradio 1833/udp 0.000000 |
| ardusuni | 1834/tcp | 0.000000 | # ARDUS Unicast |
| ardusuni | 1834/udp | 0.000661 | # ARDUS Unicast |
| ardusmul | 1835/tcp | 0.000076 | # ARDUS Multicast |
| ardusmul | 1835/udp | 0.000330 | # ARDUS Multicast |
| ste-smsc | 1836/tcp | 0.000000 | ste-smsc 1836/tcp 0.000000 |
| ste-smsc | 1836/udp | 0.000000 | ste-smsc 1836/udp 0.000000 |
| csoft1 | 1837/tcp | 0.000000 | csoft1 1837/tcp 0.000000 |
| csoft1 | 1837/udp | 0.000000 | csoft1 1837/udp 0.000000 |
| talnet | 1838/tcp | 0.000000 | talnet 1838/tcp 0.000000 |
| talnet | 1838/udp | 0.000000 | # TALNET |
| netopia-vo1 | 1839/tcp | 0.000152 | netopia-vo1 1839/tcp 0.000152 |
| netopia-vo1 | 1839/udp | 0.000000 | netopia-vo1 1839/udp 0.000000 |
| netopia-vo2 | 1840/tcp | 0.000380 | netopia-vo2 1840/tcp 0.000380 |
| netopia-vo2 | 1840/udp | 0.000330 | netopia-vo2 1840/udp 0.000330 |
| netopia-vo3 | 1841/tcp | 0.000000 | netopia-vo3 1841/tcp 0.000000 |
| netopia-vo3 | 1841/udp | 0.000330 | netopia-vo3 1841/udp 0.000330 |
| netopia-vo4 | 1842/tcp | 0.000000 | netopia-vo4 1842/tcp 0.000000 |
| netopia-vo4 | 1842/udp | 0.000000 | netopia-vo4 1842/udp 0.000000 |
| netopia-vo5 | 1843/tcp | 0.000000 | netopia-vo5 1843/tcp 0.000000 |
| netopia-vo5 | 1843/udp | 0.000000 | netopia-vo5 1843/udp 0.000000 |
| direcpc-dll | 1844/tcp | 0.000000 | direcpc-dll 1844/tcp 0.000000 |
| direcpc-dll | 1844/udp | 0.000000 | # DirecPC-DLL |
| altalink | 1845/tcp | 0.000000 | altalink 1845/tcp 0.000000 |
| altalink | 1845/udp | 0.000000 | altalink 1845/udp 0.000000 |
| tunstall-pnc | 1846/tcp | 0.000000 | # Tunstall PNC |
| tunstall-pnc | 1846/udp | 0.000000 | # Tunstall PNC |
| slp-notify | 1847/tcp | 0.000000 | # SLP Notification |
| slp-notify | 1847/udp | 0.000000 | # SLP Notification |
| fjdocdist | 1848/tcp | 0.000000 | fjdocdist 1848/tcp 0.000000 |
| fjdocdist | 1848/udp | 0.000000 | fjdocdist 1848/udp 0.000000 |
| alpha-sms | 1849/tcp | 0.000000 | alpha-sms 1849/tcp 0.000000 |
| alpha-sms | 1849/udp | 0.000000 | # ALPHA-SMS |
| gsi | 1850/tcp | 0.000000 | gsi 1850/tcp 0.000000 |
| gsi | 1850/udp | 0.000000 | # GSI |
| ctcd | 1851/tcp | 0.000000 | ctcd 1851/tcp 0.000000 |
| ctcd | 1851/udp | 0.000000 | ctcd 1851/udp 0.000000 |
| virtual-time | 1852/tcp | 0.000000 | # Virtual Time |
| virtual-time | 1852/udp | 0.000000 | # Virtual Time |
| vids-avtp | 1853/tcp | 0.000000 | vids-avtp 1853/tcp 0.000000 |
| vids-avtp | 1853/udp | 0.000000 | # VIDS-AVTP |
| buddy-draw | 1854/tcp | 0.000000 | # Buddy Draw |
| buddy-draw | 1854/udp | 0.000000 | # Buddy Draw |
| fiorano-rtrsvc | 1855/tcp | 0.000000 | # Fiorano RtrSvc |
| fiorano-rtrsvc | 1855/udp | 0.000000 | # Fiorano RtrSvc |
| fiorano-msgsvc | 1856/tcp | 0.000000 | # Fiorano MsgSvc |
| fiorano-msgsvc | 1856/udp | 0.000330 | # Fiorano MsgSvc |
| datacaptor | 1857/tcp | 0.000000 | datacaptor 1857/tcp 0.000000 |
| datacaptor | 1857/udp | 0.000000 | # DataCaptor |
| privateark | 1858/tcp | 0.000076 | privateark 1858/tcp 0.000076 |
| privateark | 1858/udp | 0.000000 | # PrivateArk |
| gammafetchsvr | 1859/tcp | 0.000000 | # Gamma Fetcher Server |
| gammafetchsvr | 1859/udp | 0.000000 | # Gamma Fetcher Server |
| sunscalar-svc | 1860/tcp | 0.000000 | # SunSCALAR Services |
| sunscalar-svc | 1860/udp | 0.000000 | # SunSCALAR Services |
| lecroy-vicp | 1861/tcp | 0.000076 | # LeCroy VICP |
| lecroy-vicp | 1861/udp | 0.000661 | # LeCroy VICP |
| mysql-cm-agent | 1862/tcp | 0.000228 | # MySQL Cluster Manager Agent |
| mysql-cm-agent | 1862/udp | 0.000991 | # MySQL Cluster Manager Agent |
| msnp | 1863/tcp | 0.000684 | # MSN Messenger |
| msnp | 1863/udp | 0.000000 | # MSN Messenger |
| paradym-31 | 1864/tcp | 0.000684 | # paradym-31port | Paradym 31 Port |
| paradym-31 | 1864/udp | 0.000000 | paradym-31 1864/udp 0.000000 |
| entp | 1865/tcp | 0.000000 | entp 1865/tcp 0.000000 |
| entp | 1865/udp | 0.000000 | # ENTP |
| swrmi | 1866/tcp | 0.000000 | swrmi 1866/tcp 0.000000 |
| swrmi | 1866/udp | 0.000000 | swrmi 1866/udp 0.000000 |
| udrive | 1867/tcp | 0.000000 | udrive 1867/tcp 0.000000 |
| udrive | 1867/udp | 0.000000 | # UDRIVE |
| viziblebrowser | 1868/tcp | 0.000000 | viziblebrowser 1868/tcp 0.000000 |
| viziblebrowser | 1868/udp | 0.000000 | # VizibleBrowser |
| transact | 1869/tcp | 0.000000 | transact 1869/tcp 0.000000 |
| transact | 1869/udp | 0.000000 | # TransAct |
| sunscalar-dns | 1870/tcp | 0.000000 | # SunSCALAR DNS Service |
| sunscalar-dns | 1870/udp | 0.000000 | # SunSCALAR DNS Service |
| canocentral0 | 1871/tcp | 0.000076 | # Cano Central 0 |
| canocentral0 | 1871/udp | 0.000330 | # Cano Central 0 |
| canocentral1 | 1872/tcp | 0.000000 | # Cano Central 1 |
| canocentral1 | 1872/udp | 0.000000 | # Cano Central 1 |
| fjmpjps | 1873/tcp | 0.000000 | fjmpjps 1873/tcp 0.000000 |
| fjmpjps | 1873/udp | 0.000330 | # Fjmpjps |
| fjswapsnp | 1874/tcp | 0.000000 | fjswapsnp 1874/tcp 0.000000 |
| fjswapsnp | 1874/udp | 0.000000 | # Fjswapsnp |
| westell-stats | 1875/tcp | 0.000152 | # westell stats |
| westell-stats | 1875/udp | 0.000330 | # westell stats |
| ewcappsrv | 1876/tcp | 0.000000 | ewcappsrv 1876/tcp 0.000000 |
| ewcappsrv | 1876/udp | 0.000000 | ewcappsrv 1876/udp 0.000000 |
| hp-webqosdb | 1877/tcp | 0.000000 | hp-webqosdb 1877/tcp 0.000000 |
| hp-webqosdb | 1877/udp | 0.000000 | hp-webqosdb 1877/udp 0.000000 |
| drmsmc | 1878/tcp | 0.000000 | drmsmc 1878/tcp 0.000000 |
| drmsmc | 1878/udp | 0.000000 | drmsmc 1878/udp 0.000000 |
| nettgain-nms | 1879/tcp | 0.000000 | # NettGain NMS |
| nettgain-nms | 1879/udp | 0.000000 | # NettGain NMS |
| vsat-control | 1880/tcp | 0.000000 | # Gilat VSAT Control |
| vsat-control | 1880/udp | 0.000000 | # Gilat VSAT Control |
| ibm-mqseries2 | 1881/tcp | 0.000000 | # IBM WebSphere MQ Everyplace |
| ibm-mqseries2 | 1881/udp | 0.000000 | # IBM WebSphere MQ Everyplace |
| ecsqdmn | 1882/tcp | 0.000000 | # CA eTrust Common Services |
| ecsqdmn | 1882/udp | 0.000000 | # CA eTrust Common Services |
| mqtt | 1883/tcp | 0.000076 | # Message Queuing Telemetry Transport Protocol |
| ibm-mqisdp | 1883/udp | 0.000330 | # IBM MQSeries SCADA |
| idmaps | 1884/tcp | 0.000000 | # Internet Distance Map Svc |
| idmaps | 1884/udp | 0.000661 | # Internet Distance Map Svc |
| vrtstrapserver | 1885/tcp | 0.000000 | # Veritas Trap Server |
| vrtstrapserver | 1885/udp | 0.003304 | # Veritas Trap Server |
| leoip | 1886/tcp | 0.000000 | # Leonardo over IP |
| leoip | 1886/udp | 0.002973 | # Leonardo over IP |
| filex-lport | 1887/tcp | 0.000000 | # FileX Listening Port |
| filex-lport | 1887/udp | 0.000000 | # FileX Listening Port |
| ncconfig | 1888/tcp | 0.000000 | # NC Config Port |
| ncconfig | 1888/udp | 0.000330 | # NC Config Port |
| unify-adapter | 1889/tcp | 0.000000 | # Unify Web Adapter Service |
| unify-adapter | 1889/udp | 0.000000 | # Unify Web Adapter Service |
| wilkenlistener | 1890/tcp | 0.000000 | wilkenlistener 1890/tcp 0.000000 |
| wilkenlistener | 1890/udp | 0.000000 | # wilkenListener |
| childkey-notif | 1891/tcp | 0.000000 | # ChildKey Notification |
| childkey-notif | 1891/udp | 0.000330 | # ChildKey Notification |
| childkey-ctrl | 1892/tcp | 0.000000 | # ChildKey Control |
| childkey-ctrl | 1892/udp | 0.000000 | # ChildKey Control |
| elad | 1893/tcp | 0.000000 | # ELAD Protocol |
| elad | 1893/udp | 0.000000 | # ELAD Protocol |
| o2server-port | 1894/tcp | 0.000000 | # O2Server Port |
| o2server-port | 1894/udp | 0.000000 | # O2Server Port |
| b-novative-ls | 1896/tcp | 0.000000 | # b-novative license server |
| b-novative-ls | 1896/udp | 0.000000 | # b-novative license server |
| metaagent | 1897/tcp | 0.000000 | metaagent 1897/tcp 0.000000 |
| metaagent | 1897/udp | 0.000000 | # MetaAgent |
| cymtec-port | 1898/tcp | 0.000000 | # Cymtec secure management |
| cymtec-port | 1898/udp | 0.000330 | # Cymtec secure management |
| mc2studios | 1899/tcp | 0.000000 | mc2studios 1899/tcp 0.000000 |
| mc2studios | 1899/udp | 0.000000 | # MC2Studios |
| upnp | 1900/tcp | 0.003977 | # ssdp | Universal PnP | SSDP |
| upnp | 1900/udp | 0.136543 | # Universal PnP |
| fjicl-tep-a | 1901/tcp | 0.000076 | # Fujitsu ICL Terminal Emulator Program A |
| fjicl-tep-a | 1901/udp | 0.001982 | # Fujitsu ICL Terminal Emulator Program A |
| fjicl-tep-b | 1902/tcp | 0.000000 | # Fujitsu ICL Terminal Emulator Program B |
| fjicl-tep-b | 1902/udp | 0.000000 | # Fujitsu ICL Terminal Emulator Program B |
| linkname | 1903/tcp | 0.000000 | # Local Link Name Resolution |
| linkname | 1903/udp | 0.000000 | # Local Link Name Resolution |
| fjicl-tep-c | 1904/tcp | 0.000000 | # Fujitsu ICL Terminal Emulator Program C |
| fjicl-tep-c | 1904/udp | 0.000000 | # Fujitsu ICL Terminal Emulator Program C |
| sugp | 1905/tcp | 0.000000 | # Secure UP.Link Gateway Protocol |
| sugp | 1905/udp | 0.000000 | # Secure UP.Link Gateway Protocol |
| tpmd | 1906/tcp | 0.000000 | # TPortMapperReq |
| tpmd | 1906/udp | 0.000330 | # TPortMapperReq |
| intrastar | 1907/tcp | 0.000000 | intrastar 1907/tcp 0.000000 |
| intrastar | 1907/udp | 0.000000 | # IntraSTAR |
| dawn | 1908/tcp | 0.000000 | dawn 1908/tcp 0.000000 |
| dawn | 1908/udp | 0.000000 | # Dawn |
| global-wlink | 1909/tcp | 0.000000 | # Global World Link |
| global-wlink | 1909/udp | 0.000661 | # Global World Link |
| ultrabac | 1910/tcp | 0.000000 | # UltraBac Software communications port |
| ultrabac | 1910/udp | 0.000000 | # UltraBac Software communications port |
| mtp | 1911/tcp | 0.000076 | # Starlight Networks Multimedia Transport Protocol |
| mtp | 1911/udp | 0.000000 | # Starlight Networks Multimedia Transport Protocol |
| rhp-iibp | 1912/tcp | 0.000076 | rhp-iibp 1912/tcp 0.000076 |
| rhp-iibp | 1912/udp | 0.000330 | rhp-iibp 1912/udp 0.000330 |
| armadp | 1913/tcp | 0.000000 | armadp 1913/tcp 0.000000 |
| armadp | 1913/udp | 0.000000 | armadp 1913/udp 0.000000 |
| elm-momentum | 1914/tcp | 0.000152 | elm-momentum 1914/tcp 0.000152 |
| elm-momentum | 1914/udp | 0.000000 | # Elm-Momentum |
| facelink | 1915/tcp | 0.000000 | facelink 1915/tcp 0.000000 |
| facelink | 1915/udp | 0.000000 | # FACELINK |
| persona | 1916/tcp | 0.000000 | # Persoft Persona |
| persona | 1916/udp | 0.000000 | # Persoft Persona |
| noagent | 1917/tcp | 0.000000 | noagent 1917/tcp 0.000000 |
| noagent | 1917/udp | 0.000000 | # nOAgent |
| can-nds | 1918/tcp | 0.000076 | # IBM Tivole Directory Service - NDS |
| can-nds | 1918/udp | 0.000000 | # IBM Tivole Directory Service - NDS |
| can-dch | 1919/tcp | 0.000000 | # IBM Tivoli Directory Service - DCH |
| can-dch | 1919/udp | 0.000000 | # IBM Tivoli Directory Service - DCH |
| can-ferret | 1920/tcp | 0.000000 | # IBM Tivoli Directory Service - FERRET |
| can-ferret | 1920/udp | 0.000000 | # IBM Tivoli Directory Service - FERRET |
| noadmin | 1921/tcp | 0.000000 | noadmin 1921/tcp 0.000000 |
| noadmin | 1921/udp | 0.000661 | # NoAdmin |
| tapestry | 1922/tcp | 0.000000 | tapestry 1922/tcp 0.000000 |
| tapestry | 1922/udp | 0.000330 | # Tapestry |
| spice | 1923/tcp | 0.000000 | spice 1923/tcp 0.000000 |
| spice | 1923/udp | 0.000000 | # SPICE |
| xiip | 1924/tcp | 0.000076 | xiip 1924/tcp 0.000076 |
| xiip | 1924/udp | 0.000000 | # XIIP |
| discovery-port | 1925/tcp | 0.000000 | # Surrogate Discovery Port |
| discovery-port | 1925/udp | 0.000000 | # Surrogate Discovery Port |
| egs | 1926/tcp | 0.000000 | # Evolution Game Server |
| egs | 1926/udp | 0.000000 | # Evolution Game Server |
| videte-cipc | 1927/tcp | 0.000076 | # Videte CIPC Port |
| videte-cipc | 1927/udp | 0.000000 | # Videte CIPC Port |
| emsd-port | 1928/tcp | 0.000000 | # Expnd Maui Srvr Dscovr |
| emsd-port | 1928/udp | 0.000000 | # Expnd Maui Srvr Dscovr |
| bandwiz-system | 1929/tcp | 0.000000 | # Bandwiz System - Server |
| bandwiz-system | 1929/udp | 0.000000 | # Bandwiz System - Server |
| driveappserver | 1930/tcp | 0.000000 | # Drive AppServer |
| driveappserver | 1930/udp | 0.000000 | # Drive AppServer |
| amdsched | 1931/tcp | 0.000000 | # AMD SCHED |
| amdsched | 1931/udp | 0.000330 | # AMD SCHED |
| ctt-broker | 1932/tcp | 0.000000 | # CTT Broker |
| ctt-broker | 1932/udp | 0.000000 | # CTT Broker |
| xmapi | 1933/tcp | 0.000000 | # IBM LM MT Agent |
| xmapi | 1933/udp | 0.000000 | # IBM LM MT Agent |
| xaapi | 1934/tcp | 0.000000 | # IBM LM Appl Agent |
| xaapi | 1934/udp | 0.000000 | # IBM LM Appl Agent |
| rtmp | 1935/tcp | 0.001179 | # macromedia-fcs | Macromedia FlasComm Server | Macromedia Flash Communications Server MX | Macromedia Flash Communications server MX |
| macromedia-fcs | 1935/udp | 0.000000 | # Macromedia Flash Communications server MX |
| jetcmeserver | 1936/tcp | 0.000000 | # JetCmeServer Server Port |
| jetcmeserver | 1936/udp | 0.000000 | # JetCmeServer Server Port |
| jwserver | 1937/tcp | 0.000000 | # JetVWay Server Port |
| jwserver | 1937/udp | 0.000000 | # JetVWay Server Port |
| jwclient | 1938/tcp | 0.000000 | # JetVWay Client Port |
| jwclient | 1938/udp | 0.000000 | # JetVWay Client Port |
| jvserver | 1939/tcp | 0.000000 | # JetVision Server Port |
| jvserver | 1939/udp | 0.000000 | # JetVision Server Port |
| jvclient | 1940/tcp | 0.000000 | # JetVision Client Port |
| jvclient | 1940/udp | 0.000000 | # JetVision Client Port |
| dic-aida | 1941/tcp | 0.000000 | dic-aida 1941/tcp 0.000000 |
| dic-aida | 1941/udp | 0.000000 | # DIC-Aida |
| res | 1942/tcp | 0.000000 | # Real Enterprise Service |
| res | 1942/udp | 0.000000 | # Real Enterprise Service |
| beeyond-media | 1943/tcp | 0.000000 | # Beeyond Media |
| beeyond-media | 1943/udp | 0.000000 | # Beeyond Media |
| close-combat | 1944/tcp | 0.000000 | close-combat 1944/tcp 0.000000 |
| close-combat | 1944/udp | 0.000000 | close-combat 1944/udp 0.000000 |
| dialogic-elmd | 1945/tcp | 0.000000 | dialogic-elmd 1945/tcp 0.000000 |
| dialogic-elmd | 1945/udp | 0.000000 | dialogic-elmd 1945/udp 0.000000 |
| tekpls | 1946/tcp | 0.000000 | tekpls 1946/tcp 0.000000 |
| tekpls | 1946/udp | 0.000000 | tekpls 1946/udp 0.000000 |
| sentinelsrm | 1947/tcp | 0.000380 | sentinelsrm 1947/tcp 0.000380 |
| sentinelsrm | 1947/udp | 0.000330 | # SentinelSRM |
| eye2eye | 1948/tcp | 0.000000 | eye2eye 1948/tcp 0.000000 |
| eye2eye | 1948/udp | 0.000000 | eye2eye 1948/udp 0.000000 |
| ismaeasdaqlive | 1949/tcp | 0.000000 | # ISMA Easdaq Live |
| ismaeasdaqlive | 1949/udp | 0.000000 | # ISMA Easdaq Live |
| ismaeasdaqtest | 1950/tcp | 0.000000 | # ISMA Easdaq Test |
| ismaeasdaqtest | 1950/udp | 0.000330 | # ISMA Easdaq Test |
| bcs-lmserver | 1951/tcp | 0.000000 | bcs-lmserver 1951/tcp 0.000000 |
| bcs-lmserver | 1951/udp | 0.000000 | bcs-lmserver 1951/udp 0.000000 |
| mpnjsc | 1952/tcp | 0.000000 | mpnjsc 1952/tcp 0.000000 |
| mpnjsc | 1952/udp | 0.000000 | mpnjsc 1952/udp 0.000000 |
| rapidbase | 1953/tcp | 0.000000 | # Rapid Base |
| rapidbase | 1953/udp | 0.000000 | # Rapid Base |
| abr-api | 1954/tcp | 0.000076 | # ABR-API (diskbridge) |
| abr-api | 1954/udp | 0.000000 | # ABR-API (diskbridge) |
| abr-secure | 1955/tcp | 0.000000 | # ABR-Secure Data (diskbridge) |
| abr-secure | 1955/udp | 0.000000 | # ABR-Secure Data (diskbridge) |
| vrtl-vmf-ds | 1956/tcp | 0.000000 | # Vertel VMF DS |
| vrtl-vmf-ds | 1956/udp | 0.000000 | # Vertel VMF DS |
| unix-status | 1957/tcp | 0.000000 | unix-status 1957/tcp 0.000000 |
| unix-status | 1957/udp | 0.000330 | unix-status 1957/udp 0.000330 |
| dxadmind | 1958/tcp | 0.000076 | # CA Administration Daemon |
| dxadmind | 1958/udp | 0.000330 | # CA Administration Daemon |
| simp-all | 1959/tcp | 0.000000 | # SIMP Channel |
| simp-all | 1959/udp | 0.000330 | # SIMP Channel |
| nasmanager | 1960/tcp | 0.000000 | # Merit DAC NASmanager |
| nasmanager | 1960/udp | 0.000000 | # Merit DAC NASmanager |
| bts-appserver | 1961/tcp | 0.000000 | # BTS APPSERVER |
| bts-appserver | 1961/udp | 0.000000 | # BTS APPSERVER |
| biap-mp | 1962/tcp | 0.000000 | biap-mp 1962/tcp 0.000000 |
| biap-mp | 1962/udp | 0.000330 | # BIAP-MP |
| webmachine | 1963/tcp | 0.000000 | webmachine 1963/tcp 0.000000 |
| webmachine | 1963/udp | 0.000000 | # WebMachine |
| solid-e-engine | 1964/tcp | 0.000000 | # SOLID E ENGINE |
| solid-e-engine | 1964/udp | 0.000000 | # SOLID E ENGINE |
| tivoli-npm | 1965/tcp | 0.000000 | # Tivoli NPM |
| tivoli-npm | 1965/udp | 0.000000 | # Tivoli NPM |
| slush | 1966/tcp | 0.000000 | slush 1966/tcp 0.000000 |
| slush | 1966/udp | 0.000330 | # Slush |
| sns-quote | 1967/tcp | 0.000000 | # SNS Quote |
| sns-quote | 1967/udp | 0.000000 | # SNS Quote |
| lipsinc | 1968/tcp | 0.000000 | lipsinc 1968/tcp 0.000000 |
| lipsinc | 1968/udp | 0.000330 | # LIPSinc |
| lipsinc1 | 1969/tcp | 0.000000 | # LIPSinc 1 |
| lipsinc1 | 1969/udp | 0.000000 | # LIPSinc 1 |
| netop-rc | 1970/tcp | 0.000000 | # NetOp Remote Control |
| netop-rc | 1970/udp | 0.000000 | # NetOp Remote Control |
| netop-school | 1971/tcp | 0.000152 | # NetOp School |
| netop-school | 1971/udp | 0.000000 | # NetOp School |
| intersys-cache | 1972/tcp | 0.000152 | # Cache |
| intersys-cache | 1972/udp | 0.000000 | # Cache |
| dlsrap | 1973/tcp | 0.000076 | # Data Link Switching Remote Access Protocol |
| dlsrap | 1973/udp | 0.000000 | # Data Link Switching Remote Access Protocol |
| drp | 1974/tcp | 0.000152 | drp 1974/tcp 0.000152 |
| drp | 1974/udp | 0.000000 | # DRP |
| tcoflashagent | 1975/tcp | 0.000076 | # TCO Flash Agent |
| tcoflashagent | 1975/udp | 0.000000 | # TCO Flash Agent |
| tcoregagent | 1976/tcp | 0.000076 | # TCO Reg Agent |
| tcoregagent | 1976/udp | 0.000000 | # TCO Reg Agent |
| tcoaddressbook | 1977/tcp | 0.000000 | # TCO Address Book |
| tcoaddressbook | 1977/udp | 0.000000 | # TCO Address Book |
| unisql | 1978/tcp | 0.000000 | unisql 1978/tcp 0.000000 |
| unisql | 1978/udp | 0.000000 | # UniSQL |
| unisql-java | 1979/tcp | 0.000000 | # UniSQL Java |
| unisql-java | 1979/udp | 0.000000 | # UniSQL Java |
| pearldoc-xact | 1980/tcp | 0.000000 | # PearlDoc XACT |
| pearldoc-xact | 1980/udp | 0.000000 | # PearlDoc XACT |
| p2pq | 1981/tcp | 0.000076 | p2pq 1981/tcp 0.000076 |
| p2pq | 1981/udp | 0.000330 | # p2pQ |
| estamp | 1982/tcp | 0.000000 | # Evidentiary Timestamp |
| estamp | 1982/udp | 0.000000 | # Evidentiary Timestamp |
| lhtp | 1983/tcp | 0.000000 | # Loophole Test Protocol |
| lhtp | 1983/udp | 0.000000 | # Loophole Test Protocol |
| bigbrother | 1984/tcp | 0.000201 | # bb | Big Brother monitoring server - www.bb4.com | BB |
| bb | 1984/udp | 0.000330 | # BB |
| hsrp | 1985/tcp | 0.000000 | # Hot Standby Router Protocol |
| hsrp | 1985/udp | 0.000000 | # Hot Standby Router Protocol |
| licensedaemon | 1986/tcp | 0.000025 | # cisco license management |
| licensedaemon | 1986/udp | 0.000544 | # cisco license management |
| tr-rsrb-p1 | 1987/tcp | 0.000013 | # cisco RSRB Priority 1 port |
| tr-rsrb-p1 | 1987/udp | 0.000675 | # cisco RSRB Priority 1 port |
| tr-rsrb-p2 | 1988/tcp | 0.000050 | # cisco RSRB Priority 2 port |
| tr-rsrb-p2 | 1988/udp | 0.000428 | # cisco RSRB Priority 2 port |
| tr-rsrb-p3 | 1989/tcp | 0.000075 | # mshnet | cisco RSRB Priority 3 port | MHSnet system |
| tr-rsrb-p3 | 1989/udp | 0.000313 | # cisco RSRB Priority 3 port |
| stun-p1 | 1990/tcp | 0.000025 | # cisco STUN Priority 1 port |
| stun-p1 | 1990/udp | 0.000494 | # cisco STUN Priority 1 port |
| stun-p2 | 1991/tcp | 0.000050 | # cisco STUN Priority 2 port |
| stun-p2 | 1991/udp | 0.000428 | # cisco STUN Priority 2 port |
| stun-p3 | 1992/tcp | 0.000025 | # ipsendmsg | cisco STUN Priority 3 port | IPsendmsg |
| stun-p3 | 1992/udp | 0.000478 | # cisco STUN Priority 3 port |
| snmp-tcp-port | 1993/tcp | 0.000013 | # cisco SNMP TCP port |
| snmp-tcp-port | 1993/udp | 0.001779 | # cisco SNMP TCP port |
| stun-port | 1994/tcp | 0.000025 | # cisco serial tunnel port |
| stun-port | 1994/udp | 0.000313 | # cisco serial tunnel port |
| perf-port | 1995/tcp | 0.000038 | # cisco perf port |
| perf-port | 1995/udp | 0.000577 | # cisco perf port |
| tr-rsrb-port | 1996/tcp | 0.000038 | # cisco Remote SRB port |
| tr-rsrb-port | 1996/udp | 0.000626 | # cisco Remote SRB port |
| gdp-port | 1997/tcp | 0.000038 | # cisco Gateway Discovery Protocol |
| gdp-port | 1997/udp | 0.000494 | # cisco Gateway Discovery Protocol |
| x25-svc-port | 1998/tcp | 0.001731 | # cisco X.25 service (XOT) |
| x25-svc-port | 1998/udp | 0.000610 | # cisco X.25 service (XOT) |
| tcp-id-port | 1999/tcp | 0.000364 | # cisco identification port |
| tcp-id-port | 1999/udp | 0.000923 | # cisco identification port |
| cisco-sccp | 2000/tcp | 0.010112 | # cisco SCCP (Skinny Client Control Protocol) | Cisco SCCP | Cisco SCCp |
| cisco-sccp | 2000/udp | 0.011697 | # cisco SCCP (Skinny Client Control Protocol) |
| dc | 2001/tcp | 0.007339 | # wizard | or nfr20 web queries | curry |
| wizard | 2001/udp | 0.001186 | # curry |
| globe | 2002/tcp | 0.001744 | globe 2002/tcp 0.001744 |
| globe | 2002/udp | 0.003740 | globe 2002/udp 0.003740 |
| finger | 2003/tcp | 0.001179 | # brutus | GNU finger (cfingerd) | Brutus Server |
| brutus | 2003/udp | 0.000000 | # Brutus Server |
| mailbox | 2004/tcp | 0.001016 | # emce | CCWS mm conf |
| emce | 2004/udp | 0.000988 | # CCWS mm conf |
| deslogin | 2005/tcp | 0.001731 | # oracle | berknet | encrypted symmetric telnet/login |
| oracle | 2005/udp | 0.000494 | oracle 2005/udp 0.000494 |
| invokator | 2006/tcp | 0.001066 | # raid-cd | raid |
| raid-cc | 2006/udp | 0.000675 | # raid |
| dectalk | 2007/tcp | 0.000878 | # raid-am |
| raid-am | 2007/udp | 0.000593 | raid-am 2007/udp 0.000593 |
| conf | 2008/tcp | 0.000903 | # terminaldb |
| terminaldb | 2008/udp | 0.000593 | terminaldb 2008/udp 0.000593 |
| news | 2009/tcp | 0.000841 | # whosockami |
| whosockami | 2009/udp | 0.000511 | whosockami 2009/udp 0.000511 |
| search | 2010/tcp | 0.000803 | # pipe_server | pipe-server | Or nfr411 |
| pipe_server | 2010/udp | 0.000560 | # Also used by NFR |
| raid-cc | 2011/tcp | 0.000113 | # servserv | raid |
| servserv | 2011/udp | 0.000445 | servserv 2011/udp 0.000445 |
| ttyinfo | 2012/tcp | 0.000151 | # raid-ac |
| raid-ac | 2012/udp | 0.000873 | raid-ac 2012/udp 0.000873 |
| raid-am | 2013/tcp | 0.000176 | # raid-cd |
| raid-cd | 2013/udp | 0.000659 | raid-cd 2013/udp 0.000659 |
| troff | 2014/tcp | 0.000050 | # raid-sf |
| raid-sf | 2014/udp | 0.000478 | raid-sf 2014/udp 0.000478 |
| cypress | 2015/tcp | 0.000038 | # raid-cs |
| raid-cs | 2015/udp | 0.000362 | raid-cs 2015/udp 0.000362 |
| bootserver | 2016/tcp | 0.000013 | bootserver 2016/tcp 0.000013 |
| bootserver | 2016/udp | 0.000379 | bootserver 2016/udp 0.000379 |
| cypress-stat | 2017/tcp | 0.000000 | # bootclient |
| bootclient | 2017/udp | 0.000346 | bootclient 2017/udp 0.000346 |
| terminaldb | 2018/tcp | 0.000050 | # rellpack |
| rellpack | 2018/udp | 0.000972 | rellpack 2018/udp 0.000972 |
| whosockami | 2019/tcp | 0.000013 | # about |
| about | 2019/udp | 0.000791 | about 2019/udp 0.000791 |
| xinupageserver | 2020/tcp | 0.000364 | xinupageserver 2020/tcp 0.000364 |
| xinupageserver | 2020/udp | 0.000577 | xinupageserver 2020/udp 0.000577 |
| servexec | 2021/tcp | 0.000289 | # xinuexpansion1 |
| xinuexpansion1 | 2021/udp | 0.000478 | xinuexpansion1 2021/udp 0.000478 |
| down | 2022/tcp | 0.000226 | # xinuexpansion2 |
| xinuexpansion2 | 2022/udp | 0.000593 | xinuexpansion2 2022/udp 0.000593 |
| xinuexpansion3 | 2023/tcp | 0.000025 | xinuexpansion3 2023/tcp 0.000025 |
| xinuexpansion3 | 2023/udp | 0.000231 | xinuexpansion3 2023/udp 0.000231 |
| xinuexpansion4 | 2024/tcp | 0.000050 | xinuexpansion4 2024/tcp 0.000050 |
| xinuexpansion4 | 2024/udp | 0.000511 | xinuexpansion4 2024/udp 0.000511 |
| ellpack | 2025/tcp | 0.000100 | # xribs |
| xribs | 2025/udp | 0.000494 | xribs 2025/udp 0.000494 |
| scrabble | 2026/tcp | 0.000038 | scrabble 2026/tcp 0.000038 |
| scrabble | 2026/udp | 0.000824 | scrabble 2026/udp 0.000824 |
| shadowserver | 2027/tcp | 0.000025 | shadowserver 2027/tcp 0.000025 |
| shadowserver | 2027/udp | 0.000395 | shadowserver 2027/udp 0.000395 |
| submitserver | 2028/tcp | 0.000013 | submitserver 2028/tcp 0.000013 |
| submitserver | 2028/udp | 0.000445 | submitserver 2028/udp 0.000445 |
| hsrpv6 | 2029/tcp | 0.000000 | # Hot Standby Router Protocol IPv6 |
| hsrpv6 | 2029/udp | 0.000000 | # Hot Standby Router Protocol IPv6 |
| device2 | 2030/tcp | 0.000514 | device2 2030/tcp 0.000514 |
| device2 | 2030/udp | 0.000412 | device2 2030/udp 0.000412 |
| mobrien-chat | 2031/tcp | 0.000076 | mobrien-chat 2031/tcp 0.000076 |
| mobrien-chat | 2031/udp | 0.000000 | mobrien-chat 2031/udp 0.000000 |
| blackboard | 2032/tcp | 0.000000 | blackboard 2032/tcp 0.000000 |
| blackboard | 2032/udp | 0.000840 | blackboard 2032/udp 0.000840 |
| glogger | 2033/tcp | 0.000339 | glogger 2033/tcp 0.000339 |
| glogger | 2033/udp | 0.000560 | glogger 2033/udp 0.000560 |
| scoremgr | 2034/tcp | 0.000238 | scoremgr 2034/tcp 0.000238 |
| scoremgr | 2034/udp | 0.000544 | scoremgr 2034/udp 0.000544 |
| imsldoc | 2035/tcp | 0.000188 | imsldoc 2035/tcp 0.000188 |
| imsldoc | 2035/udp | 0.000527 | imsldoc 2035/udp 0.000527 |
| e-dpnet | 2036/tcp | 0.000000 | # Ethernet WS DP network |
| e-dpnet | 2036/udp | 0.000330 | # Ethernet WS DP network |
| applus | 2037/tcp | 0.000000 | # APplus Application Server |
| applus | 2037/udp | 0.000000 | # APplus Application Server |
| objectmanager | 2038/tcp | 0.000201 | objectmanager 2038/tcp 0.000201 |
| objectmanager | 2038/udp | 0.000626 | objectmanager 2038/udp 0.000626 |
| prizma | 2039/tcp | 0.000000 | # Prizma Monitoring Service |
| prizma | 2039/udp | 0.000000 | # Prizma Monitoring Service |
| lam | 2040/tcp | 0.000276 | lam 2040/tcp 0.000276 |
| lam | 2040/udp | 0.000725 | lam 2040/udp 0.000725 |
| interbase | 2041/tcp | 0.000213 | interbase 2041/tcp 0.000213 |
| interbase | 2041/udp | 0.000428 | interbase 2041/udp 0.000428 |
| isis | 2042/tcp | 0.000163 | isis 2042/tcp 0.000163 |
| isis | 2042/udp | 0.000379 | isis 2042/udp 0.000379 |
| isis-bcast | 2043/tcp | 0.000176 | isis-bcast 2043/tcp 0.000176 |
| isis-bcast | 2043/udp | 0.000494 | isis-bcast 2043/udp 0.000494 |
| rimsl | 2044/tcp | 0.000138 | rimsl 2044/tcp 0.000138 |
| rimsl | 2044/udp | 0.000560 | rimsl 2044/udp 0.000560 |
| cdfunc | 2045/tcp | 0.000163 | cdfunc 2045/tcp 0.000163 |
| cdfunc | 2045/udp | 0.000857 | cdfunc 2045/udp 0.000857 |
| sdfunc | 2046/tcp | 0.000188 | sdfunc 2046/tcp 0.000188 |
| sdfunc | 2046/udp | 0.000511 | sdfunc 2046/udp 0.000511 |
| dls | 2047/tcp | 0.000176 | dls 2047/tcp 0.000176 |
| dls | 2047/udp | 0.000478 | dls 2047/udp 0.000478 |
| dls-monitor | 2048/tcp | 0.000263 | dls-monitor 2048/tcp 0.000263 |
| dls-monitor | 2048/udp | 0.021549 | dls-monitor 2048/udp 0.021549 |
| nfs | 2049/sctp | 0.000000 | # shilp | Network File System | Network File System - Sun Microsystems |
| nfs | 2049/tcp | 0.006110 | # networked file system |
| nfs | 2049/udp | 0.044531 | # networked file system |
| av-emb-config | 2050/tcp | 0.000000 | # Avaya EMB Config Port |
| av-emb-config | 2050/udp | 0.000000 | # Avaya EMB Config Port |
| epnsdp | 2051/tcp | 0.000000 | epnsdp 2051/tcp 0.000000 |
| epnsdp | 2051/udp | 0.002643 | # EPNSDP |
| clearvisn | 2052/tcp | 0.000000 | # clearVisn Services Port |
| clearvisn | 2052/udp | 0.000000 | # clearVisn Services Port |
| knetd | 2053/tcp | 0.000025 | # lot105-ds-upd | Lot105 DSuper Updates |
| lot105-ds-upd | 2053/udp | 0.000991 | # Lot105 DSuper Updates |
| weblogin | 2054/tcp | 0.000000 | # Weblogin Port |
| weblogin | 2054/udp | 0.000661 | # Weblogin Port |
| iop | 2055/tcp | 0.000000 | # Iliad-Odyssey Protocol |
| iop | 2055/udp | 0.000661 | # Iliad-Odyssey Protocol |
| omnisky | 2056/tcp | 0.000000 | # OmniSky Port |
| omnisky | 2056/udp | 0.000000 | # OmniSky Port |
| rich-cp | 2057/tcp | 0.000000 | # Rich Content Protocol |
| rich-cp | 2057/udp | 0.000000 | # Rich Content Protocol |
| newwavesearch | 2058/tcp | 0.000000 | # NewWaveSearchables RMI |
| newwavesearch | 2058/udp | 0.000661 | # NewWaveSearchables RMI |
| bmc-messaging | 2059/tcp | 0.000000 | # BMC Messaging Service |
| bmc-messaging | 2059/udp | 0.000330 | # BMC Messaging Service |
| teleniumdaemon | 2060/tcp | 0.000000 | # Telenium Daemon IF |
| teleniumdaemon | 2060/udp | 0.000661 | # Telenium Daemon IF |
| netmount | 2061/tcp | 0.000000 | netmount 2061/tcp 0.000000 |
| netmount | 2061/udp | 0.000661 | # NetMount |
| icg-swp | 2062/tcp | 0.000076 | # ICG SWP Port |
| icg-swp | 2062/udp | 0.000661 | # ICG SWP Port |
| icg-bridge | 2063/tcp | 0.000000 | # ICG Bridge Port |
| icg-bridge | 2063/udp | 0.000000 | # ICG Bridge Port |
| dnet-keyproxy | 2064/tcp | 0.000038 | # icg-iprelay | A closed-source client for solving the RSA cryptographic challenge. This is the keyblock proxy port. | ICG IP Relay Port |
| icg-iprelay | 2064/udp | 0.000000 | # ICG IP Relay Port |
| dlsrpn | 2065/tcp | 0.000815 | # Data Link Switch Read Port Number |
| dlsrpn | 2065/udp | 0.000511 | # Data Link Switch Read Port Number |
| aura | 2066/tcp | 0.000000 | # AVM USB Remote Architecture |
| aura | 2066/udp | 0.000000 | # AVM USB Remote Architecture |
| dlswpn | 2067/tcp | 0.000113 | # Data Link Switch Write Port Number |
| dlswpn | 2067/udp | 0.001005 | # Data Link Switch Write Port Number |
| avocentkvm | 2068/tcp | 0.000201 | # avauthsrvprtcl | Avocent KVM Server | Avocent AuthSrv Protocol |
| avauthsrvprtcl | 2068/udp | 0.000000 | # Avocent AuthSrv Protocol |
| event-port | 2069/tcp | 0.000076 | # HTTP Event Port |
| event-port | 2069/udp | 0.000000 | # HTTP Event Port |
| ah-esp-encap | 2070/tcp | 0.000076 | # AH and ESP Encapsulated in UDP packet |
| ah-esp-encap | 2070/udp | 0.000330 | # AH and ESP Encapsulated in UDP packet |
| acp-port | 2071/tcp | 0.000000 | # Axon Control Protocol |
| acp-port | 2071/udp | 0.000000 | # Axon Control Protocol |
| msync | 2072/tcp | 0.000000 | # GlobeCast mSync |
| msync | 2072/udp | 0.000000 | # GlobeCast mSync |
| gxs-data-port | 2073/tcp | 0.000000 | # DataReel Database Socket |
| gxs-data-port | 2073/udp | 0.000000 | # DataReel Database Socket |
| vrtl-vmf-sa | 2074/tcp | 0.000000 | # Vertel VMF SA |
| vrtl-vmf-sa | 2074/udp | 0.000000 | # Vertel VMF SA |
| newlixengine | 2075/tcp | 0.000000 | # Newlix ServerWare Engine |
| newlixengine | 2075/udp | 0.000330 | # Newlix ServerWare Engine |
| newlixconfig | 2076/tcp | 0.000000 | # Newlix JSPConfig |
| newlixconfig | 2076/udp | 0.000330 | # Newlix JSPConfig |
| tsrmagt | 2077/tcp | 0.000000 | # Old Tivoli Storage Manager |
| tsrmagt | 2077/udp | 0.000330 | # Old Tivoli Storage Manager |
| tpcsrvr | 2078/tcp | 0.000000 | # IBM Total Productivity Center Server |
| tpcsrvr | 2078/udp | 0.000661 | # IBM Total Productivity Center Server |
| idware-router | 2079/tcp | 0.000000 | # IDWARE Router Port |
| idware-router | 2079/udp | 0.000000 | # IDWARE Router Port |
| autodesk-nlm | 2080/tcp | 0.000076 | # Autodesk NLM (FLEXlm) |
| autodesk-nlm | 2080/udp | 0.000330 | # Autodesk NLM (FLEXlm) |
| kme-trap-port | 2081/tcp | 0.000076 | # KME PRINTER TRAP PORT |
| kme-trap-port | 2081/udp | 0.000000 | # KME PRINTER TRAP PORT |
| infowave | 2082/tcp | 0.000076 | # Infowave Mobility Server |
| infowave | 2082/udp | 0.000330 | # Infowave Mobiltiy Server |
| radsec | 2083/tcp | 0.000076 | # Secure Radius Service |
| radsec | 2083/udp | 0.000661 | # Secure Radius Service |
| sunclustergeo | 2084/tcp | 0.000000 | # SunCluster Geographic |
| sunclustergeo | 2084/udp | 0.000000 | # SunCluster Geographic |
| ada-cip | 2085/tcp | 0.000000 | # ADA Control |
| ada-cip | 2085/udp | 0.000000 | # ADA Control |
| gnunet | 2086/tcp | 0.000076 | gnunet 2086/tcp 0.000076 |
| gnunet | 2086/udp | 0.000330 | # GNUnet |
| eli | 2087/tcp | 0.000076 | # ELI - Event Logging Integration |
| eli | 2087/udp | 0.000000 | # ELI - Event Logging Integration |
| ip-blf | 2088/tcp | 0.000000 | # IP Busy Lamp Field |
| ip-blf | 2088/udp | 0.000000 | # IP Busy Lamp Field |
| sep | 2089/tcp | 0.000000 | # Security Encapsulation Protocol - SEP |
| sep | 2089/udp | 0.000000 | # Security Encapsulation Protocol - SEP |
| lrp | 2090/tcp | 0.000000 | # Load Report Protocol |
| lrp | 2090/udp | 0.000000 | # Load Report Protocol |
| prp | 2091/tcp | 0.000000 | prp 2091/tcp 0.000000 |
| prp | 2091/udp | 0.000000 | # PRP |
| descent3 | 2092/tcp | 0.000000 | # Descent 3 |
| descent3 | 2092/udp | 0.000000 | # Descent 3 |
| nbx-cc | 2093/tcp | 0.000000 | # NBX CC |
| nbx-cc | 2093/udp | 0.000330 | # NBX CC |
| nbx-au | 2094/tcp | 0.000000 | # NBX AU |
| nbx-au | 2094/udp | 0.000000 | # NBX AU |
| nbx-ser | 2095/tcp | 0.000076 | # NBX SER |
| nbx-ser | 2095/udp | 0.000000 | # NBX SER |
| nbx-dir | 2096/tcp | 0.000076 | # NBX DIR |
| nbx-dir | 2096/udp | 0.000000 | # NBX DIR |
| jetformpreview | 2097/tcp | 0.000000 | # Jet Form Preview |
| jetformpreview | 2097/udp | 0.000000 | # Jet Form Preview |
| dialog-port | 2098/tcp | 0.000000 | # Dialog Port |
| dialog-port | 2098/udp | 0.000000 | # Dialog Port |
| h2250-annex-g | 2099/tcp | 0.000152 | # H.225.0 Annex G | H.225.0 Annex G Signalling |
| h2250-annex-g | 2099/udp | 0.000000 | # H.225.0 Annex G |
| amiganetfs | 2100/tcp | 0.000380 | # Amiga Network Filesystem |
| amiganetfs | 2100/udp | 0.000000 | # Amiga Network Filesystem |
| rtcm-sc104 | 2101/tcp | 0.000076 | rtcm-sc104 2101/tcp 0.000076 |
| rtcm-sc104 | 2101/udp | 0.000991 | rtcm-sc104 2101/udp 0.000991 |
| zephyr-srv | 2102/tcp | 0.000000 | # Zephyr server |
| zephyr-srv | 2102/udp | 0.000330 | # Zephyr server |
| zephyr-clt | 2103/tcp | 0.002661 | # Zephyr serv-hm connection |
| zephyr-clt | 2103/udp | 0.000758 | # Zephyr serv-hm connection |
| zephyr-hm | 2104/tcp | 0.000076 | # Zephyr hostmanager |
| zephyr-hm | 2104/udp | 0.000478 | # Zephyr hostmanager |
| eklogin | 2105/tcp | 0.002120 | # minipay | Kerberos (v4) encrypted rlogin | MiniPay |
| eklogin | 2105/udp | 0.000544 | # Kerberos (v4) encrypted rlogin |
| ekshell | 2106/tcp | 0.000238 | # mzap | Kerberos (v4) encrypted rshell | MZAP |
| ekshell | 2106/udp | 0.000972 | # Kerberos (v4) encrypted rshell |
| msmq-mgmt | 2107/tcp | 0.002737 | # bintec-admin | Microsoft Message Queuing (IANA calls this bintec-admin) | BinTec Admin |
| bintec-admin | 2107/udp | 0.000000 | # BinTec Admin |
| rkinit | 2108/tcp | 0.000013 | # comcam | Kerberos (v4) remote initialization | Comcam |
| rkinit | 2108/udp | 0.000593 | # Kerberos (v4) remote initialization |
| ergolight | 2109/tcp | 0.000000 | ergolight 2109/tcp 0.000000 |
| ergolight | 2109/udp | 0.000000 | # Ergolight |
| umsp | 2110/tcp | 0.000000 | umsp 2110/tcp 0.000000 |
| umsp | 2110/udp | 0.000000 | # UMSP |
| kx | 2111/tcp | 0.000263 | # dsatp | X over kerberos | OPNET Dynamic Sampling Agent Transaction Protocol |
| dsatp | 2111/udp | 0.000330 | # DSATP |
| kip | 2112/tcp | 0.000088 | # idonix-metanet | IP over kerberos | Idonix MetaNet |
| idonix-metanet | 2112/udp | 0.000000 | # Idonix MetaNet |
| hsl-storm | 2113/tcp | 0.000000 | # HSL StoRM |
| hsl-storm | 2113/udp | 0.000000 | # HSL StoRM |
| newheights | 2114/tcp | 0.000000 | # ariascribe | Classical Music Meta-Data Access and Enhancement |
| newheights | 2114/udp | 0.000000 | # NEWHEIGHTS |
| kdm | 2115/tcp | 0.000076 | # Key Distribution Manager |
| kdm | 2115/udp | 0.000000 | # Key Distribution Manager |
| ccowcmr | 2116/tcp | 0.000000 | ccowcmr 2116/tcp 0.000000 |
| ccowcmr | 2116/udp | 0.000000 | # CCOWCMR |
| mentaclient | 2117/tcp | 0.000000 | mentaclient 2117/tcp 0.000000 |
| mentaclient | 2117/udp | 0.000000 | # MENTACLIENT |
| mentaserver | 2118/tcp | 0.000000 | mentaserver 2118/tcp 0.000000 |
| mentaserver | 2118/udp | 0.000000 | # MENTASERVER |
| gsigatekeeper | 2119/tcp | 0.000380 | gsigatekeeper 2119/tcp 0.000380 |
| gsigatekeeper | 2119/udp | 0.000330 | # GSIGATEKEEPER |
| kauth | 2120/tcp | 0.000050 | # qencp | Remote kauth | Quick Eagle Networks CP |
| qencp | 2120/udp | 0.000000 | # Quick Eagle Networks CP |
| ccproxy-ftp | 2121/tcp | 0.005834 | # scientia-ssdb | CCProxy FTP Proxy | SCIENTIA-SSDB |
| scientia-ssdb | 2121/udp | 0.000661 | # SCIENTIA-SSDB |
| caupc-remote | 2122/tcp | 0.000000 | # CauPC Remote Control |
| caupc-remote | 2122/udp | 0.000000 | # CauPC Remote Control |
| gtp-control | 2123/tcp | 0.000000 | # GTP-Control Plane (3GPP) |
| gtp-control | 2123/udp | 0.000661 | # GTP-Control Plane (3GPP) |
| elatelink | 2124/tcp | 0.000076 | elatelink 2124/tcp 0.000076 |
| elatelink | 2124/udp | 0.000000 | # ELATELINK |
| lockstep | 2125/tcp | 0.000000 | lockstep 2125/tcp 0.000000 |
| lockstep | 2125/udp | 0.000000 | # LOCKSTEP |
| pktcable-cops | 2126/tcp | 0.000304 | pktcable-cops 2126/tcp 0.000304 |
| pktcable-cops | 2126/udp | 0.000330 | # PktCable-COPS |
| index-pc-wb | 2127/tcp | 0.000000 | index-pc-wb 2127/tcp 0.000000 |
| index-pc-wb | 2127/udp | 0.000330 | # INDEX-PC-WB |
| net-steward | 2128/tcp | 0.000000 | # Net Steward Control |
| net-steward | 2128/udp | 0.000000 | # Net Steward Control |
| cs-live | 2129/tcp | 0.000000 | # cs-live.com |
| cs-live | 2129/udp | 0.000661 | # cs-live.com |
| xds | 2130/tcp | 0.000000 | xds 2130/tcp 0.000000 |
| xds | 2130/udp | 0.000000 | # XDS |
| avantageb2b | 2131/tcp | 0.000000 | avantageb2b 2131/tcp 0.000000 |
| avantageb2b | 2131/udp | 0.000330 | # Avantageb2b |
| solera-epmap | 2132/tcp | 0.000000 | # SoleraTec End Point Map |
| solera-epmap | 2132/udp | 0.000000 | # SoleraTec End Point Map |
| zymed-zpp | 2133/tcp | 0.000000 | zymed-zpp 2133/tcp 0.000000 |
| zymed-zpp | 2133/udp | 0.000000 | # ZYMED-ZPP |
| avenue | 2134/tcp | 0.000076 | avenue 2134/tcp 0.000076 |
| avenue | 2134/udp | 0.000000 | # AVENUE |
| gris | 2135/tcp | 0.000380 | # Grid Resource Information Server |
| gris | 2135/udp | 0.000000 | # Grid Resource Information Server |
| appworxsrv | 2136/tcp | 0.000000 | appworxsrv 2136/tcp 0.000000 |
| appworxsrv | 2136/udp | 0.000330 | # APPWORXSRV |
| connect | 2137/tcp | 0.000000 | connect 2137/tcp 0.000000 |
| connect | 2137/udp | 0.000000 | # CONNECT |
| unbind-cluster | 2138/tcp | 0.000000 | unbind-cluster 2138/tcp 0.000000 |
| unbind-cluster | 2138/udp | 0.000330 | # UNBIND-CLUSTER |
| ias-auth | 2139/tcp | 0.000000 | ias-auth 2139/tcp 0.000000 |
| ias-auth | 2139/udp | 0.000000 | # IAS-AUTH |
| ias-reg | 2140/tcp | 0.000000 | ias-reg 2140/tcp 0.000000 |
| ias-reg | 2140/udp | 0.000661 | # IAS-REG |
| ias-admind | 2141/tcp | 0.000000 | ias-admind 2141/tcp 0.000000 |
| ias-admind | 2141/udp | 0.000000 | # IAS-ADMIND |
| tdmoip | 2142/tcp | 0.000076 | # TDM OVER IP |
| tdmoip | 2142/udp | 0.000000 | # TDM OVER IP |
| lv-jc | 2143/tcp | 0.000000 | # Live Vault Job Control |
| lv-jc | 2143/udp | 0.000000 | # Live Vault Job Control |
| lv-ffx | 2144/tcp | 0.000380 | # Live Vault Fast Object Transfer |
| lv-ffx | 2144/udp | 0.000330 | # Live Vault Fast Object Transfer |
| lv-pici | 2145/tcp | 0.000000 | # Live Vault Remote Diagnostic Console Support |
| lv-pici | 2145/udp | 0.000000 | # Live Vault Remote Diagnostic Console Support |
| lv-not | 2146/tcp | 0.000000 | # Live Vault Admin Event Notification |
| lv-not | 2146/udp | 0.000000 | # Live Vault Admin Event Notification |
| lv-auth | 2147/tcp | 0.000000 | # Live Vault Authentication |
| lv-auth | 2147/udp | 0.000000 | # Live Vault Authentication |
| veritas-ucl | 2148/tcp | 0.000076 | # Veritas Universal Communication Layer | VERITAS UNIVERSAL COMMUNICATION LAYER |
| veritas-ucl | 2148/udp | 0.005946 | # Veritas Universal Communication Layer |
| acptsys | 2149/tcp | 0.000000 | acptsys 2149/tcp 0.000000 |
| acptsys | 2149/udp | 0.000000 | # ACPTSYS |
| dynamic3d | 2150/tcp | 0.000076 | dynamic3d 2150/tcp 0.000076 |
| dynamic3d | 2150/udp | 0.000000 | # DYNAMIC3D |
| docent | 2151/tcp | 0.000000 | docent 2151/tcp 0.000000 |
| docent | 2151/udp | 0.000000 | # DOCENT |
| gtp-user | 2152/tcp | 0.000000 | # GTP-User Plane (3GPP) |
| gtp-user | 2152/udp | 0.000000 | # GTP-User Plane (3GPP) |
| ctlptc | 2153/tcp | 0.000000 | # Control Protocol |
| ctlptc | 2153/udp | 0.000000 | # Control Protocol |
| stdptc | 2154/tcp | 0.000000 | # Standard Protocol |
| stdptc | 2154/udp | 0.000000 | # Standard Protocol |
| brdptc | 2155/tcp | 0.000000 | # Bridge Protocol |
| brdptc | 2155/udp | 0.000000 | # Bridge Protocol |
| trp | 2156/tcp | 0.000000 | # Talari Reliable Protocol |
| trp | 2156/udp | 0.000000 | # Talari Reliable Protocol |
| xnds | 2157/tcp | 0.000000 | # Xerox Network Document Scan Protocol |
| xnds | 2157/udp | 0.000000 | # Xerox Network Document Scan Protocol |
| touchnetplus | 2158/tcp | 0.000000 | # TouchNetPlus Service |
| touchnetplus | 2158/udp | 0.000661 | # TouchNetPlus Service |
| gdbremote | 2159/tcp | 0.000000 | # GDB Remote Debug Port |
| gdbremote | 2159/udp | 0.000000 | # GDB Remote Debug Port |
| apc-2160 | 2160/tcp | 0.000380 | # APC 2160 |
| apc-2160 | 2160/udp | 0.001982 | # APC 2160 |
| apc-agent | 2161/tcp | 0.001521 | # apc-2161 | American Power Conversion | APC 2161 |
| apc-2161 | 2161/udp | 0.001321 | # APC 2161 |
| navisphere | 2162/tcp | 0.000000 | navisphere 2162/tcp 0.000000 |
| navisphere | 2162/udp | 0.000330 | # Navisphere |
| navisphere-sec | 2163/tcp | 0.000000 | # Navisphere Secure |
| navisphere-sec | 2163/udp | 0.000000 | # Navisphere Secure |
| ddns-v3 | 2164/tcp | 0.000000 | # Dynamic DNS Version 3 |
| ddns-v3 | 2164/udp | 0.000991 | # Dynamic DNS Version 3 |
| x-bone-api | 2165/tcp | 0.000000 | # X-Bone API |
| x-bone-api | 2165/udp | 0.000000 | # X-Bone API |
| iwserver | 2166/tcp | 0.000000 | iwserver 2166/tcp 0.000000 |
| iwserver | 2166/udp | 0.000000 | iwserver 2166/udp 0.000000 |
| raw-serial | 2167/tcp | 0.000000 | # Raw Async Serial Link |
| raw-serial | 2167/udp | 0.000000 | # Raw Async Serial Link |
| easy-soft-mux | 2168/tcp | 0.000000 | # easy-soft Multiplexer |
| easy-soft-mux | 2168/udp | 0.000661 | # easy-soft Multiplexer |
| brain | 2169/tcp | 0.000000 | # Backbone for Academic Information Notification (BRAIN) |
| brain | 2169/udp | 0.000330 | # Backbone for Academic Information Notification (BRAIN) |
| eyetv | 2170/tcp | 0.000152 | # EyeTV Server Port |
| eyetv | 2170/udp | 0.000330 | # EyeTV Server Port |
| msfw-storage | 2171/tcp | 0.000000 | # MS Firewall Storage |
| msfw-storage | 2171/udp | 0.000000 | # MS Firewall Storage |
| msfw-s-storage | 2172/tcp | 0.000000 | # MS Firewall SecureStorage |
| msfw-s-storage | 2172/udp | 0.000000 | # MS Firewall SecureStorage |
| msfw-replica | 2173/tcp | 0.000000 | # MS Firewall Replication |
| msfw-replica | 2173/udp | 0.000000 | # MS Firewall Replication |
| msfw-array | 2174/tcp | 0.000000 | # MS Firewall Intra Array |
| msfw-array | 2174/udp | 0.000000 | # MS Firewall Intra Array |
| airsync | 2175/tcp | 0.000000 | # Microsoft Desktop AirSync Protocol |
| airsync | 2175/udp | 0.000000 | # Microsoft Desktop AirSync Protocol |
| rapi | 2176/tcp | 0.000000 | # Microsoft ActiveSync Remote API |
| rapi | 2176/udp | 0.000000 | # Microsoft ActiveSync Remote API |
| qwave | 2177/tcp | 0.000000 | # qWAVE Bandwidth Estimate |
| qwave | 2177/udp | 0.000000 | # qWAVE Bandwidth Estimate |
| bitspeer | 2178/tcp | 0.000000 | # Peer Services for BITS |
| bitspeer | 2178/udp | 0.000000 | # Peer Services for BITS |
| vmrdp | 2179/tcp | 0.000304 | # Microsoft RDP for virtual machines |
| vmrdp | 2179/udp | 0.000000 | # Microsoft RDP for virtual machines |
| mc-gt-srv | 2180/tcp | 0.000000 | # Millicent Vendor Gateway Server |
| mc-gt-srv | 2180/udp | 0.000000 | # Millicent Vendor Gateway Server |
| eforward | 2181/tcp | 0.000000 | eforward 2181/tcp 0.000000 |
| eforward | 2181/udp | 0.000000 | eforward 2181/udp 0.000000 |
| cgn-stat | 2182/tcp | 0.000000 | # CGN status |
| cgn-stat | 2182/udp | 0.000330 | # CGN status |
| cgn-config | 2183/tcp | 0.000000 | # Code Green configuration |
| cgn-config | 2183/udp | 0.000000 | # Code Green configuration |
| nvd | 2184/tcp | 0.000000 | # NVD User |
| nvd | 2184/udp | 0.000000 | # NVD User |
| onbase-dds | 2185/tcp | 0.000000 | # OnBase Distributed Disk Services |
| onbase-dds | 2185/udp | 0.000330 | # OnBase Distributed Disk Services |
| gtaua | 2186/tcp | 0.000000 | # Guy-Tek Automated Update Applications |
| gtaua | 2186/udp | 0.000000 | # Guy-Tek Automated Update Applications |
| ssmc | 2187/tcp | 0.000076 | # ssmd | Sepehr System Management Control | Sepehr System Management Data |
| ssmd | 2187/udp | 0.000000 | # Sepehr System Management Data |
| radware-rpm | 2188/tcp | 0.000000 | # Radware Resource Pool Manager |
| radware-rpm-s | 2189/tcp | 0.000000 | # Secure Radware Resource Pool Manager |
| tivoconnect | 2190/tcp | 0.000380 | # TiVoConnect Beacon |
| tivoconnect | 2190/udp | 0.000000 | # TiVoConnect Beacon |
| tvbus | 2191/tcp | 0.000304 | # TvBus Messaging |
| tvbus | 2191/udp | 0.000330 | # TvBus Messaging |
| asdis | 2192/tcp | 0.000000 | # ASDIS software management |
| asdis | 2192/udp | 0.000000 | # ASDIS software management |
| drwcs | 2193/tcp | 0.000000 | # Dr.Web Enterprise Management Service |
| drwcs | 2193/udp | 0.000000 | # Dr.Web Enterprise Management Service |
| mnp-exchange | 2197/tcp | 0.000076 | # MNP data exchange |
| mnp-exchange | 2197/udp | 0.000000 | # MNP data exchange |
| onehome-remote | 2198/tcp | 0.000000 | # OneHome Remote Access |
| onehome-remote | 2198/udp | 0.000000 | # OneHome Remote Access |
| onehome-help | 2199/tcp | 0.000000 | # OneHome Service Port |
| onehome-help | 2199/udp | 0.000000 | # OneHome Service Port |
| ici | 2200/tcp | 0.000152 | ici 2200/tcp 0.000152 |
| ici | 2200/udp | 0.000330 | # ICI |
| ats | 2201/tcp | 0.000100 | # Advanced Training System Program |
| ats | 2201/udp | 0.000577 | # Advanced Training System Program |
| imtc-map | 2202/tcp | 0.000000 | # Int. Multimedia Teleconferencing Cosortium |
| imtc-map | 2202/udp | 0.000000 | # Int. Multimedia Teleconferencing Cosortium |
| b2-runtime | 2203/tcp | 0.000076 | # b2 Runtime Protocol |
| b2-runtime | 2203/udp | 0.000000 | # b2 Runtime Protocol |
| b2-license | 2204/tcp | 0.000000 | # b2 License Server |
| b2-license | 2204/udp | 0.000000 | # b2 License Server |
| jps | 2205/tcp | 0.000000 | # Java Presentation Server |
| jps | 2205/udp | 0.000000 | # Java Presentation Server |
| hpocbus | 2206/tcp | 0.000000 | # HP OpenCall bus |
| hpocbus | 2206/udp | 0.000000 | # HP OpenCall bus |
| hpssd | 2207/tcp | 0.000000 | # HP Status and Services |
| hpssd | 2207/udp | 0.000000 | # HP Status and Services |
| hpiod | 2208/tcp | 0.000000 | # HP I/O Backend |
| hpiod | 2208/udp | 0.000000 | # HP I/O Backend |
| rimf-ps | 2209/tcp | 0.000000 | # HP RIM for Files Portal Service |
| rimf-ps | 2209/udp | 0.000000 | # HP RIM for Files Portal Service |
| noaaport | 2210/tcp | 0.000000 | # NOAAPORT Broadcast Network |
| noaaport | 2210/udp | 0.000000 | # NOAAPORT Broadcast Network |
| emwin | 2211/tcp | 0.000000 | emwin 2211/tcp 0.000000 |
| emwin | 2211/udp | 0.000000 | # EMWIN |
| leecoposserver | 2212/tcp | 0.000000 | # LeeCO POS Server Service |
| leecoposserver | 2212/udp | 0.000000 | # LeeCO POS Server Service |
| kali | 2213/tcp | 0.000000 | kali 2213/tcp 0.000000 |
| kali | 2213/udp | 0.000000 | # Kali |
| rpi | 2214/tcp | 0.000000 | # RDQ Protocol Interface |
| rpi | 2214/udp | 0.000330 | # RDQ Protocol Interface |
| ipcore | 2215/tcp | 0.000000 | # IPCore.co.za GPRS |
| ipcore | 2215/udp | 0.000661 | # IPCore.co.za GPRS |
| vtu-comms | 2216/tcp | 0.000000 | # VTU data service |
| vtu-comms | 2216/udp | 0.000000 | # VTU data service |
| gotodevice | 2217/tcp | 0.000000 | # GoToDevice Device Management |
| gotodevice | 2217/udp | 0.000330 | # GoToDevice Device Management |
| bounzza | 2218/tcp | 0.000000 | # Bounzza IRC Proxy |
| bounzza | 2218/udp | 0.000000 | # Bounzza IRC Proxy |
| netiq-ncap | 2219/tcp | 0.000000 | # NetIQ NCAP Protocol |
| netiq-ncap | 2219/udp | 0.000000 | # NetIQ NCAP Protocol |
| netiq | 2220/tcp | 0.000000 | # NetIQ End2End |
| netiq | 2220/udp | 0.000000 | # NetIQ End2End |
| rockwell-csp1 | 2221/tcp | 0.000000 | # ethernet-ip-s | Rockwell CSP1 | EtherNet/IP over TLS | EtherNet/IP over DTLS |
| rockwell-csp1 | 2221/udp | 0.000330 | # Rockwell CSP1 |
| EtherNetIP-1 | 2222/tcp | 0.000608 | # EtherNet/IP-1 | EtherNet-IP-1 | EtherNet/IP I/O |
| msantipiracy | 2222/udp | 0.047902 | # Microsoft Office OS X antipiracy network monitor |
| rockwell-csp2 | 2223/tcp | 0.000000 | # Rockwell CSP2 |
| rockwell-csp2 | 2223/udp | 0.010902 | # Rockwell CSP2 |
| efi-mg | 2224/tcp | 0.000076 | # Easy Flexible Internet/Multiplayer Games |
| efi-mg | 2224/udp | 0.000000 | # Easy Flexible Internet/Multiplayer Games |
| rcip-itu | 2225/sctp | 0.000000 | # Resource Connection Initiation Protocol |
| rcip-itu | 2225/tcp | 0.000000 | # Resource Connection Initiation Protocol |
| rcip-itu | 2225/udp | 0.000000 | # Resource Connection Initiation Protocol |
| di-drm | 2226/tcp | 0.000000 | # Digital Instinct DRM |
| di-drm | 2226/udp | 0.000330 | # Digital Instinct DRM |
| di-msg | 2227/tcp | 0.000000 | # DI Messaging Service |
| di-msg | 2227/udp | 0.000000 | # DI Messaging Service |
| ehome-ms | 2228/tcp | 0.000000 | # eHome Message Server |
| ehome-ms | 2228/udp | 0.000000 | # eHome Message Server |
| datalens | 2229/tcp | 0.000000 | # DataLens Service |
| datalens | 2229/udp | 0.000000 | # DataLens Service |
| queueadm | 2230/tcp | 0.000000 | # MetaSoft Job Queue Administration Service |
| queueadm | 2230/udp | 0.000000 | # MetaSoft Job Queue Administration Service |
| wimaxasncp | 2231/tcp | 0.000000 | # WiMAX ASN Control Plane Protocol |
| wimaxasncp | 2231/udp | 0.000000 | # WiMAX ASN Control Plane Protocol |
| ivs-video | 2232/tcp | 0.000151 | # IVS Video default |
| ivs-video | 2232/udp | 0.000626 | # IVS Video default |
| infocrypt | 2233/tcp | 0.000000 | infocrypt 2233/tcp 0.000000 |
| infocrypt | 2233/udp | 0.000000 | # INFOCRYPT |
| directplay | 2234/tcp | 0.000000 | directplay 2234/tcp 0.000000 |
| directplay | 2234/udp | 0.000000 | # DirectPlay |
| sercomm-wlink | 2235/tcp | 0.000000 | sercomm-wlink 2235/tcp 0.000000 |
| sercomm-wlink | 2235/udp | 0.000000 | # Sercomm-WLink |
| nani | 2236/tcp | 0.000000 | nani 2236/tcp 0.000000 |
| nani | 2236/udp | 0.000000 | # Nani |
| optech-port1-lm | 2237/tcp | 0.000000 | # Optech Port1 License Manager |
| optech-port1-lm | 2237/udp | 0.000330 | # Optech Port1 License Manager |
| aviva-sna | 2238/tcp | 0.000000 | # AVIVA SNA SERVER |
| aviva-sna | 2238/udp | 0.000000 | # AVIVA SNA SERVER |
| imagequery | 2239/tcp | 0.000000 | # Image Query |
| imagequery | 2239/udp | 0.000330 | # Image Query |
| recipe | 2240/tcp | 0.000000 | recipe 2240/tcp 0.000000 |
| recipe | 2240/udp | 0.000330 | # RECIPe |
| ivsd | 2241/tcp | 0.000151 | # IVS Daemon |
| ivsd | 2241/udp | 0.000659 | # IVS Daemon |
| foliocorp | 2242/tcp | 0.000000 | # Folio Remote Server |
| foliocorp | 2242/udp | 0.000000 | # Folio Remote Server |
| magicom | 2243/tcp | 0.000000 | # Magicom Protocol |
| magicom | 2243/udp | 0.000000 | # Magicom Protocol |
| nmsserver | 2244/tcp | 0.000000 | # NMS Server |
| nmsserver | 2244/udp | 0.000330 | # NMS Server |
| hao | 2245/tcp | 0.000000 | hao 2245/tcp 0.000000 |
| hao | 2245/udp | 0.000330 | # HaO |
| pc-mta-addrmap | 2246/tcp | 0.000000 | # PacketCable MTA Addr Map |
| pc-mta-addrmap | 2246/udp | 0.000330 | # PacketCable MTA Addr Map |
| antidotemgrsvr | 2247/tcp | 0.000000 | # Antidote Deployment Manager Service |
| antidotemgrsvr | 2247/udp | 0.000330 | # Antidote Deployment Manager Service |
| ums | 2248/tcp | 0.000000 | # User Management Service |
| ums | 2248/udp | 0.000000 | # User Management Service |
| rfmp | 2249/tcp | 0.000000 | # RISO File Manager Protocol |
| rfmp | 2249/udp | 0.000330 | # RISO File Manager Protocol |
| remote-collab | 2250/tcp | 0.000076 | remote-collab 2250/tcp 0.000076 |
| remote-collab | 2250/udp | 0.000000 | remote-collab 2250/udp 0.000000 |
| dif-port | 2251/tcp | 0.000304 | # Distributed Framework Port |
| dif-port | 2251/udp | 0.000330 | # Distributed Framework Port |
| njenet-ssl | 2252/tcp | 0.000000 | # NJENET using SSL |
| njenet-ssl | 2252/udp | 0.000000 | # NJENET using SSL |
| dtv-chan-req | 2253/tcp | 0.000076 | # DTV Channel Request |
| dtv-chan-req | 2253/udp | 0.000000 | # DTV Channel Request |
| seispoc | 2254/tcp | 0.000000 | # Seismic P.O.C. Port |
| seispoc | 2254/udp | 0.000000 | # Seismic P.O.C. Port |
| vrtp | 2255/tcp | 0.000000 | # VRTP - ViRtue Transfer Protocol |
| vrtp | 2255/udp | 0.000000 | # VRTP - ViRtue Transfer Protocol |
| pcc-mfp | 2256/tcp | 0.000000 | # PCC MFP |
| pcc-mfp | 2256/udp | 0.000000 | # PCC MFP |
| simple-tx-rx | 2257/tcp | 0.000000 | # simple text/file transfer |
| simple-tx-rx | 2257/udp | 0.000000 | # simple text/file transfer |
| rcts | 2258/tcp | 0.000000 | # Rotorcraft Communications Test System |
| rcts | 2258/udp | 0.000330 | # Rotorcraft Communications Test System |
| acd-pm | 2259/tcp | 0.000000 | # Accedian Performance Measurement |
| acd-pm | 2259/udp | 0.000000 | # Accedian Performance Measurement |
| apc-2260 | 2260/tcp | 0.000380 | # APC 2260 |
| apc-2260 | 2260/udp | 0.000000 | # APC 2260 |
| comotionmaster | 2261/tcp | 0.000076 | # CoMotion Master Server |
| comotionmaster | 2261/udp | 0.000000 | # CoMotion Master Server |
| comotionback | 2262/tcp | 0.000076 | # CoMotion Backup Server |
| comotionback | 2262/udp | 0.000330 | # CoMotion Backup Server |
| ecwcfg | 2263/tcp | 0.000000 | # ECweb Configuration Service |
| ecwcfg | 2263/udp | 0.000000 | # ECweb Configuration Service |
| apx500api-1 | 2264/tcp | 0.000000 | # Audio Precision Apx500 API Port 1 |
| apx500api-1 | 2264/udp | 0.000330 | # Audio Precision Apx500 API Port 1 |
| apx500api-2 | 2265/tcp | 0.000076 | # Audio Precision Apx500 API Port 2 |
| apx500api-2 | 2265/udp | 0.000330 | # Audio Precision Apx500 API Port 2 |
| mfserver | 2266/tcp | 0.000000 | # M-Files Server | M-files Server |
| mfserver | 2266/udp | 0.000330 | # M-files Server |
| ontobroker | 2267/tcp | 0.000000 | ontobroker 2267/tcp 0.000000 |
| ontobroker | 2267/udp | 0.000000 | # OntoBroker |
| amt | 2268/tcp | 0.000000 | amt 2268/tcp 0.000000 |
| amt | 2268/udp | 0.000000 | # AMT |
| mikey | 2269/tcp | 0.000076 | mikey 2269/tcp 0.000076 |
| mikey | 2269/udp | 0.000330 | # MIKEY |
| starschool | 2270/tcp | 0.000076 | starschool 2270/tcp 0.000076 |
| starschool | 2270/udp | 0.000330 | # starSchool |
| mmcals | 2271/tcp | 0.000076 | # Secure Meeting Maker Scheduling |
| mmcals | 2271/udp | 0.000000 | # Secure Meeting Maker Scheduling |
| mmcal | 2272/tcp | 0.000000 | # Meeting Maker Scheduling |
| mmcal | 2272/udp | 0.000000 | # Meeting Maker Scheduling |
| mysql-im | 2273/tcp | 0.000000 | # MySQL Instance Manager |
| mysql-im | 2273/udp | 0.000330 | # MySQL Instance Manager |
| pcttunnell | 2274/tcp | 0.000000 | # PCTTunneller |
| pcttunnell | 2274/udp | 0.000000 | # PCTTunneller |
| ibridge-data | 2275/tcp | 0.000000 | # iBridge Conferencing |
| ibridge-data | 2275/udp | 0.000000 | # iBridge Conferencing |
| ibridge-mgmt | 2276/tcp | 0.000000 | # iBridge Management |
| ibridge-mgmt | 2276/udp | 0.000000 | # iBridge Management |
| bluectrlproxy | 2277/tcp | 0.000000 | # Bt device control proxy |
| bluectrlproxy | 2277/udp | 0.000000 | # Bt device control proxy |
| s3db | 2278/tcp | 0.000000 | # Simple Stacked Sequences Database |
| s3db | 2278/udp | 0.000000 | # Simple Stacked Sequences Database |
| xmquery | 2279/tcp | 0.000000 | xmquery 2279/tcp 0.000000 |
| xmquery | 2279/udp | 0.000330 | xmquery 2279/udp 0.000330 |
| lnvpoller | 2280/tcp | 0.000076 | lnvpoller 2280/tcp 0.000076 |
| lnvpoller | 2280/udp | 0.000000 | # LNVPOLLER |
| lnvconsole | 2281/tcp | 0.000000 | lnvconsole 2281/tcp 0.000000 |
| lnvconsole | 2281/udp | 0.000000 | # LNVCONSOLE |
| lnvalarm | 2282/tcp | 0.000000 | lnvalarm 2282/tcp 0.000000 |
| lnvalarm | 2282/udp | 0.000000 | # LNVALARM |
| lnvstatus | 2283/tcp | 0.000000 | lnvstatus 2283/tcp 0.000000 |
| lnvstatus | 2283/udp | 0.000330 | # LNVSTATUS |
| lnvmaps | 2284/tcp | 0.000000 | lnvmaps 2284/tcp 0.000000 |
| lnvmaps | 2284/udp | 0.000000 | # LNVMAPS |
| lnvmailmon | 2285/tcp | 0.000000 | lnvmailmon 2285/tcp 0.000000 |
| lnvmailmon | 2285/udp | 0.000000 | # LNVMAILMON |
| nas-metering | 2286/tcp | 0.000000 | nas-metering 2286/tcp 0.000000 |
| nas-metering | 2286/udp | 0.000000 | # NAS-Metering |
| dna | 2287/tcp | 0.000000 | dna 2287/tcp 0.000000 |
| dna | 2287/udp | 0.000000 | # DNA |
| netml | 2288/tcp | 0.000152 | netml 2288/tcp 0.000152 |
| netml | 2288/udp | 0.000000 | # NETML |
| dict-lookup | 2289/tcp | 0.000000 | # Lookup dict server |
| dict-lookup | 2289/udp | 0.000000 | # Lookup dict server |
| sonus-logging | 2290/tcp | 0.000000 | # Sonus Logging Services |
| sonus-logging | 2290/udp | 0.000000 | # Sonus Logging Services |
| eapsp | 2291/tcp | 0.000076 | # EPSON Advanced Printer Share Protocol |
| eapsp | 2291/udp | 0.000000 | # EPSON Advanced Printer Share Protocol |
| mib-streaming | 2292/tcp | 0.000076 | # Sonus Element Management Services |
| mib-streaming | 2292/udp | 0.000330 | # Sonus Element Management Services |
| npdbgmngr | 2293/tcp | 0.000000 | # Network Platform Debug Manager |
| npdbgmngr | 2293/udp | 0.000000 | # Network Platform Debug Manager |
| konshus-lm | 2294/tcp | 0.000000 | # Konshus License Manager (FLEX) |
| konshus-lm | 2294/udp | 0.000000 | # Konshus License Manager (FLEX) |
| advant-lm | 2295/tcp | 0.000000 | # Advant License Manager |
| advant-lm | 2295/udp | 0.000000 | # Advant License Manager |
| theta-lm | 2296/tcp | 0.000000 | # Theta License Manager (Rainbow) |
| theta-lm | 2296/udp | 0.000000 | # Theta License Manager (Rainbow) |
| d2k-datamover1 | 2297/tcp | 0.000000 | # D2K DataMover 1 |
| d2k-datamover1 | 2297/udp | 0.000000 | # D2K DataMover 1 |
| d2k-datamover2 | 2298/tcp | 0.000000 | # D2K DataMover 2 |
| d2k-datamover2 | 2298/udp | 0.000000 | # D2K DataMover 2 |
| pc-telecommute | 2299/tcp | 0.000000 | # PC Telecommute |
| pc-telecommute | 2299/udp | 0.000000 | # PC Telecommute |
| cvmmon | 2300/tcp | 0.000076 | cvmmon 2300/tcp 0.000076 |
| cvmmon | 2300/udp | 0.000000 | # CVMMON |
| compaqdiag | 2301/tcp | 0.001242 | # cpq-wbem | Compaq remote diagnostic/management | Compaq HTTP |
| cpq-wbem | 2301/udp | 0.000330 | # Compaq HTTP |
| binderysupport | 2302/tcp | 0.000076 | # Bindery Support |
| binderysupport | 2302/udp | 0.000661 | # Bindery Support |
| proxy-gateway | 2303/tcp | 0.000000 | # Proxy Gateway |
| proxy-gateway | 2303/udp | 0.000000 | # Proxy Gateway |
| attachmate-uts | 2304/tcp | 0.000076 | # Attachmate UTS |
| attachmate-uts | 2304/udp | 0.000000 | # Attachmate UTS |
| mt-scaleserver | 2305/tcp | 0.000000 | # MT ScaleServer |
| mt-scaleserver | 2305/udp | 0.000000 | # MT ScaleServer |
| tappi-boxnet | 2306/tcp | 0.000000 | # TAPPI BoxNet |
| tappi-boxnet | 2306/udp | 0.000000 | # TAPPI BoxNet |
| pehelp | 2307/tcp | 0.000050 | pehelp 2307/tcp 0.000050 |
| pehelp | 2307/udp | 0.000659 | pehelp 2307/udp 0.000659 |
| sdhelp | 2308/tcp | 0.000000 | sdhelp 2308/tcp 0.000000 |
| sdhelp | 2308/udp | 0.000000 | sdhelp 2308/udp 0.000000 |
| sdserver | 2309/tcp | 0.000000 | # SD Server |
| sdserver | 2309/udp | 0.000000 | # SD Server |
| sdclient | 2310/tcp | 0.000000 | # SD Client |
| sdclient | 2310/udp | 0.000000 | # SD Client |
| messageservice | 2311/tcp | 0.000000 | # Message Service |
| messageservice | 2311/udp | 0.000000 | # Message Service |
| wanscaler | 2312/tcp | 0.000076 | # WANScaler Communication Service |
| wanscaler | 2312/udp | 0.000000 | # WANScaler Communication Service |
| iapp | 2313/tcp | 0.000076 | # IAPP (Inter Access Point Protocol) |
| iapp | 2313/udp | 0.000000 | # IAPP (Inter Access Point Protocol) |
| cr-websystems | 2314/tcp | 0.000000 | # CR WebSystems |
| cr-websystems | 2314/udp | 0.000000 | # CR WebSystems |
| precise-sft | 2315/tcp | 0.000000 | # Precise Sft. |
| precise-sft | 2315/udp | 0.000000 | # Precise Sft. |
| sent-lm | 2316/tcp | 0.000000 | # SENT License Manager |
| sent-lm | 2316/udp | 0.000000 | # SENT License Manager |
| attachmate-g32 | 2317/tcp | 0.000000 | # Attachmate G32 |
| attachmate-g32 | 2317/udp | 0.000330 | # Attachmate G32 |
| cadencecontrol | 2318/tcp | 0.000000 | # Cadence Control |
| cadencecontrol | 2318/udp | 0.000000 | # Cadence Control |
| infolibria | 2319/tcp | 0.000000 | infolibria 2319/tcp 0.000000 |
| infolibria | 2319/udp | 0.000330 | # InfoLibria |
| siebel-ns | 2320/tcp | 0.000000 | # Siebel NS |
| siebel-ns | 2320/udp | 0.000330 | # Siebel NS |
| rdlap | 2321/tcp | 0.000000 | rdlap 2321/tcp 0.000000 |
| rdlap | 2321/udp | 0.000000 | # RDLAP |
| ofsd | 2322/tcp | 0.000000 | ofsd 2322/tcp 0.000000 |
| ofsd | 2322/udp | 0.000000 | ofsd 2322/udp 0.000000 |
| 3d-nfsd | 2323/tcp | 0.000228 | 3d-nfsd 2323/tcp 0.000228 |
| 3d-nfsd | 2323/udp | 0.000000 | 3d-nfsd 2323/udp 0.000000 |
| cosmocall | 2324/tcp | 0.000000 | cosmocall 2324/tcp 0.000000 |
| cosmocall | 2324/udp | 0.000330 | # Cosmocall |
| ansysli | 2325/tcp | 0.000076 | # ANSYS Licensing Interconnect |
| ansysli | 2325/udp | 0.000000 | # ANSYS Licensing Interconnect |
| idcp | 2326/tcp | 0.000076 | idcp 2326/tcp 0.000076 |
| idcp | 2326/udp | 0.000330 | # IDCP |
| xingcsm | 2327/tcp | 0.000000 | xingcsm 2327/tcp 0.000000 |
| xingcsm | 2327/udp | 0.000330 | xingcsm 2327/udp 0.000330 |
| netrix-sftm | 2328/tcp | 0.000000 | # Netrix SFTM |
| netrix-sftm | 2328/udp | 0.000330 | # Netrix SFTM |
| nvd | 2329/tcp | 0.000000 | nvd 2329/tcp 0.000000 |
| nvd | 2329/udp | 0.000000 | # NVD |
| tscchat | 2330/tcp | 0.000076 | tscchat 2330/tcp 0.000076 |
| tscchat | 2330/udp | 0.000330 | # TSCCHAT |
| agentview | 2331/tcp | 0.000000 | agentview 2331/tcp 0.000000 |
| agentview | 2331/udp | 0.000000 | # AGENTVIEW |
| rcc-host | 2332/tcp | 0.000000 | # RCC Host |
| rcc-host | 2332/udp | 0.000330 | # RCC Host |
| snapp | 2333/tcp | 0.000000 | snapp 2333/tcp 0.000000 |
| snapp | 2333/udp | 0.000000 | # SNAPP |
| ace-client | 2334/tcp | 0.000000 | # ACE Client Auth |
| ace-client | 2334/udp | 0.000330 | # ACE Client Auth |
| ace-proxy | 2335/tcp | 0.000076 | # ACE Proxy |
| ace-proxy | 2335/udp | 0.000330 | # ACE Proxy |
| appleugcontrol | 2336/tcp | 0.000000 | # Apple UG Control |
| appleugcontrol | 2336/udp | 0.000000 | # Apple UG Control |
| ideesrv | 2337/tcp | 0.000000 | ideesrv 2337/tcp 0.000000 |
| ideesrv | 2337/udp | 0.000000 | ideesrv 2337/udp 0.000000 |
| norton-lambert | 2338/tcp | 0.000000 | # Norton Lambert |
| norton-lambert | 2338/udp | 0.000000 | # Norton Lambert |
| 3com-webview | 2339/tcp | 0.000000 | # 3Com WebView |
| 3com-webview | 2339/udp | 0.000000 | # 3Com WebView |
| wrs_registry | 2340/tcp | 0.000076 | # wrs-registry | WRS Registry |
| wrs_registry | 2340/udp | 0.000330 | # WRS Registry |
| xiostatus | 2341/tcp | 0.000000 | # XIO Status |
| xiostatus | 2341/udp | 0.000000 | # XIO Status |
| manage-exec | 2342/tcp | 0.000000 | # Seagate Manage Exec |
| manage-exec | 2342/udp | 0.000330 | # Seagate Manage Exec |
| nati-logos | 2343/tcp | 0.000000 | # nati logos |
| nati-logos | 2343/udp | 0.001652 | # nati logos |
| fcmsys | 2344/tcp | 0.000000 | fcmsys 2344/tcp 0.000000 |
| fcmsys | 2344/udp | 0.000000 | fcmsys 2344/udp 0.000000 |
| dbm | 2345/tcp | 0.000000 | dbm 2345/tcp 0.000000 |
| dbm | 2345/udp | 0.001321 | dbm 2345/udp 0.001321 |
| redstorm_join | 2346/tcp | 0.000000 | # redstorm-join | Game Connection Port |
| redstorm_join | 2346/udp | 0.000000 | # Game Connection Port |
| redstorm_find | 2347/tcp | 0.000000 | # redstorm-find | Game Announcement and Location |
| redstorm_find | 2347/udp | 0.000000 | # Game Announcement and Location |
| redstorm_info | 2348/tcp | 0.000000 | # redstorm-info | Information to query for game status |
| redstorm_info | 2348/udp | 0.000000 | # Information to query for game status |
| redstorm_diag | 2349/tcp | 0.000000 | # redstorm-diag | Diagnostics Port |
| redstorm_diag | 2349/udp | 0.000000 | # Diagnostics Port |
| psbserver | 2350/tcp | 0.000000 | # Pharos Booking Server |
| psbserver | 2350/udp | 0.000000 | # Pharos Booking Server |
| psrserver | 2351/tcp | 0.000000 | psrserver 2351/tcp 0.000000 |
| psrserver | 2351/udp | 0.000000 | psrserver 2351/udp 0.000000 |
| pslserver | 2352/tcp | 0.000000 | pslserver 2352/tcp 0.000000 |
| pslserver | 2352/udp | 0.000330 | pslserver 2352/udp 0.000330 |
| pspserver | 2353/tcp | 0.000000 | pspserver 2353/tcp 0.000000 |
| pspserver | 2353/udp | 0.000000 | pspserver 2353/udp 0.000000 |
| psprserver | 2354/tcp | 0.000000 | psprserver 2354/tcp 0.000000 |
| psprserver | 2354/udp | 0.000000 | psprserver 2354/udp 0.000000 |
| psdbserver | 2355/tcp | 0.000000 | psdbserver 2355/tcp 0.000000 |
| psdbserver | 2355/udp | 0.000000 | psdbserver 2355/udp 0.000000 |
| gxtelmd | 2356/tcp | 0.000000 | # GXT License Managemant |
| gxtelmd | 2356/udp | 0.000000 | # GXT License Managemant |
| unihub-server | 2357/tcp | 0.000000 | # UniHub Server |
| unihub-server | 2357/udp | 0.000000 | # UniHub Server |
| futrix | 2358/tcp | 0.000000 | futrix 2358/tcp 0.000000 |
| futrix | 2358/udp | 0.000000 | # Futrix |
| flukeserver | 2359/tcp | 0.000000 | flukeserver 2359/tcp 0.000000 |
| flukeserver | 2359/udp | 0.000000 | # FlukeServer |
| nexstorindltd | 2360/tcp | 0.000000 | nexstorindltd 2360/tcp 0.000000 |
| nexstorindltd | 2360/udp | 0.000330 | # NexstorIndLtd |
| tl1 | 2361/tcp | 0.000000 | tl1 2361/tcp 0.000000 |
| tl1 | 2361/udp | 0.000000 | # TL1 |
| digiman | 2362/tcp | 0.000000 | digiman 2362/tcp 0.000000 |
| digiman | 2362/udp | 0.001321 | digiman 2362/udp 0.001321 |
| mediacntrlnfsd | 2363/tcp | 0.000000 | # Media Central NFSD |
| mediacntrlnfsd | 2363/udp | 0.000000 | # Media Central NFSD |
| oi-2000 | 2364/tcp | 0.000000 | oi-2000 2364/tcp 0.000000 |
| oi-2000 | 2364/udp | 0.000330 | # OI-2000 |
| dbref | 2365/tcp | 0.000000 | dbref 2365/tcp 0.000000 |
| dbref | 2365/udp | 0.000000 | dbref 2365/udp 0.000000 |
| qip-login | 2366/tcp | 0.000152 | qip-login 2366/tcp 0.000152 |
| qip-login | 2366/udp | 0.000000 | qip-login 2366/udp 0.000000 |
| service-ctrl | 2367/tcp | 0.000000 | # Service Control |
| service-ctrl | 2367/udp | 0.000000 | # Service Control |
| opentable | 2368/tcp | 0.000000 | opentable 2368/tcp 0.000000 |
| opentable | 2368/udp | 0.000661 | # OpenTable |
| l3-hbmon | 2370/tcp | 0.000000 | l3-hbmon 2370/tcp 0.000000 |
| l3-hbmon | 2370/udp | 0.000000 | # L3-HBMon |
| worldwire | 2371/tcp | 0.000076 | # rda | hp-rda | Compaq WorldWire Port | HP Remote Device Access | Remote Device Access |
| worldwire | 2371/udp | 0.000330 | # Compaq WorldWire Port |
| lanmessenger | 2372/tcp | 0.000076 | lanmessenger 2372/tcp 0.000076 |
| lanmessenger | 2372/udp | 0.000330 | # LanMessenger |
| remographlm | 2373/tcp | 0.000000 | # Remograph License Manager |
| hydra | 2374/tcp | 0.000000 | # Hydra RPC |
| docker | 2375/tcp | 0.000076 | # docker.com | Docker REST API (plain text) |
| docker | 2376/tcp | 0.000076 | # docker-s | docker.com | Docker REST API (ssl) |
| swarm | 2377/tcp | 0.000000 | # RPC interface for Docker Swarm |
| dali | 2378/tcp | 0.000000 | # DALI lighting control |
| etcd-client | 2379/tcp | 0.000000 | # etcd client communication |
| etcd-server | 2380/tcp | 0.000000 | # etcd server to server communication |
| compaq-https | 2381/tcp | 0.000380 | # Compaq HTTPS |
| compaq-https | 2381/udp | 0.000000 | # Compaq HTTPS |
| ms-olap3 | 2382/tcp | 0.000152 | # Microsoft OLAP |
| ms-olap3 | 2382/udp | 0.000661 | # Microsoft OLAP |
| ms-olap4 | 2383/tcp | 0.001369 | # MS OLAP 4 | Microsoft OLAP |
| ms-olap4 | 2383/udp | 0.000000 | # Microsoft OLAP |
| sd-request | 2384/tcp | 0.000000 | # sd-capacity | SD-CAPACITY |
| sd-capacity | 2384/udp | 0.000000 | # SD-CAPACITY |
| sd-data | 2385/tcp | 0.000000 | sd-data 2385/tcp 0.000000 |
| sd-data | 2385/udp | 0.000000 | # SD-DATA |
| virtualtape | 2386/tcp | 0.000000 | # Virtual Tape |
| virtualtape | 2386/udp | 0.000330 | # Virtual Tape |
| vsamredirector | 2387/tcp | 0.000000 | # VSAM Redirector |
| vsamredirector | 2387/udp | 0.000661 | # VSAM Redirector |
| mynahautostart | 2388/tcp | 0.000000 | # MYNAH AutoStart |
| mynahautostart | 2388/udp | 0.000000 | # MYNAH AutoStart |
| ovsessionmgr | 2389/tcp | 0.000000 | # OpenView Session Mgr |
| ovsessionmgr | 2389/udp | 0.000000 | # OpenView Session Mgr |
| rsmtp | 2390/tcp | 0.000000 | rsmtp 2390/tcp 0.000000 |
| rsmtp | 2390/udp | 0.000000 | # RSMTP |
| 3com-net-mgmt | 2391/tcp | 0.000076 | # 3COM Net Management |
| 3com-net-mgmt | 2391/udp | 0.000000 | # 3COM Net Management |
| tacticalauth | 2392/tcp | 0.000000 | # Tactical Auth |
| tacticalauth | 2392/udp | 0.000330 | # Tactical Auth |
| ms-olap1 | 2393/tcp | 0.000228 | # SQL Server Downlevel OLAP Client Support | MS OLAP 1 |
| ms-olap1 | 2393/udp | 0.000000 | # MS OLAP 1 |
| ms-olap2 | 2394/tcp | 0.000228 | # SQL Server Downlevel OLAP Client Support | MS OLAP 2 |
| ms-olap2 | 2394/udp | 0.000000 | # MS OLAP 2 |
| lan900_remote | 2395/tcp | 0.000000 | # lan900-remote | LAN900 Remote |
| lan900_remote | 2395/udp | 0.000330 | # LAN900 Remote |
| wusage | 2396/tcp | 0.000000 | wusage 2396/tcp 0.000000 |
| wusage | 2396/udp | 0.000000 | # Wusage |
| ncl | 2397/tcp | 0.000000 | ncl 2397/tcp 0.000000 |
| ncl | 2397/udp | 0.000000 | # NCL |
| orbiter | 2398/tcp | 0.000000 | orbiter 2398/tcp 0.000000 |
| orbiter | 2398/udp | 0.000661 | # Orbiter |
| fmpro-fdal | 2399/tcp | 0.000380 | # FileMaker, Inc. - Data Access Layer |
| fmpro-fdal | 2399/udp | 0.000000 | # FileMaker, Inc. - Data Access Layer |
| opequus-server | 2400/tcp | 0.000000 | # OpEquus Server |
| opequus-server | 2400/udp | 0.000000 | # OpEquus Server |
| cvspserver | 2401/tcp | 0.001480 | # CVS network server |
| cvspserver | 2401/udp | 0.000544 | # CVS network server |
| taskmaster2000 | 2402/tcp | 0.000000 | # TaskMaster 2000 Server |
| taskmaster2000 | 2402/udp | 0.000000 | # TaskMaster 2000 Server |
| taskmaster2000 | 2403/tcp | 0.000000 | # TaskMaster 2000 Web |
| taskmaster2000 | 2403/udp | 0.000000 | # TaskMaster 2000 Web |
| iec-104 | 2404/tcp | 0.000000 | # IEC 60870-5-104 process control over IP |
| iec-104 | 2404/udp | 0.000000 | # IEC 60870-5-104 process control over IP |
| trc-netpoll | 2405/tcp | 0.000000 | # TRC Netpoll |
| trc-netpoll | 2405/udp | 0.000000 | # TRC Netpoll |
| jediserver | 2406/tcp | 0.000000 | jediserver 2406/tcp 0.000000 |
| jediserver | 2406/udp | 0.000330 | # JediServer |
| orion | 2407/tcp | 0.000000 | orion 2407/tcp 0.000000 |
| orion | 2407/udp | 0.000000 | # Orion |
| optimanet | 2408/tcp | 0.000000 | # railgun-webaccl | CloudFlare Railgun Web Acceleration Protocol |
| optimanet | 2408/udp | 0.000000 | # OptimaNet |
| sns-protocol | 2409/tcp | 0.000000 | # SNS Protocol |
| sns-protocol | 2409/udp | 0.000000 | # SNS Protocol |
| vrts-registry | 2410/tcp | 0.000000 | # VRTS Registry |
| vrts-registry | 2410/udp | 0.000000 | # VRTS Registry |
| netwave-ap-mgmt | 2411/tcp | 0.000000 | # Netwave AP Management |
| netwave-ap-mgmt | 2411/udp | 0.000000 | # Netwave AP Management |
| cdn | 2412/tcp | 0.000000 | cdn 2412/tcp 0.000000 |
| cdn | 2412/udp | 0.000330 | # CDN |
| orion-rmi-reg | 2413/tcp | 0.000000 | orion-rmi-reg 2413/tcp 0.000000 |
| orion-rmi-reg | 2413/udp | 0.000000 | orion-rmi-reg 2413/udp 0.000000 |
| beeyond | 2414/tcp | 0.000000 | beeyond 2414/tcp 0.000000 |
| beeyond | 2414/udp | 0.000000 | # Beeyond |
| codima-rtp | 2415/tcp | 0.000000 | # Codima Remote Transaction Protocol |
| codima-rtp | 2415/udp | 0.000000 | # Codima Remote Transaction Protocol |
| rmtserver | 2416/tcp | 0.000000 | # RMT Server |
| rmtserver | 2416/udp | 0.000000 | # RMT Server |
| composit-server | 2417/tcp | 0.000000 | # Composit Server |
| composit-server | 2417/udp | 0.000330 | # Composit Server |
| cas | 2418/tcp | 0.000076 | cas 2418/tcp 0.000076 |
| cas | 2418/udp | 0.000330 | cas 2418/udp 0.000330 |
| attachmate-s2s | 2419/tcp | 0.000000 | # Attachmate S2S |
| attachmate-s2s | 2419/udp | 0.000000 | # Attachmate S2S |
| dslremote-mgmt | 2420/tcp | 0.000000 | # DSL Remote Management |
| dslremote-mgmt | 2420/udp | 0.000000 | # DSL Remote Management |
| g-talk | 2421/tcp | 0.000000 | g-talk 2421/tcp 0.000000 |
| g-talk | 2421/udp | 0.000000 | # G-Talk |
| crmsbits | 2422/tcp | 0.000000 | crmsbits 2422/tcp 0.000000 |
| crmsbits | 2422/udp | 0.000000 | # CRMSBITS |
| rnrp | 2423/tcp | 0.000000 | rnrp 2423/tcp 0.000000 |
| rnrp | 2423/udp | 0.000000 | # RNRP |
| kofax-svr | 2424/tcp | 0.000000 | kofax-svr 2424/tcp 0.000000 |
| kofax-svr | 2424/udp | 0.000000 | # KOFAX-SVR |
| fjitsuappmgr | 2425/tcp | 0.000076 | # Fujitsu App Manager |
| fjitsuappmgr | 2425/udp | 0.000000 | # Fujitsu App Manager |
| vcmp | 2426/tcp | 0.000000 | # VeloCloud MultiPath Protocol |
| mgcp-gateway | 2427/sctp | 0.000000 | # Media Gateway Control Protocol Gateway |
| mgcp-gateway | 2427/tcp | 0.000000 | # Media Gateway Control Protocol Gateway |
| mgcp-gateway | 2427/udp | 0.000000 | # Media Gateway Control Protocol Gateway |
| ott | 2428/tcp | 0.000000 | # One Way Trip Time |
| ott | 2428/udp | 0.000000 | # One Way Trip Time |
| ft-role | 2429/tcp | 0.000000 | ft-role 2429/tcp 0.000000 |
| ft-role | 2429/udp | 0.000330 | # FT-ROLE |
| venus | 2430/tcp | 0.000050 | venus 2430/tcp 0.000050 |
| venus | 2430/udp | 0.000478 | venus 2430/udp 0.000478 |
| venus-se | 2431/tcp | 0.000025 | venus-se 2431/tcp 0.000025 |
| venus-se | 2431/udp | 0.000840 | venus-se 2431/udp 0.000840 |
| codasrv | 2432/tcp | 0.000025 | codasrv 2432/tcp 0.000025 |
| codasrv | 2432/udp | 0.000560 | codasrv 2432/udp 0.000560 |
| codasrv-se | 2433/tcp | 0.000125 | codasrv-se 2433/tcp 0.000125 |
| codasrv-se | 2433/udp | 0.000395 | codasrv-se 2433/udp 0.000395 |
| pxc-epmap | 2434/tcp | 0.000000 | pxc-epmap 2434/tcp 0.000000 |
| pxc-epmap | 2434/udp | 0.000000 | pxc-epmap 2434/udp 0.000000 |
| optilogic | 2435/tcp | 0.000076 | optilogic 2435/tcp 0.000076 |
| optilogic | 2435/udp | 0.000000 | # OptiLogic |
| topx | 2436/tcp | 0.000076 | # TOP/X |
| topx | 2436/udp | 0.000000 | # TOP/X |
| unicontrol | 2437/tcp | 0.000000 | unicontrol 2437/tcp 0.000000 |
| unicontrol | 2437/udp | 0.000000 | # UniControl |
| msp | 2438/tcp | 0.000076 | msp 2438/tcp 0.000076 |
| msp | 2438/udp | 0.000000 | # MSP |
| sybasedbsynch | 2439/tcp | 0.000076 | sybasedbsynch 2439/tcp 0.000076 |
| sybasedbsynch | 2439/udp | 0.000000 | # SybaseDBSynch |
| spearway | 2440/tcp | 0.000000 | # Spearway Lockers |
| spearway | 2440/udp | 0.000000 | # Spearway Lockers |
| pvsw-inet | 2441/tcp | 0.000000 | # Pervasive I*net Data Server |
| pvsw-inet | 2441/udp | 0.000000 | # Pervasive I*net Data Server |
| netangel | 2442/tcp | 0.000000 | netangel 2442/tcp 0.000000 |
| netangel | 2442/udp | 0.000000 | # Netangel |
| powerclientcsf | 2443/tcp | 0.000000 | # PowerClient Central Storage Facility |
| powerclientcsf | 2443/udp | 0.000000 | # PowerClient Central Storage Facility |
| btpp2sectrans | 2444/tcp | 0.000000 | # BT PP2 Sectrans |
| btpp2sectrans | 2444/udp | 0.000000 | # BT PP2 Sectrans |
| dtn1 | 2445/tcp | 0.000000 | dtn1 2445/tcp 0.000000 |
| dtn1 | 2445/udp | 0.000330 | # DTN1 |
| bues_service | 2446/tcp | 0.000000 | # bues-service |
| bues_service | 2446/udp | 0.000000 | bues_service 2446/udp 0.000000 |
| ovwdb | 2447/tcp | 0.000000 | # OpenView NNM daemon |
| ovwdb | 2447/udp | 0.000000 | # OpenView NNM daemon |
| hpppssvr | 2448/tcp | 0.000000 | # hpppsvr |
| hpppssvr | 2448/udp | 0.000000 | # hpppsvr |
| ratl | 2449/tcp | 0.000076 | ratl 2449/tcp 0.000076 |
| ratl | 2449/udp | 0.000000 | # RATL |
| netadmin | 2450/tcp | 0.000000 | netadmin 2450/tcp 0.000000 |
| netadmin | 2450/udp | 0.000000 | netadmin 2450/udp 0.000000 |
| netchat | 2451/tcp | 0.000000 | netchat 2451/tcp 0.000000 |
| netchat | 2451/udp | 0.000000 | netchat 2451/udp 0.000000 |
| snifferclient | 2452/tcp | 0.000000 | snifferclient 2452/tcp 0.000000 |
| snifferclient | 2452/udp | 0.000000 | # SnifferClient |
| madge-ltd | 2453/tcp | 0.000000 | # madge ltd |
| madge-ltd | 2453/udp | 0.000000 | # madge ltd |
| indx-dds | 2454/tcp | 0.000000 | indx-dds 2454/tcp 0.000000 |
| indx-dds | 2454/udp | 0.000000 | # IndX-DDS |
| wago-io-system | 2455/tcp | 0.000000 | wago-io-system 2455/tcp 0.000000 |
| wago-io-system | 2455/udp | 0.000000 | # WAGO-IO-SYSTEM |
| altav-remmgt | 2456/tcp | 0.000076 | altav-remmgt 2456/tcp 0.000076 |
| altav-remmgt | 2456/udp | 0.000000 | altav-remmgt 2456/udp 0.000000 |
| rapido-ip | 2457/tcp | 0.000000 | # Rapido_IP |
| rapido-ip | 2457/udp | 0.000330 | # Rapido_IP |
| griffin | 2458/tcp | 0.000000 | griffin 2458/tcp 0.000000 |
| griffin | 2458/udp | 0.000000 | griffin 2458/udp 0.000000 |
| community | 2459/tcp | 0.000000 | # xrpl |
| community | 2459/udp | 0.000000 | # Community |
| ms-theater | 2460/tcp | 0.000000 | ms-theater 2460/tcp 0.000000 |
| ms-theater | 2460/udp | 0.000000 | ms-theater 2460/udp 0.000000 |
| qadmifoper | 2461/tcp | 0.000000 | qadmifoper 2461/tcp 0.000000 |
| qadmifoper | 2461/udp | 0.000000 | qadmifoper 2461/udp 0.000000 |
| qadmifevent | 2462/tcp | 0.000000 | qadmifevent 2462/tcp 0.000000 |
| qadmifevent | 2462/udp | 0.000000 | qadmifevent 2462/udp 0.000000 |
| lsi-raid-mgmt | 2463/tcp | 0.000076 | # LSI RAID Management |
| lsi-raid-mgmt | 2463/udp | 0.000330 | # LSI RAID Management |
| direcpc-si | 2464/tcp | 0.000000 | # DirecPC SI |
| direcpc-si | 2464/udp | 0.000000 | # DirecPC SI |
| lbm | 2465/tcp | 0.000000 | # Load Balance Management |
| lbm | 2465/udp | 0.000000 | # Load Balance Management |
| lbf | 2466/tcp | 0.000000 | # Load Balance Forwarding |
| lbf | 2466/udp | 0.000000 | # Load Balance Forwarding |
| high-criteria | 2467/tcp | 0.000000 | # High Criteria |
| high-criteria | 2467/udp | 0.000000 | # High Criteria |
| qip-msgd | 2468/tcp | 0.000000 | # qip_msgd |
| qip-msgd | 2468/udp | 0.000000 | # qip_msgd |
| mti-tcs-comm | 2469/tcp | 0.000000 | mti-tcs-comm 2469/tcp 0.000000 |
| mti-tcs-comm | 2469/udp | 0.000000 | # MTI-TCS-COMM |
| taskman-port | 2470/tcp | 0.000000 | # taskman port |
| taskman-port | 2470/udp | 0.000000 | # taskman port |
| seaodbc | 2471/tcp | 0.000000 | seaodbc 2471/tcp 0.000000 |
| seaodbc | 2471/udp | 0.000000 | # SeaODBC |
| c3 | 2472/tcp | 0.000076 | c3 2472/tcp 0.000076 |
| c3 | 2472/udp | 0.000000 | # C3 |
| aker-cdp | 2473/tcp | 0.000000 | aker-cdp 2473/tcp 0.000000 |
| aker-cdp | 2473/udp | 0.000000 | # Aker-cdp |
| vitalanalysis | 2474/tcp | 0.000000 | # Vital Analysis |
| vitalanalysis | 2474/udp | 0.000330 | # Vital Analysis |
| ace-server | 2475/tcp | 0.000000 | # ACE Server |
| ace-server | 2475/udp | 0.000000 | # ACE Server |
| ace-svr-prop | 2476/tcp | 0.000000 | # ACE Server Propagation |
| ace-svr-prop | 2476/udp | 0.000000 | # ACE Server Propagation |
| ssm-cvs | 2477/tcp | 0.000000 | # SecurSight Certificate Valifation Service |
| ssm-cvs | 2477/udp | 0.000000 | # SecurSight Certificate Valifation Service |
| ssm-cssps | 2478/tcp | 0.000000 | # SecurSight Authentication Server (SSL) |
| ssm-cssps | 2478/udp | 0.000000 | # SecurSight Authentication Server (SSL) |
| ssm-els | 2479/tcp | 0.000000 | # SecurSight Event Logging Server (SSL) |
| ssm-els | 2479/udp | 0.000000 | # SecurSight Event Logging Server (SSL) |
| powerexchange | 2480/tcp | 0.000000 | # Informatica PowerExchange Listener |
| powerexchange | 2480/udp | 0.000000 | # Informatica PowerExchange Listener |
| giop | 2481/tcp | 0.000000 | # Oracle GIOP |
| giop | 2481/udp | 0.000000 | # Oracle GIOP |
| giop-ssl | 2482/tcp | 0.000000 | # Oracle GIOP SSL |
| giop-ssl | 2482/udp | 0.000000 | # Oracle GIOP SSL |
| ttc | 2483/tcp | 0.000000 | # Oracle TTC |
| ttc | 2483/udp | 0.000000 | # Oracle TTC |
| ttc-ssl | 2484/tcp | 0.000000 | # Oracle TTC SSL |
| ttc-ssl | 2484/udp | 0.000000 | # Oracle TTC SSL |
| netobjects1 | 2485/tcp | 0.000000 | # Net Objects1 |
| netobjects1 | 2485/udp | 0.000000 | # Net Objects1 |
| netobjects2 | 2486/tcp | 0.000000 | # Net Objects2 |
| netobjects2 | 2486/udp | 0.000000 | # Net Objects2 |
| pns | 2487/tcp | 0.000000 | # Policy Notice Service |
| pns | 2487/udp | 0.000330 | # Policy Notice Service |
| moy-corp | 2488/tcp | 0.000000 | # Moy Corporation |
| moy-corp | 2488/udp | 0.000000 | # Moy Corporation |
| tsilb | 2489/tcp | 0.000000 | tsilb 2489/tcp 0.000000 |
| tsilb | 2489/udp | 0.000330 | # TSILB |
| qip-qdhcp | 2490/tcp | 0.000000 | # qip_qdhcp |
| qip-qdhcp | 2490/udp | 0.000000 | # qip_qdhcp |
| conclave-cpp | 2491/tcp | 0.000000 | # Conclave CPP |
| conclave-cpp | 2491/udp | 0.000000 | # Conclave CPP |
| groove | 2492/tcp | 0.000380 | groove 2492/tcp 0.000380 |
| groove | 2492/udp | 0.000330 | # GROOVE |
| talarian-mqs | 2493/tcp | 0.000000 | # Talarian MQS |
| talarian-mqs | 2493/udp | 0.000000 | # Talarian MQS |
| bmc-ar | 2494/tcp | 0.000000 | # BMC AR |
| bmc-ar | 2494/udp | 0.000330 | # BMC AR |
| fast-rem-serv | 2495/tcp | 0.000000 | # Fast Remote Services |
| fast-rem-serv | 2495/udp | 0.000000 | # Fast Remote Services |
| dirgis | 2496/tcp | 0.000000 | dirgis 2496/tcp 0.000000 |
| dirgis | 2496/udp | 0.000661 | # DIRGIS |
| quaddb | 2497/tcp | 0.000000 | # Quad DB |
| quaddb | 2497/udp | 0.000000 | # Quad DB |
| odn-castraq | 2498/tcp | 0.000000 | odn-castraq 2498/tcp 0.000000 |
| odn-castraq | 2498/udp | 0.000000 | # ODN-CasTraq |
| unicontrol | 2499/tcp | 0.000000 | unicontrol 2499/tcp 0.000000 |
| unicontrol | 2499/udp | 0.000000 | # UniControl |
| rtsserv | 2500/tcp | 0.000464 | # Resource Tracking system server |
| rtsserv | 2500/udp | 0.000511 | # Resource Tracking system server |
| rtsclient | 2501/tcp | 0.000151 | # Resource Tracking system client |
| rtsclient | 2501/udp | 0.000461 | # Resource Tracking system client |
| kentrox-prot | 2502/tcp | 0.000000 | # Kentrox Protocol |
| kentrox-prot | 2502/udp | 0.000000 | # Kentrox Protocol |
| nms-dpnss | 2503/tcp | 0.000000 | nms-dpnss 2503/tcp 0.000000 |
| nms-dpnss | 2503/udp | 0.000330 | # NMS-DPNSS |
| wlbs | 2504/tcp | 0.000000 | wlbs 2504/tcp 0.000000 |
| wlbs | 2504/udp | 0.000000 | # WLBS |
| ppcontrol | 2505/tcp | 0.000076 | # PowerPlay Control |
| ppcontrol | 2505/udp | 0.000330 | # PowerPlay Control |
| jbroker | 2506/tcp | 0.000000 | jbroker 2506/tcp 0.000000 |
| jbroker | 2506/udp | 0.000000 | jbroker 2506/udp 0.000000 |
| spock | 2507/tcp | 0.000000 | spock 2507/tcp 0.000000 |
| spock | 2507/udp | 0.000000 | spock 2507/udp 0.000000 |
| jdatastore | 2508/tcp | 0.000000 | jdatastore 2508/tcp 0.000000 |
| jdatastore | 2508/udp | 0.000000 | # JDataStore |
| fjmpss | 2509/tcp | 0.000000 | fjmpss 2509/tcp 0.000000 |
| fjmpss | 2509/udp | 0.000330 | fjmpss 2509/udp 0.000330 |
| fjappmgrbulk | 2510/tcp | 0.000000 | fjappmgrbulk 2510/tcp 0.000000 |
| fjappmgrbulk | 2510/udp | 0.000330 | fjappmgrbulk 2510/udp 0.000330 |
| metastorm | 2511/tcp | 0.000000 | metastorm 2511/tcp 0.000000 |
| metastorm | 2511/udp | 0.000000 | # Metastorm |
| citrixima | 2512/tcp | 0.000000 | # Citrix IMA |
| citrixima | 2512/udp | 0.000330 | # Citrix IMA |
| citrixadmin | 2513/tcp | 0.000000 | # Citrix ADMIN |
| citrixadmin | 2513/udp | 0.000000 | # Citrix ADMIN |
| facsys-ntp | 2514/tcp | 0.000000 | # Facsys NTP |
| facsys-ntp | 2514/udp | 0.000000 | # Facsys NTP |
| facsys-router | 2515/tcp | 0.000000 | # Facsys Router |
| facsys-router | 2515/udp | 0.000330 | # Facsys Router |
| maincontrol | 2516/tcp | 0.000000 | # Main Control |
| maincontrol | 2516/udp | 0.000000 | # Main Control |
| call-sig-trans | 2517/tcp | 0.000000 | # H.323 Annex E call signaling transport | H.323 Annex E Call Control Signalling Transport |
| call-sig-trans | 2517/udp | 0.000661 | # H.323 Annex E call signaling transport |
| willy | 2518/tcp | 0.000000 | willy 2518/tcp 0.000000 |
| willy | 2518/udp | 0.000000 | # Willy |
| globmsgsvc | 2519/tcp | 0.000000 | globmsgsvc 2519/tcp 0.000000 |
| globmsgsvc | 2519/udp | 0.000000 | globmsgsvc 2519/udp 0.000000 |
| pvsw | 2520/tcp | 0.000000 | # Pervasive Listener |
| pvsw | 2520/udp | 0.000000 | # Pervasive Listener |
| adaptecmgr | 2521/tcp | 0.000000 | # Adaptec Manager |
| adaptecmgr | 2521/udp | 0.000000 | # Adaptec Manager |
| windb | 2522/tcp | 0.000304 | windb 2522/tcp 0.000304 |
| windb | 2522/udp | 0.000000 | # WinDb |
| qke-llc-v3 | 2523/tcp | 0.000000 | # Qke LLC V.3 |
| qke-llc-v3 | 2523/udp | 0.000000 | # Qke LLC V.3 |
| optiwave-lm | 2524/tcp | 0.000000 | # Optiwave License Management |
| optiwave-lm | 2524/udp | 0.000330 | # Optiwave License Management |
| ms-v-worlds | 2525/tcp | 0.000456 | # MS V-Worlds |
| ms-v-worlds | 2525/udp | 0.000000 | # MS V-Worlds |
| ema-sent-lm | 2526/tcp | 0.000000 | # EMA License Manager |
| ema-sent-lm | 2526/udp | 0.000000 | # EMA License Manager |
| iqserver | 2527/tcp | 0.000000 | # IQ Server |
| iqserver | 2527/udp | 0.000330 | # IQ Server |
| ncr_ccl | 2528/tcp | 0.000000 | # ncr-ccl | NCR CCL |
| ncr_ccl | 2528/udp | 0.000661 | # NCR CCL |
| utsftp | 2529/tcp | 0.000000 | # UTS FTP |
| utsftp | 2529/udp | 0.000000 | # UTS FTP |
| vrcommerce | 2530/tcp | 0.000000 | # VR Commerce |
| vrcommerce | 2530/udp | 0.000000 | # VR Commerce |
| ito-e-gui | 2531/tcp | 0.000076 | # ITO-E GUI |
| ito-e-gui | 2531/udp | 0.000000 | # ITO-E GUI |
| ovtopmd | 2532/tcp | 0.000076 | ovtopmd 2532/tcp 0.000076 |
| ovtopmd | 2532/udp | 0.000000 | # OVTOPMD |
| snifferserver | 2533/tcp | 0.000000 | snifferserver 2533/tcp 0.000000 |
| snifferserver | 2533/udp | 0.000330 | # SnifferServer |
| combox-web-acc | 2534/tcp | 0.000000 | # Combox Web Access |
| combox-web-acc | 2534/udp | 0.000000 | # Combox Web Access |
| madcap | 2535/tcp | 0.000000 | madcap 2535/tcp 0.000000 |
| madcap | 2535/udp | 0.000000 | # MADCAP |
| btpp2audctr1 | 2536/tcp | 0.000000 | btpp2audctr1 2536/tcp 0.000000 |
| btpp2audctr1 | 2536/udp | 0.000000 | btpp2audctr1 2536/udp 0.000000 |
| upgrade | 2537/tcp | 0.000000 | # Upgrade Protocol |
| upgrade | 2537/udp | 0.000000 | # Upgrade Protocol |
| vnwk-prapi | 2538/tcp | 0.000000 | vnwk-prapi 2538/tcp 0.000000 |
| vnwk-prapi | 2538/udp | 0.000330 | vnwk-prapi 2538/udp 0.000330 |
| vsiadmin | 2539/tcp | 0.000000 | # VSI Admin |
| vsiadmin | 2539/udp | 0.000330 | # VSI Admin |
| lonworks | 2540/tcp | 0.000000 | lonworks 2540/tcp 0.000000 |
| lonworks | 2540/udp | 0.000000 | # LonWorks |
| lonworks2 | 2541/tcp | 0.000000 | lonworks2 2541/tcp 0.000000 |
| lonworks2 | 2541/udp | 0.000000 | # LonWorks2 |
| udrawgraph | 2542/tcp | 0.000000 | # uDraw(Graph) |
| udrawgraph | 2542/udp | 0.000330 | # uDraw(Graph) |
| reftek | 2543/tcp | 0.000000 | reftek 2543/tcp 0.000000 |
| reftek | 2543/udp | 0.000330 | # REFTEK |
| novell-zen | 2544/tcp | 0.000000 | # Management Daemon Refresh |
| novell-zen | 2544/udp | 0.000000 | # Management Daemon Refresh |
| sis-emt | 2545/tcp | 0.000000 | sis-emt 2545/tcp 0.000000 |
| sis-emt | 2545/udp | 0.000000 | sis-emt 2545/udp 0.000000 |
| vytalvaultbrtp | 2546/tcp | 0.000000 | vytalvaultbrtp 2546/tcp 0.000000 |
| vytalvaultbrtp | 2546/udp | 0.000330 | vytalvaultbrtp 2546/udp 0.000330 |
| vytalvaultvsmp | 2547/tcp | 0.000000 | vytalvaultvsmp 2547/tcp 0.000000 |
| vytalvaultvsmp | 2547/udp | 0.000000 | vytalvaultvsmp 2547/udp 0.000000 |
| vytalvaultpipe | 2548/tcp | 0.000000 | vytalvaultpipe 2548/tcp 0.000000 |
| vytalvaultpipe | 2548/udp | 0.000000 | vytalvaultpipe 2548/udp 0.000000 |
| ipass | 2549/tcp | 0.000000 | ipass 2549/tcp 0.000000 |
| ipass | 2549/udp | 0.000000 | # IPASS |
| ads | 2550/tcp | 0.000076 | ads 2550/tcp 0.000076 |
| ads | 2550/udp | 0.000000 | # ADS |
| isg-uda-server | 2551/tcp | 0.000076 | # ISG UDA Server |
| isg-uda-server | 2551/udp | 0.000000 | # ISG UDA Server |
| call-logging | 2552/tcp | 0.000000 | # Call Logging |
| call-logging | 2552/udp | 0.000330 | # Call Logging |
| efidiningport | 2553/tcp | 0.000000 | efidiningport 2553/tcp 0.000000 |
| efidiningport | 2553/udp | 0.000000 | efidiningport 2553/udp 0.000000 |
| vcnet-link-v10 | 2554/tcp | 0.000000 | # VCnet-Link v10 |
| vcnet-link-v10 | 2554/udp | 0.000000 | # VCnet-Link v10 |
| compaq-wcp | 2555/tcp | 0.000000 | # Compaq WCP |
| compaq-wcp | 2555/udp | 0.000330 | # Compaq WCP |
| nicetec-nmsvc | 2556/tcp | 0.000000 | nicetec-nmsvc 2556/tcp 0.000000 |
| nicetec-nmsvc | 2556/udp | 0.000000 | nicetec-nmsvc 2556/udp 0.000000 |
| nicetec-mgmt | 2557/tcp | 0.000152 | nicetec-mgmt 2557/tcp 0.000152 |
| nicetec-mgmt | 2557/udp | 0.000000 | nicetec-mgmt 2557/udp 0.000000 |
| pclemultimedia | 2558/tcp | 0.000076 | # PCLE Multi Media |
| pclemultimedia | 2558/udp | 0.000000 | # PCLE Multi Media |
| lstp | 2559/tcp | 0.000000 | lstp 2559/tcp 0.000000 |
| lstp | 2559/udp | 0.000330 | # LSTP |
| labrat | 2560/tcp | 0.000000 | labrat 2560/tcp 0.000000 |
| labrat | 2560/udp | 0.000000 | labrat 2560/udp 0.000000 |
| mosaixcc | 2561/tcp | 0.000000 | mosaixcc 2561/tcp 0.000000 |
| mosaixcc | 2561/udp | 0.000000 | # MosaixCC |
| delibo | 2562/tcp | 0.000000 | delibo 2562/tcp 0.000000 |
| delibo | 2562/udp | 0.000000 | # Delibo |
| cti-redwood | 2563/tcp | 0.000000 | # CTI Redwood |
| cti-redwood | 2563/udp | 0.000000 | # CTI Redwood |
| hp-3000-telnet | 2564/tcp | 0.000013 | # HP 3000 NS/VT block mode telnet |
| coord-svr | 2565/tcp | 0.000000 | # Coordinator Server |
| coord-svr | 2565/udp | 0.000000 | # Coordinator Server |
| pcs-pcw | 2566/tcp | 0.000000 | pcs-pcw 2566/tcp 0.000000 |
| pcs-pcw | 2566/udp | 0.000000 | pcs-pcw 2566/udp 0.000000 |
| clp | 2567/tcp | 0.000076 | # Cisco Line Protocol |
| clp | 2567/udp | 0.000000 | # Cisco Line Protocol |
| spamtrap | 2568/tcp | 0.000000 | # SPAM TRAP |
| spamtrap | 2568/udp | 0.000000 | # SPAM TRAP |
| sonuscallsig | 2569/tcp | 0.000000 | # Sonus Call Signal |
| sonuscallsig | 2569/udp | 0.000000 | # Sonus Call Signal |
| hs-port | 2570/tcp | 0.000000 | # HS Port |
| hs-port | 2570/udp | 0.000000 | # HS Port |
| cecsvc | 2571/tcp | 0.000000 | cecsvc 2571/tcp 0.000000 |
| cecsvc | 2571/udp | 0.000000 | # CECSVC |
| ibp | 2572/tcp | 0.000000 | ibp 2572/tcp 0.000000 |
| ibp | 2572/udp | 0.000000 | # IBP |
| trustestablish | 2573/tcp | 0.000000 | # Trust Establish |
| trustestablish | 2573/udp | 0.000000 | # Trust Establish |
| blockade-bpsp | 2574/tcp | 0.000000 | # Blockade BPSP |
| blockade-bpsp | 2574/udp | 0.000000 | # Blockade BPSP |
| hl7 | 2575/tcp | 0.000000 | hl7 2575/tcp 0.000000 |
| hl7 | 2575/udp | 0.000000 | # HL7 |
| tclprodebugger | 2576/tcp | 0.000000 | # TCL Pro Debugger |
| tclprodebugger | 2576/udp | 0.000000 | # TCL Pro Debugger |
| scipticslsrvr | 2577/tcp | 0.000000 | # Scriptics Lsrvr |
| scipticslsrvr | 2577/udp | 0.000000 | # Scriptics Lsrvr |
| rvs-isdn-dcp | 2578/tcp | 0.000000 | # RVS ISDN DCP |
| rvs-isdn-dcp | 2578/udp | 0.000000 | # RVS ISDN DCP |
| mpfoncl | 2579/tcp | 0.000000 | mpfoncl 2579/tcp 0.000000 |
| mpfoncl | 2579/udp | 0.000000 | mpfoncl 2579/udp 0.000000 |
| tributary | 2580/tcp | 0.000076 | tributary 2580/tcp 0.000076 |
| tributary | 2580/udp | 0.000000 | # Tributary |
| argis-te | 2581/tcp | 0.000000 | # ARGIS TE |
| argis-te | 2581/udp | 0.000000 | # ARGIS TE |
| argis-ds | 2582/tcp | 0.000000 | # ARGIS DS |
| argis-ds | 2582/udp | 0.000330 | # ARGIS DS |
| mon | 2583/tcp | 0.000076 | mon 2583/tcp 0.000076 |
| mon | 2583/udp | 0.000000 | # MON |
| cyaserv | 2584/tcp | 0.000076 | cyaserv 2584/tcp 0.000076 |
| cyaserv | 2584/udp | 0.000000 | cyaserv 2584/udp 0.000000 |
| netx-server | 2585/tcp | 0.000000 | # NETX Server |
| netx-server | 2585/udp | 0.000000 | # NETX Server |
| netx-agent | 2586/tcp | 0.000000 | # NETX Agent |
| netx-agent | 2586/udp | 0.000000 | # NETX Agent |
| masc | 2587/tcp | 0.000000 | masc 2587/tcp 0.000000 |
| masc | 2587/udp | 0.000000 | # MASC |
| privilege | 2588/tcp | 0.000000 | privilege 2588/tcp 0.000000 |
| privilege | 2588/udp | 0.000000 | # Privilege |
| quartus-tcl | 2589/tcp | 0.000000 | # quartus tcl |
| quartus-tcl | 2589/udp | 0.000330 | # quartus tcl |
| idotdist | 2590/tcp | 0.000000 | idotdist 2590/tcp 0.000000 |
| idotdist | 2590/udp | 0.000000 | idotdist 2590/udp 0.000000 |
| maytagshuffle | 2591/tcp | 0.000000 | # Maytag Shuffle |
| maytagshuffle | 2591/udp | 0.000000 | # Maytag Shuffle |
| netrek | 2592/tcp | 0.000000 | netrek 2592/tcp 0.000000 |
| netrek | 2592/udp | 0.000330 | netrek 2592/udp 0.000330 |
| mns-mail | 2593/tcp | 0.000000 | # MNS Mail Notice Service |
| mns-mail | 2593/udp | 0.000000 | # MNS Mail Notice Service |
| dts | 2594/tcp | 0.000000 | # Data Base Server |
| dts | 2594/udp | 0.000000 | # Data Base Server |
| worldfusion1 | 2595/tcp | 0.000000 | # World Fusion 1 |
| worldfusion1 | 2595/udp | 0.000000 | # World Fusion 1 |
| worldfusion2 | 2596/tcp | 0.000000 | # World Fusion 2 |
| worldfusion2 | 2596/udp | 0.000000 | # World Fusion 2 |
| homesteadglory | 2597/tcp | 0.000000 | # Homestead Glory |
| homesteadglory | 2597/udp | 0.000000 | # Homestead Glory |
| citriximaclient | 2598/tcp | 0.000076 | # Citrix MA Client |
| citriximaclient | 2598/udp | 0.000000 | # Citrix MA Client |
| snapd | 2599/tcp | 0.000000 | # Snap Discovery |
| snapd | 2599/udp | 0.000000 | # Snap Discovery |
| zebrasrv | 2600/tcp | 0.000088 | # hpstgmgr | zebra service | HPSTGMGR |
| hpstgmgr | 2600/udp | 0.000330 | # HPSTGMGR |
| zebra | 2601/tcp | 0.002032 | # discp-client | zebra vty | discp client |
| discp-client | 2601/udp | 0.000000 | # discp client |
| ripd | 2602/tcp | 0.000790 | # discp-server | RIPd vty | discp server |
| discp-server | 2602/udp | 0.000000 | # discp server |
| ripngd | 2603/tcp | 0.000000 | # servicemeter | RIPngd vty | Service Meter |
| servicemeter | 2603/udp | 0.000330 | # Service Meter |
| ospfd | 2604/tcp | 0.000765 | # nsc-ccs | OSPFd vty | NSC CCS |
| nsc-ccs | 2604/udp | 0.000000 | # NSC CCS |
| bgpd | 2605/tcp | 0.000514 | # nsc-posa | BGPd vty | NSC POSA |
| nsc-posa | 2605/udp | 0.000000 | # NSC POSA |
| netmon | 2606/tcp | 0.000076 | # Dell Netmon |
| netmon | 2606/udp | 0.000000 | # Dell Netmon |
| connection | 2607/tcp | 0.000380 | # Dell Connection |
| connection | 2607/udp | 0.000000 | # Dell Connection |
| wag-service | 2608/tcp | 0.000228 | # Wag Service |
| wag-service | 2608/udp | 0.000000 | # Wag Service |
| system-monitor | 2609/tcp | 0.000000 | # System Monitor |
| system-monitor | 2609/udp | 0.000000 | # System Monitor |
| versa-tek | 2610/tcp | 0.000000 | # VersaTek |
| versa-tek | 2610/udp | 0.000000 | # VersaTek |
| lionhead | 2611/tcp | 0.000000 | lionhead 2611/tcp 0.000000 |
| lionhead | 2611/udp | 0.000000 | # LIONHEAD |
| qpasa-agent | 2612/tcp | 0.000000 | # Qpasa Agent |
| qpasa-agent | 2612/udp | 0.000330 | # Qpasa Agent |
| smntubootstrap | 2613/tcp | 0.000000 | smntubootstrap 2613/tcp 0.000000 |
| smntubootstrap | 2613/udp | 0.000330 | # SMNTUBootstrap |
| neveroffline | 2614/tcp | 0.000000 | # Never Offline |
| neveroffline | 2614/udp | 0.000000 | # Never Offline |
| firepower | 2615/tcp | 0.000000 | firepower 2615/tcp 0.000000 |
| firepower | 2615/udp | 0.000330 | firepower 2615/udp 0.000330 |
| appswitch-emp | 2616/tcp | 0.000000 | appswitch-emp 2616/tcp 0.000000 |
| appswitch-emp | 2616/udp | 0.000000 | appswitch-emp 2616/udp 0.000000 |
| cmadmin | 2617/tcp | 0.000000 | # Clinical Context Managers |
| cmadmin | 2617/udp | 0.000000 | # Clinical Context Managers |
| priority-e-com | 2618/tcp | 0.000000 | # Priority E-Com |
| priority-e-com | 2618/udp | 0.000330 | # Priority E-Com |
| bruce | 2619/tcp | 0.000000 | bruce 2619/tcp 0.000000 |
| bruce | 2619/udp | 0.000000 | bruce 2619/udp 0.000000 |
| lpsrecommender | 2620/tcp | 0.000000 | lpsrecommender 2620/tcp 0.000000 |
| lpsrecommender | 2620/udp | 0.000000 | # LPSRecommender |
| miles-apart | 2621/tcp | 0.000000 | # Miles Apart Jukebox Server |
| miles-apart | 2621/udp | 0.000000 | # Miles Apart Jukebox Server |
| metricadbc | 2622/tcp | 0.000076 | metricadbc 2622/tcp 0.000076 |
| metricadbc | 2622/udp | 0.000000 | # MetricaDBC |
| lmdp | 2623/tcp | 0.000076 | lmdp 2623/tcp 0.000076 |
| lmdp | 2623/udp | 0.000000 | # LMDP |
| aria | 2624/tcp | 0.000000 | aria 2624/tcp 0.000000 |
| aria | 2624/udp | 0.000000 | # Aria |
| blwnkl-port | 2625/tcp | 0.000000 | # Blwnkl Port |
| blwnkl-port | 2625/udp | 0.000330 | # Blwnkl Port |
| gbjd816 | 2626/tcp | 0.000000 | gbjd816 2626/tcp 0.000000 |
| gbjd816 | 2626/udp | 0.000000 | gbjd816 2626/udp 0.000000 |
| webster | 2627/tcp | 0.000025 | # moshebeeri | Network dictionary | Moshe Beeri |
| webster | 2627/udp | 0.000692 | webster 2627/udp 0.000692 |
| dict | 2628/tcp | 0.000125 | # Dictionary service (RFC2229) |
| dict | 2628/udp | 0.000000 | # DICT |
| sitaraserver | 2629/tcp | 0.000000 | # Sitara Server |
| sitaraserver | 2629/udp | 0.000330 | # Sitara Server |
| sitaramgmt | 2630/tcp | 0.000000 | # Sitara Management |
| sitaramgmt | 2630/udp | 0.000000 | # Sitara Management |
| sitaradir | 2631/tcp | 0.000076 | # Sitara Dir |
| sitaradir | 2631/udp | 0.000000 | # Sitara Dir |
| irdg-post | 2632/tcp | 0.000000 | # IRdg Post |
| irdg-post | 2632/udp | 0.000000 | # IRdg Post |
| interintelli | 2633/tcp | 0.000000 | interintelli 2633/tcp 0.000000 |
| interintelli | 2633/udp | 0.000000 | # InterIntelli |
| pk-electronics | 2634/tcp | 0.000000 | # PK Electronics |
| pk-electronics | 2634/udp | 0.000330 | # PK Electronics |
| backburner | 2635/tcp | 0.000000 | # Back Burner |
| backburner | 2635/udp | 0.000330 | # Back Burner |
| solve | 2636/tcp | 0.000000 | solve 2636/tcp 0.000000 |
| solve | 2636/udp | 0.000000 | # Solve |
| imdocsvc | 2637/tcp | 0.000000 | # Import Document Service |
| imdocsvc | 2637/udp | 0.000000 | # Import Document Service |
| sybase | 2638/tcp | 0.000251 | # sybaseanywhere | Sybase database | Sybase Anywhere |
| sybaseanywhere | 2638/udp | 0.000330 | # Sybase Anywhere |
| aminet | 2639/tcp | 0.000000 | aminet 2639/tcp 0.000000 |
| aminet | 2639/udp | 0.000000 | # AMInet |
| sai_sentlm | 2640/tcp | 0.000000 | # ami-control | Sabbagh Associates Licence Manager | Alcorn McBride Inc protocol used for device control |
| sai_sentlm | 2640/udp | 0.000000 | # Sabbagh Associates Licence Manager |
| hdl-srv | 2641/tcp | 0.000000 | # HDL Server |
| hdl-srv | 2641/udp | 0.000330 | # HDL Server |
| tragic | 2642/tcp | 0.000000 | tragic 2642/tcp 0.000000 |
| tragic | 2642/udp | 0.000000 | # Tragic |
| gte-samp | 2643/tcp | 0.000000 | gte-samp 2643/tcp 0.000000 |
| gte-samp | 2643/udp | 0.000000 | # GTE-SAMP |
| travsoft-ipx-t | 2644/tcp | 0.000076 | # Travsoft IPX Tunnel |
| travsoft-ipx-t | 2644/udp | 0.000000 | # Travsoft IPX Tunnel |
| novell-ipx-cmd | 2645/tcp | 0.000000 | # Novell IPX CMD |
| novell-ipx-cmd | 2645/udp | 0.000000 | # Novell IPX CMD |
| and-lm | 2646/tcp | 0.000000 | # AND License Manager |
| and-lm | 2646/udp | 0.000330 | # AND License Manager |
| syncserver | 2647/tcp | 0.000000 | syncserver 2647/tcp 0.000000 |
| syncserver | 2647/udp | 0.000000 | # SyncServer |
| upsnotifyprot | 2648/tcp | 0.000000 | upsnotifyprot 2648/tcp 0.000000 |
| upsnotifyprot | 2648/udp | 0.000000 | # Upsnotifyprot |
| vpsipport | 2649/tcp | 0.000000 | vpsipport 2649/tcp 0.000000 |
| vpsipport | 2649/udp | 0.000330 | # VPSIPPORT |
| eristwoguns | 2650/tcp | 0.000000 | eristwoguns 2650/tcp 0.000000 |
| eristwoguns | 2650/udp | 0.000000 | eristwoguns 2650/udp 0.000000 |
| ebinsite | 2651/tcp | 0.000000 | ebinsite 2651/tcp 0.000000 |
| ebinsite | 2651/udp | 0.000000 | # EBInSite |
| interpathpanel | 2652/tcp | 0.000000 | interpathpanel 2652/tcp 0.000000 |
| interpathpanel | 2652/udp | 0.000000 | # InterPathPanel |
| sonus | 2653/tcp | 0.000000 | sonus 2653/tcp 0.000000 |
| sonus | 2653/udp | 0.000000 | # Sonus |
| corel_vncadmin | 2654/tcp | 0.000000 | # corel-vncadmin | Corel VNC Admin |
| corel_vncadmin | 2654/udp | 0.000000 | # Corel VNC Admin |
| unglue | 2655/tcp | 0.000000 | # UNIX Nt Glue |
| unglue | 2655/udp | 0.000000 | # UNIX Nt Glue |
| kana | 2656/tcp | 0.000000 | kana 2656/tcp 0.000000 |
| kana | 2656/udp | 0.000000 | # Kana |
| sns-dispatcher | 2657/tcp | 0.000000 | # SNS Dispatcher |
| sns-dispatcher | 2657/udp | 0.000330 | # SNS Dispatcher |
| sns-admin | 2658/tcp | 0.000000 | # SNS Admin |
| sns-admin | 2658/udp | 0.000000 | # SNS Admin |
| sns-query | 2659/tcp | 0.000000 | # SNS Query |
| sns-query | 2659/udp | 0.000000 | # SNS Query |
| gcmonitor | 2660/tcp | 0.000000 | # GC Monitor |
| gcmonitor | 2660/udp | 0.000000 | # GC Monitor |
| olhost | 2661/tcp | 0.000000 | olhost 2661/tcp 0.000000 |
| olhost | 2661/udp | 0.000000 | # OLHOST |
| bintec-capi | 2662/tcp | 0.000000 | bintec-capi 2662/tcp 0.000000 |
| bintec-capi | 2662/udp | 0.000330 | # BinTec-CAPI |
| bintec-tapi | 2663/tcp | 0.000000 | bintec-tapi 2663/tcp 0.000000 |
| bintec-tapi | 2663/udp | 0.000000 | # BinTec-TAPI |
| patrol-mq-gm | 2664/tcp | 0.000000 | # Patrol for MQ GM |
| patrol-mq-gm | 2664/udp | 0.000330 | # Patrol for MQ GM |
| patrol-mq-nm | 2665/tcp | 0.000000 | # Patrol for MQ NM |
| patrol-mq-nm | 2665/udp | 0.000000 | # Patrol for MQ NM |
| extensis | 2666/tcp | 0.000000 | extensis 2666/tcp 0.000000 |
| extensis | 2666/udp | 0.000330 | extensis 2666/udp 0.000330 |
| alarm-clock-s | 2667/tcp | 0.000000 | # Alarm Clock Server |
| alarm-clock-s | 2667/udp | 0.000330 | # Alarm Clock Server |
| alarm-clock-c | 2668/tcp | 0.000000 | # Alarm Clock Client |
| alarm-clock-c | 2668/udp | 0.000000 | # Alarm Clock Client |
| toad | 2669/tcp | 0.000000 | toad 2669/tcp 0.000000 |
| toad | 2669/udp | 0.000000 | # TOAD |
| tve-announce | 2670/tcp | 0.000000 | # TVE Announce |
| tve-announce | 2670/udp | 0.000000 | # TVE Announce |
| newlixreg | 2671/tcp | 0.000000 | newlixreg 2671/tcp 0.000000 |
| newlixreg | 2671/udp | 0.000000 | newlixreg 2671/udp 0.000000 |
| nhserver | 2672/tcp | 0.000000 | nhserver 2672/tcp 0.000000 |
| nhserver | 2672/udp | 0.000000 | nhserver 2672/udp 0.000000 |
| firstcall42 | 2673/tcp | 0.000000 | # First Call 42 |
| firstcall42 | 2673/udp | 0.000330 | # First Call 42 |
| ewnn | 2674/tcp | 0.000000 | ewnn 2674/tcp 0.000000 |
| ewnn | 2674/udp | 0.000000 | ewnn 2674/udp 0.000000 |
| ttc-etap | 2675/tcp | 0.000000 | # TTC ETAP |
| ttc-etap | 2675/udp | 0.000000 | # TTC ETAP |
| simslink | 2676/tcp | 0.000000 | simslink 2676/tcp 0.000000 |
| simslink | 2676/udp | 0.000000 | # SIMSLink |
| gadgetgate1way | 2677/tcp | 0.000000 | # Gadget Gate 1 Way |
| gadgetgate1way | 2677/udp | 0.000330 | # Gadget Gate 1 Way |
| gadgetgate2way | 2678/tcp | 0.000000 | # Gadget Gate 2 Way |
| gadgetgate2way | 2678/udp | 0.000330 | # Gadget Gate 2 Way |
| syncserverssl | 2679/tcp | 0.000000 | # Sync Server SSL |
| syncserverssl | 2679/udp | 0.000000 | # Sync Server SSL |
| pxc-sapxom | 2680/tcp | 0.000000 | pxc-sapxom 2680/tcp 0.000000 |
| pxc-sapxom | 2680/udp | 0.000000 | pxc-sapxom 2680/udp 0.000000 |
| mpnjsomb | 2681/tcp | 0.000000 | mpnjsomb 2681/tcp 0.000000 |
| mpnjsomb | 2681/udp | 0.000000 | mpnjsomb 2681/udp 0.000000 |
| ncdloadbalance | 2683/tcp | 0.000000 | ncdloadbalance 2683/tcp 0.000000 |
| ncdloadbalance | 2683/udp | 0.000000 | # NCDLoadBalance |
| mpnjsosv | 2684/tcp | 0.000000 | mpnjsosv 2684/tcp 0.000000 |
| mpnjsosv | 2684/udp | 0.000000 | mpnjsosv 2684/udp 0.000000 |
| mpnjsocl | 2685/tcp | 0.000000 | mpnjsocl 2685/tcp 0.000000 |
| mpnjsocl | 2685/udp | 0.000000 | mpnjsocl 2685/udp 0.000000 |
| mpnjsomg | 2686/tcp | 0.000000 | mpnjsomg 2686/tcp 0.000000 |
| mpnjsomg | 2686/udp | 0.000000 | mpnjsomg 2686/udp 0.000000 |
| pq-lic-mgmt | 2687/tcp | 0.000000 | pq-lic-mgmt 2687/tcp 0.000000 |
| pq-lic-mgmt | 2687/udp | 0.000000 | pq-lic-mgmt 2687/udp 0.000000 |
| md-cg-http | 2688/tcp | 0.000000 | # md-cf-http |
| md-cg-http | 2688/udp | 0.000000 | # md-cf-http |
| fastlynx | 2689/tcp | 0.000000 | fastlynx 2689/tcp 0.000000 |
| fastlynx | 2689/udp | 0.000000 | # FastLynx |
| hp-nnm-data | 2690/tcp | 0.000000 | # HP NNM Embedded Database |
| hp-nnm-data | 2690/udp | 0.000000 | # HP NNM Embedded Database |
| itinternet | 2691/tcp | 0.000076 | # ITInternet ISM Server |
| itinternet | 2691/udp | 0.000000 | # ITInternet ISM Server |
| admins-lms | 2692/tcp | 0.000000 | # Admins LMS |
| admins-lms | 2692/udp | 0.000330 | # Admins LMS |
| pwrsevent | 2694/tcp | 0.000000 | pwrsevent 2694/tcp 0.000000 |
| pwrsevent | 2694/udp | 0.000000 | pwrsevent 2694/udp 0.000000 |
| vspread | 2695/tcp | 0.000000 | vspread 2695/tcp 0.000000 |
| vspread | 2695/udp | 0.000330 | # VSPREAD |
| unifyadmin | 2696/tcp | 0.000000 | # Unify Admin |
| unifyadmin | 2696/udp | 0.000000 | # Unify Admin |
| oce-snmp-trap | 2697/tcp | 0.000000 | # Oce SNMP Trap Port |
| oce-snmp-trap | 2697/udp | 0.000000 | # Oce SNMP Trap Port |
| mck-ivpip | 2698/tcp | 0.000000 | mck-ivpip 2698/tcp 0.000000 |
| mck-ivpip | 2698/udp | 0.000000 | # MCK-IVPIP |
| csoft-plusclnt | 2699/tcp | 0.000000 | # Csoft Plus Client |
| csoft-plusclnt | 2699/udp | 0.000000 | # Csoft Plus Client |
| tqdata | 2700/tcp | 0.000076 | tqdata 2700/tcp 0.000076 |
| tqdata | 2700/udp | 0.000000 | tqdata 2700/udp 0.000000 |
| sms-rcinfo | 2701/tcp | 0.000836 | # SMS RCINFO |
| sms-rcinfo | 2701/udp | 0.000000 | sms-rcinfo 2701/udp 0.000000 |
| sms-xfer | 2702/tcp | 0.000760 | # SMS XFER |
| sms-xfer | 2702/udp | 0.000000 | sms-xfer 2702/udp 0.000000 |
| sms-chat | 2703/tcp | 0.000000 | # SMS CHAT |
| sms-chat | 2703/udp | 0.000000 | # SMS CHAT |
| sms-remctrl | 2704/tcp | 0.000000 | # SMS REMCTRL |
| sms-remctrl | 2704/udp | 0.000330 | # SMS REMCTRL |
| sds-admin | 2705/tcp | 0.000000 | # SDS Admin |
| sds-admin | 2705/udp | 0.000330 | # SDS Admin |
| ncdmirroring | 2706/tcp | 0.000076 | # NCD Mirroring |
| ncdmirroring | 2706/udp | 0.000000 | # NCD Mirroring |
| emcsymapiport | 2707/tcp | 0.000000 | emcsymapiport 2707/tcp 0.000000 |
| emcsymapiport | 2707/udp | 0.000000 | # EMCSYMAPIPORT |
| banyan-net | 2708/tcp | 0.000000 | banyan-net 2708/tcp 0.000000 |
| banyan-net | 2708/udp | 0.000330 | # Banyan-Net |
| supermon | 2709/tcp | 0.000000 | supermon 2709/tcp 0.000000 |
| supermon | 2709/udp | 0.000330 | # Supermon |
| sso-service | 2710/tcp | 0.000152 | # SSO Service |
| sso-service | 2710/udp | 0.000000 | # SSO Service |
| sso-control | 2711/tcp | 0.000076 | # SSO Control |
| sso-control | 2711/udp | 0.000000 | # SSO Control |
| aocp | 2712/tcp | 0.000076 | # Axapta Object Communication Protocol |
| aocp | 2712/udp | 0.000000 | # Axapta Object Communication Protocol |
| raventbs | 2713/tcp | 0.000000 | # Raven Trinity Broker Service |
| raventbs | 2713/udp | 0.000000 | # Raven Trinity Broker Service |
| raventdm | 2714/tcp | 0.000000 | # Raven Trinity Data Mover |
| raventdm | 2714/udp | 0.000000 | # Raven Trinity Data Mover |
| hpstgmgr2 | 2715/tcp | 0.000000 | hpstgmgr2 2715/tcp 0.000000 |
| hpstgmgr2 | 2715/udp | 0.000000 | # HPSTGMGR2 |
| inova-ip-disco | 2716/tcp | 0.000000 | # Inova IP Disco |
| inova-ip-disco | 2716/udp | 0.000000 | # Inova IP Disco |
| pn-requester | 2717/tcp | 0.003345 | # PN REQUESTER |
| pn-requester | 2717/udp | 0.000000 | # PN REQUESTER |
| pn-requester2 | 2718/tcp | 0.000380 | # PN REQUESTER 2 |
| pn-requester2 | 2718/udp | 0.000000 | # PN REQUESTER 2 |
| scan-change | 2719/tcp | 0.000000 | # Scan & Change |
| scan-change | 2719/udp | 0.000330 | # Scan & Change |
| wkars | 2720/tcp | 0.000000 | wkars 2720/tcp 0.000000 |
| wkars | 2720/udp | 0.000330 | wkars 2720/udp 0.000330 |
| smart-diagnose | 2721/tcp | 0.000000 | # Smart Diagnose |
| smart-diagnose | 2721/udp | 0.000000 | # Smart Diagnose |
| proactivesrvr | 2722/tcp | 0.000000 | # Proactive Server |
| proactivesrvr | 2722/udp | 0.000000 | # Proactive Server |
| watchdog-nt | 2723/tcp | 0.000076 | # WatchDog NT Protocol |
| watchdog-nt | 2723/udp | 0.000000 | # WatchDog NT Protocol |
| qotps | 2724/tcp | 0.000000 | qotps 2724/tcp 0.000000 |
| qotps | 2724/udp | 0.000000 | qotps 2724/udp 0.000000 |
| msolap-ptp2 | 2725/tcp | 0.000228 | # SQL Analysis Server | MSOLAP PTP2 |
| msolap-ptp2 | 2725/udp | 0.000000 | # MSOLAP PTP2 |
| tams | 2726/tcp | 0.000000 | tams 2726/tcp 0.000000 |
| tams | 2726/udp | 0.000330 | # TAMS |
| mgcp-callagent | 2727/tcp | 0.000000 | # Media Gateway Control Protocol Call Agent |
| mgcp-callagent | 2727/udp | 0.000000 | # Media Gateway Control Protocol Call Agent |
| sqdr | 2728/tcp | 0.000076 | sqdr 2728/tcp 0.000076 |
| sqdr | 2728/udp | 0.000000 | # SQDR |
| tcim-control | 2729/tcp | 0.000000 | # TCIM Control |
| tcim-control | 2729/udp | 0.000000 | # TCIM Control |
| nec-raidplus | 2730/tcp | 0.000000 | # NEC RaidPlus |
| nec-raidplus | 2730/udp | 0.000000 | # NEC RaidPlus |
| fyre-messanger | 2731/tcp | 0.000000 | # Fyre Messanger | Fyre Messagner |
| fyre-messanger | 2731/udp | 0.000000 | # Fyre Messagner |
| g5m | 2732/tcp | 0.000000 | g5m 2732/tcp 0.000000 |
| g5m | 2732/udp | 0.000000 | # G5M |
| signet-ctf | 2733/tcp | 0.000000 | # Signet CTF |
| signet-ctf | 2733/udp | 0.000000 | # Signet CTF |
| ccs-software | 2734/tcp | 0.000076 | # CCS Software |
| ccs-software | 2734/udp | 0.000330 | # CCS Software |
| netiq-mc | 2735/tcp | 0.000000 | # NetIQ Monitor Console |
| netiq-mc | 2735/udp | 0.000000 | # NetIQ Monitor Console |
| radwiz-nms-srv | 2736/tcp | 0.000000 | # RADWIZ NMS SRV |
| radwiz-nms-srv | 2736/udp | 0.000000 | # RADWIZ NMS SRV |
| srp-feedback | 2737/tcp | 0.000000 | # SRP Feedback |
| srp-feedback | 2737/udp | 0.000330 | # SRP Feedback |
| ndl-tcp-ois-gw | 2738/tcp | 0.000000 | # NDL TCP-OSI Gateway |
| ndl-tcp-ois-gw | 2738/udp | 0.000000 | # NDL TCP-OSI Gateway |
| tn-timing | 2739/tcp | 0.000000 | # TN Timing |
| tn-timing | 2739/udp | 0.000330 | # TN Timing |
| alarm | 2740/tcp | 0.000000 | alarm 2740/tcp 0.000000 |
| alarm | 2740/udp | 0.000000 | # Alarm |
| tsb | 2741/tcp | 0.000000 | tsb 2741/tcp 0.000000 |
| tsb | 2741/udp | 0.000000 | # TSB |
| tsb2 | 2742/tcp | 0.000000 | tsb2 2742/tcp 0.000000 |
| tsb2 | 2742/udp | 0.000000 | # TSB2 |
| murx | 2743/tcp | 0.000000 | murx 2743/tcp 0.000000 |
| murx | 2743/udp | 0.000000 | murx 2743/udp 0.000000 |
| honyaku | 2744/tcp | 0.000000 | honyaku 2744/tcp 0.000000 |
| honyaku | 2744/udp | 0.000000 | honyaku 2744/udp 0.000000 |
| urbisnet | 2745/tcp | 0.000000 | urbisnet 2745/tcp 0.000000 |
| urbisnet | 2745/udp | 0.000000 | # URBISNET |
| cpudpencap | 2746/tcp | 0.000000 | cpudpencap 2746/tcp 0.000000 |
| cpudpencap | 2746/udp | 0.000000 | # CPUDPENCAP |
| fjippol-swrly | 2747/tcp | 0.000000 | fjippol-swrly 2747/tcp 0.000000 |
| fjippol-swrly | 2747/udp | 0.000000 | fjippol-swrly 2747/udp 0.000000 |
| fjippol-polsvr | 2748/tcp | 0.000000 | fjippol-polsvr 2748/tcp 0.000000 |
| fjippol-polsvr | 2748/udp | 0.000000 | fjippol-polsvr 2748/udp 0.000000 |
| fjippol-cnsl | 2749/tcp | 0.000000 | fjippol-cnsl 2749/tcp 0.000000 |
| fjippol-cnsl | 2749/udp | 0.000330 | fjippol-cnsl 2749/udp 0.000330 |
| fjippol-port1 | 2750/tcp | 0.000000 | fjippol-port1 2750/tcp 0.000000 |
| fjippol-port1 | 2750/udp | 0.000000 | fjippol-port1 2750/udp 0.000000 |
| fjippol-port2 | 2751/tcp | 0.000000 | fjippol-port2 2751/tcp 0.000000 |
| fjippol-port2 | 2751/udp | 0.000000 | fjippol-port2 2751/udp 0.000000 |
| rsisysaccess | 2752/tcp | 0.000000 | # RSISYS ACCESS |
| rsisysaccess | 2752/udp | 0.000000 | # RSISYS ACCESS |
| de-spot | 2753/tcp | 0.000000 | de-spot 2753/tcp 0.000000 |
| de-spot | 2753/udp | 0.000000 | de-spot 2753/udp 0.000000 |
| apollo-cc | 2754/tcp | 0.000000 | # APOLLO CC |
| apollo-cc | 2754/udp | 0.000000 | # APOLLO CC |
| expresspay | 2755/tcp | 0.000000 | # Express Pay |
| expresspay | 2755/udp | 0.000000 | # Express Pay |
| simplement-tie | 2756/tcp | 0.000000 | simplement-tie 2756/tcp 0.000000 |
| simplement-tie | 2756/udp | 0.000000 | simplement-tie 2756/udp 0.000000 |
| cnrp | 2757/tcp | 0.000000 | cnrp 2757/tcp 0.000000 |
| cnrp | 2757/udp | 0.000000 | # CNRP |
| apollo-status | 2758/tcp | 0.000000 | # APOLLO Status |
| apollo-status | 2758/udp | 0.000000 | # APOLLO Status |
| apollo-gms | 2759/tcp | 0.000000 | # APOLLO GMS |
| apollo-gms | 2759/udp | 0.000000 | # APOLLO GMS |
| sabams | 2760/tcp | 0.000000 | # Saba MS |
| sabams | 2760/udp | 0.000000 | # Saba MS |
| dicom-iscl | 2761/tcp | 0.000000 | # DICOM ISCL |
| dicom-iscl | 2761/udp | 0.000000 | # DICOM ISCL |
| dicom-tls | 2762/tcp | 0.000000 | # DICOM TLS |
| dicom-tls | 2762/udp | 0.000000 | # DICOM TLS |
| desktop-dna | 2763/tcp | 0.000000 | # Desktop DNA |
| desktop-dna | 2763/udp | 0.000000 | # Desktop DNA |
| data-insurance | 2764/tcp | 0.000000 | # Data Insurance |
| data-insurance | 2764/udp | 0.000000 | # Data Insurance |
| qip-audup | 2765/tcp | 0.000000 | qip-audup 2765/tcp 0.000000 |
| qip-audup | 2765/udp | 0.000330 | qip-audup 2765/udp 0.000330 |
| listen | 2766/tcp | 0.000013 | # compaq-scp | System V listener port | Compaq SCP |
| compaq-scp | 2766/udp | 0.000000 | # Compaq SCP |
| uadtc | 2767/tcp | 0.000000 | uadtc 2767/tcp 0.000000 |
| uadtc | 2767/udp | 0.000330 | # UADTC |
| uacs | 2768/tcp | 0.000000 | uacs 2768/tcp 0.000000 |
| uacs | 2768/udp | 0.000000 | # UACS |
| exce | 2769/tcp | 0.000000 | exce 2769/tcp 0.000000 |
| exce | 2769/udp | 0.000000 | # eXcE |
| veronica | 2770/tcp | 0.000000 | veronica 2770/tcp 0.000000 |
| veronica | 2770/udp | 0.000000 | # Veronica |
| vergencecm | 2771/tcp | 0.000000 | # Vergence CM |
| vergencecm | 2771/udp | 0.000330 | # Vergence CM |
| auris | 2772/tcp | 0.000000 | auris 2772/tcp 0.000000 |
| auris | 2772/udp | 0.000000 | auris 2772/udp 0.000000 |
| rbakcup1 | 2773/tcp | 0.000000 | # RBackup Remote Backup |
| rbakcup1 | 2773/udp | 0.000330 | # RBackup Remote Backup |
| rbakcup2 | 2774/tcp | 0.000000 | # RBackup Remote Backup |
| rbakcup2 | 2774/udp | 0.000000 | # RBackup Remote Backup |
| smpp | 2775/tcp | 0.000000 | smpp 2775/tcp 0.000000 |
| smpp | 2775/udp | 0.000000 | # SMPP |
| ridgeway1 | 2776/tcp | 0.000000 | # Ridgeway Systems & Software |
| ridgeway1 | 2776/udp | 0.000000 | # Ridgeway Systems & Software |
| ridgeway2 | 2777/tcp | 0.000000 | # Ridgeway Systems & Software |
| ridgeway2 | 2777/udp | 0.000330 | # Ridgeway Systems & Software |
| gwen-sonya | 2778/tcp | 0.000000 | gwen-sonya 2778/tcp 0.000000 |
| gwen-sonya | 2778/udp | 0.000000 | # Gwen-Sonya |
| lbc-sync | 2779/tcp | 0.000000 | # LBC Sync |
| lbc-sync | 2779/udp | 0.000000 | # LBC Sync |
| lbc-control | 2780/tcp | 0.000000 | # LBC Control |
| lbc-control | 2780/udp | 0.000000 | # LBC Control |
| whosells | 2781/tcp | 0.000000 | whosells 2781/tcp 0.000000 |
| whosells | 2781/udp | 0.000330 | whosells 2781/udp 0.000330 |
| everydayrc | 2782/tcp | 0.000000 | everydayrc 2782/tcp 0.000000 |
| everydayrc | 2782/udp | 0.000000 | everydayrc 2782/udp 0.000000 |
| aises | 2783/tcp | 0.000000 | aises 2783/tcp 0.000000 |
| aises | 2783/udp | 0.000000 | # AISES |
| www-dev | 2784/tcp | 0.000000 | # world wide web - development |
| www-dev | 2784/udp | 0.000395 | # world wide web - development |
| aic-np | 2785/tcp | 0.000000 | aic-np 2785/tcp 0.000000 |
| aic-np | 2785/udp | 0.000000 | aic-np 2785/udp 0.000000 |
| aic-oncrpc | 2786/tcp | 0.000000 | # aic-oncrpc - Destiny MCD database |
| aic-oncrpc | 2786/udp | 0.000000 | # aic-oncrpc - Destiny MCD database |
| piccolo | 2787/tcp | 0.000000 | # piccolo - Cornerstone Software |
| piccolo | 2787/udp | 0.000000 | # piccolo - Cornerstone Software |
| fryeserv | 2788/tcp | 0.000000 | # NetWare Loadable Module - Seagate Software |
| fryeserv | 2788/udp | 0.000000 | # NetWare Loadable Module - Seagate Software |
| media-agent | 2789/tcp | 0.000000 | # Media Agent |
| media-agent | 2789/udp | 0.000330 | # Media Agent |
| plgproxy | 2790/tcp | 0.000000 | # PLG Proxy |
| plgproxy | 2790/udp | 0.000000 | # PLG Proxy |
| mtport-regist | 2791/tcp | 0.000000 | # MT Port Registrator |
| mtport-regist | 2791/udp | 0.000330 | # MT Port Registrator |
| f5-globalsite | 2792/tcp | 0.000000 | f5-globalsite 2792/tcp 0.000000 |
| f5-globalsite | 2792/udp | 0.000000 | f5-globalsite 2792/udp 0.000000 |
| initlsmsad | 2793/tcp | 0.000000 | initlsmsad 2793/tcp 0.000000 |
| initlsmsad | 2793/udp | 0.000000 | initlsmsad 2793/udp 0.000000 |
| livestats | 2795/tcp | 0.000000 | livestats 2795/tcp 0.000000 |
| livestats | 2795/udp | 0.000000 | # LiveStats |
| ac-tech | 2796/tcp | 0.000000 | ac-tech 2796/tcp 0.000000 |
| ac-tech | 2796/udp | 0.000000 | ac-tech 2796/udp 0.000000 |
| esp-encap | 2797/tcp | 0.000000 | esp-encap 2797/tcp 0.000000 |
| esp-encap | 2797/udp | 0.000330 | esp-encap 2797/udp 0.000330 |
| tmesis-upshot | 2798/tcp | 0.000000 | tmesis-upshot 2798/tcp 0.000000 |
| tmesis-upshot | 2798/udp | 0.000000 | # TMESIS-UPShot |
| icon-discover | 2799/tcp | 0.000000 | # ICON Discover |
| icon-discover | 2799/udp | 0.000000 | # ICON Discover |
| acc-raid | 2800/tcp | 0.000152 | # ACC RAID |
| acc-raid | 2800/udp | 0.000000 | # ACC RAID |
| igcp | 2801/tcp | 0.000000 | igcp 2801/tcp 0.000000 |
| igcp | 2801/udp | 0.000330 | # IGCP |
| veritas-tcp1 | 2802/tcp | 0.000000 | # veritas-udp1 | Veritas TCP1 | Veritas UDP1 |
| veritas-udp1 | 2802/udp | 0.000000 | # Veritas UDP1 |
| btprjctrl | 2803/tcp | 0.000000 | btprjctrl 2803/tcp 0.000000 |
| btprjctrl | 2803/udp | 0.000330 | btprjctrl 2803/udp 0.000330 |
| dvr-esm | 2804/tcp | 0.000076 | # March Networks Digital Video Recorders and Enterprise Service Manager products |
| dvr-esm | 2804/udp | 0.000330 | # March Networks Digital Video Recorders and Enterprise Service Manager products |
| wta-wsp-s | 2805/tcp | 0.000000 | # WTA WSP-S |
| wta-wsp-s | 2805/udp | 0.000000 | # WTA WSP-S |
| cspuni | 2806/tcp | 0.000076 | cspuni 2806/tcp 0.000076 |
| cspuni | 2806/udp | 0.000000 | cspuni 2806/udp 0.000000 |
| cspmulti | 2807/tcp | 0.000000 | cspmulti 2807/tcp 0.000000 |
| cspmulti | 2807/udp | 0.000000 | cspmulti 2807/udp 0.000000 |
| j-lan-p | 2808/tcp | 0.000000 | j-lan-p 2808/tcp 0.000000 |
| j-lan-p | 2808/udp | 0.000000 | # J-LAN-P |
| corbaloc | 2809/tcp | 0.000439 | # Corba | CORBA LOC |
| corbaloc | 2809/udp | 0.000000 | # CORBA LOC |
| netsteward | 2810/tcp | 0.000000 | # Active Net Steward |
| netsteward | 2810/udp | 0.000000 | # Active Net Steward |
| gsiftp | 2811/tcp | 0.000380 | # GSI FTP |
| gsiftp | 2811/udp | 0.000000 | # GSI FTP |
| atmtcp | 2812/tcp | 0.000076 | # commonly Monit httpd - http://mmonit.com/monit/documentation/monit.html#monit_httpd |
| atmtcp | 2812/udp | 0.000000 | atmtcp 2812/udp 0.000000 |
| llm-pass | 2813/tcp | 0.000000 | llm-pass 2813/tcp 0.000000 |
| llm-pass | 2813/udp | 0.000330 | llm-pass 2813/udp 0.000330 |
| llm-csv | 2814/tcp | 0.000000 | llm-csv 2814/tcp 0.000000 |
| llm-csv | 2814/udp | 0.000000 | llm-csv 2814/udp 0.000000 |
| lbc-measure | 2815/tcp | 0.000000 | # LBC Measurement |
| lbc-measure | 2815/udp | 0.000000 | # LBC Measurement |
| lbc-watchdog | 2816/tcp | 0.000000 | # LBC Watchdog |
| lbc-watchdog | 2816/udp | 0.000000 | # LBC Watchdog |
| nmsigport | 2817/tcp | 0.000000 | # NMSig Port |
| nmsigport | 2817/udp | 0.000000 | # NMSig Port |
| rmlnk | 2818/tcp | 0.000000 | rmlnk 2818/tcp 0.000000 |
| rmlnk | 2818/udp | 0.000000 | rmlnk 2818/udp 0.000000 |
| fc-faultnotify | 2819/tcp | 0.000000 | # FC Fault Notification |
| fc-faultnotify | 2819/udp | 0.000661 | # FC Fault Notification |
| univision | 2820/tcp | 0.000000 | univision 2820/tcp 0.000000 |
| univision | 2820/udp | 0.000000 | # UniVision |
| vrts-at-port | 2821/tcp | 0.000000 | # VERITAS Authentication Service |
| vrts-at-port | 2821/udp | 0.000661 | # VERITAS Authentication Service |
| ka0wuc | 2822/tcp | 0.000000 | ka0wuc 2822/tcp 0.000000 |
| ka0wuc | 2822/udp | 0.000000 | ka0wuc 2822/udp 0.000000 |
| cqg-netlan | 2823/tcp | 0.000000 | # CQG Net/LAN |
| cqg-netlan | 2823/udp | 0.000000 | # CQG Net/LAN |
| cqg-netlan-1 | 2824/tcp | 0.000000 | # CQG Net/LAN 1 | CQG Net/Lan 1 |
| cqg-netlan-1 | 2824/udp | 0.000330 | # CQG Net/Lan 1 |
| slc-systemlog | 2826/tcp | 0.000000 | # slc systemlog |
| slc-systemlog | 2826/udp | 0.000330 | # slc systemlog |
| slc-ctrlrloops | 2827/tcp | 0.000000 | # slc ctrlrloops |
| slc-ctrlrloops | 2827/udp | 0.000000 | # slc ctrlrloops |
| itm-lm | 2828/tcp | 0.000000 | # ITM License Manager |
| itm-lm | 2828/udp | 0.000000 | # ITM License Manager |
| silkp1 | 2829/tcp | 0.000000 | silkp1 2829/tcp 0.000000 |
| silkp1 | 2829/udp | 0.000000 | silkp1 2829/udp 0.000000 |
| silkp2 | 2830/tcp | 0.000000 | silkp2 2830/tcp 0.000000 |
| silkp2 | 2830/udp | 0.000000 | silkp2 2830/udp 0.000000 |
| silkp3 | 2831/tcp | 0.000000 | silkp3 2831/tcp 0.000000 |
| silkp3 | 2831/udp | 0.000330 | silkp3 2831/udp 0.000330 |
| silkp4 | 2832/tcp | 0.000000 | silkp4 2832/tcp 0.000000 |
| silkp4 | 2832/udp | 0.000000 | silkp4 2832/udp 0.000000 |
| glishd | 2833/tcp | 0.000000 | glishd 2833/tcp 0.000000 |
| glishd | 2833/udp | 0.000000 | glishd 2833/udp 0.000000 |
| evtp | 2834/tcp | 0.000000 | evtp 2834/tcp 0.000000 |
| evtp | 2834/udp | 0.000000 | # EVTP |
| evtp-data | 2835/tcp | 0.000000 | evtp-data 2835/tcp 0.000000 |
| evtp-data | 2835/udp | 0.000000 | # EVTP-DATA |
| catalyst | 2836/tcp | 0.000000 | catalyst 2836/tcp 0.000000 |
| catalyst | 2836/udp | 0.000000 | catalyst 2836/udp 0.000000 |
| repliweb | 2837/tcp | 0.000000 | repliweb 2837/tcp 0.000000 |
| repliweb | 2837/udp | 0.000330 | # Repliweb |
| starbot | 2838/tcp | 0.000000 | starbot 2838/tcp 0.000000 |
| starbot | 2838/udp | 0.000000 | # Starbot |
| nmsigport | 2839/tcp | 0.000000 | nmsigport 2839/tcp 0.000000 |
| nmsigport | 2839/udp | 0.000000 | # NMSigPort |
| l3-exprt | 2840/tcp | 0.000000 | l3-exprt 2840/tcp 0.000000 |
| l3-exprt | 2840/udp | 0.000000 | l3-exprt 2840/udp 0.000000 |
| l3-ranger | 2841/tcp | 0.000000 | l3-ranger 2841/tcp 0.000000 |
| l3-ranger | 2841/udp | 0.000000 | l3-ranger 2841/udp 0.000000 |
| l3-hawk | 2842/tcp | 0.000000 | l3-hawk 2842/tcp 0.000000 |
| l3-hawk | 2842/udp | 0.000000 | l3-hawk 2842/udp 0.000000 |
| pdnet | 2843/tcp | 0.000000 | pdnet 2843/tcp 0.000000 |
| pdnet | 2843/udp | 0.000000 | # PDnet |
| bpcp-poll | 2844/tcp | 0.000000 | # BPCP POLL |
| bpcp-poll | 2844/udp | 0.000000 | # BPCP POLL |
| bpcp-trap | 2845/tcp | 0.000000 | # BPCP TRAP |
| bpcp-trap | 2845/udp | 0.000000 | # BPCP TRAP |
| aimpp-hello | 2846/tcp | 0.000000 | # AIMPP Hello |
| aimpp-hello | 2846/udp | 0.000000 | # AIMPP Hello |
| aimpp-port-req | 2847/tcp | 0.000076 | # AIMPP Port Req |
| aimpp-port-req | 2847/udp | 0.000330 | # AIMPP Port Req |
| amt-blc-port | 2848/tcp | 0.000000 | amt-blc-port 2848/tcp 0.000000 |
| amt-blc-port | 2848/udp | 0.000000 | # AMT-BLC-PORT |
| fxp | 2849/tcp | 0.000000 | fxp 2849/tcp 0.000000 |
| fxp | 2849/udp | 0.000000 | # FXP |
| metaconsole | 2850/tcp | 0.000076 | metaconsole 2850/tcp 0.000076 |
| metaconsole | 2850/udp | 0.000000 | # MetaConsole |
| webemshttp | 2851/tcp | 0.000000 | webemshttp 2851/tcp 0.000000 |
| webemshttp | 2851/udp | 0.000000 | webemshttp 2851/udp 0.000000 |
| bears-01 | 2852/tcp | 0.000000 | bears-01 2852/tcp 0.000000 |
| bears-01 | 2852/udp | 0.000000 | bears-01 2852/udp 0.000000 |
| ispipes | 2853/tcp | 0.000000 | ispipes 2853/tcp 0.000000 |
| ispipes | 2853/udp | 0.000000 | # ISPipes |
| infomover | 2854/tcp | 0.000000 | infomover 2854/tcp 0.000000 |
| infomover | 2854/udp | 0.000000 | # InfoMover |
| msrp | 2855/tcp | 0.000000 | # MSRP over TCP |
| msrp | 2855/udp | 0.000330 | # MSRP |
| cesdinv | 2856/tcp | 0.000000 | cesdinv 2856/tcp 0.000000 |
| cesdinv | 2856/udp | 0.000000 | cesdinv 2856/udp 0.000000 |
| simctlp | 2857/tcp | 0.000000 | # SimCtIP |
| simctlp | 2857/udp | 0.000000 | # SimCtIP |
| ecnp | 2858/tcp | 0.000000 | ecnp 2858/tcp 0.000000 |
| ecnp | 2858/udp | 0.000000 | # ECNP |
| activememory | 2859/tcp | 0.000000 | # Active Memory |
| activememory | 2859/udp | 0.000000 | # Active Memory |
| dialpad-voice1 | 2860/tcp | 0.000000 | # Dialpad Voice 1 |
| dialpad-voice1 | 2860/udp | 0.000330 | # Dialpad Voice 1 |
| dialpad-voice2 | 2861/tcp | 0.000000 | # Dialpad Voice 2 |
| dialpad-voice2 | 2861/udp | 0.000000 | # Dialpad Voice 2 |
| ttg-protocol | 2862/tcp | 0.000000 | # TTG Protocol |
| ttg-protocol | 2862/udp | 0.000000 | # TTG Protocol |
| sonardata | 2863/tcp | 0.000000 | # Sonar Data |
| sonardata | 2863/udp | 0.000991 | # Sonar Data |
| astromed-main | 2864/tcp | 0.000000 | # astronova-main | main 5001 cmd |
| astromed-main | 2864/udp | 0.000330 | # main 5001 cmd |
| pit-vpn | 2865/tcp | 0.000000 | pit-vpn 2865/tcp 0.000000 |
| pit-vpn | 2865/udp | 0.000330 | pit-vpn 2865/udp 0.000330 |
| iwlistener | 2866/tcp | 0.000000 | iwlistener 2866/tcp 0.000000 |
| iwlistener | 2866/udp | 0.000000 | iwlistener 2866/udp 0.000000 |
| esps-portal | 2867/tcp | 0.000000 | esps-portal 2867/tcp 0.000000 |
| esps-portal | 2867/udp | 0.000000 | esps-portal 2867/udp 0.000000 |
| npep-messaging | 2868/tcp | 0.000000 | # NPEP Messaging | Norman Proprietaqry Events Protocol |
| npep-messaging | 2868/udp | 0.000000 | # NPEP Messaging |
| icslap | 2869/tcp | 0.002129 | # Universal Plug and Play Device Host, SSDP Discovery Service |
| icslap | 2869/udp | 0.000330 | # ICSLAP |
| daishi | 2870/tcp | 0.000000 | daishi 2870/tcp 0.000000 |
| daishi | 2870/udp | 0.000000 | daishi 2870/udp 0.000000 |
| msi-selectplay | 2871/tcp | 0.000000 | # MSI Select Play |
| msi-selectplay | 2871/udp | 0.000000 | # MSI Select Play |
| radix | 2872/tcp | 0.000000 | radix 2872/tcp 0.000000 |
| radix | 2872/udp | 0.000000 | # RADIX |
| psrt | 2873/tcp | 0.000000 | # PubSub Realtime Telemetry Protocol |
| dxmessagebase1 | 2874/tcp | 0.000000 | # DX Message Base Transport Protocol |
| dxmessagebase1 | 2874/udp | 0.000330 | # DX Message Base Transport Protocol |
| dxmessagebase2 | 2875/tcp | 0.000380 | # DX Message Base Transport Protocol |
| dxmessagebase2 | 2875/udp | 0.000000 | # DX Message Base Transport Protocol |
| sps-tunnel | 2876/tcp | 0.000000 | # SPS Tunnel |
| sps-tunnel | 2876/udp | 0.000000 | # SPS Tunnel |
| bluelance | 2877/tcp | 0.000000 | bluelance 2877/tcp 0.000000 |
| bluelance | 2877/udp | 0.000330 | # BLUELANCE |
| aap | 2878/tcp | 0.000000 | aap 2878/tcp 0.000000 |
| aap | 2878/udp | 0.000330 | # AAP |
| ucentric-ds | 2879/tcp | 0.000000 | ucentric-ds 2879/tcp 0.000000 |
| ucentric-ds | 2879/udp | 0.000000 | ucentric-ds 2879/udp 0.000000 |
| synapse | 2880/tcp | 0.000000 | # Synapse Transport |
| synapse | 2880/udp | 0.000330 | # Synapse Transport |
| ndsp | 2881/tcp | 0.000000 | ndsp 2881/tcp 0.000000 |
| ndsp | 2881/udp | 0.000330 | # NDSP |
| ndtp | 2882/tcp | 0.000076 | ndtp 2882/tcp 0.000076 |
| ndtp | 2882/udp | 0.000000 | # NDTP |
| ndnp | 2883/tcp | 0.000000 | ndnp 2883/tcp 0.000000 |
| ndnp | 2883/udp | 0.000330 | # NDNP |
| flashmsg | 2884/tcp | 0.000000 | # Flash Msg |
| flashmsg | 2884/udp | 0.000330 | # Flash Msg |
| topflow | 2885/tcp | 0.000000 | topflow 2885/tcp 0.000000 |
| topflow | 2885/udp | 0.000330 | # TopFlow |
| responselogic | 2886/tcp | 0.000000 | responselogic 2886/tcp 0.000000 |
| responselogic | 2886/udp | 0.000000 | # RESPONSELOGIC |
| aironetddp | 2887/tcp | 0.000000 | # aironet |
| aironetddp | 2887/udp | 0.000000 | # aironet |
| spcsdlobby | 2888/tcp | 0.000076 | spcsdlobby 2888/tcp 0.000076 |
| spcsdlobby | 2888/udp | 0.000000 | # SPCSDLOBBY |
| rsom | 2889/tcp | 0.000076 | rsom 2889/tcp 0.000076 |
| rsom | 2889/udp | 0.000330 | # RSOM |
| cspclmulti | 2890/tcp | 0.000000 | cspclmulti 2890/tcp 0.000000 |
| cspclmulti | 2890/udp | 0.000000 | # CSPCLMULTI |
| cinegrfx-elmd | 2891/tcp | 0.000000 | # CINEGRFX-ELMD License Manager |
| cinegrfx-elmd | 2891/udp | 0.000000 | # CINEGRFX-ELMD License Manager |
| snifferdata | 2892/tcp | 0.000000 | snifferdata 2892/tcp 0.000000 |
| snifferdata | 2892/udp | 0.000000 | # SNIFFERDATA |
| vseconnector | 2893/tcp | 0.000000 | vseconnector 2893/tcp 0.000000 |
| vseconnector | 2893/udp | 0.000000 | # VSECONNECTOR |
| abacus-remote | 2894/tcp | 0.000000 | abacus-remote 2894/tcp 0.000000 |
| abacus-remote | 2894/udp | 0.000000 | # ABACUS-REMOTE |
| natuslink | 2895/tcp | 0.000000 | # NATUS LINK |
| natuslink | 2895/udp | 0.000000 | # NATUS LINK |
| ecovisiong6-1 | 2896/tcp | 0.000000 | ecovisiong6-1 2896/tcp 0.000000 |
| ecovisiong6-1 | 2896/udp | 0.000000 | # ECOVISIONG6-1 |
| citrix-rtmp | 2897/tcp | 0.000000 | # Citrix RTMP |
| citrix-rtmp | 2897/udp | 0.000000 | # Citrix RTMP |
| appliance-cfg | 2898/tcp | 0.000076 | appliance-cfg 2898/tcp 0.000076 |
| appliance-cfg | 2898/udp | 0.000330 | # APPLIANCE-CFG |
| powergemplus | 2899/tcp | 0.000000 | powergemplus 2899/tcp 0.000000 |
| powergemplus | 2899/udp | 0.000000 | # POWERGEMPLUS |
| quicksuite | 2900/tcp | 0.000000 | quicksuite 2900/tcp 0.000000 |
| quicksuite | 2900/udp | 0.000000 | # QUICKSUITE |
| allstorcns | 2901/tcp | 0.000076 | allstorcns 2901/tcp 0.000076 |
| allstorcns | 2901/udp | 0.000330 | # ALLSTORCNS |
| netaspi | 2902/tcp | 0.000076 | # NET ASPI |
| netaspi | 2902/udp | 0.000000 | # NET ASPI |
| extensisportfolio | 2903/tcp | 0.000100 | # suitcase | Portfolio Server by Extensis Product Group | SUITCASE |
| suitcase | 2903/udp | 0.000330 | # SUITCASE |
| m2ua | 2904/sctp | 0.000000 | # SIGTRAN M2UA |
| m2ua | 2904/tcp | 0.000000 | # SIGTRAN M2UA |
| m2ua | 2904/udp | 0.000330 | # SIGTRAN M2UA |
| m3ua | 2905/sctp | 0.000000 | # SIGTRAN M3UA |
| m3ua | 2905/tcp | 0.000000 | # SIGTRAN M3UA |
| m3ua | 2905/udp | 0.000000 | # SIGTRAN M3UA |
| caller9 | 2906/tcp | 0.000000 | caller9 2906/tcp 0.000000 |
| caller9 | 2906/udp | 0.000000 | # CALLER9 |
| webmethods-b2b | 2907/tcp | 0.000000 | # WEBMETHODS B2B |
| webmethods-b2b | 2907/udp | 0.000000 | # WEBMETHODS B2B |
| mao | 2908/tcp | 0.000076 | mao 2908/tcp 0.000076 |
| mao | 2908/udp | 0.000661 | mao 2908/udp 0.000661 |
| funk-dialout | 2909/tcp | 0.000228 | # Funk Dialout |
| funk-dialout | 2909/udp | 0.000330 | # Funk Dialout |
| tdaccess | 2910/tcp | 0.000152 | tdaccess 2910/tcp 0.000152 |
| tdaccess | 2910/udp | 0.000330 | # TDAccess |
| blockade | 2911/tcp | 0.000000 | blockade 2911/tcp 0.000000 |
| blockade | 2911/udp | 0.000000 | # Blockade |
| epicon | 2912/tcp | 0.000000 | epicon 2912/tcp 0.000000 |
| epicon | 2912/udp | 0.000000 | # Epicon |
| boosterware | 2913/tcp | 0.000000 | # Booster Ware |
| boosterware | 2913/udp | 0.000000 | # Booster Ware |
| gamelobby | 2914/tcp | 0.000000 | # Game Lobby |
| gamelobby | 2914/udp | 0.000000 | # Game Lobby |
| tksocket | 2915/tcp | 0.000000 | # TK Socket |
| tksocket | 2915/udp | 0.000000 | # TK Socket |
| elvin_server | 2916/tcp | 0.000000 | # elvin-server | Elvin Server |
| elvin_server | 2916/udp | 0.000330 | # Elvin Server |
| elvin_client | 2917/tcp | 0.000000 | # elvin-client | Elvin Client |
| elvin_client | 2917/udp | 0.000000 | # Elvin Client |
| kastenchasepad | 2918/tcp | 0.000000 | # Kasten Chase Pad |
| kastenchasepad | 2918/udp | 0.000000 | # Kasten Chase Pad |
| roboer | 2919/tcp | 0.000000 | roboer 2919/tcp 0.000000 |
| roboer | 2919/udp | 0.000330 | # roboER |
| roboeda | 2920/tcp | 0.000152 | roboeda 2920/tcp 0.000152 |
| roboeda | 2920/udp | 0.000000 | # roboEDA |
| cesdcdman | 2921/tcp | 0.000000 | # CESD Contents Delivery Management |
| cesdcdman | 2921/udp | 0.000000 | # CESD Contents Delivery Management |
| cesdcdtrn | 2922/tcp | 0.000000 | # CESD Contents Delivery Data Transfer |
| cesdcdtrn | 2922/udp | 0.000000 | # CESD Contents Delivery Data Transfer |
| wta-wsp-wtp-s | 2923/tcp | 0.000000 | wta-wsp-wtp-s 2923/tcp 0.000000 |
| wta-wsp-wtp-s | 2923/udp | 0.000000 | # WTA-WSP-WTP-S |
| precise-vip | 2924/tcp | 0.000000 | precise-vip 2924/tcp 0.000000 |
| precise-vip | 2924/udp | 0.000000 | # PRECISE-VIP |
| mobile-file-dl | 2926/tcp | 0.000000 | mobile-file-dl 2926/tcp 0.000000 |
| mobile-file-dl | 2926/udp | 0.000000 | # MOBILE-FILE-DL |
| unimobilectrl | 2927/tcp | 0.000000 | unimobilectrl 2927/tcp 0.000000 |
| unimobilectrl | 2927/udp | 0.000000 | # UNIMOBILECTRL |
| redstone-cpss | 2928/tcp | 0.000000 | redstone-cpss 2928/tcp 0.000000 |
| redstone-cpss | 2928/udp | 0.000330 | # REDSTONE-CPSS |
| amx-webadmin | 2929/tcp | 0.000000 | amx-webadmin 2929/tcp 0.000000 |
| amx-webadmin | 2929/udp | 0.000000 | # AMX-WEBADMIN |
| amx-weblinx | 2930/tcp | 0.000076 | amx-weblinx 2930/tcp 0.000076 |
| amx-weblinx | 2930/udp | 0.000000 | # AMX-WEBLINX |
| circle-x | 2931/tcp | 0.000000 | circle-x 2931/tcp 0.000000 |
| circle-x | 2931/udp | 0.000000 | # Circle-X |
| incp | 2932/tcp | 0.000000 | incp 2932/tcp 0.000000 |
| incp | 2932/udp | 0.000330 | # INCP |
| 4-tieropmgw | 2933/tcp | 0.000000 | # 4-TIER OPM GW |
| 4-tieropmgw | 2933/udp | 0.000000 | # 4-TIER OPM GW |
| 4-tieropmcli | 2934/tcp | 0.000000 | # 4-TIER OPM CLI |
| 4-tieropmcli | 2934/udp | 0.000000 | # 4-TIER OPM CLI |
| qtp | 2935/tcp | 0.000000 | qtp 2935/tcp 0.000000 |
| qtp | 2935/udp | 0.000000 | # QTP |
| otpatch | 2936/tcp | 0.000000 | otpatch 2936/tcp 0.000000 |
| otpatch | 2936/udp | 0.000000 | # OTPatch |
| pnaconsult-lm | 2937/tcp | 0.000000 | pnaconsult-lm 2937/tcp 0.000000 |
| pnaconsult-lm | 2937/udp | 0.000000 | # PNACONSULT-LM |
| sm-pas-1 | 2938/tcp | 0.000000 | sm-pas-1 2938/tcp 0.000000 |
| sm-pas-1 | 2938/udp | 0.000000 | # SM-PAS-1 |
| sm-pas-2 | 2939/tcp | 0.000000 | sm-pas-2 2939/tcp 0.000000 |
| sm-pas-2 | 2939/udp | 0.000000 | # SM-PAS-2 |
| sm-pas-3 | 2940/tcp | 0.000000 | sm-pas-3 2940/tcp 0.000000 |
| sm-pas-3 | 2940/udp | 0.000330 | # SM-PAS-3 |
| sm-pas-4 | 2941/tcp | 0.000000 | sm-pas-4 2941/tcp 0.000000 |
| sm-pas-4 | 2941/udp | 0.000000 | # SM-PAS-4 |
| sm-pas-5 | 2942/tcp | 0.000000 | sm-pas-5 2942/tcp 0.000000 |
| sm-pas-5 | 2942/udp | 0.000000 | # SM-PAS-5 |
| ttnrepository | 2943/tcp | 0.000000 | ttnrepository 2943/tcp 0.000000 |
| ttnrepository | 2943/udp | 0.000000 | # TTNRepository |
| megaco-h248 | 2944/sctp | 0.000000 | # Megaco H-248 (Text) | Megaco H-248 | Megaco-H.248 text |
| megaco-h248 | 2944/tcp | 0.000000 | # Megaco H-248 (Text) |
| megaco-h248 | 2944/udp | 0.000330 | # Megaco H-248 (Text) |
| h248-binary | 2945/sctp | 0.000000 | # Megaco H-248 (Binary) | H248 Binary | Megaco/H.248 binary |
| h248-binary | 2945/tcp | 0.000000 | # Megaco H-248 (Binary) |
| h248-binary | 2945/udp | 0.000000 | # Megaco H-248 (Binary) |
| fjsvmpor | 2946/tcp | 0.000000 | fjsvmpor 2946/tcp 0.000000 |
| fjsvmpor | 2946/udp | 0.000000 | # FJSVmpor |
| gpsd | 2947/tcp | 0.000000 | # GPS Daemon request/response protocol |
| gpsd | 2947/udp | 0.000000 | # GPS Daemon request/response protocol |
| wap-push | 2948/tcp | 0.000000 | # WAP PUSH |
| wap-push | 2948/udp | 0.000791 | # Windows Mobile devices often have this |
| wap-pushsecure | 2949/tcp | 0.000000 | # WAP PUSH SECURE |
| wap-pushsecure | 2949/udp | 0.000000 | # WAP PUSH SECURE |
| esip | 2950/tcp | 0.000000 | esip 2950/tcp 0.000000 |
| esip | 2950/udp | 0.000330 | # ESIP |
| ottp | 2951/tcp | 0.000000 | ottp 2951/tcp 0.000000 |
| ottp | 2951/udp | 0.000330 | # OTTP |
| mpfwsas | 2952/tcp | 0.000000 | mpfwsas 2952/tcp 0.000000 |
| mpfwsas | 2952/udp | 0.000000 | # MPFWSAS |
| ovalarmsrv | 2953/tcp | 0.000000 | ovalarmsrv 2953/tcp 0.000000 |
| ovalarmsrv | 2953/udp | 0.000000 | # OVALARMSRV |
| ovalarmsrv-cmd | 2954/tcp | 0.000000 | ovalarmsrv-cmd 2954/tcp 0.000000 |
| ovalarmsrv-cmd | 2954/udp | 0.000000 | # OVALARMSRV-CMD |
| csnotify | 2955/tcp | 0.000000 | csnotify 2955/tcp 0.000000 |
| csnotify | 2955/udp | 0.000000 | # CSNOTIFY |
| ovrimosdbman | 2956/tcp | 0.000000 | ovrimosdbman 2956/tcp 0.000000 |
| ovrimosdbman | 2956/udp | 0.000330 | # OVRIMOSDBMAN |
| jmact5 | 2957/tcp | 0.000076 | # JAMCT5 |
| jmact5 | 2957/udp | 0.000000 | # JAMCT5 |
| jmact6 | 2958/tcp | 0.000076 | # JAMCT6 |
| jmact6 | 2958/udp | 0.000000 | # JAMCT6 |
| rmopagt | 2959/tcp | 0.000000 | rmopagt 2959/tcp 0.000000 |
| rmopagt | 2959/udp | 0.000000 | # RMOPAGT |
| dfoxserver | 2960/tcp | 0.000000 | dfoxserver 2960/tcp 0.000000 |
| dfoxserver | 2960/udp | 0.000000 | # DFOXSERVER |
| boldsoft-lm | 2961/tcp | 0.000000 | boldsoft-lm 2961/tcp 0.000000 |
| boldsoft-lm | 2961/udp | 0.000000 | # BOLDSOFT-LM |
| iph-policy-cli | 2962/tcp | 0.000000 | iph-policy-cli 2962/tcp 0.000000 |
| iph-policy-cli | 2962/udp | 0.000000 | # IPH-POLICY-CLI |
| iph-policy-adm | 2963/tcp | 0.000000 | iph-policy-adm 2963/tcp 0.000000 |
| iph-policy-adm | 2963/udp | 0.000000 | # IPH-POLICY-ADM |
| bullant-srap | 2964/tcp | 0.000000 | # BULLANT SRAP |
| bullant-srap | 2964/udp | 0.000330 | # BULLANT SRAP |
| bullant-rap | 2965/tcp | 0.000000 | # BULLANT RAP |
| bullant-rap | 2965/udp | 0.000000 | # BULLANT RAP |
| idp-infotrieve | 2966/tcp | 0.000000 | idp-infotrieve 2966/tcp 0.000000 |
| idp-infotrieve | 2966/udp | 0.000000 | # IDP-INFOTRIEVE |
| symantec-av | 2967/tcp | 0.002357 | # ssc-agent | Symantec AntiVirus (rtvscan.exe) | SSC-AGENT |
| symantec-av | 2967/udp | 0.006425 | # Symantec AntiVirus (rtvscan.exe) |
| enpp | 2968/tcp | 0.000152 | enpp 2968/tcp 0.000152 |
| enpp | 2968/udp | 0.000000 | # ENPP |
| essp | 2969/tcp | 0.000000 | essp 2969/tcp 0.000000 |
| essp | 2969/udp | 0.000330 | # ESSP |
| index-net | 2970/tcp | 0.000000 | index-net 2970/tcp 0.000000 |
| index-net | 2970/udp | 0.000330 | # INDEX-NET |
| netclip | 2971/tcp | 0.000000 | # NetClip clipboard daemon |
| netclip | 2971/udp | 0.000000 | # NetClip clipboard daemon |
| pmsm-webrctl | 2972/tcp | 0.000000 | # PMSM Webrctl |
| pmsm-webrctl | 2972/udp | 0.000330 | # PMSM Webrctl |
| svnetworks | 2973/tcp | 0.000076 | # SV Networks |
| svnetworks | 2973/udp | 0.000991 | # SV Networks |
| signal | 2974/tcp | 0.000000 | signal 2974/tcp 0.000000 |
| signal | 2974/udp | 0.000000 | # Signal |
| fjmpcm | 2975/tcp | 0.000000 | # Fujitsu Configuration Management Service |
| fjmpcm | 2975/udp | 0.000000 | # Fujitsu Configuration Management Service |
| cns-srv-port | 2976/tcp | 0.000000 | # CNS Server Port |
| cns-srv-port | 2976/udp | 0.000000 | # CNS Server Port |
| ttc-etap-ns | 2977/tcp | 0.000000 | # TTCs Enterprise Test Access Protocol - NS |
| ttc-etap-ns | 2977/udp | 0.000000 | # TTCs Enterprise Test Access Protocol - NS |
| ttc-etap-ds | 2978/tcp | 0.000000 | # TTCs Enterprise Test Access Protocol - DS |
| ttc-etap-ds | 2978/udp | 0.000000 | # TTCs Enterprise Test Access Protocol - DS |
| h263-video | 2979/tcp | 0.000000 | # H.263 Video Streaming |
| h263-video | 2979/udp | 0.000000 | # H.263 Video Streaming |
| wimd | 2980/tcp | 0.000000 | # Instant Messaging Service |
| wimd | 2980/udp | 0.000000 | # Instant Messaging Service |
| mylxamport | 2981/tcp | 0.000000 | mylxamport 2981/tcp 0.000000 |
| mylxamport | 2981/udp | 0.000000 | # MYLXAMPORT |
| iwb-whiteboard | 2982/tcp | 0.000000 | iwb-whiteboard 2982/tcp 0.000000 |
| iwb-whiteboard | 2982/udp | 0.000000 | # IWB-WHITEBOARD |
| netplan | 2983/tcp | 0.000000 | netplan 2983/tcp 0.000000 |
| netplan | 2983/udp | 0.000000 | # NETPLAN |
| hpidsadmin | 2984/tcp | 0.000076 | hpidsadmin 2984/tcp 0.000076 |
| hpidsadmin | 2984/udp | 0.000000 | # HPIDSADMIN |
| hpidsagent | 2985/tcp | 0.000000 | hpidsagent 2985/tcp 0.000000 |
| hpidsagent | 2985/udp | 0.000000 | # HPIDSAGENT |
| stonefalls | 2986/tcp | 0.000000 | stonefalls 2986/tcp 0.000000 |
| stonefalls | 2986/udp | 0.000000 | # STONEFALLS |
| identify | 2987/tcp | 0.000076 | identify 2987/tcp 0.000076 |
| identify | 2987/udp | 0.000330 | identify 2987/udp 0.000330 |
| hippad | 2988/tcp | 0.000076 | # HIPPA Reporting Protocol |
| hippad | 2988/udp | 0.000000 | # HIPPA Reporting Protocol |
| zarkov | 2989/tcp | 0.000000 | # ZARKOV Intelligent Agent Communication |
| zarkov | 2989/udp | 0.000000 | # ZARKOV Intelligent Agent Communication |
| boscap | 2990/tcp | 0.000000 | boscap 2990/tcp 0.000000 |
| boscap | 2990/udp | 0.000000 | # BOSCAP |
| wkstn-mon | 2991/tcp | 0.000076 | wkstn-mon 2991/tcp 0.000076 |
| wkstn-mon | 2991/udp | 0.000000 | # WKSTN-MON |
| avenyo | 2992/tcp | 0.000000 | # Avenyo Server |
| avenyo | 2992/udp | 0.000000 | # Avenyo Server |
| veritas-vis1 | 2993/tcp | 0.000000 | # VERITAS VIS1 |
| veritas-vis1 | 2993/udp | 0.000000 | # VERITAS VIS1 |
| veritas-vis2 | 2994/tcp | 0.000000 | # VERITAS VIS2 |
| veritas-vis2 | 2994/udp | 0.000330 | # VERITAS VIS2 |
| idrs | 2995/tcp | 0.000000 | idrs 2995/tcp 0.000000 |
| idrs | 2995/udp | 0.000000 | # IDRS |
| vsixml | 2996/tcp | 0.000000 | vsixml 2996/tcp 0.000000 |
| vsixml | 2996/udp | 0.000330 | vsixml 2996/udp 0.000330 |
| rebol | 2997/tcp | 0.000076 | rebol 2997/tcp 0.000076 |
| rebol | 2997/udp | 0.000000 | # REBOL |
| iss-realsec | 2998/tcp | 0.000351 | # realsecure | ISS RealSecure IDS Remote Console Admin port | Real Secure |
| realsecure | 2998/udp | 0.000000 | # Real Secure |
| remoteware-un | 2999/tcp | 0.000000 | # RemoteWare Unassigned |
| remoteware-un | 2999/udp | 0.000000 | # RemoteWare Unassigned |
| ppp | 3000/tcp | 0.004115 | # remoteware-cl | hbci | User-level ppp daemon, or chili!soft asp | HBCI | RemoteWare Client |
| hbci | 3000/udp | 0.000000 | # HBCI |
| nessus | 3001/tcp | 0.003124 | # origo-native | Nessus Security Scanner (www.nessus.org) Daemon or chili!soft asp | OrigoDB Server Native Interface |
| exlm-agent | 3002/tcp | 0.000076 | # remoteware-srv | EXLM Agent | RemoteWare Server |
| exlm-agent | 3002/udp | 0.000661 | # EXLM Agent |
| cgms | 3003/tcp | 0.000228 | cgms 3003/tcp 0.000228 |
| cgms | 3003/udp | 0.000330 | # CGMS |
| csoftragent | 3004/tcp | 0.000000 | # Csoft Agent |
| csoftragent | 3004/udp | 0.000000 | # Csoft Agent |
| deslogin | 3005/tcp | 0.000477 | # geniuslm | encrypted symmetric telnet/login | Genius License Manager |
| geniuslm | 3005/udp | 0.000330 | # Genius License Manager |
| deslogind | 3006/tcp | 0.000263 | # ii-admin | Instant Internet Admin |
| ii-admin | 3006/udp | 0.000000 | # Instant Internet Admin |
| lotusmtap | 3007/tcp | 0.000152 | # Lotus Mail Tracking Agent Protocol |
| lotusmtap | 3007/udp | 0.000000 | # Lotus Mail Tracking Agent Protocol |
| midnight-tech | 3008/tcp | 0.000000 | # Midnight Technologies |
| midnight-tech | 3008/udp | 0.000000 | # Midnight Technologies |
| pxc-ntfy | 3009/tcp | 0.000000 | pxc-ntfy 3009/tcp 0.000000 |
| pxc-ntfy | 3009/udp | 0.000000 | # PXC-NTFY |
| gw | 3010/tcp | 0.000000 | # ping-pong | Telerate Workstation |
| ping-pong | 3010/udp | 0.000000 | # Telerate Workstation |
| trusted-web | 3011/tcp | 0.000304 | # Trusted Web |
| trusted-web | 3011/udp | 0.000000 | # Trusted Web |
| twsdss | 3012/tcp | 0.000000 | # Trusted Web Client |
| twsdss | 3012/udp | 0.000000 | # Trusted Web Client |
| gilatskysurfer | 3013/tcp | 0.000152 | # Gilat Sky Surfer |
| gilatskysurfer | 3013/udp | 0.000000 | # Gilat Sky Surfer |
| broker_service | 3014/tcp | 0.000076 | # broker-service | Broker Service |
| broker_service | 3014/udp | 0.000000 | # Broker Service |
| nati-dstp | 3015/tcp | 0.000000 | # NATI DSTP |
| nati-dstp | 3015/udp | 0.000000 | # NATI DSTP |
| notify_srvr | 3016/tcp | 0.000000 | # notify-srvr | Notify Server |
| notify_srvr | 3016/udp | 0.000000 | # Notify Server |
| event_listener | 3017/tcp | 0.000380 | # event-listener | Event Listener |
| event_listener | 3017/udp | 0.000000 | # Event Listener |
| srvc_registry | 3018/tcp | 0.000000 | # srvc-registry | Service Registry |
| srvc_registry | 3018/udp | 0.000000 | # Service Registry |
| resource_mgr | 3019/tcp | 0.000000 | # resource-mgr | Resource Manager |
| resource_mgr | 3019/udp | 0.000000 | # Resource Manager |
| cifs | 3020/tcp | 0.000000 | cifs 3020/tcp 0.000000 |
| cifs | 3020/udp | 0.000000 | # CIFS |
| agriserver | 3021/tcp | 0.000000 | # AGRI Server |
| agriserver | 3021/udp | 0.000000 | # AGRI Server |
| csregagent | 3022/tcp | 0.000000 | csregagent 3022/tcp 0.000000 |
| csregagent | 3022/udp | 0.000000 | # CSREGAGENT |
| magicnotes | 3023/tcp | 0.000076 | magicnotes 3023/tcp 0.000076 |
| magicnotes | 3023/udp | 0.000000 | magicnotes 3023/udp 0.000000 |
| nds_sso | 3024/tcp | 0.000000 | # nds-sso |
| nds_sso | 3024/udp | 0.000000 | # NDS_SSO |
| slnp | 3025/tcp | 0.000125 | # arepa-raft | SLNP (Simple Library Network Protocol) by Sisis Informationssysteme GmbH | Arepa Raft |
| arepa-raft | 3025/udp | 0.000000 | # Arepa Raft |
| agri-gateway | 3026/tcp | 0.000000 | # AGRI Gateway |
| agri-gateway | 3026/udp | 0.000000 | # AGRI Gateway |
| LiebDevMgmt_C | 3027/tcp | 0.000000 | # LiebDevMgmt-C |
| LiebDevMgmt_C | 3027/udp | 0.000000 | LiebDevMgmt_C 3027/udp 0.000000 |
| LiebDevMgmt_DM | 3028/tcp | 0.000000 | # LiebDevMgmt-DM |
| LiebDevMgmt_DM | 3028/udp | 0.000000 | LiebDevMgmt_DM 3028/udp 0.000000 |
| LiebDevMgmt_A | 3029/tcp | 0.000000 | # LiebDevMgmt-A |
| LiebDevMgmt_A | 3029/udp | 0.000000 | LiebDevMgmt_A 3029/udp 0.000000 |
| arepa-cas | 3030/tcp | 0.000304 | # Arepa Cas |
| arepa-cas | 3030/udp | 0.000330 | # Arepa Cas |
| eppc | 3031/tcp | 0.000380 | # Remote AppleEvents/PPC Toolbox |
| eppc | 3031/udp | 0.000000 | # Remote AppleEvents/PPC Toolbox |
| redwood-chat | 3032/tcp | 0.000000 | # Redwood Chat |
| redwood-chat | 3032/udp | 0.000000 | # Redwood Chat |
| pdb | 3033/tcp | 0.000000 | pdb 3033/tcp 0.000000 |
| pdb | 3033/udp | 0.000000 | # PDB |
| osmosis-aeea | 3034/tcp | 0.000000 | # Osmosis / Helix (R) AEEA Port |
| osmosis-aeea | 3034/udp | 0.000000 | # Osmosis / Helix (R) AEEA Port |
| fjsv-gssagt | 3035/tcp | 0.000000 | # FJSV gssagt |
| fjsv-gssagt | 3035/udp | 0.000000 | # FJSV gssagt |
| hagel-dump | 3036/tcp | 0.000000 | # Hagel DUMP |
| hagel-dump | 3036/udp | 0.000330 | # Hagel DUMP |
| hp-san-mgmt | 3037/tcp | 0.000000 | # HP SAN Mgmt |
| hp-san-mgmt | 3037/udp | 0.000000 | # HP SAN Mgmt |
| santak-ups | 3038/tcp | 0.000000 | # Santak UPS |
| santak-ups | 3038/udp | 0.000000 | # Santak UPS |
| cogitate | 3039/tcp | 0.000000 | # Cogitate, Inc. |
| cogitate | 3039/udp | 0.000000 | # Cogitate, Inc. |
| tomato-springs | 3040/tcp | 0.000000 | # Tomato Springs |
| tomato-springs | 3040/udp | 0.000000 | # Tomato Springs |
| di-traceware | 3041/tcp | 0.000000 | di-traceware 3041/tcp 0.000000 |
| di-traceware | 3041/udp | 0.000000 | di-traceware 3041/udp 0.000000 |
| journee | 3042/tcp | 0.000000 | journee 3042/tcp 0.000000 |
| journee | 3042/udp | 0.000000 | journee 3042/udp 0.000000 |
| brp | 3043/tcp | 0.000000 | # Broadcast Routing Protocol |
| brp | 3043/udp | 0.000000 | # Broadcast Routing Protocol |
| epp | 3044/tcp | 0.000000 | # EndPoint Protocol |
| epp | 3044/udp | 0.000000 | # EndPoint Protocol |
| slnp | 3045/tcp | 0.000063 | # responsenet | SLNP (Simple Library Network Protocol) by Sisis Informationssysteme GmbH | ResponseNet |
| responsenet | 3045/udp | 0.000000 | # ResponseNet |
| di-ase | 3046/tcp | 0.000000 | di-ase 3046/tcp 0.000000 |
| di-ase | 3046/udp | 0.000330 | di-ase 3046/udp 0.000330 |
| hlserver | 3047/tcp | 0.000000 | # Fast Security HL Server |
| hlserver | 3047/udp | 0.000000 | # Fast Security HL Server |
| pctrader | 3048/tcp | 0.000000 | # Sierra Net PC Trader |
| pctrader | 3048/udp | 0.000661 | # Sierra Net PC Trader |
| cfs | 3049/tcp | 0.000063 | # nsws | cryptographic file system (nfs) (proposed) | NSWS |
| cfs | 3049/udp | 0.000675 | # cryptographic file system (nfs) |
| gds_db | 3050/tcp | 0.000152 | # gds-db |
| gds_db | 3050/udp | 0.000330 | gds_db 3050/udp 0.000330 |
| galaxy-server | 3051/tcp | 0.000000 | # Galaxy Server |
| galaxy-server | 3051/udp | 0.000000 | # Galaxy Server |
| powerchute | 3052/tcp | 0.000966 | # apc-3052 | APC 3052 |
| apc-3052 | 3052/udp | 0.003304 | # APC 3052 |
| dsom-server | 3053/tcp | 0.000000 | dsom-server 3053/tcp 0.000000 |
| dsom-server | 3053/udp | 0.000000 | dsom-server 3053/udp 0.000000 |
| amt-cnf-prot | 3054/tcp | 0.000000 | # AMT CNF PROT |
| amt-cnf-prot | 3054/udp | 0.000661 | # AMT CNF PROT |
| policyserver | 3055/tcp | 0.000000 | # Policy Server |
| policyserver | 3055/udp | 0.000000 | # Policy Server |
| cdl-server | 3056/tcp | 0.000000 | # CDL Server |
| cdl-server | 3056/udp | 0.000000 | # CDL Server |
| goahead-fldup | 3057/tcp | 0.000076 | # GoAhead FldUp |
| goahead-fldup | 3057/udp | 0.000000 | # GoAhead FldUp |
| videobeans | 3058/tcp | 0.000000 | videobeans 3058/tcp 0.000000 |
| videobeans | 3058/udp | 0.000000 | videobeans 3058/udp 0.000000 |
| qsoft | 3059/tcp | 0.000000 | qsoft 3059/tcp 0.000000 |
| qsoft | 3059/udp | 0.000000 | qsoft 3059/udp 0.000000 |
| interserver | 3060/tcp | 0.000000 | interserver 3060/tcp 0.000000 |
| interserver | 3060/udp | 0.000330 | interserver 3060/udp 0.000330 |
| cautcpd | 3061/tcp | 0.000000 | cautcpd 3061/tcp 0.000000 |
| cautcpd | 3061/udp | 0.000330 | cautcpd 3061/udp 0.000330 |
| ncacn-ip-tcp | 3062/tcp | 0.000076 | ncacn-ip-tcp 3062/tcp 0.000076 |
| ncacn-ip-tcp | 3062/udp | 0.000000 | ncacn-ip-tcp 3062/udp 0.000000 |
| ncadg-ip-udp | 3063/tcp | 0.000076 | ncadg-ip-udp 3063/tcp 0.000076 |
| ncadg-ip-udp | 3063/udp | 0.000000 | ncadg-ip-udp 3063/udp 0.000000 |
| dnet-tstproxy | 3064/tcp | 0.000063 | # rprt | distributed.net (a closed source crypto-cracking project) proxy test port | Remote Port Redirector |
| rprt | 3064/udp | 0.000000 | # Remote Port Redirector |
| slinterbase | 3065/tcp | 0.000000 | slinterbase 3065/tcp 0.000000 |
| slinterbase | 3065/udp | 0.000000 | slinterbase 3065/udp 0.000000 |
| netattachsdmp | 3066/tcp | 0.000000 | netattachsdmp 3066/tcp 0.000000 |
| netattachsdmp | 3066/udp | 0.000330 | # NETATTACHSDMP |
| fjhpjp | 3067/tcp | 0.000000 | fjhpjp 3067/tcp 0.000000 |
| fjhpjp | 3067/udp | 0.000330 | # FJHPJP |
| ls3bcast | 3068/tcp | 0.000000 | # ls3 Broadcast |
| ls3bcast | 3068/udp | 0.000000 | # ls3 Broadcast |
| ls3 | 3069/tcp | 0.000000 | ls3 3069/tcp 0.000000 |
| ls3 | 3069/udp | 0.000000 | ls3 3069/udp 0.000000 |
| mgxswitch | 3070/tcp | 0.000000 | mgxswitch 3070/tcp 0.000000 |
| mgxswitch | 3070/udp | 0.000000 | # MGXSWITCH |
| csd-mgmt-port | 3071/tcp | 0.000380 | # xplat-replicate | ContinuStor Manager Port | Crossplatform replication protocol |
| csd-mgmt-port | 3071/udp | 0.000000 | # ContinuStor Manager Port |
| csd-monitor | 3072/tcp | 0.000000 | # ContinuStor Monitor Port |
| csd-monitor | 3072/udp | 0.000000 | # ContinuStor Monitor Port |
| vcrp | 3073/tcp | 0.000000 | # Very simple chatroom prot |
| vcrp | 3073/udp | 0.000000 | # Very simple chatroom prot |
| xbox | 3074/tcp | 0.000000 | # Xbox game port |
| xbox | 3074/udp | 0.000000 | # Xbox game port |
| orbix-locator | 3075/tcp | 0.000000 | # Orbix 2000 Locator |
| orbix-locator | 3075/udp | 0.000330 | # Orbix 2000 Locator |
| orbix-config | 3076/tcp | 0.000000 | # Orbix 2000 Config |
| orbix-config | 3076/udp | 0.000330 | # Orbix 2000 Config |
| orbix-loc-ssl | 3077/tcp | 0.000304 | # Orbix 2000 Locator SSL |
| orbix-loc-ssl | 3077/udp | 0.000000 | # Orbix 2000 Locator SSL |
| orbix-cfg-ssl | 3078/tcp | 0.000000 | # Orbix 2000 Locator SSL |
| orbix-cfg-ssl | 3078/udp | 0.000000 | # Orbix 2000 Locator SSL |
| lv-frontpanel | 3079/tcp | 0.000000 | # LV Front Panel |
| lv-frontpanel | 3079/udp | 0.000000 | # LV Front Panel |
| stm_pproc | 3080/tcp | 0.000076 | # stm-pproc |
| stm_pproc | 3080/udp | 0.000000 | stm_pproc 3080/udp 0.000000 |
| tl1-lv | 3081/tcp | 0.000000 | tl1-lv 3081/tcp 0.000000 |
| tl1-lv | 3081/udp | 0.000000 | # TL1-LV |
| tl1-raw | 3082/tcp | 0.000000 | tl1-raw 3082/tcp 0.000000 |
| tl1-raw | 3082/udp | 0.000000 | # TL1-RAW |
| tl1-telnet | 3083/tcp | 0.000000 | tl1-telnet 3083/tcp 0.000000 |
| tl1-telnet | 3083/udp | 0.000000 | # TL1-TELNET |
| itm-mccs | 3084/tcp | 0.000000 | itm-mccs 3084/tcp 0.000000 |
| itm-mccs | 3084/udp | 0.000000 | # ITM-MCCS |
| pcihreq | 3085/tcp | 0.000000 | pcihreq 3085/tcp 0.000000 |
| pcihreq | 3085/udp | 0.000000 | # PCIHReq |
| sj3 | 3086/tcp | 0.000050 | # jdl-dbkitchen | SJ3 (kanji input) | JDL-DBKitchen |
| jdl-dbkitchen | 3086/udp | 0.000000 | # JDL-DBKitchen |
| asoki-sma | 3087/tcp | 0.000000 | # Asoki SMA |
| asoki-sma | 3087/udp | 0.000000 | # Asoki SMA |
| xdtp | 3088/tcp | 0.000000 | # eXtensible Data Transfer Protocol |
| xdtp | 3088/udp | 0.000000 | # eXtensible Data Transfer Protocol |
| ptk-alink | 3089/tcp | 0.000076 | # ParaTek Agent Linking |
| ptk-alink | 3089/udp | 0.000000 | # ParaTek Agent Linking |
| stss | 3090/tcp | 0.000000 | # Senforce Session Services |
| stss | 3090/udp | 0.000000 | # Senforce Session Services |
| 1ci-smcs | 3091/tcp | 0.000000 | # 1Ci Server Management |
| 1ci-smcs | 3091/udp | 0.000000 | # 1Ci Server Management |
| rapidmq-center | 3093/tcp | 0.000000 | # Jiiva RapidMQ Center |
| rapidmq-center | 3093/udp | 0.000000 | # Jiiva RapidMQ Center |
| rapidmq-reg | 3094/tcp | 0.000000 | # Jiiva RapidMQ Registry |
| rapidmq-reg | 3094/udp | 0.000661 | # Jiiva RapidMQ Registry |
| panasas | 3095/tcp | 0.000000 | # Panasas rendevous port | Panasas rendezvous port |
| panasas | 3095/udp | 0.000000 | # Panasas rendevous port |
| ndl-aps | 3096/tcp | 0.000000 | # Active Print Server Port |
| ndl-aps | 3096/udp | 0.000000 | # Active Print Server Port |
| itu-bicc-stc | 3097/sctp | 0.000000 | # ITU-T Q.1902.1/Q.2150.3 |
| umm-port | 3098/tcp | 0.000000 | # Universal Message Manager |
| umm-port | 3098/udp | 0.000000 | # Universal Message Manager |
| chmd | 3099/tcp | 0.000000 | # CHIPSY Machine Daemon |
| chmd | 3099/udp | 0.000330 | # CHIPSY Machine Daemon |
| opcon-xps | 3100/tcp | 0.000000 | # OpCon/xps |
| opcon-xps | 3100/udp | 0.000000 | # OpCon/xps |
| hp-pxpib | 3101/tcp | 0.000000 | # HP PolicyXpert PIB Server |
| hp-pxpib | 3101/udp | 0.000000 | # HP PolicyXpert PIB Server |
| sl-mon | 3102/tcp | 0.000076 | # SoftlinK Mon Port | SoftlinK Mon Port |
| sl-mon | 3102/udp | 0.000330 | # SoftlinK Mon Port |
| autocuesmi | 3103/tcp | 0.000076 | # Autocue SMI Protocol |
| autocuesmi | 3103/udp | 0.000000 | # Autocue SMI Protocol |
| autocuelog | 3104/tcp | 0.000000 | # autocuetime | Autocue Logger Protocol | Autocue Time Service |
| autocuetime | 3104/udp | 0.000330 | # Autocue Time Service |
| cardbox | 3105/tcp | 0.000000 | cardbox 3105/tcp 0.000000 |
| cardbox | 3105/udp | 0.000000 | # Cardbox |
| cardbox-http | 3106/tcp | 0.000000 | # Cardbox HTTP |
| cardbox-http | 3106/udp | 0.000000 | # Cardbox HTTP |
| business | 3107/tcp | 0.000000 | # Business protocol |
| business | 3107/udp | 0.000000 | # Business protocol |
| geolocate | 3108/tcp | 0.000000 | # Geolocate protocol |
| geolocate | 3108/udp | 0.000000 | # Geolocate protocol |
| personnel | 3109/tcp | 0.000000 | # Personnel protocol |
| personnel | 3109/udp | 0.000000 | # Personnel protocol |
| sim-control | 3110/tcp | 0.000000 | # simulator control port |
| sim-control | 3110/udp | 0.000330 | # simulator control port |
| wsynch | 3111/tcp | 0.000000 | # Web Synchronous Services |
| wsynch | 3111/udp | 0.000000 | # Web Synchronous Services |
| ksysguard | 3112/tcp | 0.000000 | # KDE System Guard |
| ksysguard | 3112/udp | 0.000000 | # KDE System Guard |
| cs-auth-svr | 3113/tcp | 0.000000 | # CS-Authenticate Svr Port |
| cs-auth-svr | 3113/udp | 0.000330 | # CS-Authenticate Svr Port |
| ccmad | 3114/tcp | 0.000000 | # CCM AutoDiscover |
| ccmad | 3114/udp | 0.000000 | # CCM AutoDiscover |
| mctet-master | 3115/tcp | 0.000000 | # MCTET Master |
| mctet-master | 3115/udp | 0.000000 | # MCTET Master |
| mctet-gateway | 3116/tcp | 0.000000 | # MCTET Gateway |
| mctet-gateway | 3116/udp | 0.000000 | # MCTET Gateway |
| mctet-jserv | 3117/tcp | 0.000000 | # MCTET Jserv |
| mctet-jserv | 3117/udp | 0.000000 | # MCTET Jserv |
| pkagent | 3118/tcp | 0.000076 | pkagent 3118/tcp 0.000076 |
| pkagent | 3118/udp | 0.000000 | # PKAgent |
| d2000kernel | 3119/tcp | 0.000152 | # D2000 Kernel Port |
| d2000kernel | 3119/udp | 0.000000 | # D2000 Kernel Port |
| d2000webserver | 3120/tcp | 0.000000 | # D2000 Webserver Port |
| d2000webserver | 3120/udp | 0.000000 | # D2000 Webserver Port |
| pcmk-remote | 3121/tcp | 0.000076 | # The pacemaker remote (pcmk-remote) service extends high availability functionality outside of the Linux cluster into remote nodes. |
| vtr-emulator | 3122/tcp | 0.000000 | # MTI VTR Emulator port |
| vtr-emulator | 3122/udp | 0.000000 | # MTI VTR Emulator port |
| edix | 3123/tcp | 0.000000 | # EDI Translation Protocol |
| edix | 3123/udp | 0.000000 | # EDI Translation Protocol |
| beacon-port | 3124/tcp | 0.000000 | # Beacon Port |
| beacon-port | 3124/udp | 0.000000 | # Beacon Port |
| a13-an | 3125/tcp | 0.000000 | # A13-AN Interface |
| a13-an | 3125/udp | 0.000000 | # A13-AN Interface |
| ctx-bridge | 3127/tcp | 0.000000 | # CTX Bridge Port |
| ctx-bridge | 3127/udp | 0.000000 | # CTX Bridge Port |
| squid-http | 3128/tcp | 0.004516 | # ndl-aas | Active API Server Port |
| ndl-aas | 3128/udp | 0.000000 | # Active API Server Port |
| netport-id | 3129/tcp | 0.000000 | # NetPort Discovery Port |
| netport-id | 3129/udp | 0.000000 | # NetPort Discovery Port |
| icpv2 | 3130/tcp | 0.000000 | icpv2 3130/tcp 0.000000 |
| squid-ipc | 3130/udp | 0.006656 | squid-ipc 3130/udp 0.006656 |
| netbookmark | 3131/tcp | 0.000000 | # Net Book Mark |
| netbookmark | 3131/udp | 0.000330 | # Net Book Mark |
| ms-rule-engine | 3132/tcp | 0.000000 | # Microsoft Business Rule Engine Update Service |
| ms-rule-engine | 3132/udp | 0.000000 | # Microsoft Business Rule Engine Update Service |
| prism-deploy | 3133/tcp | 0.000000 | # Prism Deploy User Port |
| prism-deploy | 3133/udp | 0.000000 | # Prism Deploy User Port |
| ecp | 3134/tcp | 0.000000 | # Extensible Code Protocol |
| ecp | 3134/udp | 0.000000 | # Extensible Code Protocol |
| peerbook-port | 3135/tcp | 0.000000 | # PeerBook Port |
| peerbook-port | 3135/udp | 0.000000 | # PeerBook Port |
| grubd | 3136/tcp | 0.000000 | # Grub Server Port |
| grubd | 3136/udp | 0.000000 | # Grub Server Port |
| rtnt-1 | 3137/tcp | 0.000000 | # rtnt-1 data packets |
| rtnt-1 | 3137/udp | 0.000000 | # rtnt-1 data packets |
| rtnt-2 | 3138/tcp | 0.000000 | # rtnt-2 data packets |
| rtnt-2 | 3138/udp | 0.000000 | # rtnt-2 data packets |
| incognitorv | 3139/tcp | 0.000000 | # Incognito Rendez-Vous |
| incognitorv | 3139/udp | 0.000000 | # Incognito Rendez-Vous |
| ariliamulti | 3140/tcp | 0.000000 | # Arilia Multiplexor |
| ariliamulti | 3140/udp | 0.000000 | # Arilia Multiplexor |
| vmodem | 3141/tcp | 0.000038 | vmodem 3141/tcp 0.000038 |
| vmodem | 3141/udp | 0.000560 | vmodem 3141/udp 0.000560 |
| apt-cacher | 3142/tcp | 0.000000 | # rdc-wh-eos | A server which keeps a local cache of Debian/Ubuntu package files | RDC WH EOS |
| rdc-wh-eos | 3142/udp | 0.000000 | # RDC WH EOS |
| seaview | 3143/tcp | 0.000000 | # Sea View |
| seaview | 3143/udp | 0.000000 | # Sea View |
| tarantella | 3144/tcp | 0.000000 | tarantella 3144/tcp 0.000000 |
| tarantella | 3144/udp | 0.000000 | # Tarantella |
| csi-lfap | 3145/tcp | 0.000000 | csi-lfap 3145/tcp 0.000000 |
| csi-lfap | 3145/udp | 0.000000 | # CSI-LFAP |
| bears-02 | 3146/tcp | 0.000076 | bears-02 3146/tcp 0.000076 |
| bears-02 | 3146/udp | 0.000000 | bears-02 3146/udp 0.000000 |
| rfio | 3147/tcp | 0.000000 | rfio 3147/tcp 0.000000 |
| rfio | 3147/udp | 0.000330 | # RFIO |
| nm-game-admin | 3148/tcp | 0.000000 | # NetMike Game Administrator |
| nm-game-admin | 3148/udp | 0.000330 | # NetMike Game Administrator |
| nm-game-server | 3149/tcp | 0.000000 | # NetMike Game Server |
| nm-game-server | 3149/udp | 0.000000 | # NetMike Game Server |
| nm-asses-admin | 3150/tcp | 0.000000 | # NetMike Assessor Administrator |
| nm-asses-admin | 3150/udp | 0.000000 | # NetMike Assessor Administrator |
| nm-assessor | 3151/tcp | 0.000000 | # NetMike Assessor |
| nm-assessor | 3151/udp | 0.000000 | # NetMike Assessor |
| feitianrockey | 3152/tcp | 0.000000 | # FeiTian Port |
| feitianrockey | 3152/udp | 0.000000 | # FeiTian Port |
| s8-client-port | 3153/tcp | 0.000000 | # S8Cargo Client Port |
| s8-client-port | 3153/udp | 0.000000 | # S8Cargo Client Port |
| ccmrmi | 3154/tcp | 0.000000 | # ON RMI Registry |
| ccmrmi | 3154/udp | 0.000000 | # ON RMI Registry |
| jpegmpeg | 3155/tcp | 0.000000 | # JpegMpeg Port |
| jpegmpeg | 3155/udp | 0.000000 | # JpegMpeg Port |
| indura | 3156/tcp | 0.000000 | # Indura Collector |
| indura | 3156/udp | 0.000330 | # Indura Collector |
| e3consultants | 3157/tcp | 0.000000 | # CCC Listener Port |
| e3consultants | 3157/udp | 0.000000 | # CCC Listener Port |
| stvp | 3158/tcp | 0.000000 | # SmashTV Protocol |
| stvp | 3158/udp | 0.000000 | # SmashTV Protocol |
| navegaweb-port | 3159/tcp | 0.000000 | # NavegaWeb Tarification |
| navegaweb-port | 3159/udp | 0.000000 | # NavegaWeb Tarification |
| tip-app-server | 3160/tcp | 0.000000 | # TIP Application Server |
| tip-app-server | 3160/udp | 0.000330 | # TIP Application Server |
| doc1lm | 3161/tcp | 0.000000 | # DOC1 License Manager |
| doc1lm | 3161/udp | 0.000000 | # DOC1 License Manager |
| sflm | 3162/tcp | 0.000152 | sflm 3162/tcp 0.000152 |
| sflm | 3162/udp | 0.000661 | # SFLM |
| res-sap | 3163/tcp | 0.000000 | res-sap 3163/tcp 0.000000 |
| res-sap | 3163/udp | 0.000000 | # RES-SAP |
| imprs | 3164/tcp | 0.000000 | imprs 3164/tcp 0.000000 |
| imprs | 3164/udp | 0.000000 | # IMPRS |
| newgenpay | 3165/tcp | 0.000000 | # Newgenpay Engine Service |
| newgenpay | 3165/udp | 0.000330 | # Newgenpay Engine Service |
| sossecollector | 3166/tcp | 0.000000 | # Quest Spotlight Out-Of-Process Collector |
| sossecollector | 3166/udp | 0.000000 | # Quest Spotlight Out-Of-Process Collector |
| nowcontact | 3167/tcp | 0.000076 | # Now Contact Public Server |
| nowcontact | 3167/udp | 0.000000 | # Now Contact Public Server |
| poweronnud | 3168/tcp | 0.000228 | # Now Up-to-Date Public Server |
| poweronnud | 3168/udp | 0.000000 | # Now Up-to-Date Public Server |
| serverview-as | 3169/tcp | 0.000000 | serverview-as 3169/tcp 0.000000 |
| serverview-as | 3169/udp | 0.000330 | # SERVERVIEW-AS |
| serverview-asn | 3170/tcp | 0.000000 | serverview-asn 3170/tcp 0.000000 |
| serverview-asn | 3170/udp | 0.000330 | # SERVERVIEW-ASN |
| serverview-gf | 3171/tcp | 0.000000 | serverview-gf 3171/tcp 0.000000 |
| serverview-gf | 3171/udp | 0.000000 | # SERVERVIEW-GF |
| serverview-rm | 3172/tcp | 0.000000 | serverview-rm 3172/tcp 0.000000 |
| serverview-rm | 3172/udp | 0.000000 | # SERVERVIEW-RM |
| serverview-icc | 3173/tcp | 0.000000 | serverview-icc 3173/tcp 0.000000 |
| serverview-icc | 3173/udp | 0.000330 | # SERVERVIEW-ICC |
| armi-server | 3174/tcp | 0.000000 | # ARMI Server |
| armi-server | 3174/udp | 0.000000 | # ARMI Server |
| t1-e1-over-ip | 3175/tcp | 0.000000 | # T1_E1_Over_IP |
| t1-e1-over-ip | 3175/udp | 0.000000 | # T1_E1_Over_IP |
| ars-master | 3176/tcp | 0.000000 | # ARS Master |
| ars-master | 3176/udp | 0.000000 | # ARS Master |
| phonex-port | 3177/tcp | 0.000000 | # Phonex Protocol |
| phonex-port | 3177/udp | 0.000000 | # Phonex Protocol |
| radclientport | 3178/tcp | 0.000000 | # Radiance UltraEdge Port |
| radclientport | 3178/udp | 0.000000 | # Radiance UltraEdge Port |
| h2gf-w-2m | 3179/tcp | 0.000000 | # H2GF W.2m Handover prot. |
| h2gf-w-2m | 3179/udp | 0.000330 | # H2GF W.2m Handover prot. |
| mc-brk-srv | 3180/tcp | 0.000000 | # Millicent Broker Server |
| mc-brk-srv | 3180/udp | 0.000000 | # Millicent Broker Server |
| bmcpatrolagent | 3181/tcp | 0.000000 | # BMC Patrol Agent |
| bmcpatrolagent | 3181/udp | 0.000000 | # BMC Patrol Agent |
| bmcpatrolrnvu | 3182/tcp | 0.000000 | # BMC Patrol Rendezvous |
| bmcpatrolrnvu | 3182/udp | 0.000000 | # BMC Patrol Rendezvous |
| cops-tls | 3183/tcp | 0.000000 | # COPS/TLS |
| cops-tls | 3183/udp | 0.000000 | # COPS/TLS |
| apogeex-port | 3184/tcp | 0.000000 | # ApogeeX Port |
| apogeex-port | 3184/udp | 0.000000 | # ApogeeX Port |
| smpppd | 3185/tcp | 0.000000 | # SuSE Meta PPPD |
| smpppd | 3185/udp | 0.000000 | # SuSE Meta PPPD |
| iiw-port | 3186/tcp | 0.000000 | # IIW Monitor User Port |
| iiw-port | 3186/udp | 0.000000 | # IIW Monitor User Port |
| odi-port | 3187/tcp | 0.000000 | # Open Design Listen Port |
| odi-port | 3187/udp | 0.000000 | # Open Design Listen Port |
| brcm-comm-port | 3188/tcp | 0.000000 | # Broadcom Port |
| brcm-comm-port | 3188/udp | 0.000000 | # Broadcom Port |
| pcle-infex | 3189/tcp | 0.000000 | # Pinnacle Sys InfEx Port |
| pcle-infex | 3189/udp | 0.000000 | # Pinnacle Sys InfEx Port |
| csvr-proxy | 3190/tcp | 0.000076 | # ConServR Proxy |
| csvr-proxy | 3190/udp | 0.000000 | # ConServR Proxy |
| csvr-sslproxy | 3191/tcp | 0.000000 | # ConServR SSL Proxy |
| csvr-sslproxy | 3191/udp | 0.000000 | # ConServR SSL Proxy |
| firemonrcc | 3192/tcp | 0.000000 | # FireMon Revision Control |
| firemonrcc | 3192/udp | 0.000000 | # FireMon Revision Control |
| spandataport | 3193/tcp | 0.000000 | spandataport 3193/tcp 0.000000 |
| spandataport | 3193/udp | 0.000000 | # SpanDataPort |
| magbind | 3194/tcp | 0.000000 | # Rockstorm MAG protocol |
| magbind | 3194/udp | 0.000000 | # Rockstorm MAG protocol |
| ncu-1 | 3195/tcp | 0.000000 | # Network Control Unit |
| ncu-1 | 3195/udp | 0.000000 | # Network Control Unit |
| ncu-2 | 3196/tcp | 0.000000 | # Network Control Unit |
| ncu-2 | 3196/udp | 0.000000 | # Network Control Unit |
| embrace-dp-s | 3197/tcp | 0.000000 | # Embrace Device Protocol Server |
| embrace-dp-s | 3197/udp | 0.000000 | # Embrace Device Protocol Server |
| embrace-dp-c | 3198/tcp | 0.000000 | # Embrace Device Protocol Client |
| embrace-dp-c | 3198/udp | 0.000000 | # Embrace Device Protocol Client |
| dmod-workspace | 3199/tcp | 0.000000 | # DMOD WorkSpace |
| dmod-workspace | 3199/udp | 0.000000 | # DMOD WorkSpace |
| tick-port | 3200/tcp | 0.000076 | # Press-sense Tick Port |
| tick-port | 3200/udp | 0.000000 | # Press-sense Tick Port |
| cpq-tasksmart | 3201/tcp | 0.000000 | cpq-tasksmart 3201/tcp 0.000000 |
| cpq-tasksmart | 3201/udp | 0.000330 | # CPQ-TaskSmart |
| intraintra | 3202/tcp | 0.000000 | intraintra 3202/tcp 0.000000 |
| intraintra | 3202/udp | 0.000000 | # IntraIntra |
| netwatcher-mon | 3203/tcp | 0.000000 | # Network Watcher Monitor |
| netwatcher-mon | 3203/udp | 0.000330 | # Network Watcher Monitor |
| netwatcher-db | 3204/tcp | 0.000000 | # Network Watcher DB Access |
| netwatcher-db | 3204/udp | 0.000000 | # Network Watcher DB Access |
| isns | 3205/tcp | 0.000000 | # iSNS Server Port |
| isns | 3205/udp | 0.000000 | # iSNS Server Port |
| ironmail | 3206/tcp | 0.000000 | # IronMail POP Proxy |
| ironmail | 3206/udp | 0.000000 | # IronMail POP Proxy |
| vx-auth-port | 3207/tcp | 0.000000 | # Veritas Authentication Port |
| vx-auth-port | 3207/udp | 0.000000 | # Veritas Authentication Port |
| pfu-prcallback | 3208/tcp | 0.000000 | # PFU PR Callback |
| pfu-prcallback | 3208/udp | 0.000000 | # PFU PR Callback |
| netwkpathengine | 3209/tcp | 0.000000 | # HP OpenView Network Path Engine Server |
| netwkpathengine | 3209/udp | 0.000000 | # HP OpenView Network Path Engine Server |
| flamenco-proxy | 3210/tcp | 0.000076 | # Flamenco Networks Proxy |
| flamenco-proxy | 3210/udp | 0.000000 | # Flamenco Networks Proxy |
| avsecuremgmt | 3211/tcp | 0.000380 | # Avocent Secure Management |
| avsecuremgmt | 3211/udp | 0.000000 | # Avocent Secure Management |
| surveyinst | 3212/tcp | 0.000000 | # Survey Instrument |
| surveyinst | 3212/udp | 0.000330 | # Survey Instrument |
| neon24x7 | 3213/tcp | 0.000000 | # NEON 24X7 Mission Control |
| neon24x7 | 3213/udp | 0.000000 | # NEON 24X7 Mission Control |
| jmq-daemon-1 | 3214/tcp | 0.000000 | # JMQ Daemon Port 1 |
| jmq-daemon-1 | 3214/udp | 0.000000 | # JMQ Daemon Port 1 |
| jmq-daemon-2 | 3215/tcp | 0.000000 | # JMQ Daemon Port 2 |
| jmq-daemon-2 | 3215/udp | 0.000000 | # JMQ Daemon Port 2 |
| ferrari-foam | 3216/tcp | 0.000000 | # Ferrari electronic FOAM |
| ferrari-foam | 3216/udp | 0.000000 | # Ferrari electronic FOAM |
| unite | 3217/tcp | 0.000000 | # Unified IP & Telecom Environment |
| unite | 3217/udp | 0.000000 | # Unified IP & Telecom Environment |
| smartpackets | 3218/tcp | 0.000000 | # EMC SmartPackets |
| smartpackets | 3218/udp | 0.000000 | # EMC SmartPackets |
| wms-messenger | 3219/tcp | 0.000000 | # WMS Messenger |
| wms-messenger | 3219/udp | 0.000000 | # WMS Messenger |
| xnm-ssl | 3220/tcp | 0.000076 | # XML NM over SSL |
| xnm-ssl | 3220/udp | 0.000000 | # XML NM over SSL |
| xnm-clear-text | 3221/tcp | 0.000228 | # XML NM over TCP |
| xnm-clear-text | 3221/udp | 0.000000 | # XML NM over TCP |
| glbp | 3222/tcp | 0.000000 | # Gateway Load Balancing Pr |
| glbp | 3222/udp | 0.000000 | # Gateway Load Balancing Pr |
| digivote | 3223/tcp | 0.000000 | # DIGIVOTE (R) Vote-Server |
| digivote | 3223/udp | 0.000000 | # DIGIVOTE (R) Vote-Server |
| aes-discovery | 3224/tcp | 0.000000 | # AES Discovery Port |
| aes-discovery | 3224/udp | 0.000000 | # AES Discovery Port |
| fcip-port | 3225/tcp | 0.000000 | # FCIP |
| fcip-port | 3225/udp | 0.000000 | # FCIP |
| isi-irp | 3226/tcp | 0.000000 | # ISI Industry Software IRP |
| isi-irp | 3226/udp | 0.000000 | # ISI Industry Software IRP |
| dwnmshttp | 3227/tcp | 0.000000 | # DiamondWave NMS Server |
| dwnmshttp | 3227/udp | 0.000000 | # DiamondWave NMS Server |
| dwmsgserver | 3228/tcp | 0.000000 | # DiamondWave MSG Server |
| dwmsgserver | 3228/udp | 0.000330 | # DiamondWave MSG Server |
| global-cd-port | 3229/tcp | 0.000000 | # Global CD Port |
| global-cd-port | 3229/udp | 0.000000 | # Global CD Port |
| sftdst-port | 3230/tcp | 0.000000 | # Software Distributor Port |
| sftdst-port | 3230/udp | 0.000000 | # Software Distributor Port |
| vidigo | 3231/tcp | 0.000000 | # VidiGo communication (previous was: Delta Solutions Direct) |
| vidigo | 3231/udp | 0.000000 | # VidiGo communication (previous was: Delta Solutions Direct) |
| mdtp | 3232/tcp | 0.000000 | # MDT port |
| mdtp | 3232/udp | 0.000000 | # MDT port |
| whisker | 3233/tcp | 0.000000 | # WhiskerControl main port |
| whisker | 3233/udp | 0.000661 | # WhiskerControl main port |
| alchemy | 3234/tcp | 0.000000 | # Alchemy Server |
| alchemy | 3234/udp | 0.000000 | # Alchemy Server |
| mdap-port | 3235/tcp | 0.000000 | # MDAP port | MDAP Port |
| mdap-port | 3235/udp | 0.000661 | # MDAP Port |
| apparenet-ts | 3236/tcp | 0.000000 | # appareNet Test Server |
| apparenet-ts | 3236/udp | 0.000000 | # appareNet Test Server |
| apparenet-tps | 3237/tcp | 0.000000 | # appareNet Test Packet Sequencer |
| apparenet-tps | 3237/udp | 0.000000 | # appareNet Test Packet Sequencer |
| apparenet-as | 3238/tcp | 0.000000 | # appareNet Analysis Server |
| apparenet-as | 3238/udp | 0.000000 | # appareNet Analysis Server |
| apparenet-ui | 3239/tcp | 0.000000 | # appareNet User Interface |
| apparenet-ui | 3239/udp | 0.000000 | # appareNet User Interface |
| triomotion | 3240/tcp | 0.000076 | # Trio Motion Control Port |
| triomotion | 3240/udp | 0.000000 | # Trio Motion Control Port |
| sysorb | 3241/tcp | 0.000000 | # SysOrb Monitoring Server |
| sysorb | 3241/udp | 0.000000 | # SysOrb Monitoring Server |
| sdp-id-port | 3242/tcp | 0.000000 | # Session Description ID |
| sdp-id-port | 3242/udp | 0.000000 | # Session Description ID |
| timelot | 3243/tcp | 0.000000 | # Timelot Port |
| timelot | 3243/udp | 0.000000 | # Timelot Port |
| onesaf | 3244/tcp | 0.000000 | onesaf 3244/tcp 0.000000 |
| onesaf | 3244/udp | 0.000000 | # OneSAF |
| vieo-fe | 3245/tcp | 0.000000 | # VIEO Fabric Executive |
| vieo-fe | 3245/udp | 0.000330 | # VIEO Fabric Executive |
| dvt-system | 3246/tcp | 0.000000 | # DVT SYSTEM PORT |
| kademlia | 3246/udp | 0.000857 | # Kademlia P2P (mlnet) |
| dvt-data | 3247/tcp | 0.000000 | # DVT DATA LINK |
| dvt-data | 3247/udp | 0.000000 | # DVT DATA LINK |
| procos-lm | 3248/tcp | 0.000000 | # PROCOS LM |
| procos-lm | 3248/udp | 0.000000 | # PROCOS LM |
| ssp | 3249/tcp | 0.000000 | # State Sync Protocol |
| ssp | 3249/udp | 0.000000 | # State Sync Protocol |
| hicp | 3250/tcp | 0.000000 | # HMS hicp port |
| hicp | 3250/udp | 0.000000 | # HMS hicp port |
| sysscanner | 3251/tcp | 0.000000 | # Sys Scanner |
| sysscanner | 3251/udp | 0.000000 | # Sys Scanner |
| dhe | 3252/tcp | 0.000000 | # DHE port |
| dhe | 3252/udp | 0.000000 | # DHE port |
| pda-data | 3253/tcp | 0.000000 | # PDA Data |
| pda-data | 3253/udp | 0.000000 | # PDA Data |
| pda-sys | 3254/tcp | 0.000000 | # PDA System |
| pda-sys | 3254/udp | 0.000330 | # PDA System |
| semaphore | 3255/tcp | 0.000000 | # Semaphore Connection Port |
| semaphore | 3255/udp | 0.000000 | # Semaphore Connection Port |
| cpqrpm-agent | 3256/tcp | 0.000000 | # Compaq RPM Agent Port |
| cpqrpm-agent | 3256/udp | 0.000330 | # Compaq RPM Agent Port |
| cpqrpm-server | 3257/tcp | 0.000000 | # Compaq RPM Server Port |
| cpqrpm-server | 3257/udp | 0.000000 | # Compaq RPM Server Port |
| ivecon-port | 3258/tcp | 0.000000 | # Ivecon Server Port |
| ivecon-port | 3258/udp | 0.000000 | # Ivecon Server Port |
| epncdp2 | 3259/tcp | 0.000000 | # Epson Network Common Devi |
| epncdp2 | 3259/udp | 0.000000 | # Epson Network Common Devi |
| iscsi | 3260/tcp | 0.001064 | # iscsi-target | iSCSI port |
| iscsi | 3260/udp | 0.000000 | # iSCSI |
| winshadow | 3261/tcp | 0.000304 | winshadow 3261/tcp 0.000304 |
| winshadow | 3261/udp | 0.000000 | # winShadow |
| necp | 3262/tcp | 0.000000 | necp 3262/tcp 0.000000 |
| necp | 3262/udp | 0.000000 | # NECP |
| ecolor-imager | 3263/tcp | 0.000076 | # E-Color Enterprise Imager |
| ecolor-imager | 3263/udp | 0.000330 | # E-Color Enterprise Imager |
| ccmail | 3264/tcp | 0.000038 | # cc:mail/lotus |
| ccmail | 3264/udp | 0.000395 | # cc:mail/lotus |
| altav-tunnel | 3265/tcp | 0.000000 | # Altav Tunnel |
| altav-tunnel | 3265/udp | 0.000330 | # Altav Tunnel |
| ns-cfg-server | 3266/tcp | 0.000000 | # NS CFG Server |
| ns-cfg-server | 3266/udp | 0.000000 | # NS CFG Server |
| ibm-dial-out | 3267/tcp | 0.000000 | # IBM Dial Out |
| ibm-dial-out | 3267/udp | 0.000000 | # IBM Dial Out |
| globalcatLDAP | 3268/tcp | 0.001229 | # msft-gc | Global Catalog LDAP | Microsoft Global Catalog |
| msft-gc | 3268/udp | 0.000000 | # Microsoft Global Catalog |
| globalcatLDAPssl | 3269/tcp | 0.001142 | # msft-gc-ssl | Global Catalog LDAP over ssl | Microsoft Global Catalog with LDAP/SSL |
| msft-gc-ssl | 3269/udp | 0.000000 | # Microsoft Global Catalog with LDAP/SSL |
| verismart | 3270/tcp | 0.000000 | verismart 3270/tcp 0.000000 |
| verismart | 3270/udp | 0.000000 | # Verismart |
| csoft-prev | 3271/tcp | 0.000000 | # CSoft Prev Port |
| csoft-prev | 3271/udp | 0.000000 | # CSoft Prev Port |
| user-manager | 3272/tcp | 0.000000 | # Fujitsu User Manager |
| user-manager | 3272/udp | 0.000330 | # Fujitsu User Manager |
| sxmp | 3273/tcp | 0.000000 | # Simple Extensible Multiplexed Protocol |
| sxmp | 3273/udp | 0.000330 | # Simple Extensible Multiplexed Protocol |
| ordinox-server | 3274/tcp | 0.000000 | # Ordinox Server |
| ordinox-server | 3274/udp | 0.000000 | # Ordinox Server |
| samd | 3275/tcp | 0.000000 | samd 3275/tcp 0.000000 |
| samd | 3275/udp | 0.000000 | # SAMD |
| maxim-asics | 3276/tcp | 0.000000 | # Maxim ASICs |
| maxim-asics | 3276/udp | 0.000000 | # Maxim ASICs |
| awg-proxy | 3277/tcp | 0.000000 | # AWG Proxy |
| awg-proxy | 3277/udp | 0.000000 | # AWG Proxy |
| lkcmserver | 3278/tcp | 0.000000 | # LKCM Server |
| lkcmserver | 3278/udp | 0.000330 | # LKCM Server |
| admind | 3279/tcp | 0.000000 | admind 3279/tcp 0.000000 |
| admind | 3279/udp | 0.000330 | admind 3279/udp 0.000330 |
| vs-server | 3280/tcp | 0.000076 | # VS Server |
| vs-server | 3280/udp | 0.000000 | # VS Server |
| sysopt | 3281/tcp | 0.000076 | sysopt 3281/tcp 0.000076 |
| sysopt | 3281/udp | 0.000000 | # SYSOPT |
| datusorb | 3282/tcp | 0.000000 | datusorb 3282/tcp 0.000000 |
| datusorb | 3282/udp | 0.000000 | # Datusorb |
| netassistant | 3283/tcp | 0.000760 | # #ERROR:Apple Remote Desktop (Net Assistant) | Apple Remote Desktop Net Assistant reporting feature | Net Assistant |
| netassistant | 3283/udp | 0.066072 | # Apple Remote Desktop Net Assistant reporting feature |
| 4talk | 3284/tcp | 0.000000 | 4talk 3284/tcp 0.000000 |
| 4talk | 3284/udp | 0.000000 | # 4Talk |
| plato | 3285/tcp | 0.000000 | plato 3285/tcp 0.000000 |
| plato | 3285/udp | 0.000000 | # Plato |
| e-net | 3286/tcp | 0.000000 | e-net 3286/tcp 0.000000 |
| e-net | 3286/udp | 0.000000 | # E-Net |
| directvdata | 3287/tcp | 0.000000 | directvdata 3287/tcp 0.000000 |
| directvdata | 3287/udp | 0.000000 | # DIRECTVDATA |
| cops | 3288/tcp | 0.000000 | cops 3288/tcp 0.000000 |
| cops | 3288/udp | 0.000000 | # COPS |
| enpc | 3289/tcp | 0.000000 | enpc 3289/tcp 0.000000 |
| enpc | 3289/udp | 0.000330 | # ENPC |
| caps-lm | 3290/tcp | 0.000000 | # CAPS LOGISTICS TOOLKIT - LM |
| caps-lm | 3290/udp | 0.000000 | # CAPS LOGISTICS TOOLKIT - LM |
| sah-lm | 3291/tcp | 0.000076 | # S A Holditch & Associates - LM |
| sah-lm | 3291/udp | 0.000330 | # S A Holditch & Associates - LM |
| meetingmaker | 3292/tcp | 0.000038 | # cart-o-rama | Meeting maker time management software | Cart O Rama |
| cart-o-rama | 3292/udp | 0.000330 | # Cart O Rama |
| fg-fps | 3293/tcp | 0.000000 | fg-fps 3293/tcp 0.000000 |
| fg-fps | 3293/udp | 0.000330 | fg-fps 3293/udp 0.000330 |
| fg-gip | 3294/tcp | 0.000000 | fg-gip 3294/tcp 0.000000 |
| fg-gip | 3294/udp | 0.000000 | fg-gip 3294/udp 0.000000 |
| dyniplookup | 3295/tcp | 0.000000 | # Dynamic IP Lookup |
| dyniplookup | 3295/udp | 0.000000 | # Dynamic IP Lookup |
| rib-slm | 3296/tcp | 0.000000 | # Rib License Manager |
| rib-slm | 3296/udp | 0.001321 | # Rib License Manager |
| cytel-lm | 3297/tcp | 0.000000 | # Cytel License Manager |
| cytel-lm | 3297/udp | 0.000000 | # Cytel License Manager |
| deskview | 3298/tcp | 0.000000 | deskview 3298/tcp 0.000000 |
| deskview | 3298/udp | 0.000000 | # DeskView |
| saprouter | 3299/tcp | 0.000125 | # pdrncs |
| pdrncs | 3299/udp | 0.000000 | pdrncs 3299/udp 0.000000 |
| ceph | 3300/tcp | 0.000380 | # Ceph monitor |
| tarantool | 3301/tcp | 0.000380 | # Tarantool in-memory computing platform |
| mcs-fastmail | 3302/tcp | 0.000000 | # MCS Fastmail |
| mcs-fastmail | 3302/udp | 0.000000 | # MCS Fastmail |
| opsession-clnt | 3303/tcp | 0.000000 | # OP Session Client |
| opsession-clnt | 3303/udp | 0.000000 | # OP Session Client |
| opsession-srvr | 3304/tcp | 0.000152 | # OP Session Server |
| opsession-srvr | 3304/udp | 0.000661 | # OP Session Server |
| odette-ftp | 3305/tcp | 0.000000 | odette-ftp 3305/tcp 0.000000 |
| odette-ftp | 3305/udp | 0.000330 | # ODETTE-FTP |
| mysql | 3306/tcp | 0.045390 | mysql 3306/tcp 0.045390 |
| mysql | 3306/udp | 0.000000 | # MySQL |
| opsession-prxy | 3307/tcp | 0.000152 | # OP Session Proxy |
| opsession-prxy | 3307/udp | 0.000000 | # OP Session Proxy |
| tns-server | 3308/tcp | 0.000000 | # TNS Server |
| tns-server | 3308/udp | 0.000000 | # TNS Server |
| tns-adv | 3309/tcp | 0.000000 | # TNS ADV |
| tns-adv | 3309/udp | 0.000000 | # TNS ADV |
| dyna-access | 3310/tcp | 0.000076 | # Dyna Access |
| dyna-access | 3310/udp | 0.000000 | # Dyna Access |
| mcns-tel-ret | 3311/tcp | 0.000076 | # MCNS Tel Ret |
| mcns-tel-ret | 3311/udp | 0.000000 | # MCNS Tel Ret |
| appman-server | 3312/tcp | 0.000000 | # Application Management Server |
| appman-server | 3312/udp | 0.000000 | # Application Management Server |
| uorb | 3313/tcp | 0.000000 | # Unify Object Broker |
| uorb | 3313/udp | 0.000000 | # Unify Object Broker |
| uohost | 3314/tcp | 0.000000 | # Unify Object Host |
| uohost | 3314/udp | 0.000000 | # Unify Object Host |
| cdid | 3315/tcp | 0.000000 | cdid 3315/tcp 0.000000 |
| cdid | 3315/udp | 0.000330 | # CDID |
| aicc-cmi | 3316/tcp | 0.000000 | # AICC/CMI |
| aicc-cmi | 3316/udp | 0.000000 | # AICC/CMI |
| vsaiport | 3317/tcp | 0.000000 | # VSAI PORT |
| vsaiport | 3317/udp | 0.000000 | # VSAI PORT |
| ssrip | 3318/tcp | 0.000000 | # Swith to Swith Routing Information Protocol |
| ssrip | 3318/udp | 0.000000 | # Swith to Swith Routing Information Protocol |
| sdt-lmd | 3319/tcp | 0.000076 | # SDT License Manager |
| sdt-lmd | 3319/udp | 0.000000 | # SDT License Manager |
| officelink2000 | 3320/tcp | 0.000000 | # Office Link 2000 |
| officelink2000 | 3320/udp | 0.000000 | # Office Link 2000 |
| vnsstr | 3321/tcp | 0.000000 | vnsstr 3321/tcp 0.000000 |
| vnsstr | 3321/udp | 0.000330 | # VNSSTR |
| active-net | 3322/tcp | 0.000228 | # Active Networks |
| active-net | 3322/udp | 0.000000 | # Active Networks |
| active-net | 3323/tcp | 0.000380 | # Active Networks |
| active-net | 3323/udp | 0.000000 | # Active Networks |
| active-net | 3324/tcp | 0.000228 | # Active Networks |
| active-net | 3324/udp | 0.000000 | # Active Networks |
| active-net | 3325/tcp | 0.000380 | # Active Networks |
| active-net | 3325/udp | 0.000000 | # Active Networks |
| sftu | 3326/tcp | 0.000000 | sftu 3326/tcp 0.000000 |
| sftu | 3326/udp | 0.000000 | # SFTU |
| bbars | 3327/tcp | 0.000000 | bbars 3327/tcp 0.000000 |
| bbars | 3327/udp | 0.000000 | # BBARS |
| egptlm | 3328/tcp | 0.000000 | # Eaglepoint License Manager |
| egptlm | 3328/udp | 0.000000 | # Eaglepoint License Manager |
| hp-device-disc | 3329/tcp | 0.000000 | # HP Device Disc |
| hp-device-disc | 3329/udp | 0.000000 | # HP Device Disc |
| mcs-calypsoicf | 3330/tcp | 0.000000 | # MCS Calypso ICF |
| mcs-calypsoicf | 3330/udp | 0.000000 | # MCS Calypso ICF |
| mcs-messaging | 3331/tcp | 0.000000 | # MCS Messaging |
| mcs-messaging | 3331/udp | 0.000330 | # MCS Messaging |
| mcs-mailsvr | 3332/tcp | 0.000000 | # MCS Mail Server |
| mcs-mailsvr | 3332/udp | 0.000000 | # MCS Mail Server |
| dec-notes | 3333/tcp | 0.000790 | # DEC Notes |
| dec-notes | 3333/udp | 0.000890 | # DEC Notes |
| directv-web | 3334/tcp | 0.000076 | # Direct TV Webcasting |
| directv-web | 3334/udp | 0.000330 | # Direct TV Webcasting |
| directv-soft | 3335/tcp | 0.000000 | # Direct TV Software Updates |
| directv-soft | 3335/udp | 0.000330 | # Direct TV Software Updates |
| directv-tick | 3336/tcp | 0.000000 | # Direct TV Tickers |
| directv-tick | 3336/udp | 0.000000 | # Direct TV Tickers |
| directv-catlg | 3337/tcp | 0.000000 | # Direct TV Data Catalog |
| directv-catlg | 3337/udp | 0.000330 | # Direct TV Data Catalog |
| anet-b | 3338/tcp | 0.000000 | # OMF data b |
| anet-b | 3338/udp | 0.000000 | # OMF data b |
| anet-l | 3339/tcp | 0.000000 | # OMF data l |
| anet-l | 3339/udp | 0.000330 | # OMF data l |
| anet-m | 3340/tcp | 0.000000 | # OMF data m |
| anet-m | 3340/udp | 0.000000 | # OMF data m |
| anet-h | 3341/tcp | 0.000000 | # OMF data h |
| anet-h | 3341/udp | 0.000000 | # OMF data h |
| webtie | 3342/tcp | 0.000000 | webtie 3342/tcp 0.000000 |
| webtie | 3342/udp | 0.000000 | # WebTIE |
| ms-cluster-net | 3343/tcp | 0.000000 | # MS Cluster Net |
| ms-cluster-net | 3343/udp | 0.001321 | # MS Cluster Net |
| bnt-manager | 3344/tcp | 0.000000 | # BNT Manager |
| bnt-manager | 3344/udp | 0.000000 | # BNT Manager |
| influence | 3345/tcp | 0.000000 | influence 3345/tcp 0.000000 |
| influence | 3345/udp | 0.000000 | # Influence |
| trnsprntproxy | 3346/tcp | 0.000000 | # Trnsprnt Proxy |
| trnsprntproxy | 3346/udp | 0.000000 | # Trnsprnt Proxy |
| phoenix-rpc | 3347/tcp | 0.000000 | # Phoenix RPC |
| phoenix-rpc | 3347/udp | 0.000000 | # Phoenix RPC |
| pangolin-laser | 3348/tcp | 0.000000 | # Pangolin Laser |
| pangolin-laser | 3348/udp | 0.000000 | # Pangolin Laser |
| chevinservices | 3349/tcp | 0.000000 | # Chevin Services |
| chevinservices | 3349/udp | 0.000000 | # Chevin Services |
| findviatv | 3350/tcp | 0.000000 | findviatv 3350/tcp 0.000000 |
| findviatv | 3350/udp | 0.000000 | # FINDVIATV |
| btrieve | 3351/tcp | 0.000380 | # Btrieve port |
| btrieve | 3351/udp | 0.000000 | # Btrieve port |
| ssql | 3352/tcp | 0.000000 | # Scalable SQL |
| ssql | 3352/udp | 0.000000 | # Scalable SQL |
| fatpipe | 3353/tcp | 0.000000 | fatpipe 3353/tcp 0.000000 |
| fatpipe | 3353/udp | 0.000000 | # FATPIPE |
| suitjd | 3354/tcp | 0.000000 | suitjd 3354/tcp 0.000000 |
| suitjd | 3354/udp | 0.000330 | # SUITJD |
| ordinox-dbase | 3355/tcp | 0.000000 | # Ordinox Dbase |
| ordinox-dbase | 3355/udp | 0.000000 | # Ordinox Dbase |
| upnotifyps | 3356/tcp | 0.000000 | upnotifyps 3356/tcp 0.000000 |
| upnotifyps | 3356/udp | 0.000000 | # UPNOTIFYPS |
| adtech-test | 3357/tcp | 0.000000 | # Adtech Test IP |
| adtech-test | 3357/udp | 0.000000 | # Adtech Test IP |
| mpsysrmsvr | 3358/tcp | 0.000000 | # Mp Sys Rmsvr |
| mpsysrmsvr | 3358/udp | 0.000000 | # Mp Sys Rmsvr |
| wg-netforce | 3359/tcp | 0.000000 | # WG NetForce |
| wg-netforce | 3359/udp | 0.000000 | # WG NetForce |
| kv-server | 3360/tcp | 0.000000 | # KV Server |
| kv-server | 3360/udp | 0.000000 | # KV Server |
| kv-agent | 3361/tcp | 0.000000 | # KV Agent |
| kv-agent | 3361/udp | 0.000000 | # KV Agent |
| dj-ilm | 3362/tcp | 0.000076 | # DJ ILM |
| dj-ilm | 3362/udp | 0.000330 | # DJ ILM |
| nati-vi-server | 3363/tcp | 0.000076 | # NATI Vi Server |
| nati-vi-server | 3363/udp | 0.000330 | # NATI Vi Server |
| creativeserver | 3364/tcp | 0.000000 | # Creative Server |
| creativeserver | 3364/udp | 0.000661 | # Creative Server |
| contentserver | 3365/tcp | 0.000076 | # Content Server |
| contentserver | 3365/udp | 0.000000 | # Content Server |
| creativepartnr | 3366/tcp | 0.000000 | # Creative Partner |
| creativepartnr | 3366/udp | 0.000330 | # Creative Partner |
| satvid-datalnk | 3367/tcp | 0.000380 | # Satellite Video Data Link |
| satvid-datalnk | 3367/udp | 0.000000 | # Satellite Video Data Link |
| satvid-datalnk | 3368/tcp | 0.000076 | # Satellite Video Data Link |
| satvid-datalnk | 3368/udp | 0.000330 | # Satellite Video Data Link |
| satvid-datalnk | 3369/tcp | 0.000304 | # Satellite Video Data Link |
| satvid-datalnk | 3369/udp | 0.000000 | # Satellite Video Data Link |
| satvid-datalnk | 3370/tcp | 0.000304 | # Satellite Video Data Link |
| satvid-datalnk | 3370/udp | 0.000000 | # Satellite Video Data Link |
| satvid-datalnk | 3371/tcp | 0.000304 | # Satellite Video Data Link |
| satvid-datalnk | 3371/udp | 0.000000 | # Satellite Video Data Link |
| msdtc | 3372/tcp | 0.000339 | # tip2 | MS distributed transaction coordinator | TIP 2 |
| tip2 | 3372/udp | 0.000661 | # TIP 2 |
| lavenir-lm | 3373/tcp | 0.000000 | # Lavenir License Manager |
| lavenir-lm | 3373/udp | 0.000000 | # Lavenir License Manager |
| cluster-disc | 3374/tcp | 0.000076 | # Cluster Disc |
| cluster-disc | 3374/udp | 0.000000 | # Cluster Disc |
| vsnm-agent | 3375/tcp | 0.000000 | # VSNM Agent |
| vsnm-agent | 3375/udp | 0.000000 | # VSNM Agent |
| cdbroker | 3376/tcp | 0.000152 | # CD Broker |
| cdbroker | 3376/udp | 0.000000 | # CD Broker |
| cogsys-lm | 3377/tcp | 0.000000 | # Cogsys Network License Manager |
| cogsys-lm | 3377/udp | 0.000000 | # Cogsys Network License Manager |
| wsicopy | 3378/tcp | 0.000000 | wsicopy 3378/tcp 0.000000 |
| wsicopy | 3378/udp | 0.000000 | # WSICOPY |
| socorfs | 3379/tcp | 0.000000 | socorfs 3379/tcp 0.000000 |
| socorfs | 3379/udp | 0.000000 | # SOCORFS |
| sns-channels | 3380/tcp | 0.000000 | # SNS Channels |
| sns-channels | 3380/udp | 0.000330 | # SNS Channels |
| geneous | 3381/tcp | 0.000000 | geneous 3381/tcp 0.000000 |
| geneous | 3381/udp | 0.000330 | # Geneous |
| fujitsu-neat | 3382/tcp | 0.000000 | # Fujitsu Network Enhanced Antitheft function |
| fujitsu-neat | 3382/udp | 0.000000 | # Fujitsu Network Enhanced Antitheft function |
| esp-lm | 3383/tcp | 0.000000 | # Enterprise Software Products License Manager |
| esp-lm | 3383/udp | 0.000330 | # Enterprise Software Products License Manager |
| hp-clic | 3384/tcp | 0.000000 | # Cluster Management Services | Hardware Management |
| hp-clic | 3384/udp | 0.000330 | # Hardware Management |
| qnxnetman | 3385/tcp | 0.000000 | qnxnetman 3385/tcp 0.000000 |
| qnxnetman | 3385/udp | 0.000000 | qnxnetman 3385/udp 0.000000 |
| gprs-data | 3386/tcp | 0.000000 | # gprs-sig | GPRS Data | GPRS SIG |
| gprs-sig | 3386/udp | 0.000330 | # GPRS SIG |
| backroomnet | 3387/tcp | 0.000000 | # Back Room Net |
| backroomnet | 3387/udp | 0.000000 | # Back Room Net |
| cbserver | 3388/tcp | 0.000076 | # CB Server |
| cbserver | 3388/udp | 0.000330 | # CB Server |
| ms-wbt-server | 3389/tcp | 0.083904 | # Microsoft Remote Display Protocol (aka ms-term-serv, microsoft-rdp) | MS WBT Server |
| ms-wbt-server | 3389/udp | 0.004955 | # Microsoft Remote Display Protocol (aka ms-term-serv, microsoft-rdp) |
| dsc | 3390/tcp | 0.000228 | # Distributed Service Coordinator |
| dsc | 3390/udp | 0.000000 | # Distributed Service Coordinator |
| savant | 3391/tcp | 0.000000 | savant 3391/tcp 0.000000 |
| savant | 3391/udp | 0.000330 | # SAVANT |
| efi-lm | 3392/tcp | 0.000000 | # EFI License Management |
| efi-lm | 3392/udp | 0.000330 | # EFI License Management |
| d2k-tapestry1 | 3393/tcp | 0.000000 | # D2K Tapestry Client to Server |
| d2k-tapestry1 | 3393/udp | 0.000000 | # D2K Tapestry Client to Server |
| d2k-tapestry2 | 3394/tcp | 0.000000 | # D2K Tapestry Server to Server |
| d2k-tapestry2 | 3394/udp | 0.000000 | # D2K Tapestry Server to Server |
| dyna-lm | 3395/tcp | 0.000000 | # Dyna License Manager (Elam) |
| dyna-lm | 3395/udp | 0.000000 | # Dyna License Manager (Elam) |
| printer_agent | 3396/tcp | 0.000076 | # printer-agent | Printer Agent |
| printer_agent | 3396/udp | 0.000661 | # Printer Agent |
| saposs | 3397/tcp | 0.000038 | # cloanto-lm | SAP Oss | Cloanto License Manager |
| cloanto-lm | 3397/udp | 0.000000 | # Cloanto License Manager |
| sapcomm | 3398/tcp | 0.000063 | # mercantile | Mercantile |
| mercantile | 3398/udp | 0.000000 | # Mercantile |
| sapeps | 3399/tcp | 0.000100 | # csms | SAP EPS | CSMS |
| csms | 3399/udp | 0.000330 | # CSMS |
| csms2 | 3400/tcp | 0.000152 | csms2 3400/tcp 0.000152 |
| csms2 | 3400/udp | 0.000000 | # CSMS2 |
| filecast | 3401/tcp | 0.000000 | filecast 3401/tcp 0.000000 |
| squid-snmp | 3401/udp | 0.002241 | # Squid proxy SNMP port |
| fxaengine-net | 3402/tcp | 0.000000 | # FXa Engine Network Port |
| fxaengine-net | 3402/udp | 0.000000 | # FXa Engine Network Port |
| nokia-ann-ch1 | 3405/tcp | 0.000000 | # Nokia Announcement ch 1 |
| nokia-ann-ch1 | 3405/udp | 0.000000 | # Nokia Announcement ch 1 |
| nokia-ann-ch2 | 3406/tcp | 0.000000 | # Nokia Announcement ch 2 |
| nokia-ann-ch2 | 3406/udp | 0.000330 | # Nokia Announcement ch 2 |
| ldap-admin | 3407/tcp | 0.000000 | # LDAP admin server port |
| ldap-admin | 3407/udp | 0.000000 | # LDAP admin server port |
| BESApi | 3408/tcp | 0.000000 | # BES Api Port |
| BESApi | 3408/udp | 0.000330 | # BES Api Port |
| networklens | 3409/tcp | 0.000000 | # NetworkLens Event Port |
| networklens | 3409/udp | 0.000000 | # NetworkLens Event Port |
| networklenss | 3410/tcp | 0.000152 | # NetworkLens SSL Event |
| networklenss | 3410/udp | 0.000000 | # NetworkLens SSL Event |
| biolink-auth | 3411/tcp | 0.000000 | # BioLink Authenteon server |
| biolink-auth | 3411/udp | 0.000000 | # BioLink Authenteon server |
| xmlblaster | 3412/tcp | 0.000000 | xmlblaster 3412/tcp 0.000000 |
| xmlblaster | 3412/udp | 0.000000 | # xmlBlaster |
| svnet | 3413/tcp | 0.000000 | # SpecView Networking |
| svnet | 3413/udp | 0.000000 | # SpecView Networking |
| wip-port | 3414/tcp | 0.000076 | # BroadCloud WIP Port |
| wip-port | 3414/udp | 0.000000 | # BroadCloud WIP Port |
| bcinameservice | 3415/tcp | 0.000076 | # BCI Name Service |
| bcinameservice | 3415/udp | 0.000000 | # BCI Name Service |
| commandport | 3416/tcp | 0.000000 | # AirMobile IS Command Port |
| commandport | 3416/udp | 0.000000 | # AirMobile IS Command Port |
| csvr | 3417/tcp | 0.000000 | # ConServR file translation |
| csvr | 3417/udp | 0.000000 | # ConServR file translation |
| rnmap | 3418/tcp | 0.000000 | # Remote nmap |
| rnmap | 3418/udp | 0.000000 | # Remote nmap |
| softaudit | 3419/tcp | 0.000076 | # Isogon SoftAudit | ISogon SoftAudit |
| softaudit | 3419/udp | 0.000000 | # ISogon SoftAudit |
| ifcp-port | 3420/tcp | 0.000000 | # iFCP User Port |
| ifcp-port | 3420/udp | 0.000000 | # iFCP User Port |
| bmap | 3421/tcp | 0.000013 | # Bull Apprise portmapper |
| bmap | 3421/udp | 0.000643 | # Bull Apprise portmapper |
| rusb-sys-port | 3422/tcp | 0.000000 | # Remote USB System Port |
| rusb-sys-port | 3422/udp | 0.000330 | # Remote USB System Port |
| xtrm | 3423/tcp | 0.000000 | # xTrade Reliable Messaging |
| xtrm | 3423/udp | 0.000330 | # xTrade Reliable Messaging |
| xtrms | 3424/tcp | 0.000000 | # xTrade over TLS/SSL |
| xtrms | 3424/udp | 0.000000 | # xTrade over TLS/SSL |
| agps-port | 3425/tcp | 0.000076 | # AGPS Access Port |
| agps-port | 3425/udp | 0.000000 | # AGPS Access Port |
| arkivio | 3426/tcp | 0.000000 | # Arkivio Storage Protocol |
| arkivio | 3426/udp | 0.000000 | # Arkivio Storage Protocol |
| websphere-snmp | 3427/tcp | 0.000000 | # WebSphere SNMP |
| websphere-snmp | 3427/udp | 0.000000 | # WebSphere SNMP |
| twcss | 3428/tcp | 0.000000 | # 2Wire CSS |
| twcss | 3428/udp | 0.000330 | # 2Wire CSS |
| gcsp | 3429/tcp | 0.000000 | # GCSP user port |
| gcsp | 3429/udp | 0.000330 | # GCSP user port |
| ssdispatch | 3430/tcp | 0.000076 | # Scott Studios Dispatch |
| ssdispatch | 3430/udp | 0.000000 | # Scott Studios Dispatch |
| ndl-als | 3431/tcp | 0.000000 | # Active License Server Port |
| ndl-als | 3431/udp | 0.000000 | # Active License Server Port |
| osdcp | 3432/tcp | 0.000000 | # Secure Device Protocol |
| osdcp | 3432/udp | 0.000000 | # Secure Device Protocol |
| alta-smp | 3433/tcp | 0.000000 | # opnet-smp | Altaworks Service Management Platform | OPNET Service Management Platform |
| alta-smp | 3433/udp | 0.000000 | # Altaworks Service Management Platform |
| opencm | 3434/tcp | 0.000000 | # OpenCM Server |
| opencm | 3434/udp | 0.000000 | # OpenCM Server |
| pacom | 3435/tcp | 0.000000 | # Pacom Security User Port |
| pacom | 3435/udp | 0.000000 | # Pacom Security User Port |
| gc-config | 3436/tcp | 0.000000 | # GuardControl Exchange Protocol |
| gc-config | 3436/udp | 0.000000 | # GuardControl Exchange Protocol |
| autocueds | 3437/tcp | 0.000000 | # Autocue Directory Service |
| autocueds | 3437/udp | 0.000000 | # Autocue Directory Service |
| spiral-admin | 3438/tcp | 0.000000 | # Spiralcraft Admin |
| spiral-admin | 3438/udp | 0.000000 | # Spiralcraft Admin |
| hri-port | 3439/tcp | 0.000076 | # HRI Interface Port |
| hri-port | 3439/udp | 0.000000 | # HRI Interface Port |
| ans-console | 3440/tcp | 0.000000 | # Net Steward Mgmt Console |
| ans-console | 3440/udp | 0.000330 | # Net Steward Mgmt Console |
| connect-client | 3441/tcp | 0.000000 | # OC Connect Client |
| connect-client | 3441/udp | 0.000000 | # OC Connect Client |
| connect-server | 3442/tcp | 0.000000 | # OC Connect Server |
| connect-server | 3442/udp | 0.000330 | # OC Connect Server |
| ov-nnm-websrv | 3443/tcp | 0.000076 | # OpenView Network Node Manager WEB Server |
| ov-nnm-websrv | 3443/udp | 0.000000 | # OpenView Network Node Manager WEB Server |
| denali-server | 3444/tcp | 0.000000 | # Denali Server |
| denali-server | 3444/udp | 0.000330 | # Denali Server |
| monp | 3445/tcp | 0.000000 | # Media Object Network | Media Object Network Protocol |
| monp | 3445/udp | 0.000000 | # Media Object Network |
| 3comfaxrpc | 3446/tcp | 0.000000 | # 3Com FAX RPC port |
| 3comfaxrpc | 3446/udp | 0.000330 | # 3Com FAX RPC port |
| directnet | 3447/tcp | 0.000000 | # DirectNet IM System |
| directnet | 3447/udp | 0.000000 | # DirectNet IM System |
| dnc-port | 3448/tcp | 0.000000 | # Discovery and Net Config |
| dnc-port | 3448/udp | 0.000000 | # Discovery and Net Config |
| hotu-chat | 3449/tcp | 0.000000 | # HotU Chat |
| hotu-chat | 3449/udp | 0.000330 | # HotU Chat |
| castorproxy | 3450/tcp | 0.000000 | castorproxy 3450/tcp 0.000000 |
| castorproxy | 3450/udp | 0.000000 | # CAStorProxy |
| asam | 3451/tcp | 0.000000 | # ASAM Services |
| asam | 3451/udp | 0.000661 | # ASAM Services |
| sabp-signal | 3452/tcp | 0.000000 | # SABP-Signalling Protocol |
| sabp-signal | 3452/udp | 0.000000 | # SABP-Signalling Protocol |
| pscupd | 3453/tcp | 0.000000 | # PSC Update Port | PSC Update |
| pscupd | 3453/udp | 0.000661 | # PSC Update Port |
| mira | 3454/tcp | 0.000000 | # Apple Remote Access Protocol |
| prsvp | 3455/tcp | 0.000000 | # RSVP Port |
| prsvp | 3455/udp | 0.000527 | # RSVP Port |
| vat | 3456/tcp | 0.000100 | # VAT default data |
| IISrpc-or-vat | 3456/udp | 0.036607 | # also VAT default data |
| vat-control | 3457/tcp | 0.000025 | # VAT default control |
| vat-control | 3457/udp | 0.001433 | # VAT default control |
| d3winosfi | 3458/tcp | 0.000000 | d3winosfi 3458/tcp 0.000000 |
| d3winosfi | 3458/udp | 0.000000 | # D3WinOSFI |
| integral | 3459/tcp | 0.000000 | # TIP Integral |
| integral | 3459/udp | 0.000000 | # TIP Integral |
| edm-manager | 3460/tcp | 0.000000 | # EDM Manger |
| edm-manager | 3460/udp | 0.000000 | # EDM Manger |
| edm-stager | 3461/tcp | 0.000000 | # EDM Stager |
| edm-stager | 3461/udp | 0.000000 | # EDM Stager |
| track | 3462/tcp | 0.000000 | # edm-std-notify | software distribution | EDM STD Notify |
| edm-std-notify | 3462/udp | 0.000330 | # EDM STD Notify |
| edm-adm-notify | 3463/tcp | 0.000000 | # EDM ADM Notify |
| edm-adm-notify | 3463/udp | 0.000000 | # EDM ADM Notify |
| edm-mgr-sync | 3464/tcp | 0.000000 | # EDM MGR Sync |
| edm-mgr-sync | 3464/udp | 0.000000 | # EDM MGR Sync |
| edm-mgr-cntrl | 3465/tcp | 0.000000 | # EDM MGR Cntrl |
| edm-mgr-cntrl | 3465/udp | 0.000000 | # EDM MGR Cntrl |
| workflow | 3466/tcp | 0.000000 | workflow 3466/tcp 0.000000 |
| workflow | 3466/udp | 0.000000 | # WORKFLOW |
| rcst | 3467/tcp | 0.000000 | rcst 3467/tcp 0.000000 |
| rcst | 3467/udp | 0.000330 | # RCST |
| ttcmremotectrl | 3468/tcp | 0.000000 | # TTCM Remote Controll |
| ttcmremotectrl | 3468/udp | 0.000000 | # TTCM Remote Controll |
| pluribus | 3469/tcp | 0.000000 | pluribus 3469/tcp 0.000000 |
| pluribus | 3469/udp | 0.000000 | # Pluribus |
| jt400 | 3470/tcp | 0.000000 | jt400 3470/tcp 0.000000 |
| jt400 | 3470/udp | 0.000000 | jt400 3470/udp 0.000000 |
| jt400-ssl | 3471/tcp | 0.000000 | jt400-ssl 3471/tcp 0.000000 |
| jt400-ssl | 3471/udp | 0.000000 | jt400-ssl 3471/udp 0.000000 |
| jaugsremotec-1 | 3472/tcp | 0.000000 | # JAUGS N-G Remotec 1 |
| jaugsremotec-1 | 3472/udp | 0.000000 | # JAUGS N-G Remotec 1 |
| jaugsremotec-2 | 3473/tcp | 0.000000 | # JAUGS N-G Remotec 2 |
| jaugsremotec-2 | 3473/udp | 0.000000 | # JAUGS N-G Remotec 2 |
| ttntspauto | 3474/tcp | 0.000000 | # TSP Automation |
| ttntspauto | 3474/udp | 0.000330 | # TSP Automation |
| genisar-port | 3475/tcp | 0.000000 | # Genisar Comm Port |
| genisar-port | 3475/udp | 0.000000 | # Genisar Comm Port |
| nppmp | 3476/tcp | 0.000532 | # NVIDIA Mgmt Protocol |
| nppmp | 3476/udp | 0.000000 | # NVIDIA Mgmt Protocol |
| ecomm | 3477/tcp | 0.000000 | # eComm link port |
| ecomm | 3477/udp | 0.000661 | # eComm link port |
| stun | 3478/tcp | 0.000000 | # stun-behavior | turn | Session Traversal Utilities for NAT (STUN) port | TURN over TCP | TURN over UDP | STUN Behavior Discovery over TCP | STUN Behavior Discovery over UDP |
| stun | 3478/udp | 0.000000 | # Session Traversal Utilities for NAT (STUN) port |
| twrpc | 3479/tcp | 0.000076 | # 2Wire RPC |
| twrpc | 3479/udp | 0.000000 | # 2Wire RPC |
| plethora | 3480/tcp | 0.000000 | # Secure Virtual Workspace |
| plethora | 3480/udp | 0.000330 | # Secure Virtual Workspace |
| cleanerliverc | 3481/tcp | 0.000000 | # CleanerLive remote ctrl |
| cleanerliverc | 3481/udp | 0.000000 | # CleanerLive remote ctrl |
| vulture | 3482/tcp | 0.000000 | # Vulture Monitoring System |
| vulture | 3482/udp | 0.000330 | # Vulture Monitoring System |
| slim-devices | 3483/tcp | 0.000076 | # Slim Devices Protocol |
| slim-devices | 3483/udp | 0.000000 | # Slim Devices Protocol |
| gbs-stp | 3484/tcp | 0.000000 | # GBS SnapTalk Protocol |
| gbs-stp | 3484/udp | 0.000000 | # GBS SnapTalk Protocol |
| celatalk | 3485/tcp | 0.000076 | celatalk 3485/tcp 0.000076 |
| celatalk | 3485/udp | 0.000000 | # CelaTalk |
| ifsf-hb-port | 3486/tcp | 0.000076 | # IFSF Heartbeat Port |
| ifsf-hb-port | 3486/udp | 0.000330 | # IFSF Heartbeat Port |
| ltctcp | 3487/tcp | 0.000000 | # ltcudp | LISA TCP Transfer Channel | LISA UDP Transfer Channel |
| ltcudp | 3487/udp | 0.000330 | # LISA UDP Transfer Channel |
| fs-rh-srv | 3488/tcp | 0.000000 | # FS Remote Host Server |
| fs-rh-srv | 3488/udp | 0.000000 | # FS Remote Host Server |
| dtp-dia | 3489/tcp | 0.000000 | # DTP/DIA |
| dtp-dia | 3489/udp | 0.000000 | # DTP/DIA |
| colubris | 3490/tcp | 0.000000 | # Colubris Management Port |
| colubris | 3490/udp | 0.000000 | # Colubris Management Port |
| swr-port | 3491/tcp | 0.000000 | # SWR Port |
| swr-port | 3491/udp | 0.000000 | # SWR Port |
| tvdumtray-port | 3492/tcp | 0.000000 | # TVDUM Tray Port |
| tvdumtray-port | 3492/udp | 0.000000 | # TVDUM Tray Port |
| nut | 3493/tcp | 0.000304 | # Network UPS Tools |
| nut | 3493/udp | 0.000000 | # Network UPS Tools |
| ibm3494 | 3494/tcp | 0.000000 | # IBM 3494 |
| ibm3494 | 3494/udp | 0.000000 | # IBM 3494 |
| seclayer-tcp | 3495/tcp | 0.000000 | # securitylayer over tcp |
| seclayer-tcp | 3495/udp | 0.000661 | # securitylayer over tcp |
| seclayer-tls | 3496/tcp | 0.000000 | # securitylayer over tls |
| seclayer-tls | 3496/udp | 0.000000 | # securitylayer over tls |
| ipether232port | 3497/tcp | 0.000076 | ipether232port 3497/tcp 0.000076 |
| ipether232port | 3497/udp | 0.000000 | # ipEther232Port |
| dashpas-port | 3498/tcp | 0.000000 | # DASHPAS user port |
| dashpas-port | 3498/udp | 0.000000 | # DASHPAS user port |
| sccip-media | 3499/tcp | 0.000000 | # SccIP Media |
| sccip-media | 3499/udp | 0.000330 | # SccIP Media |
| rtmp-port | 3500/tcp | 0.000000 | # RTMP Port |
| rtmp-port | 3500/udp | 0.000000 | # RTMP Port |
| isoft-p2p | 3501/tcp | 0.000000 | isoft-p2p 3501/tcp 0.000000 |
| isoft-p2p | 3501/udp | 0.000000 | # iSoft-P2P |
| avinstalldisc | 3502/tcp | 0.000000 | # Avocent Install Discovery |
| avinstalldisc | 3502/udp | 0.000000 | # Avocent Install Discovery |
| lsp-ping | 3503/tcp | 0.000076 | # MPLS LSP-echo Port |
| lsp-ping | 3503/udp | 0.000330 | # MPLS LSP-echo Port |
| ironstorm | 3504/tcp | 0.000000 | # IronStorm game server |
| ironstorm | 3504/udp | 0.000000 | # IronStorm game server |
| ccmcomm | 3505/tcp | 0.000076 | # CCM communications port |
| ccmcomm | 3505/udp | 0.000661 | # CCM communications port |
| apc-3506 | 3506/tcp | 0.000076 | # APC 3506 |
| apc-3506 | 3506/udp | 0.000330 | # APC 3506 |
| nesh-broker | 3507/tcp | 0.000000 | # Nesh Broker Port |
| nesh-broker | 3507/udp | 0.000330 | # Nesh Broker Port |
| interactionweb | 3508/tcp | 0.000000 | # Interaction Web |
| interactionweb | 3508/udp | 0.000000 | # Interaction Web |
| vt-ssl | 3509/tcp | 0.000000 | # Virtual Token SSL Port |
| vt-ssl | 3509/udp | 0.000000 | # Virtual Token SSL Port |
| xss-port | 3510/tcp | 0.000000 | # XSS Port |
| xss-port | 3510/udp | 0.000000 | # XSS Port |
| webmail-2 | 3511/tcp | 0.000076 | # WebMail/2 |
| webmail-2 | 3511/udp | 0.000000 | # WebMail/2 |
| aztec | 3512/tcp | 0.000000 | # Aztec Distribution Port |
| aztec | 3512/udp | 0.000000 | # Aztec Distribution Port |
| arcpd | 3513/tcp | 0.000076 | # Adaptec Remote Protocol |
| arcpd | 3513/udp | 0.000330 | # Adaptec Remote Protocol |
| must-p2p | 3514/tcp | 0.000152 | # MUST Peer to Peer |
| must-p2p | 3514/udp | 0.000000 | # MUST Peer to Peer |
| must-backplane | 3515/tcp | 0.000076 | # MUST Backplane |
| must-backplane | 3515/udp | 0.000000 | # MUST Backplane |
| smartcard-port | 3516/tcp | 0.000000 | # Smartcard Port |
| smartcard-port | 3516/udp | 0.000000 | # Smartcard Port |
| 802-11-iapp | 3517/tcp | 0.000228 | # IEEE 802.11 WLANs WG IAPP |
| 802-11-iapp | 3517/udp | 0.000330 | # IEEE 802.11 WLANs WG IAPP |
| artifact-msg | 3518/tcp | 0.000000 | # Artifact Message Server |
| artifact-msg | 3518/udp | 0.000000 | # Artifact Message Server |
| nvmsgd | 3519/tcp | 0.000076 | # galileo | Netvion Messenger Port | Netvion Galileo Port |
| galileo | 3519/udp | 0.000661 | # Netvion Galileo Port |
| galileolog | 3520/tcp | 0.000076 | # Netvion Galileo Log Port |
| galileolog | 3520/udp | 0.000000 | # Netvion Galileo Log Port |
| mc3ss | 3521/tcp | 0.000000 | # Telequip Labs MC3SS |
| mc3ss | 3521/udp | 0.000000 | # Telequip Labs MC3SS |
| nssocketport | 3522/tcp | 0.000000 | # DO over NSSocketPort |
| nssocketport | 3522/udp | 0.000330 | # DO over NSSocketPort |
| odeumservlink | 3523/tcp | 0.000000 | # Odeum Serverlink |
| odeumservlink | 3523/udp | 0.000000 | # Odeum Serverlink |
| ecmport | 3524/tcp | 0.000000 | # ECM Server port |
| ecmport | 3524/udp | 0.000000 | # ECM Server port |
| eisport | 3525/tcp | 0.000000 | # EIS Server port |
| eisport | 3525/udp | 0.000000 | # EIS Server port |
| starquiz-port | 3526/tcp | 0.000076 | # starQuiz Port |
| starquiz-port | 3526/udp | 0.000000 | # starQuiz Port |
| beserver-msg-q | 3527/tcp | 0.000228 | # VERITAS Backup Exec Server |
| beserver-msg-q | 3527/udp | 0.000991 | # VERITAS Backup Exec Server |
| jboss-iiop | 3528/tcp | 0.000000 | # JBoss IIOP |
| jboss-iiop | 3528/udp | 0.000000 | # JBoss IIOP |
| jboss-iiop-ssl | 3529/tcp | 0.000000 | # JBoss IIOP/SSL |
| jboss-iiop-ssl | 3529/udp | 0.000000 | # JBoss IIOP/SSL |
| gf | 3530/tcp | 0.000076 | # Grid Friendly |
| gf | 3530/udp | 0.000000 | # Grid Friendly |
| peerenabler | 3531/tcp | 0.000025 | # joltid | P2PNetworking/PeerEnabler protocol | Joltid |
| peerenabler | 3531/udp | 0.000890 | # P2PNetworking/PeerEnabler protocol |
| raven-rmp | 3532/tcp | 0.000076 | # Raven Remote Management Control |
| raven-rmp | 3532/udp | 0.000000 | # Raven Remote Management Control |
| raven-rdp | 3533/tcp | 0.000000 | # Raven Remote Management Data |
| raven-rdp | 3533/udp | 0.000000 | # Raven Remote Management Data |
| urld-port | 3534/tcp | 0.000000 | # URL Daemon Port |
| urld-port | 3534/udp | 0.000000 | # URL Daemon Port |
| ms-la | 3535/tcp | 0.000000 | ms-la 3535/tcp 0.000000 |
| ms-la | 3535/udp | 0.000000 | # MS-LA |
| snac | 3536/tcp | 0.000000 | snac 3536/tcp 0.000000 |
| snac | 3536/udp | 0.000000 | # SNAC |
| ni-visa-remote | 3537/tcp | 0.000000 | # Remote NI-VISA port |
| ni-visa-remote | 3537/udp | 0.000330 | # Remote NI-VISA port |
| ibm-diradm | 3538/tcp | 0.000000 | # IBM Directory Server |
| ibm-diradm | 3538/udp | 0.000330 | # IBM Directory Server |
| ibm-diradm-ssl | 3539/tcp | 0.000000 | # IBM Directory Server SSL |
| ibm-diradm-ssl | 3539/udp | 0.000000 | # IBM Directory Server SSL |
| pnrp-port | 3540/tcp | 0.000000 | # PNRP User Port |
| pnrp-port | 3540/udp | 0.000000 | # PNRP User Port |
| voispeed-port | 3541/tcp | 0.000000 | # VoiSpeed Port |
| voispeed-port | 3541/udp | 0.000000 | # VoiSpeed Port |
| hacl-monitor | 3542/tcp | 0.000000 | # HA cluster monitor |
| hacl-monitor | 3542/udp | 0.000000 | # HA cluster monitor |
| qftest-lookup | 3543/tcp | 0.000000 | # qftest Lookup Port |
| qftest-lookup | 3543/udp | 0.000000 | # qftest Lookup Port |
| teredo | 3544/tcp | 0.000000 | # Teredo Port |
| teredo | 3544/udp | 0.000661 | # Teredo Port |
| camac | 3545/tcp | 0.000000 | # CAMAC equipment |
| camac | 3545/udp | 0.000000 | # CAMAC equipment |
| symantec-sim | 3547/tcp | 0.000000 | # Symantec SIM |
| symantec-sim | 3547/udp | 0.000000 | # Symantec SIM |
| interworld | 3548/tcp | 0.000000 | interworld 3548/tcp 0.000000 |
| interworld | 3548/udp | 0.000000 | # Interworld |
| tellumat-nms | 3549/tcp | 0.000000 | # Tellumat MDR NMS |
| tellumat-nms | 3549/udp | 0.000000 | # Tellumat MDR NMS |
| ssmpp | 3550/tcp | 0.000000 | # Secure SMPP |
| ssmpp | 3550/udp | 0.000000 | # Secure SMPP |
| apcupsd | 3551/tcp | 0.000380 | # Apcupsd Information Port |
| apcupsd | 3551/udp | 0.000000 | # Apcupsd Information Port |
| taserver | 3552/tcp | 0.000000 | # TeamAgenda Server Port |
| taserver | 3552/udp | 0.000000 | # TeamAgenda Server Port |
| rbr-discovery | 3553/tcp | 0.000000 | # Red Box Recorder ADP |
| rbr-discovery | 3553/udp | 0.000000 | # Red Box Recorder ADP |
| questnotify | 3554/tcp | 0.000000 | # Quest Notification Server |
| questnotify | 3554/udp | 0.000000 | # Quest Notification Server |
| razor | 3555/tcp | 0.000000 | # Vipul's Razor |
| razor | 3555/udp | 0.000330 | # Vipul's Razor |
| sky-transport | 3556/tcp | 0.000000 | # Sky Transport Protocol |
| sky-transport | 3556/udp | 0.000000 | # Sky Transport Protocol |
| personalos-001 | 3557/tcp | 0.000000 | # PersonalOS Comm Port |
| personalos-001 | 3557/udp | 0.000000 | # PersonalOS Comm Port |
| mcp-port | 3558/tcp | 0.000000 | # MCP user port |
| mcp-port | 3558/udp | 0.000000 | # MCP user port |
| cctv-port | 3559/tcp | 0.000000 | # CCTV control port |
| cctv-port | 3559/udp | 0.000000 | # CCTV control port |
| iniserve-port | 3560/tcp | 0.000000 | # INIServe port |
| iniserve-port | 3560/udp | 0.000000 | # INIServe port |
| bmc-onekey | 3561/tcp | 0.000000 | bmc-onekey 3561/tcp 0.000000 |
| bmc-onekey | 3561/udp | 0.000000 | # BMC-OneKey |
| sdbproxy | 3562/tcp | 0.000000 | sdbproxy 3562/tcp 0.000000 |
| sdbproxy | 3562/udp | 0.000000 | # SDBProxy |
| watcomdebug | 3563/tcp | 0.000000 | # Watcom Debug |
| watcomdebug | 3563/udp | 0.000000 | # Watcom Debug |
| esimport | 3564/tcp | 0.000000 | # Electromed SIM port |
| esimport | 3564/udp | 0.000000 | # Electromed SIM port |
| m2pa | 3565/sctp | 0.000000 | m2pa 3565/sctp 0.000000 |
| m2pa | 3565/tcp | 0.000000 | # M2PA |
| quest-data-hub | 3566/tcp | 0.000000 | # Quest Data Hub |
| oap | 3567/tcp | 0.000000 | # dof-eps | Object Access Protocol | DOF Protocol Stack |
| oap | 3567/udp | 0.000000 | # Object Access Protocol |
| oap-s | 3568/tcp | 0.000000 | # dof-tunnel-sec | Object Access Protocol over SSL | DOF Secure Tunnel |
| oap-s | 3568/udp | 0.000000 | # Object Access Protocol over SSL |
| mbg-ctrl | 3569/tcp | 0.000000 | # Meinberg Control Service |
| mbg-ctrl | 3569/udp | 0.000991 | # Meinberg Control Service |
| mccwebsvr-port | 3570/tcp | 0.000000 | # MCC Web Server Port |
| mccwebsvr-port | 3570/udp | 0.000000 | # MCC Web Server Port |
| megardsvr-port | 3571/tcp | 0.000000 | # MegaRAID Server Port |
| megardsvr-port | 3571/udp | 0.000330 | # MegaRAID Server Port |
| megaregsvrport | 3572/tcp | 0.000000 | # Registration Server Port |
| megaregsvrport | 3572/udp | 0.000000 | # Registration Server Port |
| tag-ups-1 | 3573/tcp | 0.000000 | # Advantage Group UPS Suite |
| tag-ups-1 | 3573/udp | 0.000330 | # Advantage Group UPS Suite |
| dmaf-server | 3574/tcp | 0.000000 | # dmaf-caster | DMAF Server | DMAF Caster |
| dmaf-caster | 3574/udp | 0.000991 | # DMAF Caster |
| ccm-port | 3575/tcp | 0.000000 | # Coalsere CCM Port |
| ccm-port | 3575/udp | 0.000330 | # Coalsere CCM Port |
| cmc-port | 3576/tcp | 0.000000 | # Coalsere CMC Port |
| cmc-port | 3576/udp | 0.000000 | # Coalsere CMC Port |
| config-port | 3577/tcp | 0.000076 | # Configuration Port |
| config-port | 3577/udp | 0.000000 | # Configuration Port |
| data-port | 3578/tcp | 0.000000 | # Data Port |
| data-port | 3578/udp | 0.000000 | # Data Port |
| ttat3lb | 3579/tcp | 0.000000 | # Tarantella Load Balancing |
| ttat3lb | 3579/udp | 0.000000 | # Tarantella Load Balancing |
| nati-svrloc | 3580/tcp | 0.000380 | # NATI-ServiceLocator |
| nati-svrloc | 3580/udp | 0.000000 | # NATI-ServiceLocator |
| kfxaclicensing | 3581/tcp | 0.000000 | # Ascent Capture Licensing |
| kfxaclicensing | 3581/udp | 0.000000 | # Ascent Capture Licensing |
| press | 3582/tcp | 0.000000 | # PEG PRESS Server |
| press | 3582/udp | 0.000000 | # PEG PRESS Server |
| canex-watch | 3583/tcp | 0.000000 | # CANEX Watch System |
| canex-watch | 3583/udp | 0.000000 | # CANEX Watch System |
| u-dbap | 3584/tcp | 0.000000 | # U-DBase Access Protocol |
| u-dbap | 3584/udp | 0.000000 | # U-DBase Access Protocol |
| emprise-lls | 3585/tcp | 0.000000 | # Emprise License Server |
| emprise-lls | 3585/udp | 0.000000 | # Emprise License Server |
| emprise-lsc | 3586/tcp | 0.000076 | # License Server Console |
| emprise-lsc | 3586/udp | 0.000000 | # License Server Console |
| p2pgroup | 3587/tcp | 0.000000 | # Peer to Peer Grouping |
| p2pgroup | 3587/udp | 0.000000 | # Peer to Peer Grouping |
| sentinel | 3588/tcp | 0.000000 | # Sentinel Server |
| sentinel | 3588/udp | 0.000000 | # Sentinel Server |
| isomair | 3589/tcp | 0.000000 | isomair 3589/tcp 0.000000 |
| isomair | 3589/udp | 0.000000 | isomair 3589/udp 0.000000 |
| wv-csp-sms | 3590/tcp | 0.000000 | # WV CSP SMS Binding |
| wv-csp-sms | 3590/udp | 0.000000 | # WV CSP SMS Binding |
| gtrack-server | 3591/tcp | 0.000000 | # LOCANIS G-TRACK Server |
| gtrack-server | 3591/udp | 0.000330 | # LOCANIS G-TRACK Server |
| gtrack-ne | 3592/tcp | 0.000000 | # LOCANIS G-TRACK NE Port |
| gtrack-ne | 3592/udp | 0.000000 | # LOCANIS G-TRACK NE Port |
| bpmd | 3593/tcp | 0.000000 | # BP Model Debugger |
| bpmd | 3593/udp | 0.000000 | # BP Model Debugger |
| mediaspace | 3594/tcp | 0.000000 | mediaspace 3594/tcp 0.000000 |
| mediaspace | 3594/udp | 0.000330 | # MediaSpace |
| shareapp | 3595/tcp | 0.000000 | shareapp 3595/tcp 0.000000 |
| shareapp | 3595/udp | 0.000330 | # ShareApp |
| iw-mmogame | 3596/tcp | 0.000000 | # Illusion Wireless MMOG |
| iw-mmogame | 3596/udp | 0.000000 | # Illusion Wireless MMOG |
| a14 | 3597/tcp | 0.000000 | # A14 (AN-to-SC/MM) |
| a14 | 3597/udp | 0.000000 | # A14 (AN-to-SC/MM) |
| a15 | 3598/tcp | 0.000000 | # A15 (AN-to-AN) |
| a15 | 3598/udp | 0.000000 | # A15 (AN-to-AN) |
| quasar-server | 3599/tcp | 0.000076 | # Quasar Accounting Server |
| quasar-server | 3599/udp | 0.000000 | # Quasar Accounting Server |
| trap-daemon | 3600/tcp | 0.000076 | # text relay-answer |
| trap-daemon | 3600/udp | 0.000000 | # text relay-answer |
| visinet-gui | 3601/tcp | 0.000000 | # Visinet Gui |
| visinet-gui | 3601/udp | 0.000000 | # Visinet Gui |
| infiniswitchcl | 3602/tcp | 0.000076 | # InfiniSwitch Mgr Client |
| infiniswitchcl | 3602/udp | 0.000000 | # InfiniSwitch Mgr Client |
| int-rcv-cntrl | 3603/tcp | 0.000076 | # Integrated Rcvr Control |
| int-rcv-cntrl | 3603/udp | 0.000330 | # Integrated Rcvr Control |
| bmc-jmx-port | 3604/tcp | 0.000000 | # BMC JMX Port |
| bmc-jmx-port | 3604/udp | 0.000000 | # BMC JMX Port |
| comcam-io | 3605/tcp | 0.000000 | # ComCam IO Port |
| comcam-io | 3605/udp | 0.000330 | # ComCam IO Port |
| splitlock | 3606/tcp | 0.000000 | # Splitlock Server |
| splitlock | 3606/udp | 0.000330 | # Splitlock Server |
| precise-i3 | 3607/tcp | 0.000000 | # Precise I3 |
| precise-i3 | 3607/udp | 0.000000 | # Precise I3 |
| trendchip-dcp | 3608/tcp | 0.000000 | # Trendchip control protocol |
| trendchip-dcp | 3608/udp | 0.000000 | # Trendchip control protocol |
| cpdi-pidas-cm | 3609/tcp | 0.000000 | # CPDI PIDAS Connection Mon |
| cpdi-pidas-cm | 3609/udp | 0.000330 | # CPDI PIDAS Connection Mon |
| echonet | 3610/tcp | 0.000000 | echonet 3610/tcp 0.000000 |
| echonet | 3610/udp | 0.000000 | # ECHONET |
| six-degrees | 3611/tcp | 0.000000 | # Six Degrees Port |
| six-degrees | 3611/udp | 0.000000 | # Six Degrees Port |
| hp-dataprotect | 3612/tcp | 0.000000 | # dataprotector | HP Data Protector | Micro Focus Data Protector |
| hp-dataprotect | 3612/udp | 0.000330 | # HP Data Protector |
| alaris-disc | 3613/tcp | 0.000000 | # Alaris Device Discovery |
| alaris-disc | 3613/udp | 0.000000 | # Alaris Device Discovery |
| sigma-port | 3614/tcp | 0.000000 | # Invensys Sigma Port | Satchwell Sigma |
| sigma-port | 3614/udp | 0.000330 | # Invensys Sigma Port |
| start-network | 3615/tcp | 0.000000 | # Start Messaging Network |
| start-network | 3615/udp | 0.000000 | # Start Messaging Network |
| cd3o-protocol | 3616/tcp | 0.000000 | # cd3o Control Protocol |
| cd3o-protocol | 3616/udp | 0.000000 | # cd3o Control Protocol |
| sharp-server | 3617/tcp | 0.000000 | # ATI SHARP Logic Engine |
| sharp-server | 3617/udp | 0.000000 | # ATI SHARP Logic Engine |
| aairnet-1 | 3618/tcp | 0.000000 | # AAIR-Network 1 |
| aairnet-1 | 3618/udp | 0.000000 | # AAIR-Network 1 |
| aairnet-2 | 3619/tcp | 0.000000 | # AAIR-Network 2 |
| aairnet-2 | 3619/udp | 0.000330 | # AAIR-Network 2 |
| ep-pcp | 3620/tcp | 0.000000 | # EPSON Projector Control Port |
| ep-pcp | 3620/udp | 0.000330 | # EPSON Projector Control Port |
| ep-nsp | 3621/tcp | 0.000076 | # EPSON Network Screen Port |
| ep-nsp | 3621/udp | 0.000000 | # EPSON Network Screen Port |
| ff-lr-port | 3622/tcp | 0.000076 | # FF LAN Redundancy Port |
| ff-lr-port | 3622/udp | 0.000000 | # FF LAN Redundancy Port |
| haipe-discover | 3623/tcp | 0.000000 | # HAIPIS Dynamic Discovery |
| haipe-discover | 3623/udp | 0.000000 | # HAIPIS Dynamic Discovery |
| dist-upgrade | 3624/tcp | 0.000000 | # Distributed Upgrade Port |
| dist-upgrade | 3624/udp | 0.000330 | # Distributed Upgrade Port |
| volley | 3625/tcp | 0.000000 | volley 3625/tcp 0.000000 |
| volley | 3625/udp | 0.000000 | # Volley |
| bvcdaemon-port | 3626/tcp | 0.000000 | # bvControl Daemon |
| bvcdaemon-port | 3626/udp | 0.000000 | # bvControl Daemon |
| jamserverport | 3627/tcp | 0.000000 | # Jam Server Port |
| jamserverport | 3627/udp | 0.000000 | # Jam Server Port |
| ept-machine | 3628/tcp | 0.000000 | # EPT Machine Interface |
| ept-machine | 3628/udp | 0.000000 | # EPT Machine Interface |
| escvpnet | 3629/tcp | 0.000000 | # ESC/VP.net |
| escvpnet | 3629/udp | 0.000000 | # ESC/VP.net |
| cs-remote-db | 3630/tcp | 0.000000 | # C&S Remote Database Port |
| cs-remote-db | 3630/udp | 0.000000 | # C&S Remote Database Port |
| cs-services | 3631/tcp | 0.000000 | # C&S Web Services Port |
| cs-services | 3631/udp | 0.000661 | # C&S Web Services Port |
| distccd | 3632/tcp | 0.000100 | # distcc | Distributed compiler daemon | distributed compiler |
| distcc | 3632/udp | 0.000000 | # distributed compiler |
| wacp | 3633/tcp | 0.000000 | # Wyrnix AIS port |
| wacp | 3633/udp | 0.000000 | # Wyrnix AIS port |
| hlibmgr | 3634/tcp | 0.000000 | # hNTSP Library Manager |
| hlibmgr | 3634/udp | 0.000000 | # hNTSP Library Manager |
| sdo | 3635/tcp | 0.000000 | # Simple Distributed Objects |
| sdo | 3635/udp | 0.000000 | # Simple Distributed Objects |
| servistaitsm | 3636/tcp | 0.000076 | servistaitsm 3636/tcp 0.000076 |
| servistaitsm | 3636/udp | 0.000000 | # SerVistaITSM |
| scservp | 3637/tcp | 0.000076 | # Customer Service Port |
| scservp | 3637/udp | 0.000000 | # Customer Service Port |
| ehp-backup | 3638/tcp | 0.000000 | # EHP Backup Protocol |
| ehp-backup | 3638/udp | 0.000000 | # EHP Backup Protocol |
| xap-ha | 3639/tcp | 0.000000 | # Extensible Automation |
| xap-ha | 3639/udp | 0.000000 | # Extensible Automation |
| netplay-port1 | 3640/tcp | 0.000000 | # Netplay Port 1 |
| netplay-port1 | 3640/udp | 0.000000 | # Netplay Port 1 |
| netplay-port2 | 3641/tcp | 0.000000 | # Netplay Port 2 |
| netplay-port2 | 3641/udp | 0.000000 | # Netplay Port 2 |
| juxml-port | 3642/tcp | 0.000000 | # Juxml Replication port |
| juxml-port | 3642/udp | 0.000000 | # Juxml Replication port |
| audiojuggler | 3643/tcp | 0.000000 | audiojuggler 3643/tcp 0.000000 |
| audiojuggler | 3643/udp | 0.000330 | # AudioJuggler |
| ssowatch | 3644/tcp | 0.000000 | ssowatch 3644/tcp 0.000000 |
| ssowatch | 3644/udp | 0.000000 | ssowatch 3644/udp 0.000000 |
| cyc | 3645/tcp | 0.000000 | cyc 3645/tcp 0.000000 |
| cyc | 3645/udp | 0.000000 | # Cyc |
| xss-srv-port | 3646/tcp | 0.000000 | # XSS Server Port |
| xss-srv-port | 3646/udp | 0.000000 | # XSS Server Port |
| splitlock-gw | 3647/tcp | 0.000000 | # Splitlock Gateway |
| splitlock-gw | 3647/udp | 0.000000 | # Splitlock Gateway |
| fjcp | 3648/tcp | 0.000000 | # Fujitsu Cooperation Port |
| fjcp | 3648/udp | 0.000000 | # Fujitsu Cooperation Port |
| nmmp | 3649/tcp | 0.000000 | # Nishioka Miyuki Msg Protocol |
| nmmp | 3649/udp | 0.000330 | # Nishioka Miyuki Msg Protocol |
| prismiq-plugin | 3650/tcp | 0.000000 | # PRISMIQ VOD plug-in |
| prismiq-plugin | 3650/udp | 0.000330 | # PRISMIQ VOD plug-in |
| xrpc-registry | 3651/tcp | 0.000000 | # XRPC Registry |
| xrpc-registry | 3651/udp | 0.000000 | # XRPC Registry |
| vxcrnbuport | 3652/tcp | 0.000076 | # VxCR NBU Default Port |
| vxcrnbuport | 3652/udp | 0.000000 | # VxCR NBU Default Port |
| tsp | 3653/tcp | 0.000076 | # Tunnel Setup Protocol |
| tsp | 3653/udp | 0.000330 | # Tunnel Setup Protocol |
| vaprtm | 3654/tcp | 0.000000 | # VAP RealTime Messenger |
| vaprtm | 3654/udp | 0.000000 | # VAP RealTime Messenger |
| abatemgr | 3655/tcp | 0.000000 | # ActiveBatch Exec Agent |
| abatemgr | 3655/udp | 0.000000 | # ActiveBatch Exec Agent |
| abatjss | 3656/tcp | 0.000076 | # ActiveBatch Job Scheduler |
| abatjss | 3656/udp | 0.000000 | # ActiveBatch Job Scheduler |
| immedianet-bcn | 3657/tcp | 0.000000 | # ImmediaNet Beacon |
| immedianet-bcn | 3657/udp | 0.000000 | # ImmediaNet Beacon |
| ps-ams | 3658/tcp | 0.000076 | # PlayStation AMS (Secure) |
| ps-ams | 3658/udp | 0.000000 | # PlayStation AMS (Secure) |
| apple-sasl | 3659/tcp | 0.000380 | # Apple SASL |
| apple-sasl | 3659/udp | 0.006277 | # Apple SASL |
| can-nds-ssl | 3660/tcp | 0.000000 | # IBM Tivoli Directory Service using SSL |
| can-nds-ssl | 3660/udp | 0.000000 | # IBM Tivoli Directory Service using SSL |
| can-ferret-ssl | 3661/tcp | 0.000000 | # IBM Tivoli Directory Service using SSL |
| can-ferret-ssl | 3661/udp | 0.000000 | # IBM Tivoli Directory Service using SSL |
| pserver | 3662/tcp | 0.000000 | pserver 3662/tcp 0.000000 |
| pserver | 3662/udp | 0.000000 | pserver 3662/udp 0.000000 |
| dtp | 3663/tcp | 0.000076 | # DIRECWAY Tunnel Protocol |
| dtp | 3663/udp | 0.000000 | # DIRECWAY Tunnel Protocol |
| ups-engine | 3664/tcp | 0.000000 | # UPS Engine Port |
| ups-engine | 3664/udp | 0.001652 | # UPS Engine Port |
| ent-engine | 3665/tcp | 0.000000 | # Enterprise Engine Port |
| ent-engine | 3665/udp | 0.000330 | # Enterprise Engine Port |
| eserver-pap | 3666/tcp | 0.000000 | # IBM eServer PAP | IBM EServer PAP |
| eserver-pap | 3666/udp | 0.000000 | # IBM EServer PAP |
| infoexch | 3667/tcp | 0.000000 | # IBM Information Exchange |
| infoexch | 3667/udp | 0.000000 | # IBM Information Exchange |
| dell-rm-port | 3668/tcp | 0.000000 | # Dell Remote Management |
| dell-rm-port | 3668/udp | 0.000330 | # Dell Remote Management |
| casanswmgmt | 3669/tcp | 0.000076 | # CA SAN Switch Management |
| casanswmgmt | 3669/udp | 0.000330 | # CA SAN Switch Management |
| smile | 3670/tcp | 0.000076 | # SMILE TCP/UDP Interface |
| smile | 3670/udp | 0.000330 | # SMILE TCP/UDP Interface |
| efcp | 3671/tcp | 0.000000 | # e Field Control (EIBnet) |
| efcp | 3671/udp | 0.000330 | # e Field Control (EIBnet) |
| lispworks-orb | 3672/tcp | 0.000076 | # LispWorks ORB |
| lispworks-orb | 3672/udp | 0.000330 | # LispWorks ORB |
| mediavault-gui | 3673/tcp | 0.000000 | # Openview Media Vault GUI |
| mediavault-gui | 3673/udp | 0.000000 | # Openview Media Vault GUI |
| wininstall-ipc | 3674/tcp | 0.000000 | # WinINSTALL IPC Port |
| wininstall-ipc | 3674/udp | 0.000000 | # WinINSTALL IPC Port |
| calltrax | 3675/tcp | 0.000000 | # CallTrax Data Port |
| calltrax | 3675/udp | 0.000000 | # CallTrax Data Port |
| va-pacbase | 3676/tcp | 0.000000 | # VisualAge Pacbase server |
| va-pacbase | 3676/udp | 0.000000 | # VisualAge Pacbase server |
| roverlog | 3677/tcp | 0.000000 | # RoverLog IPC |
| roverlog | 3677/udp | 0.000000 | # RoverLog IPC |
| ipr-dglt | 3678/tcp | 0.000000 | # DataGuardianLT |
| ipr-dglt | 3678/udp | 0.000000 | # DataGuardianLT |
| newton-dock | 3679/tcp | 0.000000 | # #ERROR:Escale (Newton Dock) | Newton Dock |
| newton-dock | 3679/udp | 0.000000 | # Newton Dock |
| npds-tracker | 3680/tcp | 0.000076 | # NPDS Tracker |
| npds-tracker | 3680/udp | 0.000000 | # NPDS Tracker |
| bts-x73 | 3681/tcp | 0.000076 | # BTS X73 Port |
| bts-x73 | 3681/udp | 0.000000 | # BTS X73 Port |
| cas-mapi | 3682/tcp | 0.000000 | # EMC SmartPackets-MAPI |
| cas-mapi | 3682/udp | 0.000000 | # EMC SmartPackets-MAPI |
| bmc-ea | 3683/tcp | 0.000076 | # BMC EDV/EA |
| bmc-ea | 3683/udp | 0.000330 | # BMC EDV/EA |
| faxstfx-port | 3684/tcp | 0.000152 | # FAXstfX |
| faxstfx-port | 3684/udp | 0.000000 | # FAXstfX |
| dsx-agent | 3685/tcp | 0.000000 | # DS Expert Agent |
| dsx-agent | 3685/udp | 0.000000 | # DS Expert Agent |
| tnmpv2 | 3686/tcp | 0.000000 | # Trivial Network Management |
| tnmpv2 | 3686/udp | 0.000000 | # Trivial Network Management |
| simple-push | 3687/tcp | 0.000000 | simple-push 3687/tcp 0.000000 |
| simple-push | 3687/udp | 0.000000 | simple-push 3687/udp 0.000000 |
| simple-push-s | 3688/tcp | 0.000000 | # simple-push Secure |
| simple-push-s | 3688/udp | 0.000000 | # simple-push Secure |
| rendezvous | 3689/tcp | 0.002283 | # daap | Rendezvous Zeroconf (used by Apple/iTunes) | Digital Audio Access Protocol (iTunes) |
| daap | 3689/udp | 0.000330 | # Digital Audio Access Protocol |
| svn | 3690/tcp | 0.001597 | # Subversion |
| svn | 3690/udp | 0.000000 | # Subversion |
| magaya-network | 3691/tcp | 0.000000 | # Magaya Network Port |
| magaya-network | 3691/udp | 0.000000 | # Magaya Network Port |
| intelsync | 3692/tcp | 0.000000 | # Brimstone IntelSync |
| intelsync | 3692/udp | 0.000330 | # Brimstone IntelSync |
| easl | 3693/tcp | 0.000000 | # Emergency Automatic Structure Lockdown System |
| bmc-data-coll | 3695/tcp | 0.000000 | # BMC Data Collection |
| bmc-data-coll | 3695/udp | 0.000000 | # BMC Data Collection |
| telnetcpcd | 3696/tcp | 0.000000 | # Telnet Com Port Control |
| telnetcpcd | 3696/udp | 0.000000 | # Telnet Com Port Control |
| nw-license | 3697/tcp | 0.000152 | # NavisWorks License System | NavisWorks Licnese System |
| nw-license | 3697/udp | 0.000330 | # NavisWorks Licnese System |
| sagectlpanel | 3698/tcp | 0.000000 | sagectlpanel 3698/tcp 0.000000 |
| sagectlpanel | 3698/udp | 0.000330 | # SAGECTLPANEL |
| kpn-icw | 3699/tcp | 0.000000 | # Internet Call Waiting |
| kpn-icw | 3699/udp | 0.000000 | # Internet Call Waiting |
| lrs-paging | 3700/tcp | 0.000152 | # LRS NetPage |
| lrs-paging | 3700/udp | 0.000330 | # LRS NetPage |
| netcelera | 3701/tcp | 0.000000 | netcelera 3701/tcp 0.000000 |
| netcelera | 3701/udp | 0.000000 | # NetCelera |
| ws-discovery | 3702/tcp | 0.000000 | # Web Service Discovery |
| ws-discovery | 3702/udp | 0.001982 | # Web Service Discovery |
| adobeserver-3 | 3703/tcp | 0.002357 | # Adobe Server 3 |
| adobeserver-3 | 3703/udp | 0.009580 | # Adobe Server 3 |
| adobeserver-4 | 3704/tcp | 0.000000 | # Adobe Server 4 |
| adobeserver-4 | 3704/udp | 0.000000 | # Adobe Server 4 |
| adobeserver-5 | 3705/tcp | 0.000000 | # Adobe Server 5 |
| adobeserver-5 | 3705/udp | 0.000000 | # Adobe Server 5 |
| rt-event | 3706/tcp | 0.000000 | # Real-Time Event Port |
| rt-event | 3706/udp | 0.000000 | # Real-Time Event Port |
| rt-event-s | 3707/tcp | 0.000000 | # Real-Time Event Secure Port |
| rt-event-s | 3707/udp | 0.000000 | # Real-Time Event Secure Port |
| sun-as-iiops | 3708/tcp | 0.000000 | # Sun App Svr - Naming |
| sun-as-iiops | 3708/udp | 0.000000 | # Sun App Svr - Naming |
| ca-idms | 3709/tcp | 0.000000 | # CA-IDMS Server |
| ca-idms | 3709/udp | 0.000330 | # CA-IDMS Server |
| portgate-auth | 3710/tcp | 0.000000 | # PortGate Authentication |
| portgate-auth | 3710/udp | 0.000330 | # PortGate Authentication |
| edb-server2 | 3711/tcp | 0.000000 | # EBD Server 2 |
| edb-server2 | 3711/udp | 0.000000 | # EBD Server 2 |
| sentinel-ent | 3712/tcp | 0.000076 | # Sentinel Enterprise |
| sentinel-ent | 3712/udp | 0.000000 | # Sentinel Enterprise |
| tftps | 3713/tcp | 0.000000 | # TFTP over TLS |
| tftps | 3713/udp | 0.000000 | # TFTP over TLS |
| delos-dms | 3714/tcp | 0.000000 | # DELOS Direct Messaging |
| delos-dms | 3714/udp | 0.000000 | # DELOS Direct Messaging |
| anoto-rendezv | 3715/tcp | 0.000000 | # Anoto Rendezvous Port |
| anoto-rendezv | 3715/udp | 0.000000 | # Anoto Rendezvous Port |
| wv-csp-sms-cir | 3716/tcp | 0.000000 | # WV CSP SMS CIR Channel |
| wv-csp-sms-cir | 3716/udp | 0.000000 | # WV CSP SMS CIR Channel |
| wv-csp-udp-cir | 3717/tcp | 0.000000 | # WV CSP UDP/IP CIR Channel |
| wv-csp-udp-cir | 3717/udp | 0.000000 | # WV CSP UDP/IP CIR Channel |
| opus-services | 3718/tcp | 0.000000 | # OPUS Server Port |
| opus-services | 3718/udp | 0.000000 | # OPUS Server Port |
| itelserverport | 3719/tcp | 0.000000 | # iTel Server Port |
| itelserverport | 3719/udp | 0.000000 | # iTel Server Port |
| ufastro-instr | 3720/tcp | 0.000000 | # UF Astro. Instr. Services |
| ufastro-instr | 3720/udp | 0.000000 | # UF Astro. Instr. Services |
| xsync | 3721/tcp | 0.000000 | xsync 3721/tcp 0.000000 |
| xsync | 3721/udp | 0.000000 | # Xsync |
| xserveraid | 3722/tcp | 0.000000 | # Xserve RAID |
| xserveraid | 3722/udp | 0.000000 | # Xserve RAID |
| sychrond | 3723/tcp | 0.000000 | # Sychron Service Daemon |
| sychrond | 3723/udp | 0.000000 | # Sychron Service Daemon |
| blizwow | 3724/tcp | 0.000000 | # World of Warcraft |
| blizwow | 3724/udp | 0.000000 | # World of Warcraft |
| na-er-tip | 3725/tcp | 0.000000 | # Netia NA-ER Port |
| na-er-tip | 3725/udp | 0.000330 | # Netia NA-ER Port |
| array-manager | 3726/tcp | 0.000000 | # Xyratex Array Manager | Xyartex Array Manager |
| array-manager | 3726/udp | 0.000000 | # Xyartex Array Manager |
| e-mdu | 3727/tcp | 0.000000 | # Ericsson Mobile Data Unit |
| e-mdu | 3727/udp | 0.000000 | # Ericsson Mobile Data Unit |
| e-woa | 3728/tcp | 0.000076 | # Ericsson Web on Air |
| e-woa | 3728/udp | 0.000000 | # Ericsson Web on Air |
| fksp-audit | 3729/tcp | 0.000000 | # Fireking Audit Port |
| fksp-audit | 3729/udp | 0.000000 | # Fireking Audit Port |
| client-ctrl | 3730/tcp | 0.000000 | # Client Control |
| client-ctrl | 3730/udp | 0.000000 | # Client Control |
| smap | 3731/tcp | 0.000152 | # Service Manager |
| smap | 3731/udp | 0.000000 | # Service Manager |
| m-wnn | 3732/tcp | 0.000000 | # Mobile Wnn |
| m-wnn | 3732/udp | 0.000000 | # Mobile Wnn |
| multip-msg | 3733/tcp | 0.000000 | # Multipuesto Msg Port |
| multip-msg | 3733/udp | 0.000000 | # Multipuesto Msg Port |
| synel-data | 3734/tcp | 0.000000 | # Synel Data Collection Port |
| synel-data | 3734/udp | 0.000330 | # Synel Data Collection Port |
| pwdis | 3735/tcp | 0.000000 | # Password Distribution |
| pwdis | 3735/udp | 0.000000 | # Password Distribution |
| rs-rmi | 3736/tcp | 0.000000 | # RealSpace RMI |
| rs-rmi | 3736/udp | 0.000000 | # RealSpace RMI |
| xpanel | 3737/tcp | 0.000304 | # XPanel Daemon |
| versatalk | 3738/tcp | 0.000000 | # versaTalk Server Port |
| versatalk | 3738/udp | 0.000000 | # versaTalk Server Port |
| launchbird-lm | 3739/tcp | 0.000000 | # Launchbird LicenseManager |
| launchbird-lm | 3739/udp | 0.000000 | # Launchbird LicenseManager |
| heartbeat | 3740/tcp | 0.000000 | # Heartbeat Protocol |
| heartbeat | 3740/udp | 0.000000 | # Heartbeat Protocol |
| wysdma | 3741/tcp | 0.000000 | # WysDM Agent |
| wysdma | 3741/udp | 0.000000 | # WysDM Agent |
| cst-port | 3742/tcp | 0.000076 | # CST - Configuration & Service Tracker |
| cst-port | 3742/udp | 0.000000 | # CST - Configuration & Service Tracker |
| ipcs-command | 3743/tcp | 0.000000 | # IP Control Systems Ltd. |
| ipcs-command | 3743/udp | 0.000000 | # IP Control Systems Ltd. |
| sasg | 3744/tcp | 0.000000 | sasg 3744/tcp 0.000000 |
| sasg | 3744/udp | 0.000330 | # SASG |
| gw-call-port | 3745/tcp | 0.000000 | # GWRTC Call Port |
| gw-call-port | 3745/udp | 0.000000 | # GWRTC Call Port |
| linktest | 3746/tcp | 0.000000 | # LXPRO.COM LinkTest |
| linktest | 3746/udp | 0.000000 | # LXPRO.COM LinkTest |
| linktest-s | 3747/tcp | 0.000000 | # LXPRO.COM LinkTest SSL |
| linktest-s | 3747/udp | 0.000000 | # LXPRO.COM LinkTest SSL |
| webdata | 3748/tcp | 0.000000 | webdata 3748/tcp 0.000000 |
| webdata | 3748/udp | 0.000000 | # webData |
| cimtrak | 3749/tcp | 0.000076 | cimtrak 3749/tcp 0.000076 |
| cimtrak | 3749/udp | 0.000000 | # CimTrak |
| cbos-ip-port | 3750/tcp | 0.000000 | # CBOS/IP ncapsalation port | CBOS/IP ncapsalatoin port |
| cbos-ip-port | 3750/udp | 0.000000 | # CBOS/IP ncapsalatoin port |
| gprs-cube | 3751/tcp | 0.000000 | # CommLinx GPRS Cube |
| gprs-cube | 3751/udp | 0.000330 | # CommLinx GPRS Cube |
| vipremoteagent | 3752/tcp | 0.000000 | # Vigil-IP RemoteAgent |
| vipremoteagent | 3752/udp | 0.000000 | # Vigil-IP RemoteAgent |
| nattyserver | 3753/tcp | 0.000000 | # NattyServer Port |
| nattyserver | 3753/udp | 0.000000 | # NattyServer Port |
| timestenbroker | 3754/tcp | 0.000000 | # TimesTen Broker Port |
| timestenbroker | 3754/udp | 0.000000 | # TimesTen Broker Port |
| sas-remote-hlp | 3755/tcp | 0.000000 | # SAS Remote Help Server |
| sas-remote-hlp | 3755/udp | 0.000000 | # SAS Remote Help Server |
| canon-capt | 3756/tcp | 0.000000 | # Canon CAPT Port |
| canon-capt | 3756/udp | 0.000000 | # Canon CAPT Port |
| grf-port | 3757/tcp | 0.000000 | # GRF Server Port |
| grf-port | 3757/udp | 0.000000 | # GRF Server Port |
| apw-registry | 3758/tcp | 0.000000 | # apw RMI registry |
| apw-registry | 3758/udp | 0.000000 | # apw RMI registry |
| exapt-lmgr | 3759/tcp | 0.000000 | # Exapt License Manager |
| exapt-lmgr | 3759/udp | 0.000000 | # Exapt License Manager |
| adtempusclient | 3760/tcp | 0.000000 | # adTempus Client | adTEmpus Client |
| adtempusclient | 3760/udp | 0.000000 | # adTEmpus Client |
| gsakmp | 3761/tcp | 0.000000 | # gsakmp port |
| gsakmp | 3761/udp | 0.000000 | # gsakmp port |
| gbs-smp | 3762/tcp | 0.000000 | # GBS SnapMail Protocol |
| gbs-smp | 3762/udp | 0.000000 | # GBS SnapMail Protocol |
| xo-wave | 3763/tcp | 0.000000 | # XO Wave Control Port |
| xo-wave | 3763/udp | 0.000000 | # XO Wave Control Port |
| mni-prot-rout | 3764/tcp | 0.000000 | # MNI Protected Routing |
| mni-prot-rout | 3764/udp | 0.000000 | # MNI Protected Routing |
| rtraceroute | 3765/tcp | 0.000076 | # Remote Traceroute |
| rtraceroute | 3765/udp | 0.000000 | # Remote Traceroute |
| sitewatch-s | 3766/tcp | 0.000380 | # SSL e-watch sitewatch server |
| listmgr-port | 3767/tcp | 0.000000 | # ListMGR Port |
| listmgr-port | 3767/udp | 0.000000 | # ListMGR Port |
| rblcheckd | 3768/tcp | 0.000000 | # rblcheckd server daemon |
| rblcheckd | 3768/udp | 0.000000 | # rblcheckd server daemon |
| haipe-otnk | 3769/tcp | 0.000000 | # HAIPE Network Keying |
| haipe-otnk | 3769/udp | 0.000330 | # HAIPE Network Keying |
| cindycollab | 3770/tcp | 0.000000 | # Cinderella Collaboration |
| cindycollab | 3770/udp | 0.000000 | # Cinderella Collaboration |
| paging-port | 3771/tcp | 0.000000 | # RTP Paging Port |
| paging-port | 3771/udp | 0.000330 | # RTP Paging Port |
| ctp | 3772/tcp | 0.000000 | # Chantry Tunnel Protocol |
| ctp | 3772/udp | 0.000000 | # Chantry Tunnel Protocol |
| ctdhercules | 3773/tcp | 0.000000 | ctdhercules 3773/tcp 0.000000 |
| ctdhercules | 3773/udp | 0.000000 | ctdhercules 3773/udp 0.000000 |
| zicom | 3774/tcp | 0.000000 | zicom 3774/tcp 0.000000 |
| zicom | 3774/udp | 0.000330 | # ZICOM |
| ispmmgr | 3775/tcp | 0.000000 | # ISPM Manager Port |
| ispmmgr | 3775/udp | 0.000000 | # ISPM Manager Port |
| dvcprov-port | 3776/tcp | 0.000000 | # Device Provisioning Port |
| dvcprov-port | 3776/udp | 0.000330 | # Device Provisioning Port |
| jibe-eb | 3777/tcp | 0.000000 | # Jibe EdgeBurst |
| jibe-eb | 3777/udp | 0.000000 | # Jibe EdgeBurst |
| c-h-it-port | 3778/tcp | 0.000000 | # Cutler-Hammer IT Port |
| c-h-it-port | 3778/udp | 0.000000 | # Cutler-Hammer IT Port |
| cognima | 3779/tcp | 0.000000 | # Cognima Replication |
| cognima | 3779/udp | 0.000000 | # Cognima Replication |
| nnp | 3780/tcp | 0.000000 | # Nuzzler Network Protocol |
| nnp | 3780/udp | 0.000000 | # Nuzzler Network Protocol |
| abcvoice-port | 3781/tcp | 0.000000 | # ABCvoice server port |
| abcvoice-port | 3781/udp | 0.000000 | # ABCvoice server port |
| iso-tp0s | 3782/tcp | 0.000000 | # Secure ISO TP0 port |
| iso-tp0s | 3782/udp | 0.000000 | # Secure ISO TP0 port |
| bim-pem | 3783/tcp | 0.000000 | # Impact Mgr./PEM Gateway |
| bim-pem | 3783/udp | 0.000330 | # Impact Mgr./PEM Gateway |
| bfd-control | 3784/tcp | 0.000380 | # BFD Control Protocol |
| bfd-control | 3784/udp | 0.000661 | # BFD Control Protocol |
| bfd-echo | 3785/tcp | 0.000000 | # BFD Echo Protocol |
| bfd-echo | 3785/udp | 0.000000 | # BFD Echo Protocol |
| upstriggervsw | 3786/tcp | 0.000000 | # VSW Upstrigger port |
| upstriggervsw | 3786/udp | 0.000000 | # VSW Upstrigger port |
| fintrx | 3787/tcp | 0.000076 | fintrx 3787/tcp 0.000076 |
| fintrx | 3787/udp | 0.000000 | # Fintrx |
| isrp-port | 3788/tcp | 0.000076 | # SPACEWAY Routing port |
| isrp-port | 3788/udp | 0.000330 | # SPACEWAY Routing port |
| remotedeploy | 3789/tcp | 0.000000 | # RemoteDeploy Administration Port [July 2003] |
| remotedeploy | 3789/udp | 0.000000 | # RemoteDeploy Administration Port [July 2003] |
| quickbooksrds | 3790/tcp | 0.000076 | # QuickBooks RDS |
| quickbooksrds | 3790/udp | 0.000000 | # QuickBooks RDS |
| tvnetworkvideo | 3791/tcp | 0.000000 | # TV NetworkVideo Data port |
| tvnetworkvideo | 3791/udp | 0.000000 | # TV NetworkVideo Data port |
| sitewatch | 3792/tcp | 0.000152 | # e-Watch Corporation SiteWatch |
| sitewatch | 3792/udp | 0.000000 | # e-Watch Corporation SiteWatch |
| dcsoftware | 3793/tcp | 0.000076 | # DataCore Software |
| dcsoftware | 3793/udp | 0.000000 | # DataCore Software |
| jaus | 3794/tcp | 0.000000 | # JAUS Robots |
| jaus | 3794/udp | 0.000000 | # JAUS Robots |
| myblast | 3795/tcp | 0.000076 | # myBLAST Mekentosj port |
| myblast | 3795/udp | 0.000000 | # myBLAST Mekentosj port |
| spw-dialer | 3796/tcp | 0.000076 | # Spaceway Dialer |
| spw-dialer | 3796/udp | 0.000330 | # Spaceway Dialer |
| idps | 3797/tcp | 0.000000 | idps 3797/tcp 0.000000 |
| idps | 3797/udp | 0.000000 | idps 3797/udp 0.000000 |
| minilock | 3798/tcp | 0.000076 | minilock 3798/tcp 0.000076 |
| minilock | 3798/udp | 0.000000 | # Minilock |
| radius-dynauth | 3799/tcp | 0.000076 | # RADIUS Dynamic Authorization |
| radius-dynauth | 3799/udp | 0.000330 | # RADIUS Dynamic Authorization |
| pwgpsi | 3800/tcp | 0.000228 | # Print Services Interface |
| pwgpsi | 3800/udp | 0.000000 | # Print Services Interface |
| ibm-mgr | 3801/tcp | 0.000380 | # ibm manager service |
| ibm-mgr | 3801/udp | 0.000000 | # ibm manager service |
| vhd | 3802/tcp | 0.000000 | vhd 3802/tcp 0.000000 |
| vhd | 3802/udp | 0.000000 | # VHD |
| soniqsync | 3803/tcp | 0.000076 | soniqsync 3803/tcp 0.000076 |
| soniqsync | 3803/udp | 0.000000 | # SoniqSync |
| iqnet-port | 3804/tcp | 0.000000 | # Harman IQNet Port |
| iqnet-port | 3804/udp | 0.000000 | # Harman IQNet Port |
| tcpdataserver | 3805/tcp | 0.000000 | # ThorGuard Server Port |
| tcpdataserver | 3805/udp | 0.000000 | # ThorGuard Server Port |
| wsmlb | 3806/tcp | 0.000076 | # Remote System Manager |
| wsmlb | 3806/udp | 0.000000 | # Remote System Manager |
| spugna | 3807/tcp | 0.000000 | # SpuGNA Communication Port |
| spugna | 3807/udp | 0.000000 | # SpuGNA Communication Port |
| sun-as-iiops-ca | 3808/tcp | 0.000152 | # Sun App Svr-IIOPClntAuth |
| sun-as-iiops-ca | 3808/udp | 0.000000 | # Sun App Svr-IIOPClntAuth |
| apocd | 3809/tcp | 0.000228 | # Java Desktop System Configuration Agent |
| apocd | 3809/udp | 0.000000 | # Java Desktop System Configuration Agent |
| wlanauth | 3810/tcp | 0.000076 | # WLAN AS server |
| wlanauth | 3810/udp | 0.000000 | # WLAN AS server |
| amp | 3811/tcp | 0.000076 | amp 3811/tcp 0.000076 |
| amp | 3811/udp | 0.000000 | # AMP |
| neto-wol-server | 3812/tcp | 0.000076 | # netO WOL Server |
| neto-wol-server | 3812/udp | 0.000000 | # netO WOL Server |
| rap-ip | 3813/tcp | 0.000076 | # Rhapsody Interface Protocol |
| rap-ip | 3813/udp | 0.000330 | # Rhapsody Interface Protocol |
| neto-dcs | 3814/tcp | 0.000228 | # netO DCS |
| neto-dcs | 3814/udp | 0.000000 | # netO DCS |
| lansurveyorxml | 3815/tcp | 0.000000 | # LANsurveyor XML |
| lansurveyorxml | 3815/udp | 0.000330 | # LANsurveyor XML |
| sunlps-http | 3816/tcp | 0.000000 | # Sun Local Patch Server |
| sunlps-http | 3816/udp | 0.000000 | # Sun Local Patch Server |
| tapeware | 3817/tcp | 0.000076 | # Yosemite Tech Tapeware |
| tapeware | 3817/udp | 0.000000 | # Yosemite Tech Tapeware |
| crinis-hb | 3818/tcp | 0.000000 | # Crinis Heartbeat |
| crinis-hb | 3818/udp | 0.000000 | # Crinis Heartbeat |
| epl-slp | 3819/tcp | 0.000000 | # EPL Sequ Layer Protocol |
| epl-slp | 3819/udp | 0.000000 | # EPL Sequ Layer Protocol |
| scp | 3820/tcp | 0.000152 | # Siemens AuD SCP |
| scp | 3820/udp | 0.000000 | # Siemens AuD SCP |
| pmcp | 3821/tcp | 0.000000 | # ATSC PMCP Standard |
| pmcp | 3821/udp | 0.000000 | # ATSC PMCP Standard |
| acp-discovery | 3822/tcp | 0.000000 | # Compute Pool Discovery |
| acp-discovery | 3822/udp | 0.000000 | # Compute Pool Discovery |
| acp-conduit | 3823/tcp | 0.000076 | # Compute Pool Conduit |
| acp-conduit | 3823/udp | 0.000000 | # Compute Pool Conduit |
| acp-policy | 3824/tcp | 0.000152 | # Compute Pool Policy |
| acp-policy | 3824/udp | 0.000000 | # Compute Pool Policy |
| ffserver | 3825/tcp | 0.000076 | # Antera FlowFusion Process Simulation |
| ffserver | 3825/udp | 0.000000 | # Antera FlowFusion Process Simulation |
| wormux | 3826/tcp | 0.000228 | # warmux | Wormux server | WarMUX game server |
| wormux | 3826/udp | 0.000000 | # Wormux server |
| netmpi | 3827/tcp | 0.000380 | # Netadmin Systems MPI service |
| netmpi | 3827/udp | 0.000000 | # Netadmin Systems MPI service |
| neteh | 3828/tcp | 0.000304 | # Netadmin Systems Event Handler |
| neteh | 3828/udp | 0.000000 | # Netadmin Systems Event Handler |
| neteh-ext | 3829/tcp | 0.000000 | # Netadmin Systems Event Handler External |
| neteh-ext | 3829/udp | 0.000000 | # Netadmin Systems Event Handler External |
| cernsysmgmtagt | 3830/tcp | 0.000076 | # Cerner System Management Agent |
| cernsysmgmtagt | 3830/udp | 0.000000 | # Cerner System Management Agent |
| dvapps | 3831/tcp | 0.000076 | # Docsvault Application Service |
| dvapps | 3831/udp | 0.000000 | # Docsvault Application Service |
| xxnetserver | 3832/tcp | 0.000000 | xxnetserver 3832/tcp 0.000000 |
| xxnetserver | 3832/udp | 0.000000 | # xxNETserver |
| aipn-auth | 3833/tcp | 0.000000 | # AIPN LS Authentication |
| aipn-auth | 3833/udp | 0.000000 | # AIPN LS Authentication |
| spectardata | 3834/tcp | 0.000000 | # Spectar Data Stream Service |
| spectardata | 3834/udp | 0.000000 | # Spectar Data Stream Service |
| spectardb | 3835/tcp | 0.000000 | # Spectar Database Rights Service |
| spectardb | 3835/udp | 0.000000 | # Spectar Database Rights Service |
| markem-dcp | 3836/tcp | 0.000000 | # MARKEM NEXTGEN DCP |
| markem-dcp | 3836/udp | 0.000000 | # MARKEM NEXTGEN DCP |
| mkm-discovery | 3837/tcp | 0.000076 | # MARKEM Auto-Discovery |
| mkm-discovery | 3837/udp | 0.000330 | # MARKEM Auto-Discovery |
| sos | 3838/tcp | 0.000000 | # Scito Object Server |
| sos | 3838/udp | 0.000000 | # Scito Object Server |
| amx-rms | 3839/tcp | 0.000076 | # AMX Resource Management Suite |
| amx-rms | 3839/udp | 0.000000 | # AMX Resource Management Suite |
| flirtmitmir | 3840/tcp | 0.000000 | # www.FlirtMitMir.de |
| flirtmitmir | 3840/udp | 0.000000 | # www.FlirtMitMir.de |
| zfirm-shiprush3 | 3841/tcp | 0.000000 | # shiprush-db-svr | Z-Firm ShipRush v3 | ShipRush Database Server |
| zfirm-shiprush3 | 3841/udp | 0.000330 | # Z-Firm ShipRush v3 |
| nhci | 3842/tcp | 0.000076 | # NHCI status port |
| nhci | 3842/udp | 0.000000 | # NHCI status port |
| quest-agent | 3843/tcp | 0.000000 | # Quest Common Agent |
| quest-agent | 3843/udp | 0.000000 | # Quest Common Agent |
| rnm | 3844/tcp | 0.000000 | rnm 3844/tcp 0.000000 |
| rnm | 3844/udp | 0.000000 | # RNM |
| v-one-spp | 3845/tcp | 0.000000 | # V-ONE Single Port Proxy |
| v-one-spp | 3845/udp | 0.000000 | # V-ONE Single Port Proxy |
| an-pcp | 3846/tcp | 0.000152 | # Astare Network PCP |
| an-pcp | 3846/udp | 0.000000 | # Astare Network PCP |
| msfw-control | 3847/tcp | 0.000076 | # MS Firewall Control |
| msfw-control | 3847/udp | 0.000000 | # MS Firewall Control |
| item | 3848/tcp | 0.000152 | # IT Environmental Monitor |
| item | 3848/udp | 0.000330 | # IT Environmental Monitor |
| spw-dnspreload | 3849/tcp | 0.000152 | # SPACEWAY DNS Preload | SPACEWAY DNS Prelaod |
| spw-dnspreload | 3849/udp | 0.000000 | # SPACEWAY DNS Prelaod |
| qtms-bootstrap | 3850/tcp | 0.000076 | # QTMS Bootstrap Protocol |
| qtms-bootstrap | 3850/udp | 0.000330 | # QTMS Bootstrap Protocol |
| spectraport | 3851/tcp | 0.000304 | # SpectraTalk Port |
| spectraport | 3851/udp | 0.000000 | # SpectraTalk Port |
| sse-app-config | 3852/tcp | 0.000152 | # SSE App Configuration |
| sse-app-config | 3852/udp | 0.000000 | # SSE App Configuration |
| sscan | 3853/tcp | 0.000152 | # SONY scanning protocol |
| sscan | 3853/udp | 0.000000 | # SONY scanning protocol |
| stryker-com | 3854/tcp | 0.000000 | # Stryker Comm Port |
| stryker-com | 3854/udp | 0.000000 | # Stryker Comm Port |
| opentrac | 3855/tcp | 0.000000 | opentrac 3855/tcp 0.000000 |
| opentrac | 3855/udp | 0.000000 | # OpenTRAC |
| informer | 3856/tcp | 0.000076 | informer 3856/tcp 0.000076 |
| informer | 3856/udp | 0.000000 | # INFORMER |
| trap-port | 3857/tcp | 0.000000 | # Trap Port |
| trap-port | 3857/udp | 0.000000 | # Trap Port |
| trap-port-mom | 3858/tcp | 0.000000 | # Trap Port MOM |
| trap-port-mom | 3858/udp | 0.000000 | # Trap Port MOM |
| nav-port | 3859/tcp | 0.000152 | # Navini Port |
| nav-port | 3859/udp | 0.000000 | # Navini Port |
| sasp | 3860/tcp | 0.000076 | # Server/Application State Protocol (SASP) |
| sasp | 3860/udp | 0.000000 | # Server/Application State Protocol (SASP) |
| winshadow-hd | 3861/tcp | 0.000000 | # winShadow Host Discovery |
| winshadow-hd | 3861/udp | 0.000000 | # winShadow Host Discovery |
| giga-pocket | 3862/tcp | 0.000000 | giga-pocket 3862/tcp 0.000000 |
| giga-pocket | 3862/udp | 0.000000 | # GIGA-POCKET |
| asap-sctp | 3863/sctp | 0.000000 | # asap-udp | asap-tcp | RSerPool ASAP (SCTP) | asap tcp port | asap udp port | asap sctp |
| asap-tcp | 3863/tcp | 0.000152 | # RSerPool ASAP (TCP) |
| asap-tcp | 3863/udp | 0.000000 | # RSerPool ASAP (UDP) |
| asap-sctp-tls | 3864/sctp | 0.000000 | # asap-tcp-tls | RSerPool ASAP/TLS (SCTP) | asap/tls tcp port | asap-sctp/tls |
| asap-tcp-tls | 3864/tcp | 0.000000 | # RSerPool ASAP/TLS (TCP) |
| xpl | 3865/tcp | 0.000000 | # xpl automation protocol |
| xpl | 3865/udp | 0.000000 | # xpl automation protocol |
| dzdaemon | 3866/tcp | 0.000000 | # Sun SDViz DZDAEMON Port |
| dzdaemon | 3866/udp | 0.000000 | # Sun SDViz DZDAEMON Port |
| dzoglserver | 3867/tcp | 0.000000 | # Sun SDViz DZOGLSERVER Port |
| dzoglserver | 3867/udp | 0.000000 | # Sun SDViz DZOGLSERVER Port |
| diameter | 3868/sctp | 0.000000 | diameter 3868/sctp 0.000000 |
| diameter | 3868/tcp | 0.000076 | # DIAMETER |
| ovsam-mgmt | 3869/tcp | 0.000228 | # hp OVSAM MgmtServer Disco |
| ovsam-mgmt | 3869/udp | 0.000330 | # hp OVSAM MgmtServer Disco |
| ovsam-d-agent | 3870/tcp | 0.000152 | # hp OVSAM HostAgent Disco |
| ovsam-d-agent | 3870/udp | 0.000330 | # hp OVSAM HostAgent Disco |
| avocent-adsap | 3871/tcp | 0.000304 | # Avocent DS Authorization |
| avocent-adsap | 3871/udp | 0.000000 | # Avocent DS Authorization |
| oem-agent | 3872/tcp | 0.000152 | # OEM Agent |
| oem-agent | 3872/udp | 0.000330 | # OEM Agent |
| fagordnc | 3873/tcp | 0.000000 | fagordnc 3873/tcp 0.000000 |
| fagordnc | 3873/udp | 0.000000 | fagordnc 3873/udp 0.000000 |
| sixxsconfig | 3874/tcp | 0.000000 | # SixXS Configuration |
| sixxsconfig | 3874/udp | 0.000000 | # SixXS Configuration |
| pnbscada | 3875/tcp | 0.000000 | pnbscada 3875/tcp 0.000000 |
| pnbscada | 3875/udp | 0.000000 | # PNBSCADA |
| dl_agent | 3876/tcp | 0.000076 | # dl-agent | DirectoryLockdown Agent |
| dl_agent | 3876/udp | 0.000000 | # DirectoryLockdown Agent |
| xmpcr-interface | 3877/tcp | 0.000000 | # XMPCR Interface Port |
| xmpcr-interface | 3877/udp | 0.000000 | # XMPCR Interface Port |
| fotogcad | 3878/tcp | 0.000228 | # FotoG CAD interface |
| fotogcad | 3878/udp | 0.000000 | # FotoG CAD interface |
| appss-lm | 3879/tcp | 0.000076 | # appss license manager |
| appss-lm | 3879/udp | 0.000000 | # appss license manager |
| igrs | 3880/tcp | 0.000304 | igrs 3880/tcp 0.000304 |
| igrs | 3880/udp | 0.000000 | # IGRS |
| idac | 3881/tcp | 0.000000 | # Data Acquisition and Control |
| idac | 3881/udp | 0.000000 | # Data Acquisition and Control |
| msdts1 | 3882/tcp | 0.000076 | # DTS Service Port |
| msdts1 | 3882/udp | 0.000330 | # DTS Service Port |
| vrpn | 3883/tcp | 0.000000 | # VR Peripheral Network |
| vrpn | 3883/udp | 0.000000 | # VR Peripheral Network |
| softrack-meter | 3884/tcp | 0.000000 | # SofTrack Metering |
| softrack-meter | 3884/udp | 0.000330 | # SofTrack Metering |
| topflow-ssl | 3885/tcp | 0.000000 | # TopFlow SSL |
| topflow-ssl | 3885/udp | 0.000330 | # TopFlow SSL |
| nei-management | 3886/tcp | 0.000000 | # NEI management port |
| nei-management | 3886/udp | 0.000000 | # NEI management port |
| ciphire-data | 3887/tcp | 0.000000 | # Ciphire Data Transport |
| ciphire-data | 3887/udp | 0.000000 | # Ciphire Data Transport |
| ciphire-serv | 3888/tcp | 0.000152 | # Ciphire Services |
| ciphire-serv | 3888/udp | 0.000000 | # Ciphire Services |
| dandv-tester | 3889/tcp | 0.000228 | # D and V Tester Control Port |
| dandv-tester | 3889/udp | 0.000000 | # D and V Tester Control Port |
| ndsconnect | 3890/tcp | 0.000076 | # Niche Data Server Connect |
| ndsconnect | 3890/udp | 0.000000 | # Niche Data Server Connect |
| rtc-pm-port | 3891/tcp | 0.000000 | # Oracle RTC-PM port |
| rtc-pm-port | 3891/udp | 0.000000 | # Oracle RTC-PM port |
| pcc-image-port | 3892/tcp | 0.000000 | pcc-image-port 3892/tcp 0.000000 |
| pcc-image-port | 3892/udp | 0.000000 | # PCC-image-port |
| cgi-starapi | 3893/tcp | 0.000000 | # CGI StarAPI Server |
| cgi-starapi | 3893/udp | 0.000000 | # CGI StarAPI Server |
| syam-agent | 3894/tcp | 0.000000 | # SyAM Agent Port |
| syam-agent | 3894/udp | 0.000000 | # SyAM Agent Port |
| syam-smc | 3895/tcp | 0.000000 | # SyAm SMC Service Port |
| syam-smc | 3895/udp | 0.000000 | # SyAm SMC Service Port |
| sdo-tls | 3896/tcp | 0.000000 | # Simple Distributed Objects over TLS |
| sdo-tls | 3896/udp | 0.000000 | # Simple Distributed Objects over TLS |
| sdo-ssh | 3897/tcp | 0.000076 | # Simple Distributed Objects over SSH |
| sdo-ssh | 3897/udp | 0.000000 | # Simple Distributed Objects over SSH |
| senip | 3898/tcp | 0.000000 | # IAS, Inc. SmartEye NET Internet Protocol |
| senip | 3898/udp | 0.000000 | # IAS, Inc. SmartEye NET Internet Protocol |
| itv-control | 3899/tcp | 0.000076 | # ITV Port |
| itv-control | 3899/udp | 0.000000 | # ITV Port |
| udt_os | 3900/tcp | 0.000050 | # udt-os | Unidata UDT OS |
| udt_os | 3900/udp | 0.000264 | # Unidata UDT OS |
| nimsh | 3901/tcp | 0.000076 | # NIM Service Handler |
| nimsh | 3901/udp | 0.000000 | # NIM Service Handler |
| nimaux | 3902/tcp | 0.000076 | # NIMsh Auxiliary Port |
| nimaux | 3902/udp | 0.000000 | # NIMsh Auxiliary Port |
| charsetmgr | 3903/tcp | 0.000000 | charsetmgr 3903/tcp 0.000000 |
| charsetmgr | 3903/udp | 0.000000 | # CharsetMGR |
| omnilink-port | 3904/tcp | 0.000076 | # Arnet Omnilink Port |
| omnilink-port | 3904/udp | 0.000330 | # Arnet Omnilink Port |
| mupdate | 3905/tcp | 0.000228 | # Mailbox Update (MUPDATE) protocol |
| mupdate | 3905/udp | 0.000000 | # Mailbox Update (MUPDATE) protocol |
| topovista-data | 3906/tcp | 0.000076 | # TopoVista elevation data |
| topovista-data | 3906/udp | 0.000000 | # TopoVista elevation data |
| imoguia-port | 3907/tcp | 0.000152 | # Imoguia Port |
| imoguia-port | 3907/udp | 0.000330 | # Imoguia Port |
| hppronetman | 3908/tcp | 0.000076 | # HP Procurve NetManagement |
| hppronetman | 3908/udp | 0.000000 | # HP Procurve NetManagement |
| surfcontrolcpa | 3909/tcp | 0.000076 | # SurfControl CPA |
| surfcontrolcpa | 3909/udp | 0.000000 | # SurfControl CPA |
| prnrequest | 3910/tcp | 0.000000 | # Printer Request Port |
| prnrequest | 3910/udp | 0.000661 | # Printer Request Port |
| prnstatus | 3911/tcp | 0.000076 | # Printer Status Port |
| prnstatus | 3911/udp | 0.000000 | # Printer Status Port |
| gbmt-stars | 3912/tcp | 0.000000 | # Global Maintech Stars |
| gbmt-stars | 3912/udp | 0.000000 | # Global Maintech Stars |
| listcrt-port | 3913/tcp | 0.000076 | # ListCREATOR Port |
| listcrt-port | 3913/udp | 0.000000 | # ListCREATOR Port |
| listcrt-port-2 | 3914/tcp | 0.000228 | # ListCREATOR Port 2 |
| listcrt-port-2 | 3914/udp | 0.000000 | # ListCREATOR Port 2 |
| agcat | 3915/tcp | 0.000076 | # Auto-Graphics Cataloging |
| agcat | 3915/udp | 0.000000 | # Auto-Graphics Cataloging |
| wysdmc | 3916/tcp | 0.000152 | # WysDM Controller |
| wysdmc | 3916/udp | 0.000000 | # WysDM Controller |
| aftmux | 3917/tcp | 0.000000 | # AFT multiplex port | AFT multiples port |
| aftmux | 3917/udp | 0.000000 | # AFT multiples port |
| pktcablemmcops | 3918/tcp | 0.000304 | # PacketCableMultimediaCOPS |
| pktcablemmcops | 3918/udp | 0.000000 | # PacketCableMultimediaCOPS |
| hyperip | 3919/tcp | 0.000076 | hyperip 3919/tcp 0.000076 |
| hyperip | 3919/udp | 0.000000 | # HyperIP |
| exasoftport1 | 3920/tcp | 0.000228 | # Exasoft IP Port |
| exasoftport1 | 3920/udp | 0.000000 | # Exasoft IP Port |
| herodotus-net | 3921/tcp | 0.000000 | # Herodotus Net |
| herodotus-net | 3921/udp | 0.000000 | # Herodotus Net |
| sor-update | 3922/tcp | 0.000076 | # Soronti Update Port |
| sor-update | 3922/udp | 0.000000 | # Soronti Update Port |
| symb-sb-port | 3923/tcp | 0.000076 | # Symbian Service Broker |
| symb-sb-port | 3923/udp | 0.000000 | # Symbian Service Broker |
| mpl-gprs-port | 3924/tcp | 0.000000 | # MPL_GPRS_PORT | MPL_GPRS_Port |
| mpl-gprs-port | 3924/udp | 0.000000 | # MPL_GPRS_Port |
| zmp | 3925/tcp | 0.000000 | # Zoran Media Port |
| zmp | 3925/udp | 0.000000 | # Zoran Media Port |
| winport | 3926/tcp | 0.000000 | winport 3926/tcp 0.000000 |
| winport | 3926/udp | 0.000000 | # WINPort |
| natdataservice | 3927/tcp | 0.000000 | # ScsTsr |
| natdataservice | 3927/udp | 0.000000 | # ScsTsr |
| netboot-pxe | 3928/tcp | 0.000076 | # PXE NetBoot Manager |
| netboot-pxe | 3928/udp | 0.000000 | # PXE NetBoot Manager |
| smauth-port | 3929/tcp | 0.000152 | # AMS Port |
| smauth-port | 3929/udp | 0.000000 | # AMS Port |
| syam-webserver | 3930/tcp | 0.000076 | # Syam Web Server Port |
| syam-webserver | 3930/udp | 0.000000 | # Syam Web Server Port |
| msr-plugin-port | 3931/tcp | 0.000152 | # MSR Plugin Port |
| msr-plugin-port | 3931/udp | 0.000000 | # MSR Plugin Port |
| dyn-site | 3932/tcp | 0.000000 | # Dynamic Site System |
| dyn-site | 3932/udp | 0.000000 | # Dynamic Site System |
| plbserve-port | 3933/tcp | 0.000000 | # PL/B App Server User Port |
| plbserve-port | 3933/udp | 0.000000 | # PL/B App Server User Port |
| sunfm-port | 3934/tcp | 0.000000 | # PL/B File Manager Port |
| sunfm-port | 3934/udp | 0.000000 | # PL/B File Manager Port |
| sdp-portmapper | 3935/tcp | 0.000076 | # SDP Port Mapper Protocol |
| sdp-portmapper | 3935/udp | 0.000000 | # SDP Port Mapper Protocol |
| mailprox | 3936/tcp | 0.000076 | mailprox 3936/tcp 0.000076 |
| mailprox | 3936/udp | 0.000000 | # Mailprox |
| dvbservdsc | 3937/tcp | 0.000076 | # DVB Service Discovery |
| dvbservdsc | 3937/udp | 0.000000 | # DVB Service Discovery |
| dbcontrol_agent | 3938/tcp | 0.000000 | # dbcontrol-agent | Oracle dbControl Agent po | Oracel dbControl Agent po |
| dbcontrol_agent | 3938/udp | 0.000000 | # Oracel dbControl Agent po |
| aamp | 3939/tcp | 0.000000 | # Anti-virus Application Management Port |
| aamp | 3939/udp | 0.000000 | # Anti-virus Application Management Port |
| xecp-node | 3940/tcp | 0.000076 | # XeCP Node Service |
| xecp-node | 3940/udp | 0.000000 | # XeCP Node Service |
| homeportal-web | 3941/tcp | 0.000152 | # Home Portal Web Server |
| homeportal-web | 3941/udp | 0.000000 | # Home Portal Web Server |
| srdp | 3942/tcp | 0.000000 | # satellite distribution |
| srdp | 3942/udp | 0.000000 | # satellite distribution |
| tig | 3943/tcp | 0.000076 | # TetraNode Ip Gateway |
| tig | 3943/udp | 0.000000 | # TetraNode Ip Gateway |
| sops | 3944/tcp | 0.000152 | # S-Ops Management |
| sops | 3944/udp | 0.000330 | # S-Ops Management |
| emcads | 3945/tcp | 0.000228 | # EMCADS Server Port |
| emcads | 3945/udp | 0.000000 | # EMCADS Server Port |
| backupedge | 3946/tcp | 0.000076 | # BackupEDGE Server |
| backupedge | 3946/udp | 0.000000 | # BackupEDGE Server |
| ccp | 3947/tcp | 0.000000 | # Connect and Control Protocol for Consumer, Commercial, and Industrial Electronic Devices |
| ccp | 3947/udp | 0.000661 | # Connect and Control Protocol for Consumer, Commercial, and Industrial Electronic Devices |
| apdap | 3948/tcp | 0.000076 | # Anton Paar Device Administration Protocol |
| apdap | 3948/udp | 0.000000 | # Anton Paar Device Administration Protocol |
| drip | 3949/tcp | 0.000076 | # Dynamic Routing Information Protocol |
| drip | 3949/udp | 0.000000 | # Dynamic Routing Information Protocol |
| namemunge | 3950/tcp | 0.000000 | # Name Munging |
| namemunge | 3950/udp | 0.000330 | # Name Munging |
| pwgippfax | 3951/tcp | 0.000000 | # PWG IPP Facsimile |
| pwgippfax | 3951/udp | 0.000000 | # PWG IPP Facsimile |
| i3-sessionmgr | 3952/tcp | 0.000076 | # I3 Session Manager |
| i3-sessionmgr | 3952/udp | 0.000000 | # I3 Session Manager |
| xmlink-connect | 3953/tcp | 0.000000 | # Eydeas XMLink Connect |
| xmlink-connect | 3953/udp | 0.000330 | # Eydeas XMLink Connect |
| adrep | 3954/tcp | 0.000000 | # AD Replication RPC |
| adrep | 3954/udp | 0.000000 | # AD Replication RPC |
| p2pcommunity | 3955/tcp | 0.000000 | p2pcommunity 3955/tcp 0.000000 |
| p2pcommunity | 3955/udp | 0.000330 | # p2pCommunity |
| gvcp | 3956/tcp | 0.000076 | # GigE Vision Control |
| gvcp | 3956/udp | 0.000000 | # GigE Vision Control |
| mqe-broker | 3957/tcp | 0.000152 | # MQEnterprise Broker |
| mqe-broker | 3957/udp | 0.000000 | # MQEnterprise Broker |
| mqe-agent | 3958/tcp | 0.000000 | # MQEnterprise Agent |
| mqe-agent | 3958/udp | 0.000000 | # MQEnterprise Agent |
| treehopper | 3959/tcp | 0.000000 | # Tree Hopper Networking |
| treehopper | 3959/udp | 0.000000 | # Tree Hopper Networking |
| bess | 3960/tcp | 0.000000 | # Bess Peer Assessment |
| bess | 3960/udp | 0.000000 | # Bess Peer Assessment |
| proaxess | 3961/tcp | 0.000076 | # ProAxess Server |
| proaxess | 3961/udp | 0.000000 | # ProAxess Server |
| sbi-agent | 3962/tcp | 0.000076 | # SBI Agent Protocol |
| sbi-agent | 3962/udp | 0.000000 | # SBI Agent Protocol |
| thrp | 3963/tcp | 0.000152 | # Teran Hybrid Routing Protocol |
| thrp | 3963/udp | 0.000000 | # Teran Hybrid Routing Protocol |
| sasggprs | 3964/tcp | 0.000076 | # SASG GPRS |
| sasggprs | 3964/udp | 0.000000 | # SASG GPRS |
| ati-ip-to-ncpe | 3965/tcp | 0.000000 | # Avanti IP to NCPE API |
| ati-ip-to-ncpe | 3965/udp | 0.000000 | # Avanti IP to NCPE API |
| bflckmgr | 3966/tcp | 0.000000 | # BuildForge Lock Manager |
| bflckmgr | 3966/udp | 0.000000 | # BuildForge Lock Manager |
| ppsms | 3967/tcp | 0.000076 | # PPS Message Service |
| ppsms | 3967/udp | 0.000000 | # PPS Message Service |
| ianywhere-dbns | 3968/tcp | 0.000152 | # iAnywhere DBNS |
| ianywhere-dbns | 3968/udp | 0.000000 | # iAnywhere DBNS |
| landmarks | 3969/tcp | 0.000152 | # Landmark Messages |
| landmarks | 3969/udp | 0.000000 | # Landmark Messages |
| lanrevagent | 3970/tcp | 0.000000 | # LANrev Agent |
| lanrevagent | 3970/udp | 0.000330 | # LANrev Agent |
| lanrevserver | 3971/tcp | 0.000228 | # LANrev Server |
| lanrevserver | 3971/udp | 0.000330 | # LANrev Server |
| iconp | 3972/tcp | 0.000152 | # ict-control Protocol |
| iconp | 3972/udp | 0.000000 | # ict-control Protocol |
| progistics | 3973/tcp | 0.000000 | # ConnectShip Progistics |
| progistics | 3973/udp | 0.000000 | # ConnectShip Progistics |
| citysearch | 3974/tcp | 0.000000 | # Remote Applicant Tracking Service |
| citysearch | 3974/udp | 0.000330 | # Remote Applicant Tracking Service |
| airshot | 3975/tcp | 0.000076 | # Air Shot |
| airshot | 3975/udp | 0.000000 | # Air Shot |
| opswagent | 3976/tcp | 0.000000 | # Opsware Agent | Server Automation Agent |
| opswagent | 3976/udp | 0.000330 | # Opsware Agent |
| opswmanager | 3977/tcp | 0.000000 | # Opsware Manager |
| opswmanager | 3977/udp | 0.000000 | # Opsware Manager |
| secure-cfg-svr | 3978/tcp | 0.000000 | # Secured Configuration Server |
| secure-cfg-svr | 3978/udp | 0.000661 | # Secured Configuration Server |
| smwan | 3979/tcp | 0.000076 | # Smith Micro Wide Area Network Service |
| smwan | 3979/udp | 0.000000 | # Smith Micro Wide Area Network Service |
| acms | 3980/tcp | 0.000076 | # Aircraft Cabin Management System |
| acms | 3980/udp | 0.000000 | # Aircraft Cabin Management System |
| starfish | 3981/tcp | 0.000152 | # Starfish System Admin |
| starfish | 3981/udp | 0.000000 | # Starfish System Admin |
| eis | 3982/tcp | 0.000076 | # ESRI Image Server |
| eis | 3982/udp | 0.000000 | # ESRI Image Server |
| eisp | 3983/tcp | 0.000076 | # ESRI Image Service |
| eisp | 3983/udp | 0.000000 | # ESRI Image Service |
| mapper-nodemgr | 3984/tcp | 0.000013 | # MAPPER network node manager |
| mapper-nodemgr | 3984/udp | 0.000527 | # MAPPER network node manager |
| mapper-mapethd | 3985/tcp | 0.000075 | # MAPPER TCP/IP server |
| mapper-mapethd | 3985/udp | 0.000758 | # MAPPER TCP/IP server |
| mapper-ws_ethd | 3986/tcp | 0.003977 | # mapper-ws-ethd | MAPPER workstation server |
| mapper-ws_ethd | 3986/udp | 0.000544 | # MAPPER workstation server |
| centerline | 3987/tcp | 0.000000 | centerline 3987/tcp 0.000000 |
| centerline | 3987/udp | 0.000000 | # Centerline |
| dcs-config | 3988/tcp | 0.000000 | # DCS Configuration Port |
| dcs-config | 3988/udp | 0.000330 | # DCS Configuration Port |
| bv-queryengine | 3989/tcp | 0.000076 | # BindView-Query Engine |
| bv-queryengine | 3989/udp | 0.000000 | # BindView-Query Engine |
| bv-is | 3990/tcp | 0.000152 | # BindView-IS |
| bv-is | 3990/udp | 0.000000 | # BindView-IS |
| bv-smcsrv | 3991/tcp | 0.000076 | # BindView-SMCServer |
| bv-smcsrv | 3991/udp | 0.000000 | # BindView-SMCServer |
| bv-ds | 3992/tcp | 0.000076 | # BindView-DirectoryServer |
| bv-ds | 3992/udp | 0.000330 | # BindView-DirectoryServer |
| bv-agent | 3993/tcp | 0.000152 | # BindView-Agent |
| bv-agent | 3993/udp | 0.000000 | # BindView-Agent |
| iss-mgmt-ssl | 3995/tcp | 0.000304 | # ISS Management Svcs SSL |
| iss-mgmt-ssl | 3995/udp | 0.000000 | # ISS Management Svcs SSL |
| abcsoftware | 3996/tcp | 0.000076 | # abcsoftware-01 |
| remoteanything | 3996/udp | 0.000478 | # neoworx remote-anything daemon |
| agentsease-db | 3997/tcp | 0.000076 | # aes_db |
| remoteanything | 3997/udp | 0.000544 | # neoworx remote-anything daemon |
| dnx | 3998/tcp | 0.000380 | # Distributed Nagios Executor Service |
| remoteanything | 3998/udp | 0.000610 | # neoworx remote-anything reserved |
| remoteanything | 3999/tcp | 0.000088 | # nvcnet | neoworx remote-anything file browser | Norman distributes scanning service |
| nvcnet | 3999/udp | 0.000330 | # Norman distributes scanning service |
| remoteanything | 4000/tcp | 0.001794 | # terabase | neoworx remote-anything remote control | Terabase |
| icq | 4000/udp | 0.006392 | # AOL ICQ instant messaging clent-server communication |
| newoak | 4001/tcp | 0.002129 | newoak 4001/tcp 0.002129 |
| newoak | 4001/udp | 0.000000 | # NewOak |
| mlchat-proxy | 4002/tcp | 0.000765 | # mlnet - MLChat P2P chat proxy | pxc-spvr-ft |
| pxc-spvr-ft | 4002/udp | 0.000330 | pxc-spvr-ft 4002/udp 0.000330 |
| pxc-splr-ft | 4003/tcp | 0.000380 | pxc-splr-ft 4003/tcp 0.000380 |
| pxc-splr-ft | 4003/udp | 0.000000 | pxc-splr-ft 4003/udp 0.000000 |
| pxc-roid | 4004/tcp | 0.000228 | pxc-roid 4004/tcp 0.000228 |
| pxc-roid | 4004/udp | 0.000000 | pxc-roid 4004/udp 0.000000 |
| pxc-pin | 4005/tcp | 0.000228 | pxc-pin 4005/tcp 0.000228 |
| pxc-pin | 4005/udp | 0.000330 | pxc-pin 4005/udp 0.000330 |
| pxc-spvr | 4006/tcp | 0.000304 | pxc-spvr 4006/tcp 0.000304 |
| pxc-spvr | 4006/udp | 0.000330 | pxc-spvr 4006/udp 0.000330 |
| pxc-splr | 4007/tcp | 0.000076 | pxc-splr 4007/tcp 0.000076 |
| pxc-splr | 4007/udp | 0.000000 | pxc-splr 4007/udp 0.000000 |
| netcheque | 4008/tcp | 0.000075 | # NetCheque accounting |
| netcheque | 4008/udp | 0.001367 | # NetCheque accounting |
| chimera-hwm | 4009/tcp | 0.000152 | # Chimera HWM |
| chimera-hwm | 4009/udp | 0.000000 | # Chimera HWM |
| samsung-unidex | 4010/tcp | 0.000076 | # Samsung Unidex |
| samsung-unidex | 4010/udp | 0.000330 | # Samsung Unidex |
| altserviceboot | 4011/tcp | 0.000000 | # Alternate Service Boot |
| altserviceboot | 4011/udp | 0.000000 | # Alternate Service Boot |
| pda-gate | 4012/tcp | 0.000000 | # PDA Gate |
| pda-gate | 4012/udp | 0.000330 | # PDA Gate |
| acl-manager | 4013/tcp | 0.000000 | # ACL Manager |
| acl-manager | 4013/udp | 0.000000 | # ACL Manager |
| taiclock | 4014/tcp | 0.000000 | taiclock 4014/tcp 0.000000 |
| taiclock | 4014/udp | 0.000000 | # TAICLOCK |
| talarian-mcast1 | 4015/tcp | 0.000000 | # Talarian Mcast |
| talarian-mcast1 | 4015/udp | 0.000330 | # Talarian Mcast |
| talarian-mcast2 | 4016/tcp | 0.000076 | # Talarian Mcast |
| talarian-mcast2 | 4016/udp | 0.000330 | # Talarian Mcast |
| talarian-mcast3 | 4017/tcp | 0.000000 | # Talarian Mcast |
| talarian-mcast3 | 4017/udp | 0.000330 | # Talarian Mcast |
| talarian-mcast4 | 4018/tcp | 0.000000 | # Talarian Mcast |
| talarian-mcast4 | 4018/udp | 0.000000 | # Talarian Mcast |
| talarian-mcast5 | 4019/tcp | 0.000000 | # Talarian Mcast |
| talarian-mcast5 | 4019/udp | 0.000000 | # Talarian Mcast |
| trap | 4020/tcp | 0.000076 | # TRAP Port |
| trap | 4020/udp | 0.000000 | # TRAP Port |
| nexus-portal | 4021/tcp | 0.000000 | # Nexus Portal |
| nexus-portal | 4021/udp | 0.000330 | # Nexus Portal |
| dnox | 4022/tcp | 0.000076 | dnox 4022/tcp 0.000076 |
| dnox | 4022/udp | 0.000000 | # DNOX |
| esnm-zoning | 4023/tcp | 0.000000 | # ESNM Zoning Port |
| esnm-zoning | 4023/udp | 0.000000 | # ESNM Zoning Port |
| tnp1-port | 4024/tcp | 0.000076 | # TNP1 User Port |
| tnp1-port | 4024/udp | 0.000000 | # TNP1 User Port |
| partimage | 4025/tcp | 0.000076 | # Partition Image Port |
| partimage | 4025/udp | 0.000000 | # Partition Image Port |
| as-debug | 4026/tcp | 0.000000 | # Graphical Debug Server |
| as-debug | 4026/udp | 0.000330 | # Graphical Debug Server |
| bxp | 4027/tcp | 0.000000 | # bitxpress |
| bxp | 4027/udp | 0.000000 | # bitxpress |
| dtserver-port | 4028/tcp | 0.000000 | # DTServer Port |
| dtserver-port | 4028/udp | 0.000000 | # DTServer Port |
| ip-qsig | 4029/tcp | 0.000076 | # IP Q signaling protocol |
| ip-qsig | 4029/udp | 0.000000 | # IP Q signaling protocol |
| jdmn-port | 4030/tcp | 0.000000 | # Accell/JSP Daemon Port |
| jdmn-port | 4030/udp | 0.000330 | # Accell/JSP Daemon Port |
| suucp | 4031/tcp | 0.000000 | # UUCP over SSL |
| suucp | 4031/udp | 0.000000 | # UUCP over SSL |
| vrts-auth-port | 4032/tcp | 0.000000 | # VERITAS Authorization Service |
| vrts-auth-port | 4032/udp | 0.000000 | # VERITAS Authorization Service |
| sanavigator | 4033/tcp | 0.000000 | # SANavigator Peer Port |
| sanavigator | 4033/udp | 0.000330 | # SANavigator Peer Port |
| ubxd | 4034/tcp | 0.000000 | # Ubiquinox Daemon |
| ubxd | 4034/udp | 0.000000 | # Ubiquinox Daemon |
| wap-push-http | 4035/tcp | 0.000076 | # WAP Push OTA-HTTP port |
| wap-push-http | 4035/udp | 0.000000 | # WAP Push OTA-HTTP port |
| wap-push-https | 4036/tcp | 0.000076 | # WAP Push OTA-HTTP secure |
| wap-push-https | 4036/udp | 0.000000 | # WAP Push OTA-HTTP secure |
| ravehd | 4037/tcp | 0.000000 | # RaveHD network control |
| ravehd | 4037/udp | 0.000000 | # RaveHD network control |
| fazzt-ptp | 4038/tcp | 0.000000 | # Fazzt Point-To-Point |
| fazzt-ptp | 4038/udp | 0.000000 | # Fazzt Point-To-Point |
| fazzt-admin | 4039/tcp | 0.000076 | # Fazzt Administration |
| fazzt-admin | 4039/udp | 0.000991 | # Fazzt Administration |
| yo-main | 4040/tcp | 0.000152 | # Yo.net main service |
| yo-main | 4040/udp | 0.000000 | # Yo.net main service |
| houston | 4041/tcp | 0.000000 | # Rocketeer-Houston |
| houston | 4041/udp | 0.000000 | # Rocketeer-Houston |
| ldxp | 4042/tcp | 0.000000 | ldxp 4042/tcp 0.000000 |
| ldxp | 4042/udp | 0.000330 | # LDXP |
| nirp | 4043/tcp | 0.000000 | # Neighbour Identity Resolution |
| nirp | 4043/udp | 0.000000 | # Neighbour Identity Resolution |
| ltp | 4044/tcp | 0.000000 | # Location Tracking Protocol |
| ltp | 4044/udp | 0.000000 | # Location Tracking Protocol |
| lockd | 4045/tcp | 0.001468 | # npp | Network Paging Protocol |
| lockd | 4045/udp | 0.006656 | # NFS lock daemon/manager |
| acp-proto | 4046/tcp | 0.000000 | # Accounting Protocol |
| acp-proto | 4046/udp | 0.000661 | # Accounting Protocol |
| ctp-state | 4047/tcp | 0.000000 | # Context Transfer Protocol |
| ctp-state | 4047/udp | 0.000991 | # Context Transfer Protocol |
| wafs | 4049/tcp | 0.000000 | # Wide Area File Services |
| wafs | 4049/udp | 0.000661 | # Wide Area File Services |
| cisco-wafs | 4050/tcp | 0.000000 | # Wide Area File Services |
| cisco-wafs | 4050/udp | 0.000000 | # Wide Area File Services |
| cppdp | 4051/tcp | 0.000000 | # Cisco Peer to Peer Distribution Protocol |
| cppdp | 4051/udp | 0.000330 | # Cisco Peer to Peer Distribution Protocol |
| interact | 4052/tcp | 0.000000 | # VoiceConnect Interact |
| interact | 4052/udp | 0.000000 | # VoiceConnect Interact |
| ccu-comm-1 | 4053/tcp | 0.000000 | # CosmoCall Universe Communications Port 1 |
| ccu-comm-1 | 4053/udp | 0.000000 | # CosmoCall Universe Communications Port 1 |
| ccu-comm-2 | 4054/tcp | 0.000000 | # CosmoCall Universe Communications Port 2 |
| ccu-comm-2 | 4054/udp | 0.000000 | # CosmoCall Universe Communications Port 2 |
| ccu-comm-3 | 4055/tcp | 0.000000 | # CosmoCall Universe Communications Port 3 |
| ccu-comm-3 | 4055/udp | 0.000000 | # CosmoCall Universe Communications Port 3 |
| lms | 4056/tcp | 0.000076 | # Location Message Service |
| lms | 4056/udp | 0.000000 | # Location Message Service |
| wfm | 4057/tcp | 0.000000 | # Servigistics WFM server |
| wfm | 4057/udp | 0.000000 | # Servigistics WFM server |
| kingfisher | 4058/tcp | 0.000076 | # Kingfisher protocol |
| kingfisher | 4058/udp | 0.000000 | # Kingfisher protocol |
| dlms-cosem | 4059/tcp | 0.000000 | # DLMS/COSEM |
| dlms-cosem | 4059/udp | 0.000000 | # DLMS/COSEM |
| dsmeter_iatc | 4060/tcp | 0.000000 | # dsmeter-iatc | DSMETER Inter-Agent Transfer Channel |
| dsmeter_iatc | 4060/udp | 0.000000 | # DSMETER Inter-Agent Transfer Channel |
| ice-location | 4061/tcp | 0.000000 | # Ice Location Service (TCP) |
| ice-location | 4061/udp | 0.000661 | # Ice Location Service (TCP) |
| ice-slocation | 4062/tcp | 0.000000 | # Ice Location Service (SSL) |
| ice-slocation | 4062/udp | 0.000000 | # Ice Location Service (SSL) |
| ice-router | 4063/tcp | 0.000000 | # Ice Firewall Traversal Service (TCP) |
| ice-router | 4063/udp | 0.000000 | # Ice Firewall Traversal Service (TCP) |
| ice-srouter | 4064/tcp | 0.000000 | # Ice Firewall Traversal Service (SSL) |
| ice-srouter | 4064/udp | 0.000000 | # Ice Firewall Traversal Service (SSL) |
| avanti_cdp | 4065/tcp | 0.000076 | # avanti-cdp | Avanti Common Data |
| avanti_cdp | 4065/udp | 0.000000 | # Avanti Common Data |
| pmas | 4066/tcp | 0.000000 | # Performance Measurement and Analysis |
| pmas | 4066/udp | 0.000000 | # Performance Measurement and Analysis |
| idp | 4067/tcp | 0.000000 | # Information Distribution Protocol |
| idp | 4067/udp | 0.000330 | # Information Distribution Protocol |
| ipfltbcst | 4068/tcp | 0.000000 | # IP Fleet Broadcast |
| ipfltbcst | 4068/udp | 0.000000 | # IP Fleet Broadcast |
| minger | 4069/tcp | 0.000000 | # Minger Email Address Validation Service |
| minger | 4069/udp | 0.000330 | # Minger Email Address Validation Service |
| tripe | 4070/tcp | 0.000000 | # Trivial IP Encryption (TrIPE) |
| tripe | 4070/udp | 0.000000 | # Trivial IP Encryption (TrIPE) |
| aibkup | 4071/tcp | 0.000000 | # Automatically Incremental Backup |
| aibkup | 4071/udp | 0.000330 | # Automatically Incremental Backup |
| zieto-sock | 4072/tcp | 0.000000 | # Zieto Socket Communications |
| zieto-sock | 4072/udp | 0.000000 | # Zieto Socket Communications |
| iRAPP | 4073/tcp | 0.000000 | # iRAPP Server Protocol | Interactive Remote Application Pairing Protocol |
| iRAPP | 4073/udp | 0.000330 | # iRAPP Server Protocol |
| cequint-cityid | 4074/tcp | 0.000000 | # Cequint City ID UI trigger |
| cequint-cityid | 4074/udp | 0.000000 | # Cequint City ID UI trigger |
| perimlan | 4075/tcp | 0.000000 | # ISC Alarm Message Service |
| perimlan | 4075/udp | 0.000000 | # ISC Alarm Message Service |
| seraph | 4076/tcp | 0.000000 | # Seraph DCS |
| seraph | 4076/udp | 0.000000 | # Seraph DCS |
| ascomalarm | 4077/tcp | 0.000000 | # Ascom IP Alarming |
| ascomalarm | 4077/udp | 0.000330 | # Ascom IP Alarming |
| cssp | 4078/tcp | 0.000000 | # Coordinated Security Service Protocol |
| santools | 4079/tcp | 0.000000 | # SANtools Diagnostic Server |
| santools | 4079/udp | 0.000330 | # SANtools Diagnostic Server |
| lorica-in | 4080/tcp | 0.000152 | # Lorica inside facing |
| lorica-in | 4080/udp | 0.000000 | # Lorica inside facing |
| lorica-in-sec | 4081/tcp | 0.000000 | # Lorica inside facing (SSL) |
| lorica-in-sec | 4081/udp | 0.000330 | # Lorica inside facing (SSL) |
| lorica-out | 4082/tcp | 0.000000 | # Lorica outside facing |
| lorica-out | 4082/udp | 0.000330 | # Lorica outside facing |
| lorica-out-sec | 4083/tcp | 0.000000 | # Lorica outside facing (SSL) |
| lorica-out-sec | 4083/udp | 0.000000 | # Lorica outside facing (SSL) |
| fortisphere-vm | 4084/tcp | 0.000000 | # Fortisphere VM Service |
| fortisphere-vm | 4084/udp | 0.000000 | # Fortisphere VM Service |
| ezmessagesrv | 4085/tcp | 0.000000 | # EZNews Newsroom Message Service |
| ftsync | 4086/tcp | 0.000000 | # Firewall/NAT state table synchronization |
| ftsync | 4086/udp | 0.000000 | # Firewall/NAT state table synchronization |
| applusservice | 4087/tcp | 0.000076 | # APplus Service |
| npsp | 4088/tcp | 0.000000 | # Noah Printing Service Protocol |
| opencore | 4089/tcp | 0.000000 | # OpenCORE Remote Control Service |
| opencore | 4089/udp | 0.000000 | # OpenCORE Remote Control Service |
| omasgport | 4090/tcp | 0.000076 | # OMA BCAST Service Guide |
| omasgport | 4090/udp | 0.000000 | # OMA BCAST Service Guide |
| ewinstaller | 4091/tcp | 0.000000 | # EminentWare Installer |
| ewinstaller | 4091/udp | 0.000000 | # EminentWare Installer |
| ewdgs | 4092/tcp | 0.000000 | # EminentWare DGS |
| ewdgs | 4092/udp | 0.000000 | # EminentWare DGS |
| pvxpluscs | 4093/tcp | 0.000000 | # Pvx Plus CS Host |
| pvxpluscs | 4093/udp | 0.000330 | # Pvx Plus CS Host |
| sysrqd | 4094/tcp | 0.000000 | # sysrq daemon |
| sysrqd | 4094/udp | 0.000000 | # sysrq daemon |
| xtgui | 4095/tcp | 0.000000 | # xtgui information service |
| xtgui | 4095/udp | 0.000000 | # xtgui information service |
| bre | 4096/tcp | 0.000152 | # BRE (Bridge Relay Element) |
| bre | 4096/udp | 0.000330 | # BRE (Bridge Relay Element) |
| patrolview | 4097/tcp | 0.000000 | # Patrol View |
| patrolview | 4097/udp | 0.000330 | # Patrol View |
| drmsfsd | 4098/tcp | 0.000000 | drmsfsd 4098/tcp 0.000000 |
| drmsfsd | 4098/udp | 0.000000 | drmsfsd 4098/udp 0.000000 |
| dpcp | 4099/tcp | 0.000000 | dpcp 4099/tcp 0.000000 |
| dpcp | 4099/udp | 0.000000 | # DPCP |
| igo-incognito | 4100/tcp | 0.000076 | # IGo Incognito Data Port |
| igo-incognito | 4100/udp | 0.000000 | # IGo Incognito Data Port |
| brlp-0 | 4101/tcp | 0.000076 | # Braille protocol |
| brlp-0 | 4101/udp | 0.000000 | # Braille protocol |
| brlp-1 | 4102/tcp | 0.000000 | # Braille protocol |
| brlp-1 | 4102/udp | 0.000000 | # Braille protocol |
| brlp-2 | 4103/tcp | 0.000000 | # Braille protocol |
| brlp-2 | 4103/udp | 0.000330 | # Braille protocol |
| brlp-3 | 4104/tcp | 0.000000 | # Braille protocol |
| brlp-3 | 4104/udp | 0.000000 | # Braille protocol |
| shofarplayer | 4105/tcp | 0.000000 | # shofar | Shofar |
| shofarplayer | 4105/udp | 0.000000 | # ShofarPlayer |
| synchronite | 4106/tcp | 0.000000 | synchronite 4106/tcp 0.000000 |
| synchronite | 4106/udp | 0.000000 | # Synchronite |
| j-ac | 4107/tcp | 0.000000 | # JDL Accounting LAN Service |
| j-ac | 4107/udp | 0.000000 | # JDL Accounting LAN Service |
| accel | 4108/tcp | 0.000000 | accel 4108/tcp 0.000000 |
| accel | 4108/udp | 0.000000 | # ACCEL |
| izm | 4109/tcp | 0.000000 | # Instantiated Zero-control Messaging |
| izm | 4109/udp | 0.000330 | # Instantiated Zero-control Messaging |
| g2tag | 4110/tcp | 0.000000 | # G2 RFID Tag Telemetry Data |
| g2tag | 4110/udp | 0.000000 | # G2 RFID Tag Telemetry Data |
| xgrid | 4111/tcp | 0.000304 | xgrid 4111/tcp 0.000304 |
| xgrid | 4111/udp | 0.000000 | # Xgrid |
| apple-vpns-rp | 4112/tcp | 0.000076 | # Apple VPN Server Reporting Protocol |
| apple-vpns-rp | 4112/udp | 0.000330 | # Apple VPN Server Reporting Protocol |
| aipn-reg | 4113/tcp | 0.000076 | # AIPN LS Registration |
| aipn-reg | 4113/udp | 0.000000 | # AIPN LS Registration |
| jomamqmonitor | 4114/tcp | 0.000000 | jomamqmonitor 4114/tcp 0.000000 |
| jomamqmonitor | 4114/udp | 0.000000 | # JomaMQMonitor |
| cds | 4115/tcp | 0.000000 | # CDS Transfer Agent |
| cds | 4115/udp | 0.000000 | # CDS Transfer Agent |
| smartcard-tls | 4116/tcp | 0.000000 | smartcard-tls 4116/tcp 0.000000 |
| smartcard-tls | 4116/udp | 0.000000 | # smartcard-TLS |
| hillrserv | 4117/tcp | 0.000000 | # Hillr Connection Manager |
| hillrserv | 4117/udp | 0.000000 | # Hillr Connection Manager |
| netscript | 4118/tcp | 0.000076 | # Netadmin Systems NETscript service |
| netscript | 4118/udp | 0.000000 | # Netadmin Systems NETscript service |
| assuria-slm | 4119/tcp | 0.000076 | # Assuria Log Manager |
| assuria-slm | 4119/udp | 0.000000 | # Assuria Log Manager |
| minirem | 4120/tcp | 0.000076 | # MiniRem Remote Telemetry and Control |
| e-builder | 4121/tcp | 0.000076 | # e-Builder Application Communication |
| e-builder | 4121/udp | 0.000000 | # e-Builder Application Communication |
| fprams | 4122/tcp | 0.000000 | # Fiber Patrol Alarm Service |
| fprams | 4122/udp | 0.000000 | # Fiber Patrol Alarm Service |
| z-wave | 4123/tcp | 0.000000 | # Zensys Z-Wave Control Protocol | Z-Wave Protocol |
| z-wave | 4123/udp | 0.000000 | # Zensys Z-Wave Control Protocol |
| tigv2 | 4124/tcp | 0.000000 | # Rohill TetraNode Ip Gateway v2 |
| tigv2 | 4124/udp | 0.000000 | # Rohill TetraNode Ip Gateway v2 |
| rww | 4125/tcp | 0.000188 | # opsview-envoy | Microsoft Remote Web Workplace on Small Business Server | Opsview Envoy |
| opsview-envoy | 4125/udp | 0.000000 | # Opsview Envoy |
| ddrepl | 4126/tcp | 0.000380 | # Data Domain Replication Service |
| ddrepl | 4126/udp | 0.000000 | # Data Domain Replication Service |
| unikeypro | 4127/tcp | 0.000000 | # NetUniKeyServer |
| unikeypro | 4127/udp | 0.000330 | # NetUniKeyServer |
| nufw | 4128/tcp | 0.000000 | # NuFW decision delegation protocol |
| nufw | 4128/udp | 0.000330 | # NuFW decision delegation protocol |
| nuauth | 4129/tcp | 0.000380 | # NuFW authentication protocol |
| nuauth | 4129/udp | 0.000000 | # NuFW authentication protocol |
| fronet | 4130/tcp | 0.000000 | # FRONET message protocol |
| fronet | 4130/udp | 0.000000 | # FRONET message protocol |
| stars | 4131/tcp | 0.000000 | # Global Maintech Stars |
| stars | 4131/udp | 0.000000 | # Global Maintech Stars |
| nuts_dem | 4132/tcp | 0.000025 | # nuts-dem | NUTS Daemon |
| nuts_dem | 4132/udp | 0.000692 | # NUTS Daemon |
| nuts_bootp | 4133/tcp | 0.000013 | # nuts-bootp | NUTS Bootp Server |
| nuts_bootp | 4133/udp | 0.000692 | # NUTS Bootp Server |
| nifty-hmi | 4134/tcp | 0.000000 | # NIFTY-Serve HMI protocol |
| nifty-hmi | 4134/udp | 0.000000 | # NIFTY-Serve HMI protocol |
| cl-db-attach | 4135/tcp | 0.000076 | # Classic Line Database Server Attach |
| cl-db-attach | 4135/udp | 0.000330 | # Classic Line Database Server Attach |
| cl-db-request | 4136/tcp | 0.000000 | # Classic Line Database Server Request |
| cl-db-request | 4136/udp | 0.000000 | # Classic Line Database Server Request |
| cl-db-remote | 4137/tcp | 0.000000 | # Classic Line Database Server Remote |
| cl-db-remote | 4137/udp | 0.000000 | # Classic Line Database Server Remote |
| nettest | 4138/tcp | 0.000000 | nettest 4138/tcp 0.000000 |
| nettest | 4138/udp | 0.000000 | nettest 4138/udp 0.000000 |
| thrtx | 4139/tcp | 0.000000 | # Imperfect Networks Server |
| thrtx | 4139/udp | 0.000000 | # Imperfect Networks Server |
| cedros_fds | 4140/tcp | 0.000000 | # cedros-fds | Cedros Fraud Detection System |
| cedros_fds | 4140/udp | 0.000330 | # Cedros Fraud Detection System |
| oirtgsvc | 4141/tcp | 0.000076 | # Workflow Server |
| oirtgsvc | 4141/udp | 0.000000 | # Workflow Server |
| oidocsvc | 4142/tcp | 0.000000 | # Document Server |
| oidocsvc | 4142/udp | 0.000000 | # Document Server |
| oidsr | 4143/tcp | 0.000152 | # Document Replication |
| oidsr | 4143/udp | 0.000000 | # Document Replication |
| wincim | 4144/tcp | 0.000025 | # pc windows compuserve.com protocol |
| vvr-control | 4145/tcp | 0.000000 | # VVR Control |
| vvr-control | 4145/udp | 0.000000 | # VVR Control |
| tgcconnect | 4146/tcp | 0.000000 | # TGCConnect Beacon |
| tgcconnect | 4146/udp | 0.000000 | # TGCConnect Beacon |
| vrxpservman | 4147/tcp | 0.000152 | # Multum Service Manager |
| vrxpservman | 4147/udp | 0.000000 | # Multum Service Manager |
| hhb-handheld | 4148/tcp | 0.000000 | # HHB Handheld Client |
| hhb-handheld | 4148/udp | 0.000000 | # HHB Handheld Client |
| agslb | 4149/tcp | 0.000000 | # A10 GSLB Service |
| agslb | 4149/udp | 0.000000 | # A10 GSLB Service |
| PowerAlert-nsa | 4150/tcp | 0.000000 | # PowerAlert Network Shutdown Agent |
| PowerAlert-nsa | 4150/udp | 0.000000 | # PowerAlert Network Shutdown Agent |
| menandmice_noh | 4151/tcp | 0.000000 | # menandmice-noh | Men & Mice Remote Control |
| menandmice_noh | 4151/udp | 0.000000 | # Men & Mice Remote Control |
| idig_mux | 4152/tcp | 0.000000 | # idig-mux | iDigTech Multiplex |
| idig_mux | 4152/udp | 0.000000 | # iDigTech Multiplex |
| mbl-battd | 4153/tcp | 0.000000 | # MBL Remote Battery Monitoring |
| mbl-battd | 4153/udp | 0.000000 | # MBL Remote Battery Monitoring |
| atlinks | 4154/tcp | 0.000000 | # atlinks device discovery |
| atlinks | 4154/udp | 0.000000 | # atlinks device discovery |
| bzr | 4155/tcp | 0.000000 | # Bazaar version control system |
| bzr | 4155/udp | 0.000000 | # Bazaar version control system |
| stat-results | 4156/tcp | 0.000000 | # STAT Results |
| stat-results | 4156/udp | 0.000000 | # STAT Results |
| stat-scanner | 4157/tcp | 0.000000 | # STAT Scanner Control |
| stat-scanner | 4157/udp | 0.000330 | # STAT Scanner Control |
| stat-cc | 4158/tcp | 0.000076 | # STAT Command Center |
| stat-cc | 4158/udp | 0.000330 | # STAT Command Center |
| nss | 4159/tcp | 0.000000 | # Network Security Service |
| nss | 4159/udp | 0.000330 | # Network Security Service |
| jini-discovery | 4160/tcp | 0.000000 | # Jini Discovery |
| jini-discovery | 4160/udp | 0.000330 | # Jini Discovery |
| omscontact | 4161/tcp | 0.000076 | # OMS Contact |
| omscontact | 4161/udp | 0.000000 | # OMS Contact |
| omstopology | 4162/tcp | 0.000000 | # OMS Topology |
| omstopology | 4162/udp | 0.000000 | # OMS Topology |
| silverpeakpeer | 4163/tcp | 0.000000 | # Silver Peak Peer Protocol |
| silverpeakpeer | 4163/udp | 0.000000 | # Silver Peak Peer Protocol |
| silverpeakcomm | 4164/tcp | 0.000152 | # Silver Peak Communication Protocol |
| silverpeakcomm | 4164/udp | 0.000330 | # Silver Peak Communication Protocol |
| altcp | 4165/tcp | 0.000000 | # ArcLink over Ethernet |
| altcp | 4165/udp | 0.000330 | # ArcLink over Ethernet |
| joost | 4166/tcp | 0.000000 | # Joost Peer to Peer Protocol |
| joost | 4166/udp | 0.000330 | # Joost Peer to Peer Protocol |
| ddgn | 4167/tcp | 0.000000 | # DeskDirect Global Network |
| ddgn | 4167/udp | 0.000000 | # DeskDirect Global Network |
| pslicser | 4168/tcp | 0.000000 | # PrintSoft License Server |
| pslicser | 4168/udp | 0.000000 | # PrintSoft License Server |
| iadt | 4169/tcp | 0.000000 | # iadt-disc | Automation Drive Interface Transport | Internet ADT Discovery Protocol |
| iadt-disc | 4169/udp | 0.000000 | # Internet ADT Discovery Protocol |
| d-cinema-csp | 4170/tcp | 0.000000 | # SMPTE Content Synchonization Protocol |
| ml-svnet | 4171/tcp | 0.000000 | # Maxlogic Supervisor Communication |
| pcoip | 4172/tcp | 0.000000 | # PC over IP |
| pcoip | 4172/udp | 0.000000 | # PC over IP |
| mma-discovery | 4173/tcp | 0.000000 | # MMA Device Discovery |
| smcluster | 4174/tcp | 0.000076 | # sm-disc | StorMagic Cluster Services | StorMagic Discovery |
| bccp | 4175/tcp | 0.000000 | # Brocade Cluster Communication Protocol |
| tl-ipcproxy | 4176/tcp | 0.000000 | # Translattice Cluster IPC Proxy |
| wello | 4177/tcp | 0.000000 | # Wello P2P pubsub service |
| wello | 4177/udp | 0.000000 | # Wello P2P pubsub service |
| storman | 4178/tcp | 0.000000 | storman 4178/tcp 0.000000 |
| storman | 4178/udp | 0.000000 | # StorMan |
| MaxumSP | 4179/tcp | 0.000000 | # Maxum Services |
| MaxumSP | 4179/udp | 0.000330 | # Maxum Services |
| httpx | 4180/tcp | 0.000000 | httpx 4180/tcp 0.000000 |
| httpx | 4180/udp | 0.000000 | # HTTPX |
| macbak | 4181/tcp | 0.000000 | macbak 4181/tcp 0.000000 |
| macbak | 4181/udp | 0.000000 | # MacBak |
| pcptcpservice | 4182/tcp | 0.000000 | # Production Company Pro TCP Service |
| pcptcpservice | 4182/udp | 0.000000 | # Production Company Pro TCP Service |
| gmmp | 4183/tcp | 0.000000 | # cyborgnet | General Metaverse Messaging Protocol | CyborgNet communications protocol |
| gmmp | 4183/udp | 0.000000 | # General Metaverse Messaging Protocol |
| universe_suite | 4184/tcp | 0.000000 | # universe-suite | UNIVERSE SUITE MESSAGE SERVICE |
| universe_suite | 4184/udp | 0.000000 | # UNIVERSE SUITE MESSAGE SERVICE |
| wcpp | 4185/tcp | 0.000000 | # Woven Control Plane Protocol |
| wcpp | 4185/udp | 0.000000 | # Woven Control Plane Protocol |
| boxbackupstore | 4186/tcp | 0.000000 | # Box Backup Store Service |
| csc_proxy | 4187/tcp | 0.000000 | # csc-proxy | Cascade Proxy |
| vatata | 4188/tcp | 0.000000 | # Vatata Peer to Peer Protocol |
| vatata | 4188/udp | 0.000000 | # Vatata Peer to Peer Protocol |
| pcep | 4189/tcp | 0.000000 | # Path Computation Element Communication Protocol |
| sieve | 4190/tcp | 0.000076 | # ManageSieve Protocol |
| dsmipv6 | 4191/tcp | 0.000000 | # Dual Stack MIPv6 NAT Traversal |
| dsmipv6 | 4191/udp | 0.000330 | # Dual Stack MIPv6 NAT Traversal |
| azeti | 4192/tcp | 0.000076 | # azeti-bd | Azeti Agent Service | azeti blinddate |
| azeti-bd | 4192/udp | 0.000000 | # azeti blinddate |
| pvxplusio | 4193/tcp | 0.000000 | # PxPlus remote file srvr |
| spdm | 4194/tcp | 0.000000 | # Security Protocol and Data Model |
| aws-wsp | 4195/tcp | 0.000000 | # AWS protocol for cloud remoting solution |
| hctl | 4197/tcp | 0.000000 | # Harman HControl Protocol |
| eims-admin | 4199/tcp | 0.000063 | # Eudora Internet Mail Service (EIMS) admin | EIMS ADMIN |
| eims-admin | 4199/udp | 0.000000 | # EIMS ADMIN |
| xtell | 4224/tcp | 0.000226 | # Xtell messenging server |
| corelccam | 4300/tcp | 0.000076 | # Corel CCam |
| corelccam | 4300/udp | 0.000000 | # Corel CCam |
| d-data | 4301/tcp | 0.000000 | # Diagnostic Data |
| d-data | 4301/udp | 0.000330 | # Diagnostic Data |
| d-data-control | 4302/tcp | 0.000076 | # Diagnostic Data Control |
| d-data-control | 4302/udp | 0.000000 | # Diagnostic Data Control |
| srcp | 4303/tcp | 0.000000 | # Simple Railroad Command Protocol |
| srcp | 4303/udp | 0.000000 | # Simple Railroad Command Protocol |
| owserver | 4304/tcp | 0.000000 | # One-Wire Filesystem Server |
| owserver | 4304/udp | 0.000000 | # One-Wire Filesystem Server |
| batman | 4305/tcp | 0.000000 | # better approach to mobile ad-hoc networking |
| batman | 4305/udp | 0.000000 | # better approach to mobile ad-hoc networking |
| pinghgl | 4306/tcp | 0.000000 | # Hellgate London |
| pinghgl | 4306/udp | 0.000000 | # Hellgate London |
| visicron-vs | 4307/tcp | 0.000000 | # trueconf | Visicron Videoconference Service | TrueConf Videoconference Service |
| visicron-vs | 4307/udp | 0.000000 | # Visicron Videoconference Service |
| compx-lockview | 4308/tcp | 0.000000 | compx-lockview 4308/tcp 0.000000 |
| compx-lockview | 4308/udp | 0.000330 | # CompX-LockView |
| dserver | 4309/tcp | 0.000000 | # Exsequi Appliance Discovery |
| dserver | 4309/udp | 0.000000 | # Exsequi Appliance Discovery |
| mirrtex | 4310/tcp | 0.000000 | # Mir-RT exchange service |
| mirrtex | 4310/udp | 0.000000 | # Mir-RT exchange service |
| p6ssmc | 4311/tcp | 0.000000 | # P6R Secure Server Management Console |
| pscl-mgt | 4312/tcp | 0.000000 | # Parascale Membership Manager |
| perrla | 4313/tcp | 0.000000 | # PERRLA User Services |
| choiceview-agt | 4314/tcp | 0.000000 | # ChoiceView Agent |
| choiceview-clt | 4316/tcp | 0.000000 | # ChoiceView Client |
| opentelemetry | 4317/tcp | 0.000000 | # OpenTelemetry Protocol |
| fox-skytale | 4319/tcp | 0.000000 | # Fox SkyTale encrypted communication |
| fdt-rcatp | 4320/tcp | 0.000000 | # FDT Remote Categorization Protocol |
| fdt-rcatp | 4320/udp | 0.000000 | # FDT Remote Categorization Protocol |
| rwhois | 4321/tcp | 0.000276 | # Remote Who Is |
| rwhois | 4321/udp | 0.001021 | # Remote Who Is |
| trim-event | 4322/tcp | 0.000000 | # TRIM Event Service |
| trim-event | 4322/udp | 0.000000 | # TRIM Event Service |
| trim-ice | 4323/tcp | 0.000000 | # TRIM ICE Service |
| trim-ice | 4323/udp | 0.000000 | # TRIM ICE Service |
| balour | 4324/tcp | 0.000000 | # Balour Game Server |
| balour | 4324/udp | 0.000000 | # Balour Game Server |
| geognosisman | 4325/tcp | 0.000076 | # geognosisadmin | Cadcorp GeognoSIS Manager Service | Cadcorp GeognoSIS Administrator |
| geognosisman | 4325/udp | 0.000000 | # Cadcorp GeognoSIS Manager Service |
| geognosis | 4326/tcp | 0.000000 | # Cadcorp GeognoSIS Service | Cadcorp GeognoSIS |
| geognosis | 4326/udp | 0.000000 | # Cadcorp GeognoSIS Service |
| jaxer-web | 4327/tcp | 0.000000 | # Jaxer Web Protocol |
| jaxer-web | 4327/udp | 0.000000 | # Jaxer Web Protocol |
| jaxer-manager | 4328/tcp | 0.000076 | # Jaxer Manager Command Protocol |
| jaxer-manager | 4328/udp | 0.000330 | # Jaxer Manager Command Protocol |
| publiqare-sync | 4329/tcp | 0.000000 | # PubliQare Distributed Environment Synchronisation Engine |
| dey-sapi | 4330/tcp | 0.000000 | # DEY Storage Administration REST API |
| ktickets-rest | 4331/tcp | 0.000000 | # ktickets REST API for event management and ticketing systems (embedded POS devices) |
| getty-focus | 4332/tcp | 0.000000 | # Getty Images FOCUS service |
| msql | 4333/tcp | 0.000113 | # ahsp | mini-sql server | ArrowHead Service Protocol (AHSP) |
| netconf-ch-ssh | 4334/tcp | 0.000000 | # NETCONF Call Home (SSH) |
| netconf-ch-tls | 4335/tcp | 0.000000 | # NETCONF Call Home (TLS) |
| restconf-ch-tls | 4336/tcp | 0.000000 | # RESTCONF Call Home (TLS) |
| gaia | 4340/tcp | 0.000000 | # Gaia Connector Protocol |
| gaia | 4340/udp | 0.000000 | # Gaia Connector Protocol |
| lisp-data | 4341/tcp | 0.000000 | # LISP Data Packets |
| lisp-data | 4341/udp | 0.000330 | # LISP Data Packets |
| lisp-cons | 4342/tcp | 0.000076 | # lisp-control | LISP-CONS Control | LISP Control Packets |
| lisp-control | 4342/udp | 0.000000 | # LISP Data-Triggered Control |
| unicall | 4343/tcp | 0.000201 | unicall 4343/tcp 0.000201 |
| unicall | 4343/udp | 0.000511 | unicall 4343/udp 0.000511 |
| vinainstall | 4344/tcp | 0.000000 | vinainstall 4344/tcp 0.000000 |
| vinainstall | 4344/udp | 0.000330 | # VinaInstall |
| m4-network-as | 4345/tcp | 0.000000 | # Macro 4 Network AS |
| m4-network-as | 4345/udp | 0.000000 | # Macro 4 Network AS |
| elanlm | 4346/tcp | 0.000000 | # ELAN LM |
| elanlm | 4346/udp | 0.000000 | # ELAN LM |
| lansurveyor | 4347/tcp | 0.000000 | # LAN Surveyor |
| lansurveyor | 4347/udp | 0.000000 | # LAN Surveyor |
| itose | 4348/tcp | 0.000000 | itose 4348/tcp 0.000000 |
| itose | 4348/udp | 0.000000 | # ITOSE |
| fsportmap | 4349/tcp | 0.000000 | # File System Port Map |
| fsportmap | 4349/udp | 0.000000 | # File System Port Map |
| net-device | 4350/tcp | 0.000000 | # Net Device |
| net-device | 4350/udp | 0.000000 | # Net Device |
| plcy-net-svcs | 4351/tcp | 0.000000 | # PLCY Net Services |
| plcy-net-svcs | 4351/udp | 0.000000 | # PLCY Net Services |
| pjlink | 4352/tcp | 0.000000 | # Projector Link |
| pjlink | 4352/udp | 0.000000 | # Projector Link |
| f5-iquery | 4353/tcp | 0.000000 | # F5 iQuery |
| f5-iquery | 4353/udp | 0.000000 | # F5 iQuery |
| qsnet-trans | 4354/tcp | 0.000000 | # QSNet Transmitter |
| qsnet-trans | 4354/udp | 0.000330 | # QSNet Transmitter |
| qsnet-workst | 4355/tcp | 0.000076 | # QSNet Workstation |
| qsnet-workst | 4355/udp | 0.000330 | # QSNet Workstation |
| qsnet-assist | 4356/tcp | 0.000076 | # QSNet Assistant |
| qsnet-assist | 4356/udp | 0.000000 | # QSNet Assistant |
| qsnet-cond | 4357/tcp | 0.000076 | # QSNet Conductor |
| qsnet-cond | 4357/udp | 0.000330 | # QSNet Conductor |
| qsnet-nucl | 4358/tcp | 0.000076 | # QSNet Nucleus |
| qsnet-nucl | 4358/udp | 0.000330 | # QSNet Nucleus |
| omabcastltkm | 4359/tcp | 0.000000 | # OMA BCAST Long-Term Key Messages |
| omabcastltkm | 4359/udp | 0.000330 | # OMA BCAST Long-Term Key Messages |
| matrix_vnet | 4360/tcp | 0.000000 | # matrix-vnet | Matrix VNet Communication Protocol |
| nacnl | 4361/tcp | 0.000000 | # NavCom Discovery and Control Port |
| nacnl | 4361/udp | 0.000661 | # NavCom Discovery and Control Port |
| afore-vdp-disc | 4362/tcp | 0.000000 | # AFORE vNode Discovery protocol |
| shadowstream | 4366/tcp | 0.000000 | # ShadowStream System |
| wxbrief | 4368/tcp | 0.000000 | # WeatherBrief Direct |
| wxbrief | 4368/udp | 0.000000 | # WeatherBrief Direct |
| epmd | 4369/tcp | 0.000076 | # Erlang Port Mapper Daemon |
| epmd | 4369/udp | 0.000330 | # Erlang Port Mapper Daemon |
| elpro_tunnel | 4370/tcp | 0.000000 | # elpro-tunnel | ELPRO V2 Protocol Tunnel |
| elpro_tunnel | 4370/udp | 0.000330 | # ELPRO V2 Protocol Tunnel |
| l2c-control | 4371/tcp | 0.000000 | # l2c-disc | LAN2CAN Control | LAN2CAN Discovery |
| l2c-disc | 4371/udp | 0.000000 | # LAN2CAN Discovery |
| l2c-data | 4372/tcp | 0.000000 | # LAN2CAN Data |
| l2c-data | 4372/udp | 0.000000 | # LAN2CAN Data |
| remctl | 4373/tcp | 0.000000 | # Remote Authenticated Command Service |
| remctl | 4373/udp | 0.000000 | # Remote Authenticated Command Service |
| psi-ptt | 4374/tcp | 0.000076 | # PSI Push-to-Talk Protocol |
| tolteces | 4375/tcp | 0.000076 | # Toltec EasyShare |
| tolteces | 4375/udp | 0.000000 | # Toltec EasyShare |
| bip | 4376/tcp | 0.000076 | # BioAPI Interworking |
| bip | 4376/udp | 0.000000 | # BioAPI Interworking |
| cp-spxsvr | 4377/tcp | 0.000000 | # Cambridge Pixel SPx Server |
| cp-spxsvr | 4377/udp | 0.000000 | # Cambridge Pixel SPx Server |
| cp-spxdpy | 4378/tcp | 0.000000 | # Cambridge Pixel SPx Display |
| cp-spxdpy | 4378/udp | 0.000661 | # Cambridge Pixel SPx Display |
| ctdb | 4379/tcp | 0.000000 | ctdb 4379/tcp 0.000000 |
| ctdb | 4379/udp | 0.000000 | # CTDB |
| xandros-cms | 4389/tcp | 0.000000 | # Xandros Community Management Service |
| xandros-cms | 4389/udp | 0.000000 | # Xandros Community Management Service |
| wiegand | 4390/tcp | 0.000000 | # Physical Access Control |
| wiegand | 4390/udp | 0.000000 | # Physical Access Control |
| apwi-imserver | 4391/tcp | 0.000000 | # American Printware IMServer Protocol |
| apwi-rxserver | 4392/tcp | 0.000000 | # American Printware RXServer Protocol |
| apwi-rxspooler | 4393/tcp | 0.000000 | # American Printware RXSpooler Protocol |
| apwi-disc | 4394/tcp | 0.000000 | # American Printware Discovery |
| apwi-disc | 4394/udp | 0.000330 | # American Printware Discovery |
| omnivisionesx | 4395/tcp | 0.000000 | # OmniVision communication for Virtual environments |
| omnivisionesx | 4395/udp | 0.000000 | # OmniVision communication for Virtual environments |
| fly | 4396/tcp | 0.000000 | # Fly Object Space |
| ds-srv | 4400/tcp | 0.000000 | # ASIGRA Services |
| ds-srv | 4400/udp | 0.000000 | # ASIGRA Services |
| ds-srvr | 4401/tcp | 0.000076 | # ASIGRA Televaulting DS-System Service |
| ds-srvr | 4401/udp | 0.000661 | # ASIGRA Televaulting DS-System Service |
| ds-clnt | 4402/tcp | 0.000000 | # ASIGRA Televaulting DS-Client Service |
| ds-clnt | 4402/udp | 0.000000 | # ASIGRA Televaulting DS-Client Service |
| ds-user | 4403/tcp | 0.000000 | # ASIGRA Televaulting DS-Client Monitoring/Management |
| ds-user | 4403/udp | 0.000000 | # ASIGRA Televaulting DS-Client Monitoring/Management |
| ds-admin | 4404/tcp | 0.000000 | # ASIGRA Televaulting DS-System Monitoring/Management |
| ds-admin | 4404/udp | 0.000661 | # ASIGRA Televaulting DS-System Monitoring/Management |
| ds-mail | 4405/tcp | 0.000000 | # ASIGRA Televaulting Message Level Restore service |
| ds-mail | 4405/udp | 0.000000 | # ASIGRA Televaulting Message Level Restore service |
| ds-slp | 4406/tcp | 0.000000 | # ASIGRA Televaulting DS-Sleeper Service |
| ds-slp | 4406/udp | 0.000000 | # ASIGRA Televaulting DS-Sleeper Service |
| nacagent | 4407/tcp | 0.000076 | # Network Access Control Agent |
| slscc | 4408/tcp | 0.000000 | # SLS Technology Control Centre |
| netcabinet-com | 4409/tcp | 0.000000 | # Net-Cabinet comunication |
| itwo-server | 4410/tcp | 0.000000 | # RIB iTWO Application Server |
| found | 4411/tcp | 0.000000 | # Found Messaging Protocol |
| smallchat | 4412/tcp | 0.000000 | smallchat 4412/tcp 0.000000 |
| avi-nms | 4413/tcp | 0.000000 | # avi-nms-disc | AVI Systems NMS |
| updog | 4414/tcp | 0.000076 | # Updog Monitoring and Status Framework |
| brcd-vr-req | 4415/tcp | 0.000076 | # Brocade Virtual Router Request |
| pjj-player | 4416/tcp | 0.000000 | # pjj-player-disc | PJJ Media Player | PJJ Media Player discovery |
| workflowdir | 4417/tcp | 0.000000 | # Workflow Director Communication |
| axysbridge | 4418/tcp | 0.000076 | # AXYS communication protocol |
| cbp | 4419/tcp | 0.000000 | # Colnod Binary Protocol |
| nvm-express | 4420/tcp | 0.000000 | # nvme | NVM Express over Fabrics storage access |
| scaleft | 4421/tcp | 0.000000 | # Multi-Platform Remote Management for Cloud Infrastructure |
| tsepisp | 4422/tcp | 0.000000 | # TSEP Installation Service Protocol |
| thingkit | 4423/tcp | 0.000000 | # thingkit secure mesh |
| netrockey6 | 4425/tcp | 0.000000 | # NetROCKEY6 SMART Plus Service |
| netrockey6 | 4425/udp | 0.000000 | # NetROCKEY6 SMART Plus Service |
| beacon-port-2 | 4426/tcp | 0.000000 | # SMARTS Beacon Port |
| beacon-port-2 | 4426/udp | 0.000000 | # SMARTS Beacon Port |
| drizzle | 4427/tcp | 0.000000 | # Drizzle database server |
| omviserver | 4428/tcp | 0.000000 | # OMV-Investigation Server-Client |
| omviagent | 4429/tcp | 0.000000 | # OMV Investigation Agent-Server |
| rsqlserver | 4430/tcp | 0.000152 | # REAL SQL Server |
| rsqlserver | 4430/udp | 0.000330 | # REAL SQL Server |
| wspipe | 4431/tcp | 0.000000 | # adWISE Pipe |
| l-acoustics | 4432/tcp | 0.000000 | # L-ACOUSTICS management |
| vop | 4433/tcp | 0.000076 | # Versile Object Protocol |
| netblox | 4441/tcp | 0.000000 | # Netblox Protocol |
| netblox | 4441/udp | 0.000000 | # Netblox Protocol |
| saris | 4442/tcp | 0.000076 | saris 4442/tcp 0.000076 |
| saris | 4442/udp | 0.000000 | # Saris |
| pharos | 4443/tcp | 0.000760 | pharos 4443/tcp 0.000760 |
| pharos | 4443/udp | 0.000000 | pharos 4443/udp 0.000000 |
| krb524 | 4444/tcp | 0.001041 | # nv-video | Kerberos 5 to 4 ticket xlator | NV Video default |
| krb524 | 4444/udp | 0.016343 | krb524 4444/udp 0.016343 |
| upnotifyp | 4445/tcp | 0.000228 | upnotifyp 4445/tcp 0.000228 |
| upnotifyp | 4445/udp | 0.000000 | # UPNOTIFYP |
| n1-fwp | 4446/tcp | 0.000304 | n1-fwp 4446/tcp 0.000304 |
| n1-fwp | 4446/udp | 0.000000 | # N1-FWP |
| n1-rmgmt | 4447/tcp | 0.000076 | n1-rmgmt 4447/tcp 0.000076 |
| n1-rmgmt | 4447/udp | 0.000661 | # N1-RMGMT |
| asc-slmd | 4448/tcp | 0.000000 | # ASC Licence Manager |
| asc-slmd | 4448/udp | 0.000000 | # ASC Licence Manager |
| privatewire | 4449/tcp | 0.000380 | privatewire 4449/tcp 0.000380 |
| privatewire | 4449/udp | 0.000000 | # PrivateWire |
| camp | 4450/tcp | 0.000000 | # Common ASCII Messaging Protocol |
| camp | 4450/udp | 0.000000 | # Camp |
| ctisystemmsg | 4451/tcp | 0.000000 | # CTI System Msg |
| ctisystemmsg | 4451/udp | 0.000000 | # CTI System Msg |
| ctiprogramload | 4452/tcp | 0.000000 | # CTI Program Load |
| ctiprogramload | 4452/udp | 0.000000 | # CTI Program Load |
| nssalertmgr | 4453/tcp | 0.000000 | # NSS Alert Manager |
| nssalertmgr | 4453/udp | 0.000000 | # NSS Alert Manager |
| nssagentmgr | 4454/tcp | 0.000076 | # NSS Agent Manager |
| nssagentmgr | 4454/udp | 0.000000 | # NSS Agent Manager |
| prchat-user | 4455/tcp | 0.000000 | # PR Chat User |
| prchat-user | 4455/udp | 0.000000 | # PR Chat User |
| prchat-server | 4456/tcp | 0.000000 | # PR Chat Server |
| prchat-server | 4456/udp | 0.000000 | # PR Chat Server |
| prRegister | 4457/tcp | 0.000000 | # PR Register |
| prRegister | 4457/udp | 0.000000 | # PR Register |
| mcp | 4458/tcp | 0.000000 | # Matrix Configuration Protocol |
| mcp | 4458/udp | 0.000000 | # Matrix Configuration Protocol |
| ntske | 4460/tcp | 0.000000 | # Network Time Security Key Establishment |
| proxy-plus | 4480/tcp | 0.000038 | # Proxy+ HTTP proxy port |
| hpssmgmt | 4484/tcp | 0.000000 | # hpssmgmt service |
| hpssmgmt | 4484/udp | 0.000000 | # hpssmgmt service |
| assyst-dr | 4485/tcp | 0.000000 | # Assyst Data Repository Service |
| icms | 4486/tcp | 0.000000 | # Integrated Client Message Service |
| icms | 4486/udp | 0.000000 | # Integrated Client Message Service |
| prex-tcp | 4487/tcp | 0.000000 | # Protocol for Remote Execution over TCP |
| awacs-ice | 4488/tcp | 0.000000 | # Apple Wide Area Connectivity Service ICE Bootstrap |
| awacs-ice | 4488/udp | 0.000000 | # Apple Wide Area Connectivity Service ICE Bootstrap |
| sae-urn | 4500/tcp | 0.000038 | # ipsec-nat-t | IPsec NAT-Traversal |
| nat-t-ike | 4500/udp | 0.124467 | # IKE Nat Traversal negotiation (RFC3947) |
| a25-fap-fgw | 4502/tcp | 0.000000 | # A25 (FAP-FGW) |
| armagetronad | 4534/tcp | 0.000076 | # Armagetron Advanced Game Server |
| ehs | 4535/tcp | 0.000000 | # Event Heap Server |
| ehs | 4535/udp | 0.000000 | # Event Heap Server |
| ehs-ssl | 4536/tcp | 0.000000 | # Event Heap Server SSL |
| ehs-ssl | 4536/udp | 0.000661 | # Event Heap Server SSL |
| wssauthsvc | 4537/tcp | 0.000000 | # WSS Security Service |
| wssauthsvc | 4537/udp | 0.000330 | # WSS Security Service |
| swx-gate | 4538/tcp | 0.000000 | # Software Data Exchange Gateway |
| swx-gate | 4538/udp | 0.000000 | # Software Data Exchange Gateway |
| worldscores | 4545/tcp | 0.000076 | worldscores 4545/tcp 0.000076 |
| worldscores | 4545/udp | 0.000000 | # WorldScores |
| sf-lm | 4546/tcp | 0.000000 | # SF License Manager (Sentinel) |
| sf-lm | 4546/udp | 0.000000 | # SF License Manager (Sentinel) |
| lanner-lm | 4547/tcp | 0.000000 | # Lanner License Manager |
| lanner-lm | 4547/udp | 0.000000 | # Lanner License Manager |
| synchromesh | 4548/tcp | 0.000000 | synchromesh 4548/tcp 0.000000 |
| synchromesh | 4548/udp | 0.000000 | # Synchromesh |
| aegate | 4549/tcp | 0.000000 | # Aegate PMR Service |
| aegate | 4549/udp | 0.000330 | # Aegate PMR Service |
| gds-adppiw-db | 4550/tcp | 0.000228 | # Perman I Interbase Server |
| gds-adppiw-db | 4550/udp | 0.000000 | # Perman I Interbase Server |
| ieee-mih | 4551/tcp | 0.000000 | # MIH Services |
| ieee-mih | 4551/udp | 0.000330 | # MIH Services |
| menandmice-mon | 4552/tcp | 0.000000 | # Men and Mice Monitoring |
| menandmice-mon | 4552/udp | 0.000330 | # Men and Mice Monitoring |
| icshostsvc | 4553/tcp | 0.000000 | # ICS host services |
| msfrs | 4554/tcp | 0.000000 | # MS FRS Replication |
| msfrs | 4554/udp | 0.000330 | # MS FRS Replication |
| rsip | 4555/tcp | 0.000152 | # RSIP Port |
| rsip | 4555/udp | 0.000000 | # RSIP Port |
| dtn-bundle-tcp | 4556/tcp | 0.000000 | # dtn-bundle | DTN Bundle TCP CL Protocol | DTN Bundle UDP CL Protocol | DTN Bundle DCCP CL Protocol |
| dtn-bundle-udp | 4556/udp | 0.000000 | # DTN Bundle UDP CL Protocol |
| fax | 4557/tcp | 0.000050 | # mtcevrunqss | FlexFax FAX transmission service | Marathon everRun Quorum Service Server |
| mtcevrunqss | 4557/udp | 0.000000 | # Marathon everRun Quorum Service Server |
| mtcevrunqman | 4558/tcp | 0.000076 | # Marathon everRun Quorum Service Manager |
| mtcevrunqman | 4558/udp | 0.000000 | # Marathon everRun Quorum Service Manager |
| hylafax | 4559/tcp | 0.000151 | # HylaFAX client-server protocol |
| hylafax | 4559/udp | 0.000000 | # HylaFAX |
| amahi-anywhere | 4563/tcp | 0.000000 | # Amahi Anywhere |
| kwtc | 4566/tcp | 0.000000 | # Kids Watch Time Control Service |
| kwtc | 4566/udp | 0.000000 | # Kids Watch Time Control Service |
| tram | 4567/tcp | 0.000228 | tram 4567/tcp 0.000228 |
| tram | 4567/udp | 0.000000 | # TRAM |
| bmc-reporting | 4568/tcp | 0.000000 | # BMC Reporting |
| bmc-reporting | 4568/udp | 0.000000 | # BMC Reporting |
| iax | 4569/tcp | 0.000000 | # Inter-Asterisk eXchange |
| iax | 4569/udp | 0.000000 | # Inter-Asterisk eXchange |
| deploymentmap | 4570/tcp | 0.000076 | # Service to distribute and update within a site deployment information for Oracle Communications Suite |
| cardifftec-back | 4573/tcp | 0.000000 | # A port for communication between a server and client for a custom backup system |
| rid | 4590/tcp | 0.000000 | # RID over HTTP/TLS |
| l3t-at-an | 4591/tcp | 0.000000 | # HRPD L3T (AT-AN) |
| l3t-at-an | 4591/udp | 0.000000 | # HRPD L3T (AT-AN) |
| hrpd-ith-at-an | 4592/tcp | 0.000000 | # HRPD-ITH (AT-AN) |
| hrpd-ith-at-an | 4592/udp | 0.000000 | # HRPD-ITH (AT-AN) |
| ipt-anri-anri | 4593/tcp | 0.000000 | # IPT (ANRI-ANRI) |
| ipt-anri-anri | 4593/udp | 0.000661 | # IPT (ANRI-ANRI) |
| ias-session | 4594/tcp | 0.000000 | # IAS-Session (ANRI-ANRI) |
| ias-session | 4594/udp | 0.000000 | # IAS-Session (ANRI-ANRI) |
| ias-paging | 4595/tcp | 0.000000 | # IAS-Paging (ANRI-ANRI) |
| ias-paging | 4595/udp | 0.000000 | # IAS-Paging (ANRI-ANRI) |
| ias-neighbor | 4596/tcp | 0.000000 | # IAS-Neighbor (ANRI-ANRI) |
| ias-neighbor | 4596/udp | 0.000330 | # IAS-Neighbor (ANRI-ANRI) |
| a21-an-1xbs | 4597/tcp | 0.000000 | # A21 (AN-1xBS) |
| a21-an-1xbs | 4597/udp | 0.000000 | # A21 (AN-1xBS) |
| a16-an-an | 4598/tcp | 0.000000 | # A16 (AN-AN) |
| a16-an-an | 4598/udp | 0.000000 | # A16 (AN-AN) |
| a17-an-an | 4599/tcp | 0.000076 | # A17 (AN-AN) |
| a17-an-an | 4599/udp | 0.000000 | # A17 (AN-AN) |
| piranha1 | 4600/tcp | 0.000152 | piranha1 4600/tcp 0.000152 |
| piranha1 | 4600/udp | 0.000000 | # Piranha1 |
| piranha2 | 4601/tcp | 0.000076 | piranha2 4601/tcp 0.000076 |
| piranha2 | 4601/udp | 0.000000 | # Piranha2 |
| mtsserver | 4602/tcp | 0.000076 | # EAX MTS Server |
| menandmice-upg | 4603/tcp | 0.000000 | # Men & Mice Upgrade Agent |
| irp | 4604/tcp | 0.000000 | # Identity Registration Protocol |
| sixchat | 4605/tcp | 0.000000 | # Direct End to End Secure Chat Protocol |
| sixid | 4606/tcp | 0.000076 | # Secure ID to IP registration and lookup |
| ventoso | 4621/tcp | 0.000000 | # Bidirectional single port remote radio VOIP and Control stream |
| dots-signal | 4646/tcp | 0.000000 | # Distributed Denial-of-Service Open Threat Signaling (DOTS) Signal Channel | Distributed Denial-of-Service Open Threat Signaling (DOTS) Signal Channel Protocol. The service name is used to construct the SRV service names "_dots-signal._udp" and "_dots-signal._tcp" for discovering DOTS servers used to establish DOTS signal channel. |
| playsta2-app | 4658/tcp | 0.000152 | # PlayStation2 App Port |
| playsta2-app | 4658/udp | 0.000000 | # PlayStation2 App Port |
| playsta2-lob | 4659/tcp | 0.000000 | # PlayStation2 Lobby Port |
| playsta2-lob | 4659/udp | 0.000330 | # PlayStation2 Lobby Port |
| mosmig | 4660/tcp | 0.000050 | # OpenMOSix MIGrates local processes | smaclmgr |
| smaclmgr | 4660/udp | 0.000000 | smaclmgr 4660/udp 0.000000 |
| kar2ouche | 4661/tcp | 0.000000 | # Kar2ouche Peer location service |
| kar2ouche | 4661/udp | 0.000000 | # Kar2ouche Peer location service |
| edonkey | 4662/tcp | 0.000828 | # oms | eDonkey file sharing (Donkey) | OrbitNet Message Service |
| oms | 4662/udp | 0.000000 | # OrbitNet Message Service |
| noteit | 4663/tcp | 0.000000 | # Note It! Message Service |
| noteit | 4663/udp | 0.000330 | # Note It! Message Service |
| ems | 4664/tcp | 0.000000 | # Rimage Messaging Server |
| ems | 4664/udp | 0.000000 | # Rimage Messaging Server |
| contclientms | 4665/tcp | 0.000076 | # Container Client Message Service |
| contclientms | 4665/udp | 0.000000 | # Container Client Message Service |
| eportcomm | 4666/tcp | 0.000000 | # E-Port Message Service |
| edonkey | 4666/udp | 0.001450 | # eDonkey file sharing (Donkey) |
| mmacomm | 4667/tcp | 0.000000 | # MMA Comm Services |
| mmacomm | 4667/udp | 0.000000 | # MMA Comm Services |
| mmaeds | 4668/tcp | 0.000000 | # MMA EDS Service |
| mmaeds | 4668/udp | 0.000000 | # MMA EDS Service |
| eportcommdata | 4669/tcp | 0.000000 | # E-Port Data Service |
| eportcommdata | 4669/udp | 0.000000 | # E-Port Data Service |
| light | 4670/tcp | 0.000000 | # Light packets transfer protocol |
| light | 4670/udp | 0.000000 | # Light packets transfer protocol |
| acter | 4671/tcp | 0.000000 | # Bull RSF action server |
| acter | 4671/udp | 0.000000 | # Bull RSF action server |
| rfa | 4672/tcp | 0.000013 | # remote file access server |
| rfa | 4672/udp | 0.006227 | # remote file access server |
| cxws | 4673/tcp | 0.000000 | # CXWS Operations |
| cxws | 4673/udp | 0.000330 | # CXWS Operations |
| appiq-mgmt | 4674/tcp | 0.000000 | # AppIQ Agent Management |
| appiq-mgmt | 4674/udp | 0.000000 | # AppIQ Agent Management |
| dhct-status | 4675/tcp | 0.000000 | # BIAP Device Status |
| dhct-status | 4675/udp | 0.000000 | # BIAP Device Status |
| dhct-alerts | 4676/tcp | 0.000000 | # BIAP Generic Alert |
| dhct-alerts | 4676/udp | 0.000000 | # BIAP Generic Alert |
| bcs | 4677/tcp | 0.000000 | # Business Continuity Servi |
| bcs | 4677/udp | 0.000000 | # Business Continuity Servi |
| traversal | 4678/tcp | 0.000000 | # boundary traversal |
| traversal | 4678/udp | 0.000000 | # boundary traversal |
| mgesupervision | 4679/tcp | 0.000000 | # MGE UPS Supervision |
| mgesupervision | 4679/udp | 0.000000 | # MGE UPS Supervision |
| mgemanagement | 4680/tcp | 0.000000 | # MGE UPS Management |
| mgemanagement | 4680/udp | 0.000000 | # MGE UPS Management |
| parliant | 4681/tcp | 0.000000 | # Parliant Telephony System |
| parliant | 4681/udp | 0.000000 | # Parliant Telephony System |
| finisar | 4682/tcp | 0.000000 | finisar 4682/tcp 0.000000 |
| finisar | 4682/udp | 0.000000 | finisar 4682/udp 0.000000 |
| spike | 4683/tcp | 0.000000 | # Spike Clipboard Service |
| spike | 4683/udp | 0.000000 | # Spike Clipboard Service |
| rfid-rp1 | 4684/tcp | 0.000000 | # RFID Reader Protocol 1.0 |
| rfid-rp1 | 4684/udp | 0.000000 | # RFID Reader Protocol 1.0 |
| autopac | 4685/tcp | 0.000000 | # Autopac Protocol |
| autopac | 4685/udp | 0.000000 | # Autopac Protocol |
| msp-os | 4686/tcp | 0.000000 | # Manina Service Protocol |
| msp-os | 4686/udp | 0.000000 | # Manina Service Protocol |
| nst | 4687/tcp | 0.000076 | # Network Scanner Tool FTP |
| nst | 4687/udp | 0.000000 | # Network Scanner Tool FTP |
| mobile-p2p | 4688/tcp | 0.000000 | # Mobile P2P Service |
| mobile-p2p | 4688/udp | 0.000000 | # Mobile P2P Service |
| altovacentral | 4689/tcp | 0.000076 | # Altova DatabaseCentral |
| altovacentral | 4689/udp | 0.000000 | # Altova DatabaseCentral |
| prelude | 4690/tcp | 0.000000 | # Prelude IDS message proto |
| prelude | 4690/udp | 0.000000 | # Prelude IDS message proto |
| mtn | 4691/tcp | 0.000000 | # monotone Netsync Protocol |
| mtn | 4691/udp | 0.000991 | # monotone Netsync Protocol |
| conspiracy | 4692/tcp | 0.000000 | # Conspiracy messaging |
| conspiracy | 4692/udp | 0.000661 | # Conspiracy messaging |
| netxms-agent | 4700/tcp | 0.000076 | # NetXMS Agent |
| netxms-agent | 4700/udp | 0.000000 | # NetXMS Agent |
| netxms-mgmt | 4701/tcp | 0.000000 | # NetXMS Management |
| netxms-mgmt | 4701/udp | 0.000330 | # NetXMS Management |
| netxms-sync | 4702/tcp | 0.000000 | # NetXMS Server Synchronization |
| netxms-sync | 4702/udp | 0.000330 | # NetXMS Server Synchronization |
| npqes-test | 4703/tcp | 0.000000 | # Network Performance Quality Evaluation System Test Service |
| assuria-ins | 4704/tcp | 0.000000 | # Assuria Insider |
| trinity-dist | 4711/tcp | 0.000000 | # Trinity Trust Network Node Communication |
| pulseaudio | 4713/tcp | 0.000076 | # Pulse Audio UNIX sound framework |
| truckstar | 4725/tcp | 0.000000 | # TruckStar Service |
| truckstar | 4725/udp | 0.000000 | # TruckStar Service |
| a26-fap-fgw | 4726/tcp | 0.000000 | # A26 (FAP-FGW) |
| a26-fap-fgw | 4726/udp | 0.000330 | # A26 (FAP-FGW) |
| fcis | 4727/tcp | 0.000000 | # fcis-disc | F-Link Client Information Service | F-Link Client Information Service Discovery |
| fcis-disc | 4727/udp | 0.000000 | # F-Link Client Information Service Discovery |
| capmux | 4728/tcp | 0.000000 | # CA Port Multiplexer |
| capmux | 4728/udp | 0.000000 | # CA Port Multiplexer |
| gsmtap | 4729/tcp | 0.000000 | # GSM Interface Tap |
| gsmtap | 4729/udp | 0.000000 | # GSM Interface Tap |
| gearman | 4730/tcp | 0.000000 | # Gearman Job Queue System |
| gearman | 4730/udp | 0.000000 | # Gearman Job Queue System |
| remcap | 4731/tcp | 0.000000 | # Remote Capture Protocol |
| ohmtrigger | 4732/tcp | 0.000000 | # OHM server trigger |
| ohmtrigger | 4732/udp | 0.000000 | # OHM server trigger |
| resorcs | 4733/tcp | 0.000000 | # RES Orchestration Catalog Services |
| ipdr-sp | 4737/tcp | 0.000000 | # IPDR/SP |
| ipdr-sp | 4737/udp | 0.000000 | # IPDR/SP |
| solera-lpn | 4738/tcp | 0.000000 | # SoleraTec Locator |
| solera-lpn | 4738/udp | 0.000000 | # SoleraTec Locator |
| ipfix | 4739/sctp | 0.000000 | # IP Flow Info Export |
| ipfix | 4739/tcp | 0.000000 | # IP Flow Info Export |
| ipfix | 4739/udp | 0.000000 | # IP Flow Info Export |
| ipfixs | 4740/sctp | 0.000000 | # IP Flow Info Export over DTLS | ipfix protocol over TLS | ipfix protocol over DTLS |
| ipfixs | 4740/tcp | 0.000000 | # IP Flow Info Export over TLS |
| ipfixs | 4740/udp | 0.000000 | # IP Flow Info Export over DTLS |
| lumimgrd | 4741/tcp | 0.000000 | # Luminizer Manager |
| lumimgrd | 4741/udp | 0.000330 | # Luminizer Manager |
| sicct | 4742/tcp | 0.000000 | # sicct-sdp | SICCT Service Discovery Protocol |
| sicct-sdp | 4742/udp | 0.000000 | # SICCT Service Discovery Protocol |
| openhpid | 4743/tcp | 0.000000 | # openhpi HPI service |
| openhpid | 4743/udp | 0.000330 | # openhpi HPI service |
| ifsp | 4744/tcp | 0.000000 | # Internet File Synchronization Protocol |
| ifsp | 4744/udp | 0.000000 | # Internet File Synchronization Protocol |
| fmp | 4745/tcp | 0.000076 | # Funambol Mobile Push |
| fmp | 4745/udp | 0.000330 | # Funambol Mobile Push |
| intelliadm-disc | 4746/tcp | 0.000000 | # IntelliAdmin Discovery |
| buschtrommel | 4747/tcp | 0.000000 | # peer-to-peer file exchange protocol |
| profilemac | 4749/tcp | 0.000000 | # Profile for Mac |
| profilemac | 4749/udp | 0.000000 | # Profile for Mac |
| ssad | 4750/tcp | 0.000000 | # Simple Service Auto Discovery |
| ssad | 4750/udp | 0.000000 | # Simple Service Auto Discovery |
| spocp | 4751/tcp | 0.000000 | # Simple Policy Control Protocol |
| spocp | 4751/udp | 0.000000 | # Simple Policy Control Protocol |
| snap | 4752/tcp | 0.000000 | # Simple Network Audio Protocol |
| snap | 4752/udp | 0.000330 | # Simple Network Audio Protocol |
| simon | 4753/tcp | 0.000000 | # simon-disc | Simple Invocation of Methods Over Network (SIMON) | Simple Invocation of Methods Over Network (SIMON) Discovery |
| gre-in-udp | 4754/tcp | 0.000000 | # GRE-in-UDP Encapsulation |
| gre-udp-dtls | 4755/tcp | 0.000000 | # GRE-in-UDP Encapsulation with DTLS |
| RDCenter | 4756/tcp | 0.000000 | # Reticle Decision Center |
| converge | 4774/tcp | 0.000000 | # Converge RPC |
| bfd-multi-ctl | 4784/tcp | 0.000000 | # BFD Multihop Control |
| bfd-multi-ctl | 4784/udp | 0.000330 | # BFD Multihop Control |
| cncp | 4785/tcp | 0.000000 | # Cisco Nexus Control Protocol |
| cncp | 4785/udp | 0.000000 | # Cisco Nexus Control Protocol |
| smart-install | 4786/tcp | 0.000000 | # Smart Install Service |
| sia-ctrl-plane | 4787/tcp | 0.000000 | # Service Insertion Architecture (SIA) Control-Plane |
| xmcp | 4788/tcp | 0.000000 | # eXtensible Messaging Client Protocol |
| vxlan | 4789/tcp | 0.000000 | # Virtual eXtensible Local Area Network (VXLAN) |
| vxlan-gpe | 4790/tcp | 0.000000 | # Generic Protocol Extension for Virtual eXtensible Local Area Network (VXLAN) |
| roce | 4791/tcp | 0.000000 | # IP Routable RocE |
| unified-bus | 4792/tcp | 0.000000 | # IP Routable Unified Bus |
| iims | 4800/tcp | 0.000076 | # Icona Instant Messenging System |
| iims | 4800/udp | 0.000330 | # Icona Instant Messenging System |
| iwec | 4801/tcp | 0.000000 | # Icona Web Embedded Chat |
| iwec | 4801/udp | 0.000330 | # Icona Web Embedded Chat |
| ilss | 4802/tcp | 0.000000 | # Icona License System Server |
| ilss | 4802/udp | 0.000000 | # Icona License System Server |
| notateit | 4803/tcp | 0.000000 | # notateit-disc | Notateit Messaging | Notateit Messaging Discovery |
| notateit-disc | 4803/udp | 0.000000 | # Notateit Messaging Discovery |
| aja-ntv4-disc | 4804/tcp | 0.000000 | # AJA ntv4 Video System Discovery |
| aja-ntv4-disc | 4804/udp | 0.000000 | # AJA ntv4 Video System Discovery |
| htcp | 4827/tcp | 0.000000 | htcp 4827/tcp 0.000000 |
| squid-htcp | 4827/udp | 0.000923 | # Squid proxy HTCP port |
| varadero-0 | 4837/tcp | 0.000000 | varadero-0 4837/tcp 0.000000 |
| varadero-0 | 4837/udp | 0.000000 | # Varadero-0 |
| varadero-1 | 4838/tcp | 0.000000 | varadero-1 4838/tcp 0.000000 |
| varadero-1 | 4838/udp | 0.000330 | # Varadero-1 |
| varadero-2 | 4839/tcp | 0.000000 | varadero-2 4839/tcp 0.000000 |
| varadero-2 | 4839/udp | 0.000330 | # Varadero-2 |
| opcua-tcp | 4840/tcp | 0.000000 | # opcua-udp | OPC UA TCP Protocol | OPC UA Connection Protocol | OPC UA Multicast Datagram Protocol |
| opcua-udp | 4840/udp | 0.000330 | # OPC UA TCP Protocol |
| quosa | 4841/tcp | 0.000000 | # QUOSA Virtual Library Service |
| quosa | 4841/udp | 0.000000 | # QUOSA Virtual Library Service |
| gw-asv | 4842/tcp | 0.000000 | # nCode ICE-flow Library AppServer |
| gw-asv | 4842/udp | 0.000000 | # nCode ICE-flow Library AppServer |
| opcua-tls | 4843/tcp | 0.000000 | # OPC UA TCP Protocol over TLS/SSL |
| opcua-tls | 4843/udp | 0.000000 | # OPC UA TCP Protocol over TLS/SSL |
| gw-log | 4844/tcp | 0.000000 | # nCode ICE-flow Library LogServer |
| gw-log | 4844/udp | 0.000330 | # nCode ICE-flow Library LogServer |
| wcr-remlib | 4845/tcp | 0.000000 | # WordCruncher Remote Library Service |
| wcr-remlib | 4845/udp | 0.000000 | # WordCruncher Remote Library Service |
| contamac_icm | 4846/tcp | 0.000000 | # contamac-icm | Contamac ICM Service |
| contamac_icm | 4846/udp | 0.000330 | # Contamac ICM Service |
| wfc | 4847/tcp | 0.000000 | # Web Fresh Communication |
| wfc | 4847/udp | 0.000000 | # Web Fresh Communication |
| appserv-http | 4848/tcp | 0.000228 | # App Server - Admin HTTP |
| appserv-http | 4848/udp | 0.000000 | # App Server - Admin HTTP |
| appserv-https | 4849/tcp | 0.000000 | # App Server - Admin HTTPS |
| appserv-https | 4849/udp | 0.000000 | # App Server - Admin HTTPS |
| sun-as-nodeagt | 4850/tcp | 0.000000 | # Sun App Server - NA |
| sun-as-nodeagt | 4850/udp | 0.000000 | # Sun App Server - NA |
| derby-repli | 4851/tcp | 0.000000 | # Apache Derby Replication |
| derby-repli | 4851/udp | 0.000330 | # Apache Derby Replication |
| unify-debug | 4867/tcp | 0.000000 | # Unify Debugger |
| unify-debug | 4867/udp | 0.000000 | # Unify Debugger |
| phrelay | 4868/tcp | 0.000000 | # Photon Relay |
| phrelay | 4868/udp | 0.000330 | # Photon Relay |
| phrelaydbg | 4869/tcp | 0.000000 | # Photon Relay Debug |
| phrelaydbg | 4869/udp | 0.000000 | # Photon Relay Debug |
| cc-tracking | 4870/tcp | 0.000000 | # Citcom Tracking Service |
| cc-tracking | 4870/udp | 0.000000 | # Citcom Tracking Service |
| wired | 4871/tcp | 0.000000 | wired 4871/tcp 0.000000 |
| wired | 4871/udp | 0.000000 | # Wired |
| tritium-can | 4876/tcp | 0.000076 | # Tritium CAN Bus Bridge Service |
| lmcs | 4877/tcp | 0.000076 | # Lighting Management Control System |
| inst-discovery | 4878/tcp | 0.000000 | # Agilent Instrument Discovery |
| wsdl-event | 4879/tcp | 0.000000 | # WSDL Event Receiver |
| hislip | 4880/tcp | 0.000000 | # IVI High-Speed LAN Instrument Protocol |
| socp-t | 4881/tcp | 0.000076 | # SOCP Time Synchronization Protocol |
| socp-t | 4881/udp | 0.000000 | # SOCP Time Synchronization Protocol |
| socp-c | 4882/tcp | 0.000000 | # SOCP Control Protocol |
| socp-c | 4882/udp | 0.000000 | # SOCP Control Protocol |
| wmlserver | 4883/tcp | 0.000000 | # Meier-Phelps License Server |
| hivestor | 4884/tcp | 0.000000 | # HiveStor Distributed File System |
| hivestor | 4884/udp | 0.000330 | # HiveStor Distributed File System |
| abbs | 4885/tcp | 0.000000 | abbs 4885/tcp 0.000000 |
| abbs | 4885/udp | 0.000000 | # ABBS |
| xcap-portal | 4888/tcp | 0.000000 | # xcap code analysis portal public user access |
| xcap-control | 4889/tcp | 0.000000 | # xcap code analysis portal cluster control and administration |
| lyskom | 4894/tcp | 0.000000 | # LysKOM Protocol A |
| lyskom | 4894/udp | 0.000000 | # LysKOM Protocol A |
| radmin | 4899/tcp | 0.003337 | # radmin-port | Radmin (www.radmin.com) remote PC control software | RAdmin Port |
| radmin-port | 4899/udp | 0.000000 | # RAdmin Port |
| hfcs | 4900/tcp | 0.000228 | # HyperFileSQL Client/Server Database Engine | HFSQL Client/Server Database Engine |
| hfcs | 4900/udp | 0.000000 | # HyperFileSQL Client/Server Database Engine |
| flr_agent | 4901/tcp | 0.000000 | # flr-agent | FileLocator Remote Search Agent |
| magiccontrol | 4902/tcp | 0.000000 | # magicCONROL RF and Data Interface |
| lutap | 4912/tcp | 0.000076 | # Technicolor LUT Access Protocol |
| lutcp | 4913/tcp | 0.000000 | # LUTher Control Protocol |
| bones | 4914/tcp | 0.000000 | # Bones Remote Control |
| bones | 4914/udp | 0.000000 | # Bones Remote Control |
| frcs | 4915/tcp | 0.000000 | # Fibics Remote Control Service |
| an-signaling | 4936/tcp | 0.000000 | # Signal protocol port for autonomic networking |
| atsc-mh-ssc | 4937/tcp | 0.000000 | # ATSC-M/H Service Signaling Channel |
| atsc-mh-ssc | 4937/udp | 0.000000 | # ATSC-M/H Service Signaling Channel |
| eq-office-4940 | 4940/tcp | 0.000000 | # Equitrac Office |
| eq-office-4940 | 4940/udp | 0.000330 | # Equitrac Office |
| eq-office-4941 | 4941/tcp | 0.000000 | # Equitrac Office |
| eq-office-4941 | 4941/udp | 0.000330 | # Equitrac Office |
| eq-office-4942 | 4942/tcp | 0.000000 | # Equitrac Office |
| eq-office-4942 | 4942/udp | 0.000000 | # Equitrac Office |
| munin | 4949/tcp | 0.000152 | # Munin Graphing Framework |
| munin | 4949/udp | 0.000000 | # Munin Graphing Framework |
| sybasesrvmon | 4950/tcp | 0.000000 | # Sybase Server Monitor |
| sybasesrvmon | 4950/udp | 0.000000 | # Sybase Server Monitor |
| pwgwims | 4951/tcp | 0.000000 | # PWG WIMS |
| pwgwims | 4951/udp | 0.000000 | # PWG WIMS |
| sagxtsds | 4952/tcp | 0.000000 | # SAG Directory Server |
| sagxtsds | 4952/udp | 0.000000 | # SAG Directory Server |
| dbsyncarbiter | 4953/tcp | 0.000000 | # Synchronization Arbiter |
| ccss-qmm | 4969/tcp | 0.000000 | # CCSS QMessageMonitor |
| ccss-qmm | 4969/udp | 0.000000 | # CCSS QMessageMonitor |
| ccss-qsm | 4970/tcp | 0.000000 | # CCSS QSystemMonitor |
| ccss-qsm | 4970/udp | 0.000000 | # CCSS QSystemMonitor |
| burp | 4971/tcp | 0.000000 | # BackUp and Restore Program |
| ctxs-vpp | 4980/tcp | 0.000000 | # Citrix Virtual Path |
| webyast | 4984/tcp | 0.000000 | webyast 4984/tcp 0.000000 |
| gerhcs | 4985/tcp | 0.000000 | # GER HC Standard |
| mrip | 4986/tcp | 0.000000 | # Model Railway Interface Program |
| mrip | 4986/udp | 0.000000 | # Model Railway Interface Program |
| maybe-veritas | 4987/tcp | 0.000013 | # smar-se-port1 | SMAR Ethernet Port 1 |
| smar-se-port1 | 4987/udp | 0.000000 | # SMAR Ethernet Port 1 |
| smar-se-port2 | 4988/tcp | 0.000000 | # SMAR Ethernet Port 2 |
| smar-se-port2 | 4988/udp | 0.000000 | # SMAR Ethernet Port 2 |
| parallel | 4989/tcp | 0.000000 | # Parallel for GAUSS (tm) |
| parallel | 4989/udp | 0.000000 | # Parallel for GAUSS (tm) |
| busycal | 4990/tcp | 0.000000 | # BusySync Calendar Synch. Protocol |
| busycal | 4990/udp | 0.000000 | # BusySync Calendar Synch. Protocol |
| vrt | 4991/tcp | 0.000000 | # VITA Radio Transport |
| vrt | 4991/udp | 0.000330 | # VITA Radio Transport |
| maybe-veritas | 4998/tcp | 0.000226 | maybe-veritas 4998/tcp 0.000226 |
| hfcs-manager | 4999/tcp | 0.000076 | # HyperFileSQL Client/Server Database Engine Manager | HFSQL Client/Server Database Engine Manager |
| hfcs-manager | 4999/udp | 0.000000 | # HyperFileSQL Client/Server Database Engine Manager |
| upnp | 5000/tcp | 0.006423 | # commplex-main | Universal PnP, also Free Internet Chess Server |
| upnp | 5000/udp | 0.008913 | # also complex-main |
| commplex-link | 5001/tcp | 0.003023 | commplex-link 5001/tcp 0.003023 |
| commplex-link | 5001/udp | 0.007018 | commplex-link 5001/udp 0.007018 |
| rfe | 5002/tcp | 0.000765 | # Radio Free Ethernet | radio free ethernet |
| rfe | 5002/udp | 0.002504 | # Radio Free Ethernet |
| filemaker | 5003/tcp | 0.001756 | # fmpro-internal | Filemaker Server - http://www.filemaker.com/ti/104289.html | FileMaker, Inc. - Proprietary transport | FileMaker, Inc. - Proprietary name binding |
| filemaker | 5003/udp | 0.002356 | # Filemaker Server - http://www.filemaker.com/ti/104289.html |
| avt-profile-1 | 5004/tcp | 0.000532 | # RTP media data [RFC 3551][RFC 4571] | RTP media data |
| avt-profile-1 | 5004/udp | 0.000330 | # RTP media data [RFC 3551] |
| avt-profile-2 | 5005/tcp | 0.000076 | # RTP control protocol [RFC 3551][RFC 4571] | RTP control protocol |
| avt-profile-2 | 5005/udp | 0.000330 | # RTP control protocol [RFC 3551] |
| wsm-server | 5006/tcp | 0.000000 | # wsm server |
| wsm-server | 5006/udp | 0.000000 | # wsm server |
| wsm-server-ssl | 5007/tcp | 0.000000 | # wsm server ssl |
| wsm-server-ssl | 5007/udp | 0.000000 | # wsm server ssl |
| synapsis-edge | 5008/tcp | 0.000000 | # Synapsis EDGE |
| synapsis-edge | 5008/udp | 0.000000 | # Synapsis EDGE |
| airport-admin | 5009/tcp | 0.004416 | # winfs | Apple AirPort WAP Administration | Microsoft Windows Filesystem |
| winfs | 5009/udp | 0.000000 | # Microsoft Windows Filesystem |
| telelpathstart | 5010/tcp | 0.000138 | # TelepathStart |
| telelpathstart | 5010/udp | 0.001582 | telelpathstart 5010/udp 0.001582 |
| telelpathattack | 5011/tcp | 0.000088 | # TelepathAttack |
| telelpathattack | 5011/udp | 0.001120 | telelpathattack 5011/udp 0.001120 |
| nsp | 5012/tcp | 0.000076 | # NetOnTap Service |
| nsp | 5012/udp | 0.000330 | # NetOnTap Service |
| fmpro-v6 | 5013/tcp | 0.000076 | # FileMaker, Inc. - Proprietary transport |
| fmpro-v6 | 5013/udp | 0.000330 | # FileMaker, Inc. - Proprietary transport |
| onpsocket | 5014/tcp | 0.000076 | # Overlay Network Protocol |
| onpsocket | 5014/udp | 0.000000 | # Overlay Network Protocol |
| fmwp | 5015/tcp | 0.000076 | # FileMaker, Inc. - Web publishing |
| zenginkyo-1 | 5020/tcp | 0.000076 | zenginkyo-1 5020/tcp 0.000076 |
| zenginkyo-1 | 5020/udp | 0.000000 | zenginkyo-1 5020/udp 0.000000 |
| zenginkyo-2 | 5021/tcp | 0.000076 | zenginkyo-2 5021/tcp 0.000076 |
| zenginkyo-2 | 5021/udp | 0.000330 | zenginkyo-2 5021/udp 0.000330 |
| mice | 5022/tcp | 0.000000 | # mice server |
| mice | 5022/udp | 0.000000 | # mice server |
| htuilsrv | 5023/tcp | 0.000076 | # Htuil Server for PLD2 |
| htuilsrv | 5023/udp | 0.000000 | # Htuil Server for PLD2 |
| scpi-telnet | 5024/tcp | 0.000000 | scpi-telnet 5024/tcp 0.000000 |
| scpi-telnet | 5024/udp | 0.000000 | # SCPI-TELNET |
| scpi-raw | 5025/tcp | 0.000000 | scpi-raw 5025/tcp 0.000000 |
| scpi-raw | 5025/udp | 0.000330 | # SCPI-RAW |
| strexec-d | 5026/tcp | 0.000000 | # Storix I/O daemon (data) |
| strexec-d | 5026/udp | 0.000000 | # Storix I/O daemon (data) |
| strexec-s | 5027/tcp | 0.000000 | # Storix I/O daemon (stat) |
| strexec-s | 5027/udp | 0.000000 | # Storix I/O daemon (stat) |
| qvr | 5028/tcp | 0.000000 | # Quiqum Virtual Relais |
| infobright | 5029/tcp | 0.000000 | # Infobright Database Server |
| infobright | 5029/udp | 0.000000 | # Infobright Database Server |
| surfpass | 5030/tcp | 0.000380 | surfpass 5030/tcp 0.000380 |
| surfpass | 5030/udp | 0.000000 | # SurfPass |
| dmp | 5031/tcp | 0.000000 | # Direct Message Protocol |
| dmp | 5031/udp | 0.000000 | # Direct Message Protocol |
| signacert-agent | 5032/tcp | 0.000000 | # SignaCert Enterprise Trust Server Agent |
| jtnetd-server | 5033/tcp | 0.000228 | # Janstor Secure Data |
| jtnetd-status | 5034/tcp | 0.000000 | # Janstor Status |
| asnaacceler8db | 5042/tcp | 0.000000 | asnaacceler8db 5042/tcp 0.000000 |
| asnaacceler8db | 5042/udp | 0.000330 | asnaacceler8db 5042/udp 0.000330 |
| swxadmin | 5043/tcp | 0.000000 | # ShopWorX Administration |
| swxadmin | 5043/udp | 0.000330 | # ShopWorX Administration |
| lxi-evntsvc | 5044/tcp | 0.000000 | # LXI Event Service |
| lxi-evntsvc | 5044/udp | 0.000000 | # LXI Event Service |
| osp | 5045/tcp | 0.000000 | # Open Settlement Protocol |
| vpm-udp | 5046/tcp | 0.000000 | # Vishay PM UDP Service |
| vpm-udp | 5046/udp | 0.000000 | # Vishay PM UDP Service |
| iscape | 5047/tcp | 0.000000 | # iSCAPE Data Broadcasting |
| iscape | 5047/udp | 0.000000 | # iSCAPE Data Broadcasting |
| texai | 5048/tcp | 0.000000 | # Texai Message Service |
| ivocalize | 5049/tcp | 0.000000 | # iVocalize Web Conference |
| ivocalize | 5049/udp | 0.000000 | # iVocalize Web Conference |
| mmcc | 5050/tcp | 0.002584 | # multimedia conference control tool |
| mmcc | 5050/udp | 0.002636 | # multimedia conference control tool |
| ida-agent | 5051/tcp | 0.003649 | # ita-agent | Symantec Intruder Alert | ITA Agent |
| ita-agent | 5051/udp | 0.000330 | # ITA Agent |
| ita-manager | 5052/tcp | 0.000076 | # ITA Manager |
| ita-manager | 5052/udp | 0.000000 | # ITA Manager |
| rlm | 5053/tcp | 0.000076 | # rlm-disc | RLM License Server | RLM Discovery Server |
| rlm-admin | 5054/tcp | 0.000304 | # RLM administrative interface |
| unot | 5055/tcp | 0.000076 | unot 5055/tcp 0.000076 |
| unot | 5055/udp | 0.000330 | # UNOT |
| intecom-ps1 | 5056/tcp | 0.000000 | # Intecom Pointspan 1 |
| intecom-ps1 | 5056/udp | 0.000330 | # Intecom Pointspan 1 |
| intecom-ps2 | 5057/tcp | 0.000000 | # Intecom Pointspan 2 |
| intecom-ps2 | 5057/udp | 0.000000 | # Intecom Pointspan 2 |
| locus-disc | 5058/tcp | 0.000000 | # Locus Discovery |
| locus-disc | 5058/udp | 0.000000 | # Locus Discovery |
| sds | 5059/tcp | 0.000000 | # SIP Directory Services |
| sds | 5059/udp | 0.000330 | # SIP Directory Services |
| sip | 5060/sctp | 0.000000 | # Session Initiation Protocol (SIP) |
| sip | 5060/tcp | 0.010613 | # Session Initiation Protocol (SIP) |
| sip | 5060/udp | 0.044350 | # Session Initiation Protocol (SIP) |
| sip-tls | 5061/sctp | 0.000000 | # sips |
| sip-tls | 5061/tcp | 0.000228 | # SIP-TLS |
| sip-tls | 5061/udp | 0.000330 | # SIP-TLS |
| na-localise | 5062/tcp | 0.000000 | # Localisation access |
| na-localise | 5062/udp | 0.000000 | # Localisation access |
| csrpc | 5063/tcp | 0.000152 | # centrify secure RPC |
| ca-1 | 5064/tcp | 0.000000 | # Channel Access 1 |
| ca-1 | 5064/udp | 0.000000 | # Channel Access 1 |
| ca-2 | 5065/tcp | 0.000000 | # Channel Access 2 |
| ca-2 | 5065/udp | 0.000000 | # Channel Access 2 |
| stanag-5066 | 5066/tcp | 0.000076 | # STANAG-5066-SUBNET-INTF |
| stanag-5066 | 5066/udp | 0.000000 | # STANAG-5066-SUBNET-INTF |
| authentx | 5067/tcp | 0.000000 | # Authentx Service |
| authentx | 5067/udp | 0.000000 | # Authentx Service |
| bitforestsrv | 5068/tcp | 0.000000 | # Bitforest Data Service |
| i-net-2000-npr | 5069/tcp | 0.000000 | # I/Net 2000-NPR |
| i-net-2000-npr | 5069/udp | 0.000330 | # I/Net 2000-NPR |
| vtsas | 5070/tcp | 0.000076 | # VersaTrans Server Agent Service |
| vtsas | 5070/udp | 0.000000 | # VersaTrans Server Agent Service |
| powerschool | 5071/tcp | 0.000000 | powerschool 5071/tcp 0.000000 |
| powerschool | 5071/udp | 0.000330 | # PowerSchool |
| ayiya | 5072/tcp | 0.000000 | # Anything In Anything |
| ayiya | 5072/udp | 0.000000 | # Anything In Anything |
| tag-pm | 5073/tcp | 0.000000 | # Advantage Group Port Mgr |
| tag-pm | 5073/udp | 0.000000 | # Advantage Group Port Mgr |
| alesquery | 5074/tcp | 0.000152 | # ALES Query |
| alesquery | 5074/udp | 0.000000 | # ALES Query |
| pvaccess | 5075/tcp | 0.000000 | # Experimental Physics and Industrial Control System |
| pixelpusher | 5078/tcp | 0.000000 | # PixelPusher pixel data |
| cp-spxrpts | 5079/tcp | 0.000000 | # Cambridge Pixel SPx Reports |
| cp-spxrpts | 5079/udp | 0.000000 | # Cambridge Pixel SPx Reports |
| onscreen | 5080/tcp | 0.000228 | # OnScreen Data Collection Service |
| onscreen | 5080/udp | 0.000000 | # OnScreen Data Collection Service |
| sdl-ets | 5081/tcp | 0.000152 | # SDL - Ent Trans Server |
| sdl-ets | 5081/udp | 0.000330 | # SDL - Ent Trans Server |
| qcp | 5082/tcp | 0.000000 | # Qpur Communication Protocol |
| qcp | 5082/udp | 0.000661 | # Qpur Communication Protocol |
| qfp | 5083/tcp | 0.000000 | # Qpur File Protocol |
| qfp | 5083/udp | 0.000000 | # Qpur File Protocol |
| llrp | 5084/tcp | 0.000000 | # EPCglobal Low-Level Reader Protocol |
| llrp | 5084/udp | 0.000000 | # EPCglobal Low-Level Reader Protocol |
| encrypted-llrp | 5085/tcp | 0.000000 | # EPCglobal Encrypted LLRP |
| encrypted-llrp | 5085/udp | 0.000000 | # EPCglobal Encrypted LLRP |
| aprigo-cs | 5086/tcp | 0.000000 | # Aprigo Collection Service |
| biotic | 5087/tcp | 0.000228 | # BIOTIC - Binary Internet of Things Interoperable Communication |
| car | 5090/sctp | 0.000000 | # Candidate AR |
| cxtp | 5091/sctp | 0.000000 | # Context Transfer Protocol |
| magpie | 5092/tcp | 0.000000 | # Magpie Binary |
| magpie | 5092/udp | 0.000000 | # Magpie Binary |
| sentinel-lm | 5093/tcp | 0.000000 | # Sentinel LM |
| sentinel-lm | 5093/udp | 0.003304 | # Sentinel LM |
| hart-ip | 5094/tcp | 0.000000 | hart-ip 5094/tcp 0.000000 |
| hart-ip | 5094/udp | 0.000330 | # HART-IP |
| sentlm-srv2srv | 5099/tcp | 0.000000 | # SentLM Srv2Srv |
| sentlm-srv2srv | 5099/udp | 0.000000 | # SentLM Srv2Srv |
| admd | 5100/tcp | 0.000778 | # socalia | (chili!soft asp admin port) or Yahoo pager | Socalia service mux |
| socalia | 5100/udp | 0.000330 | # Socalia service mux |
| admdog | 5101/tcp | 0.005156 | # talarian-udp | talarian-tcp | (chili!soft asp) | Talarian_TCP | Talarian_UDP |
| talarian-udp | 5101/udp | 0.000000 | # Talarian_UDP |
| admeng | 5102/tcp | 0.000602 | # oms-nonsecure | (chili!soft asp) | Oracle OMS non-secure |
| oms-nonsecure | 5102/udp | 0.000000 | # Oracle OMS non-secure |
| actifio-c2c | 5103/tcp | 0.000000 | # Actifio C2C |
| tinymessage | 5104/tcp | 0.000000 | tinymessage 5104/tcp 0.000000 |
| tinymessage | 5104/udp | 0.000000 | # TinyMessage |
| hughes-ap | 5105/tcp | 0.000000 | # Hughes Association Protocol |
| hughes-ap | 5105/udp | 0.000000 | # Hughes Association Protocol |
| actifioudsagent | 5106/tcp | 0.000000 | # Actifio UDS Agent |
| actifioreplic | 5107/tcp | 0.000000 | # Disk to Disk replication between Actifio Clusters |
| taep-as-svc | 5111/tcp | 0.000076 | # TAEP AS service |
| taep-as-svc | 5111/udp | 0.000000 | # TAEP AS service |
| pm-cmdsvr | 5112/tcp | 0.000000 | # PeerMe Msg Cmd Service |
| pm-cmdsvr | 5112/udp | 0.000000 | # PeerMe Msg Cmd Service |
| ev-services | 5114/tcp | 0.000076 | # Enterprise Vault Services |
| autobuild | 5115/tcp | 0.000000 | # Symantec Autobuild Service |
| emb-proj-cmd | 5116/tcp | 0.000000 | # EPSON Projecter Image Transfer |
| emb-proj-cmd | 5116/udp | 0.000330 | # EPSON Projecter Image Transfer |
| gradecam | 5117/tcp | 0.000000 | # GradeCam Image Processing |
| barracuda-bbs | 5120/tcp | 0.002129 | # Barracuda Backup Protocol |
| nbt-pc | 5133/tcp | 0.000076 | # Policy Commander |
| nbt-pc | 5133/udp | 0.000000 | # Policy Commander |
| ppactivation | 5134/tcp | 0.000000 | # PP ActivationServer |
| erp-scale | 5135/tcp | 0.000000 | erp-scale 5135/tcp 0.000000 |
| minotaur-sa | 5136/tcp | 0.000000 | # Minotaur SA |
| minotaur-sa | 5136/udp | 0.000000 | # Minotaur SA |
| ctsd | 5137/tcp | 0.000076 | # MyCTS server port |
| ctsd | 5137/udp | 0.000000 | # MyCTS server port |
| rmonitor_secure | 5145/tcp | 0.000050 | # rmonitor-secure | RMONITOR SECURE |
| rmonitor_secure | 5145/udp | 0.000610 | rmonitor_secure 5145/udp 0.000610 |
| social-alarm | 5146/tcp | 0.000000 | # Social Alarm Service |
| atmp | 5150/tcp | 0.000000 | # Ascend Tunnel Management Protocol |
| atmp | 5150/udp | 0.000000 | # Ascend Tunnel Management Protocol |
| esri_sde | 5151/tcp | 0.000152 | # esri-sde | ESRI SDE Instance | ESRI SDE Remote Start |
| esri_sde | 5151/udp | 0.000000 | # ESRI SDE Remote Start |
| sde-discovery | 5152/tcp | 0.000076 | # ESRI SDE Instance Discovery |
| sde-discovery | 5152/udp | 0.000330 | # ESRI SDE Instance Discovery |
| toruxserver | 5153/tcp | 0.000000 | # ToruX Game Server |
| bzflag | 5154/tcp | 0.000000 | # BZFlag game server |
| bzflag | 5154/udp | 0.000000 | # BZFlag game server |
| asctrl-agent | 5155/tcp | 0.000000 | # Oracle asControl Agent |
| asctrl-agent | 5155/udp | 0.000000 | # Oracle asControl Agent |
| rugameonline | 5156/tcp | 0.000000 | # Russian Online Game |
| mediat | 5157/tcp | 0.000000 | # Mediat Remote Object Exchange |
| snmpssh | 5161/tcp | 0.000000 | # SNMP over SSH Transport Model |
| snmpssh-trap | 5162/tcp | 0.000000 | # SNMP Notification over SSH Transport Model |
| sbackup | 5163/tcp | 0.000000 | # Shadow Backup |
| vpa | 5164/tcp | 0.000000 | # vpa-disc | Virtual Protocol Adapter | Virtual Protocol Adapter Discovery |
| vpa-disc | 5164/udp | 0.000000 | # Virtual Protocol Adapter Discovery |
| ife_icorp | 5165/tcp | 0.000000 | # ife-icorp | ife_1corp |
| ife_icorp | 5165/udp | 0.000000 | # ife_1corp |
| winpcs | 5166/tcp | 0.000000 | # WinPCS Service Connection |
| winpcs | 5166/udp | 0.000330 | # WinPCS Service Connection |
| scte104 | 5167/tcp | 0.000000 | # SCTE104 Connection |
| scte104 | 5167/udp | 0.000000 | # SCTE104 Connection |
| scte30 | 5168/tcp | 0.000000 | # SCTE30 Connection |
| scte30 | 5168/udp | 0.000661 | # SCTE30 Connection |
| pcoip-mgmt | 5172/tcp | 0.000000 | # PC over IP Endpoint Management |
| aol | 5190/tcp | 0.004190 | # America-Online.  Also can be used by ICQ | America-Online |
| aol | 5190/udp | 0.000692 | # America-Online. |
| aol-1 | 5191/tcp | 0.000050 | # AmericaOnline1 |
| aol-1 | 5191/udp | 0.000593 | # AmericaOnline1 |
| aol-2 | 5192/tcp | 0.000000 | # AmericaOnline2 |
| aol-2 | 5192/udp | 0.000494 | # AmericaOnline2 |
| aol-3 | 5193/tcp | 0.000013 | # AmericaOnline3 |
| aol-3 | 5193/udp | 0.000511 | # AmericaOnline3 |
| cpscomm | 5194/tcp | 0.000000 | # CipherPoint Config Service |
| ampl-lic | 5195/tcp | 0.000000 | # The protocol is used by a license server and client programs to control use of program licenses that float to networked machines |
| ampl-tableproxy | 5196/tcp | 0.000000 | # The protocol is used by two programs that exchange "table" data used in the AMPL modeling language |
| tunstall-lwp | 5197/tcp | 0.000000 | # Tunstall Lone worker device interface |
| targus-getdata | 5200/tcp | 0.000304 | # TARGUS GetData |
| targus-getdata | 5200/udp | 0.000000 | # TARGUS GetData |
| targus-getdata1 | 5201/tcp | 0.000076 | # TARGUS GetData 1 |
| targus-getdata1 | 5201/udp | 0.000000 | # TARGUS GetData 1 |
| targus-getdata2 | 5202/tcp | 0.000076 | # TARGUS GetData 2 |
| targus-getdata2 | 5202/udp | 0.000000 | # TARGUS GetData 2 |
| targus-getdata3 | 5203/tcp | 0.000000 | # TARGUS GetData 3 |
| targus-getdata3 | 5203/udp | 0.000000 | # TARGUS GetData 3 |
| nomad | 5209/tcp | 0.000000 | # Nomad Device Video Transfer |
| noteza | 5215/tcp | 0.000000 | # NOTEZA Data Safety Service |
| 3exmp | 5221/tcp | 0.000228 | # 3eTI Extensible Management Protocol for OAMP |
| xmpp-client | 5222/tcp | 0.000380 | # XMPP Client Connection |
| xmpp-client | 5222/udp | 0.000000 | # XMPP Client Connection |
| hpvirtgrp | 5223/tcp | 0.000152 | # HP Virtual Machine Group Management |
| hpvirtgrp | 5223/udp | 0.000000 | # HP Virtual Machine Group Management |
| hpvirtctrl | 5224/tcp | 0.000000 | # HP Virtual Machine Console Operations |
| hpvirtctrl | 5224/udp | 0.000000 | # HP Virtual Machine Console Operations |
| hp-server | 5225/tcp | 0.000760 | # HP Server |
| hp-server | 5225/udp | 0.000330 | # HP Server |
| hp-status | 5226/tcp | 0.000760 | # HP Status |
| hp-status | 5226/udp | 0.000000 | # HP Status |
| perfd | 5227/tcp | 0.000000 | # HP System Performance Metric Service |
| perfd | 5227/udp | 0.000330 | # HP System Performance Metric Service |
| hpvroom | 5228/tcp | 0.000000 | # HP Virtual Room Service |
| jaxflow | 5229/tcp | 0.000000 | # Netflow/IPFIX/sFlow Collector and Forwarder Management |
| jaxflow-data | 5230/tcp | 0.000000 | # JaxMP RealFlow application and protocol data |
| crusecontrol | 5231/tcp | 0.000000 | # Remote Control of Scan Software for Cruse Scanners |
| sgi-dgl | 5232/tcp | 0.000050 | # csedaemon | SGI Distributed Graphics | Cruse Scanning System Service |
| enfs | 5233/tcp | 0.000076 | # Etinnae Network File Service |
| eenet | 5234/tcp | 0.000076 | # EEnet communications |
| eenet | 5234/udp | 0.000330 | # EEnet communications |
| galaxy-network | 5235/tcp | 0.000076 | # Galaxy Network Service |
| galaxy-network | 5235/udp | 0.000000 | # Galaxy Network Service |
| padl2sim | 5236/tcp | 0.000000 | padl2sim 5236/tcp 0.000000 |
| padl2sim | 5236/udp | 0.000577 | padl2sim 5236/udp 0.000577 |
| mnet-discovery | 5237/tcp | 0.000000 | # m-net discovery |
| mnet-discovery | 5237/udp | 0.000000 | # m-net discovery |
| attune | 5242/tcp | 0.000152 | # ATTUne API |
| xycstatus | 5243/tcp | 0.000000 | # xyClient Status API and rendevous point |
| downtools | 5245/tcp | 0.000000 | # downtools-disc | DownTools Control Protocol | DownTools Discovery Protocol |
| downtools-disc | 5245/udp | 0.000330 | # DownTools Discovery Protocol |
| capwap-control | 5246/tcp | 0.000000 | # CAPWAP Control Protocol |
| capwap-control | 5246/udp | 0.000330 | # CAPWAP Control Protocol |
| capwap-data | 5247/tcp | 0.000000 | # CAPWAP Data Protocol |
| capwap-data | 5247/udp | 0.000000 | # CAPWAP Data Protocol |
| caacws | 5248/tcp | 0.000000 | # CA Access Control Web Service |
| caacws | 5248/udp | 0.000000 | # CA Access Control Web Service |
| caaclang2 | 5249/tcp | 0.000000 | # CA AC Lang Service |
| caaclang2 | 5249/udp | 0.000000 | # CA AC Lang Service |
| soagateway | 5250/tcp | 0.000076 | soagateway 5250/tcp 0.000076 |
| soagateway | 5250/udp | 0.000000 | # soaGateway |
| caevms | 5251/tcp | 0.000000 | # CA eTrust VM Service |
| caevms | 5251/udp | 0.000000 | # CA eTrust VM Service |
| movaz-ssc | 5252/tcp | 0.000076 | # Movaz SSC |
| movaz-ssc | 5252/udp | 0.000000 | # Movaz SSC |
| kpdp | 5253/tcp | 0.000000 | # Kohler Power Device Protocol |
| logcabin | 5254/tcp | 0.000000 | # LogCabin storage service |
| 3com-njack-1 | 5264/tcp | 0.000000 | # 3Com Network Jack Port 1 |
| 3com-njack-1 | 5264/udp | 0.000330 | # 3Com Network Jack Port 1 |
| 3com-njack-2 | 5265/tcp | 0.000000 | # 3Com Network Jack Port 2 |
| 3com-njack-2 | 5265/udp | 0.000000 | # 3Com Network Jack Port 2 |
| xmpp-server | 5269/tcp | 0.000380 | # XMPP Server Connection |
| xmpp-server | 5269/udp | 0.000330 | # XMPP Server Connection |
| xmp | 5270/tcp | 0.000000 | # cartographerxmp | Cartographer XMP |
| xmp | 5270/udp | 0.000000 | # Cartographer XMP |
| cuelink | 5271/tcp | 0.000000 | # cuelink-disc | StageSoft CueLink messaging | StageSoft CueLink discovery |
| cuelink-disc | 5271/udp | 0.000330 | # StageSoft CueLink discovery |
| pk | 5272/tcp | 0.000000 | pk 5272/tcp 0.000000 |
| pk | 5272/udp | 0.000330 | # PK |
| xmpp-bosh | 5280/tcp | 0.000304 | # Bidirectional-streams Over Synchronous HTTP (BOSH) |
| undo-lm | 5281/tcp | 0.000000 | # Undo License Manager |
| transmit-port | 5282/tcp | 0.000000 | # Marimba Transmitter Port |
| transmit-port | 5282/udp | 0.000000 | # Marimba Transmitter Port |
| presence | 5298/tcp | 0.000304 | # XMPP Link-Local Messaging |
| presence | 5298/udp | 0.000000 | # XMPP Link-Local Messaging |
| nlg-data | 5299/tcp | 0.000000 | # NLG Data Service |
| nlg-data | 5299/udp | 0.000000 | # NLG Data Service |
| hacl-hb | 5300/tcp | 0.000050 | # HA cluster heartbeat |
| hacl-hb | 5300/udp | 0.000412 | # HA cluster heartbeat |
| hacl-gs | 5301/tcp | 0.000025 | # HA cluster general services |
| hacl-gs | 5301/udp | 0.000511 | # HA cluster general services |
| hacl-cfg | 5302/tcp | 0.000025 | # HA cluster configuration |
| hacl-cfg | 5302/udp | 0.000511 | # HA cluster configuration |
| hacl-probe | 5303/tcp | 0.000013 | # HA cluster probing |
| hacl-probe | 5303/udp | 0.000395 | # HA cluster probing |
| hacl-local | 5304/tcp | 0.000000 | # HA Cluster Commands |
| hacl-local | 5304/udp | 0.000692 | hacl-local 5304/udp 0.000692 |
| hacl-test | 5305/tcp | 0.000000 | # HA Cluster Test |
| hacl-test | 5305/udp | 0.000412 | hacl-test 5305/udp 0.000412 |
| sun-mc-grp | 5306/tcp | 0.000000 | # Sun MC Group |
| sun-mc-grp | 5306/udp | 0.000000 | # Sun MC Group |
| sco-aip | 5307/tcp | 0.000000 | # SCO AIP |
| sco-aip | 5307/udp | 0.000000 | # SCO AIP |
| cfengine | 5308/tcp | 0.000075 | cfengine 5308/tcp 0.000075 |
| cfengine | 5308/udp | 0.001021 | cfengine 5308/udp 0.001021 |
| jprinter | 5309/tcp | 0.000000 | # J Printer |
| jprinter | 5309/udp | 0.000330 | # J Printer |
| outlaws | 5310/tcp | 0.000000 | outlaws 5310/tcp 0.000000 |
| outlaws | 5310/udp | 0.000000 | # Outlaws |
| permabit-cs | 5312/tcp | 0.000000 | # Permabit Client-Server |
| permabit-cs | 5312/udp | 0.000000 | # Permabit Client-Server |
| rrdp | 5313/tcp | 0.000000 | # Real-time & Reliable Data |
| rrdp | 5313/udp | 0.000000 | # Real-time & Reliable Data |
| opalis-rbt-ipc | 5314/tcp | 0.000000 | opalis-rbt-ipc 5314/tcp 0.000000 |
| opalis-rbt-ipc | 5314/udp | 0.000000 | opalis-rbt-ipc 5314/udp 0.000000 |
| hacl-poll | 5315/tcp | 0.000000 | # HA Cluster UDP Polling |
| hacl-poll | 5315/udp | 0.000000 | # HA Cluster UDP Polling |
| hpdevms | 5316/tcp | 0.000000 | # hpbladems | HP Device Monitor Service | HPBladeSystem Monitor Service |
| hpdevms | 5316/udp | 0.000000 | # HP Device Monitor Service |
| hpdevms | 5317/tcp | 0.000000 | # HP Device Monitor Service |
| pkix-cmc | 5318/tcp | 0.000000 | # PKIX Certificate Management using CMS (CMC) |
| bsfserver-zn | 5320/tcp | 0.000000 | # Webservices-based Zn interface of BSF |
| bsfsvr-zn-ssl | 5321/tcp | 0.000000 | # Webservices-based Zn interface of BSF over SSL |
| kfserver | 5343/tcp | 0.000000 | # Sculptor Database Server |
| kfserver | 5343/udp | 0.000330 | # Sculptor Database Server |
| xkotodrcp | 5344/tcp | 0.000000 | # xkoto DRCP |
| xkotodrcp | 5344/udp | 0.000000 | # xkoto DRCP |
| stuns | 5349/tcp | 0.000000 | # stun-behaviors | turns | STUN over TLS | STUN over DTLS | TURN over TLS | TURN over DTLS | STUN Behavior Discovery over TLS | Reserved for a future enhancement of STUN-BEHAVIOR | Session Traversal Utilities for NAT (STUN) port |
| stuns | 5349/udp | 0.000000 | # Reserved for a future enhancement of STUN |
| nat-pmp-status | 5350/tcp | 0.000000 | # pcp-multicast | NAT-PMP Status Announcements | Port Control Protocol Multicast |
| nat-pmp-status | 5350/udp | 0.000000 | # NAT-PMP Status Announcements |
| nat-pmp | 5351/tcp | 0.000000 | # pcp | NAT Port Mapping Protocol | Port Control Protocol |
| nat-pmp | 5351/udp | 0.003304 | nat-pmp 5351/udp 0.003304 |
| dns-llq | 5352/tcp | 0.000000 | # DNS Long-Lived Queries |
| dns-llq | 5352/udp | 0.000330 | # DNS Long-Lived Queries |
| mdns | 5353/tcp | 0.000152 | # Multicast DNS |
| zeroconf | 5353/udp | 0.100166 | # Mac OS X Bonjour/Zeroconf port |
| mdnsresponder | 5354/tcp | 0.000000 | # Multicast DNS Responder IPC |
| mdnsresponder | 5354/udp | 0.000661 | # Multicast DNS Responder IPC |
| llmnr | 5355/tcp | 0.000000 | llmnr 5355/tcp 0.000000 |
| llmnr | 5355/udp | 0.006938 | # LLMNR |
| ms-smlbiz | 5356/tcp | 0.000000 | # Microsoft Small Business |
| ms-smlbiz | 5356/udp | 0.000000 | # Microsoft Small Business |
| wsdapi | 5357/tcp | 0.005474 | # Web Services for Devices |
| wsdapi | 5357/udp | 0.000661 | # Web Services for Devices |
| wsdapi-s | 5358/tcp | 0.000000 | # WS for Devices Secured |
| wsdapi-s | 5358/udp | 0.000000 | # WS for Devices Secured |
| ms-alerter | 5359/tcp | 0.000000 | # Microsoft Alerter |
| ms-alerter | 5359/udp | 0.000000 | # Microsoft Alerter |
| ms-sideshow | 5360/tcp | 0.000000 | # Protocol for Windows SideShow |
| ms-sideshow | 5360/udp | 0.000000 | # Protocol for Windows SideShow |
| ms-s-sideshow | 5361/tcp | 0.000000 | # Secure Protocol for Windows SideShow |
| ms-s-sideshow | 5361/udp | 0.000000 | # Secure Protocol for Windows SideShow |
| serverwsd2 | 5362/tcp | 0.000000 | # Microsoft Windows Server WSD2 Service |
| serverwsd2 | 5362/udp | 0.000000 | # Microsoft Windows Server WSD2 Service |
| net-projection | 5363/tcp | 0.000000 | # Windows Network Projection |
| net-projection | 5363/udp | 0.000000 | # Windows Network Projection |
| kdnet | 5364/tcp | 0.000000 | # Microsoft Kernel Debugger |
| stresstester | 5397/tcp | 0.000000 | # StressTester(tm) Injector |
| stresstester | 5397/udp | 0.000000 | # StressTester(tm) Injector |
| elektron-admin | 5398/tcp | 0.000000 | # Elektron Administration |
| elektron-admin | 5398/udp | 0.000330 | # Elektron Administration |
| securitychase | 5399/tcp | 0.000000 | securitychase 5399/tcp 0.000000 |
| securitychase | 5399/udp | 0.000000 | # SecurityChase |
| pcduo-old | 5400/tcp | 0.000050 | # excerpt | RemCon PC-Duo - old port | Excerpt Search |
| excerpt | 5400/udp | 0.000330 | # Excerpt Search |
| excerpts | 5401/tcp | 0.000000 | # Excerpt Search Secure |
| excerpts | 5401/udp | 0.000000 | # Excerpt Search Secure |
| mftp | 5402/tcp | 0.000000 | # OmniCast MFTP |
| mftp | 5402/udp | 0.000000 | # OmniCast MFTP |
| hpoms-ci-lstn | 5403/tcp | 0.000000 | hpoms-ci-lstn 5403/tcp 0.000000 |
| hpoms-ci-lstn | 5403/udp | 0.000000 | # HPOMS-CI-LSTN |
| hpoms-dps-lstn | 5404/tcp | 0.000000 | hpoms-dps-lstn 5404/tcp 0.000000 |
| hpoms-dps-lstn | 5404/udp | 0.000000 | # HPOMS-DPS-LSTN |
| pcduo | 5405/tcp | 0.000314 | # netsupport | RemCon PC-Duo - new port | NetSupport |
| netsupport | 5405/udp | 0.000000 | # NetSupport |
| systemics-sox | 5406/tcp | 0.000000 | # Systemics Sox |
| systemics-sox | 5406/udp | 0.000000 | # Systemics Sox |
| foresyte-clear | 5407/tcp | 0.000000 | foresyte-clear 5407/tcp 0.000000 |
| foresyte-clear | 5407/udp | 0.000000 | # Foresyte-Clear |
| foresyte-sec | 5408/tcp | 0.000000 | foresyte-sec 5408/tcp 0.000000 |
| foresyte-sec | 5408/udp | 0.000330 | # Foresyte-Sec |
| salient-dtasrv | 5409/tcp | 0.000000 | # Salient Data Server |
| salient-dtasrv | 5409/udp | 0.000000 | # Salient Data Server |
| salient-usrmgr | 5410/tcp | 0.000000 | # Salient User Manager |
| salient-usrmgr | 5410/udp | 0.000000 | # Salient User Manager |
| actnet | 5411/tcp | 0.000000 | actnet 5411/tcp 0.000000 |
| actnet | 5411/udp | 0.000000 | # ActNet |
| continuus | 5412/tcp | 0.000000 | continuus 5412/tcp 0.000000 |
| continuus | 5412/udp | 0.000000 | # Continuus |
| wwiotalk | 5413/tcp | 0.000000 | wwiotalk 5413/tcp 0.000000 |
| wwiotalk | 5413/udp | 0.000000 | # WWIOTALK |
| statusd | 5414/tcp | 0.000380 | statusd 5414/tcp 0.000380 |
| statusd | 5414/udp | 0.000000 | # StatusD |
| ns-server | 5415/tcp | 0.000000 | # NS Server |
| ns-server | 5415/udp | 0.000000 | # NS Server |
| sns-gateway | 5416/tcp | 0.000000 | # SNS Gateway |
| sns-gateway | 5416/udp | 0.000000 | # SNS Gateway |
| sns-agent | 5417/tcp | 0.000000 | # SNS Agent |
| sns-agent | 5417/udp | 0.000000 | # SNS Agent |
| mcntp | 5418/tcp | 0.000000 | mcntp 5418/tcp 0.000000 |
| mcntp | 5418/udp | 0.000000 | # MCNTP |
| dj-ice | 5419/tcp | 0.000000 | dj-ice 5419/tcp 0.000000 |
| dj-ice | 5419/udp | 0.000000 | # DJ-ICE |
| cylink-c | 5420/tcp | 0.000000 | cylink-c 5420/tcp 0.000000 |
| cylink-c | 5420/udp | 0.000000 | # Cylink-C |
| netsupport2 | 5421/tcp | 0.000000 | # Net Support 2 |
| netsupport2 | 5421/udp | 0.000000 | # Net Support 2 |
| salient-mux | 5422/tcp | 0.000000 | # Salient MUX |
| salient-mux | 5422/udp | 0.000000 | # Salient MUX |
| virtualuser | 5423/tcp | 0.000076 | virtualuser 5423/tcp 0.000076 |
| virtualuser | 5423/udp | 0.000330 | # VIRTUALUSER |
| beyond-remote | 5424/tcp | 0.000000 | # Beyond Remote |
| beyond-remote | 5424/udp | 0.000330 | # Beyond Remote |
| br-channel | 5425/tcp | 0.000000 | # Beyond Remote Command Channel |
| br-channel | 5425/udp | 0.000000 | # Beyond Remote Command Channel |
| devbasic | 5426/tcp | 0.000000 | devbasic 5426/tcp 0.000000 |
| devbasic | 5426/udp | 0.000000 | # DEVBASIC |
| sco-peer-tta | 5427/tcp | 0.000000 | sco-peer-tta 5427/tcp 0.000000 |
| sco-peer-tta | 5427/udp | 0.000000 | # SCO-PEER-TTA |
| telaconsole | 5428/tcp | 0.000000 | telaconsole 5428/tcp 0.000000 |
| omid | 5428/udp | 0.000527 | # OpenMosix Info Dissemination |
| base | 5429/tcp | 0.000000 | # Billing and Accounting System Exchange |
| base | 5429/udp | 0.000000 | # Billing and Accounting System Exchange |
| radec-corp | 5430/tcp | 0.000000 | # RADEC CORP |
| radec-corp | 5430/udp | 0.000000 | # RADEC CORP |
| park-agent | 5431/tcp | 0.000684 | # PARK AGENT |
| park-agent | 5431/udp | 0.000000 | park-agent 5431/udp 0.000000 |
| postgresql | 5432/tcp | 0.004090 | # PostgreSQL database server | PostgreSQL Database |
| postgresql | 5432/udp | 0.000000 | # PostgreSQL Database |
| pyrrho | 5433/tcp | 0.000076 | # Pyrrho DBMS |
| pyrrho | 5433/udp | 0.000000 | # Pyrrho DBMS |
| sgi-arrayd | 5434/tcp | 0.000000 | # SGI Array Services Daemon |
| sgi-arrayd | 5434/udp | 0.000000 | # SGI Array Services Daemon |
| sceanics | 5435/tcp | 0.000000 | # SCEANICS situation and action notification |
| sceanics | 5435/udp | 0.000661 | # SCEANICS situation and action notification |
| pmip6-cntl | 5436/tcp | 0.000000 | pmip6-cntl 5436/tcp 0.000000 |
| pmip6-cntl | 5436/udp | 0.000000 | pmip6-cntl 5436/udp 0.000000 |
| pmip6-data | 5437/tcp | 0.000000 | pmip6-data 5437/tcp 0.000000 |
| pmip6-data | 5437/udp | 0.000000 | pmip6-data 5437/udp 0.000000 |
| spss | 5443/tcp | 0.000000 | # Pearson HTTPS |
| spss | 5443/udp | 0.000330 | # Pearson HTTPS |
| smbdirect | 5445/tcp | 0.000000 | # Server Message Block over Remote Direct Memory Access |
| tiepie | 5450/tcp | 0.000000 | # tiepie-disc | TiePie engineering data acquisition | TiePie engineering data acquisition (discovery) |
| surebox | 5453/tcp | 0.000000 | surebox 5453/tcp 0.000000 |
| surebox | 5453/udp | 0.000000 | # SureBox |
| apc-5454 | 5454/tcp | 0.000000 | # APC 5454 |
| apc-5454 | 5454/udp | 0.000000 | # APC 5454 |
| apc-5455 | 5455/tcp | 0.000000 | # APC 5455 |
| apc-5455 | 5455/udp | 0.000000 | # APC 5455 |
| apc-5456 | 5456/tcp | 0.000000 | # APC 5456 |
| apc-5456 | 5456/udp | 0.000000 | # APC 5456 |
| silkmeter | 5461/tcp | 0.000000 | silkmeter 5461/tcp 0.000000 |
| silkmeter | 5461/udp | 0.000000 | # SILKMETER |
| ttl-publisher | 5462/tcp | 0.000000 | # TTL Publisher |
| ttl-publisher | 5462/udp | 0.000000 | # TTL Publisher |
| ttlpriceproxy | 5463/tcp | 0.000000 | # TTL Price Proxy |
| ttlpriceproxy | 5463/udp | 0.000000 | # TTL Price Proxy |
| quailnet | 5464/tcp | 0.000000 | # Quail Networks Object Broker |
| quailnet | 5464/udp | 0.000000 | # Quail Networks Object Broker |
| netops-broker | 5465/tcp | 0.000000 | netops-broker 5465/tcp 0.000000 |
| netops-broker | 5465/udp | 0.000000 | # NETOPS-BROKER |
| apsolab-col | 5470/tcp | 0.000000 | # The Apsolab company's data collection protocol (native api) |
| apsolab-cols | 5471/tcp | 0.000000 | # The Apsolab company's secure data collection protocol (native api) |
| apsolab-tag | 5472/tcp | 0.000000 | # The Apsolab company's dynamic tag protocol |
| apsolab-tags | 5473/tcp | 0.000076 | # The Apsolab company's secure dynamic tag protocol |
| apsolab-rpc | 5474/tcp | 0.000000 | # The Apsolab company's status query protocol |
| apsolab-data | 5475/tcp | 0.000076 | # The Apsolab company's data retrieval protocol |
| connect-proxy | 5490/tcp | 0.000013 | # Many HTTP CONNECT proxies |
| hotline | 5500/tcp | 0.000690 | # Hotline file sharing client/server | fcp-addr-srvr1 |
| securid | 5500/udp | 0.003295 | # SecurID |
| fcp-addr-srvr2 | 5501/tcp | 0.000152 | fcp-addr-srvr2 5501/tcp 0.000152 |
| fcp-addr-srvr2 | 5501/udp | 0.000000 | fcp-addr-srvr2 5501/udp 0.000000 |
| fcp-srvr-inst1 | 5502/tcp | 0.000076 | fcp-srvr-inst1 5502/tcp 0.000076 |
| fcp-srvr-inst1 | 5502/udp | 0.000000 | fcp-srvr-inst1 5502/udp 0.000000 |
| fcp-srvr-inst2 | 5503/tcp | 0.000000 | fcp-srvr-inst2 5503/tcp 0.000000 |
| fcp-srvr-inst2 | 5503/udp | 0.000000 | fcp-srvr-inst2 5503/udp 0.000000 |
| fcp-cics-gw1 | 5504/tcp | 0.000000 | fcp-cics-gw1 5504/tcp 0.000000 |
| fcp-cics-gw1 | 5504/udp | 0.000000 | fcp-cics-gw1 5504/udp 0.000000 |
| checkoutdb | 5505/tcp | 0.000000 | # Checkout Database |
| checkoutdb | 5505/udp | 0.000000 | # Checkout Database |
| amc | 5506/tcp | 0.000000 | # Amcom Mobile Connect |
| amc | 5506/udp | 0.000000 | # Amcom Mobile Connect |
| psl-management | 5507/tcp | 0.000000 | # PowerSysLab Electrical Management |
| secureidprop | 5510/tcp | 0.000339 | # ACE/Server services |
| sdlog | 5520/tcp | 0.000125 | # ACE/Server services |
| sdserv | 5530/tcp | 0.000038 | # ACE/Server services |
| sdreport | 5540/tcp | 0.000000 | # matter | ACE/Server services | Matter Operational Discovery and Communi |
| sdxauthd | 5540/udp | 0.000445 | # ACE/Server services |
| sdadmind | 5550/tcp | 0.000853 | # cbus | ACE/Server services | Model Railway control using the CBUS message protocol |
| sgi-eventmond | 5553/tcp | 0.000076 | # SGI Eventmond Port |
| sgi-eventmond | 5553/udp | 0.000000 | # SGI Eventmond Port |
| sgi-esphttp | 5554/tcp | 0.000076 | # SGI ESP HTTP |
| sgi-esphttp | 5554/udp | 0.000000 | # SGI ESP HTTP |
| freeciv | 5555/tcp | 0.001305 | # personal-agent | Personal Agent |
| rplay | 5555/udp | 0.001615 | rplay 5555/udp 0.001615 |
| freeciv | 5556/tcp | 0.000000 | # Freeciv gameplay |
| freeciv | 5556/udp | 0.000000 | # Freeciv gameplay |
| farenet | 5557/tcp | 0.000076 | # Sandlab FARENET |
| isqlplus | 5560/tcp | 0.000238 | # Oracle web enabled SQL interface (version 10g+) |
| hpe-dp-bura | 5565/tcp | 0.000000 | # dp-bura | HPE Advanced BURA | Data Protector BURA |
| westec-connect | 5566/tcp | 0.000608 | # Westec Connect |
| m-oap | 5567/tcp | 0.000000 | # dof-dps-mc-sec | Multicast Object Access Protocol | DOF Protocol Stack Multicast/Secure Transport |
| m-oap | 5567/udp | 0.000000 | # Multicast Object Access Protocol |
| sdt | 5568/tcp | 0.000000 | # Session Data Transport Multicast |
| sdt | 5568/udp | 0.000000 | # Session Data Transport Multicast |
| rdmnet-ctrl | 5569/tcp | 0.000000 | # rdmnet-device | PLASA E1.33, Remote Device Management (RDM) controller status notifications | PLASA E1.33, Remote Device Management (RDM) messages |
| sdmmp | 5573/tcp | 0.000000 | # SAS Domain Management Messaging Protocol |
| sdmmp | 5573/udp | 0.000000 | # SAS Domain Management Messaging Protocol |
| lsi-bobcat | 5574/tcp | 0.000000 | # SAS IO Forwarding |
| ora-oap | 5575/tcp | 0.000000 | # Oracle Access Protocol |
| fdtracks | 5579/tcp | 0.000000 | # FleetDisplay Tracking Service |
| tmosms0 | 5580/tcp | 0.000076 | # T-Mobile SMS Protocol Message 0 |
| tmosms0 | 5580/udp | 0.000330 | # T-Mobile SMS Protocol Message 0 |
| tmosms1 | 5581/tcp | 0.000076 | # T-Mobile SMS Protocol Message 1 |
| tmosms1 | 5581/udp | 0.000000 | # T-Mobile SMS Protocol Message 1 |
| fac-restore | 5582/tcp | 0.000000 | # T-Mobile SMS Protocol Message 3 |
| fac-restore | 5582/udp | 0.000000 | # T-Mobile SMS Protocol Message 3 |
| tmo-icon-sync | 5583/tcp | 0.000000 | # T-Mobile SMS Protocol Message 2 |
| tmo-icon-sync | 5583/udp | 0.000330 | # T-Mobile SMS Protocol Message 2 |
| bis-web | 5584/tcp | 0.000000 | # BeInSync-Web |
| bis-web | 5584/udp | 0.000000 | # BeInSync-Web |
| bis-sync | 5585/tcp | 0.000000 | # BeInSync-sync |
| bis-sync | 5585/udp | 0.000000 | # BeInSync-sync |
| att-mt-sms | 5586/tcp | 0.000000 | # Planning to send mobile terminated SMS to the specific port so that the SMS is not visible to the client |
| ininmessaging | 5597/tcp | 0.000000 | # inin secure messaging |
| ininmessaging | 5597/udp | 0.000000 | # inin secure messaging |
| mctfeed | 5598/tcp | 0.000000 | # MCT Market Data Feed |
| mctfeed | 5598/udp | 0.000000 | # MCT Market Data Feed |
| esinstall | 5599/tcp | 0.000000 | # Enterprise Security Remote Install |
| esinstall | 5599/udp | 0.000000 | # Enterprise Security Remote Install |
| esmmanager | 5600/tcp | 0.000000 | # Enterprise Security Manager |
| esmmanager | 5600/udp | 0.000000 | # Enterprise Security Manager |
| esmagent | 5601/tcp | 0.000000 | # Enterprise Security Agent |
| esmagent | 5601/udp | 0.000000 | # Enterprise Security Agent |
| a1-msc | 5602/tcp | 0.000000 | a1-msc 5602/tcp 0.000000 |
| a1-msc | 5602/udp | 0.000000 | # A1-MSC |
| a1-bs | 5603/tcp | 0.000000 | a1-bs 5603/tcp 0.000000 |
| a1-bs | 5603/udp | 0.000000 | # A1-BS |
| a3-sdunode | 5604/tcp | 0.000000 | a3-sdunode 5604/tcp 0.000000 |
| a3-sdunode | 5604/udp | 0.000000 | # A3-SDUNode |
| a4-sdunode | 5605/tcp | 0.000000 | a4-sdunode 5605/tcp 0.000000 |
| a4-sdunode | 5605/udp | 0.000000 | # A4-SDUNode |
| efr | 5618/tcp | 0.000000 | # Fiscal Registering Protocol |
| ninaf | 5627/tcp | 0.000000 | # Node Initiated Network Association Forma |
| ninaf | 5627/udp | 0.000000 | # Node Initiated Network Association Forma |
| htrust | 5628/tcp | 0.000000 | # HTrust API |
| htrust | 5628/udp | 0.000000 | # HTrust API |
| symantec-sfdb | 5629/tcp | 0.000000 | # Symantec Storage Foundation for Database |
| symantec-sfdb | 5629/udp | 0.000661 | # Symantec Storage Foundation for Database |
| precise-comm | 5630/tcp | 0.000000 | # PreciseCommunication |
| precise-comm | 5630/udp | 0.000330 | # PreciseCommunication |
| pcanywheredata | 5631/tcp | 0.006248 | pcanywheredata 5631/tcp 0.006248 |
| pcanywheredata | 5631/udp | 0.000000 | # pcANYWHEREdata |
| pcanywherestat | 5632/tcp | 0.000075 | pcanywherestat 5632/tcp 0.000075 |
| pcanywherestat | 5632/udp | 0.007694 | pcanywherestat 5632/udp 0.007694 |
| beorl | 5633/tcp | 0.000380 | # BE Operations Request Listener |
| beorl | 5633/udp | 0.000330 | # BE Operations Request Listener |
| xprtld | 5634/tcp | 0.000000 | # SF Message Service |
| xprtld | 5634/udp | 0.000330 | # SF Message Service |
| sfmsso | 5635/tcp | 0.000000 | # SFM Authentication Subsystem |
| sfm-db-server | 5636/tcp | 0.000000 | # SFMdb - SFM DB server |
| cssc | 5637/tcp | 0.000000 | # Symantec CSSC |
| flcrs | 5638/tcp | 0.000000 | # Symantec Fingerprint Lookup and Container Reference Service |
| ics | 5639/tcp | 0.000000 | # Symantec Integrity Checking Service |
| vfmobile | 5646/tcp | 0.000000 | # Ventureforth Mobile |
| nrpe | 5666/tcp | 0.006614 | # Nagios NRPE | Nagios Remote Plugin Executor |
| filemq | 5670/tcp | 0.000000 | # zre-disc | ZeroMQ file publish-subscribe protocol | Local area discovery and messaging over ZeroMQ |
| amqps | 5671/tcp | 0.000000 | # amqp protocol over TLS/SSL |
| amqps | 5671/udp | 0.000000 | # amqp protocol over TLS/SSL |
| amqp | 5672/sctp | 0.000000 | amqp 5672/sctp 0.000000 |
| amqp | 5672/tcp | 0.000076 | # AMQP |
| amqp | 5672/udp | 0.000000 | # AMQP |
| jms | 5673/tcp | 0.000000 | # JACL Message Server |
| jms | 5673/udp | 0.000000 | # JACL Message Server |
| hyperscsi-port | 5674/tcp | 0.000000 | # HyperSCSI Port |
| hyperscsi-port | 5674/udp | 0.000000 | # HyperSCSI Port |
| v5ua | 5675/sctp | 0.000000 | # V5UA application port |
| v5ua | 5675/tcp | 0.000000 | # V5UA application port |
| v5ua | 5675/udp | 0.000000 | # V5UA application port |
| raadmin | 5676/tcp | 0.000000 | # RA Administration |
| raadmin | 5676/udp | 0.000000 | # RA Administration |
| questdb2-lnchr | 5677/tcp | 0.000000 | # Quest Central DB2 Launchr |
| questdb2-lnchr | 5677/udp | 0.000000 | # Quest Central DB2 Launchr |
| rrac | 5678/tcp | 0.000228 | # Remote Replication Agent Connection |
| rrac | 5678/udp | 0.000000 | # Remote Replication Agent Connection |
| activesync | 5679/tcp | 0.000590 | # dccm | Microsoft ActiveSync PDY synchronization | Direct Cable Connect Manager |
| dccm | 5679/udp | 0.000000 | # Direct Cable Connect Manager |
| canna | 5680/tcp | 0.000151 | # auriga-router | Canna (Japanese Input) | Auriga Router Service |
| auriga-router | 5680/udp | 0.000000 | # Auriga Router Service |
| ncxcp | 5681/tcp | 0.000000 | # Net-coneX Control Protocol |
| ncxcp | 5681/udp | 0.000000 | # Net-coneX Control Protocol |
| brightcore | 5682/tcp | 0.000000 | # BrightCore control & data transfer exchange |
| brightcore | 5682/udp | 0.000330 | # BrightCore control & data transfer exchange |
| coap | 5683/tcp | 0.000000 | # Constrained Application Protocol | Constrained Application Protocol (CoAP) |
| coap | 5683/udp | 0.000330 | # Constrained Application Protocol |
| coaps | 5684/tcp | 0.000000 | # DTLS-secured CoAP | Constrained Application Protocol (CoAP) |
| coaps | 5684/udp | 0.000330 | # DTLS-secured Constrained Application Protocol |
| gog-multiplayer | 5687/tcp | 0.000000 | # GOG multiplayer game protocol |
| ggz | 5688/tcp | 0.000000 | # GGZ Gaming Zone |
| ggz | 5688/udp | 0.000000 | # GGZ Gaming Zone |
| qmvideo | 5689/tcp | 0.000000 | # QM video network management protocol |
| qmvideo | 5689/udp | 0.000330 | # QM video network management protocol |
| rbsystem | 5693/tcp | 0.000000 | # Robert Bosch Data Transfer |
| kmip | 5696/tcp | 0.000000 | # Key Management Interoperability Protocol |
| supportassist | 5700/tcp | 0.000000 | # Dell SupportAssist data center management |
| storageos | 5705/tcp | 0.000000 | # StorageOS REST API |
| proshareaudio | 5713/tcp | 0.000013 | # proshare conf audio |
| proshareaudio | 5713/udp | 0.000511 | # proshare conf audio |
| prosharevideo | 5714/tcp | 0.000013 | # proshare conf video |
| prosharevideo | 5714/udp | 0.000297 | # proshare conf video |
| prosharedata | 5715/tcp | 0.000000 | # proshare conf data |
| prosharedata | 5715/udp | 0.000395 | # proshare conf data |
| prosharerequest | 5716/tcp | 0.000000 | # proshare conf request |
| prosharerequest | 5716/udp | 0.000445 | # proshare conf request |
| prosharenotify | 5717/tcp | 0.000013 | # proshare conf notify |
| prosharenotify | 5717/udp | 0.000593 | # proshare conf notify |
| dpm | 5718/tcp | 0.000380 | # DPM Communication Server |
| dpm | 5718/udp | 0.000330 | # DPM Communication Server |
| dpm-agent | 5719/tcp | 0.000000 | # DPM Agent Coordinator |
| dpm-agent | 5719/udp | 0.000000 | # DPM Agent Coordinator |
| ms-licensing | 5720/tcp | 0.000000 | ms-licensing 5720/tcp 0.000000 |
| ms-licensing | 5720/udp | 0.000000 | # MS-Licensing |
| dtpt | 5721/tcp | 0.000076 | # Desktop Passthru Service |
| dtpt | 5721/udp | 0.000000 | # Desktop Passthru Service |
| msdfsr | 5722/tcp | 0.000076 | # Microsoft DFS Replication Service |
| msdfsr | 5722/udp | 0.000000 | # Microsoft DFS Replication Service |
| omhs | 5723/tcp | 0.000076 | # Operations Manager - Health Service |
| omhs | 5723/udp | 0.000000 | # Operations Manager - Health Service |
| omsdk | 5724/tcp | 0.000000 | # Operations Manager - SDK Service |
| omsdk | 5724/udp | 0.000000 | # Operations Manager - SDK Service |
| ms-ilm | 5725/tcp | 0.000000 | # Microsoft Identity Lifecycle Manager |
| ms-ilm-sts | 5726/tcp | 0.000000 | # Microsoft Lifecycle Manager Secure Token Service |
| asgenf | 5727/tcp | 0.000000 | # ASG Event Notification Framework |
| io-dist-data | 5728/tcp | 0.000000 | # io-dist-group | Dist. I/O Comm. Service Data and Control | Dist. I/O Comm. Service Group Membership |
| io-dist-group | 5728/udp | 0.000000 | # Dist. I/O Comm. Service Group Membership |
| openmail | 5729/tcp | 0.000000 | # Openmail User Agent Layer |
| openmail | 5729/udp | 0.000000 | # Openmail User Agent Layer |
| unieng | 5730/tcp | 0.000228 | # Steltor's calendar access |
| unieng | 5730/udp | 0.000000 | # Steltor's calendar access |
| ida-discover1 | 5741/tcp | 0.000000 | # IDA Discover Port 1 |
| ida-discover1 | 5741/udp | 0.000000 | # IDA Discover Port 1 |
| ida-discover2 | 5742/tcp | 0.000000 | # IDA Discover Port 2 |
| ida-discover2 | 5742/udp | 0.000000 | # IDA Discover Port 2 |
| watchdoc-pod | 5743/tcp | 0.000000 | # Watchdoc NetPOD Protocol |
| watchdoc-pod | 5743/udp | 0.000000 | # Watchdoc NetPOD Protocol |
| watchdoc | 5744/tcp | 0.000000 | # Watchdoc Server |
| watchdoc | 5744/udp | 0.000000 | # Watchdoc Server |
| fcopy-server | 5745/tcp | 0.000000 | fcopy-server 5745/tcp 0.000000 |
| fcopy-server | 5745/udp | 0.000000 | fcopy-server 5745/udp 0.000000 |
| fcopys-server | 5746/tcp | 0.000000 | fcopys-server 5746/tcp 0.000000 |
| fcopys-server | 5746/udp | 0.000000 | fcopys-server 5746/udp 0.000000 |
| tunatic | 5747/tcp | 0.000000 | # Wildbits Tunatic |
| tunatic | 5747/udp | 0.000000 | # Wildbits Tunatic |
| tunalyzer | 5748/tcp | 0.000000 | # Wildbits Tunalyzer |
| tunalyzer | 5748/udp | 0.000000 | # Wildbits Tunalyzer |
| rscd | 5750/tcp | 0.000000 | # Bladelogic Agent Service |
| rscd | 5750/udp | 0.000000 | # Bladelogic Agent Service |
| openmailg | 5755/tcp | 0.000000 | # OpenMail Desk Gateway server |
| openmailg | 5755/udp | 0.000000 | # OpenMail Desk Gateway server |
| x500ms | 5757/tcp | 0.000000 | # OpenMail X.500 Directory Server |
| x500ms | 5757/udp | 0.000000 | # OpenMail X.500 Directory Server |
| openmailns | 5766/tcp | 0.000000 | # OpenMail NewMail Server |
| openmailns | 5766/udp | 0.000000 | # OpenMail NewMail Server |
| s-openmail | 5767/tcp | 0.000000 | # OpenMail Suer Agent Layer (Secure) |
| s-openmail | 5767/udp | 0.000000 | # OpenMail Suer Agent Layer (Secure) |
| openmailpxy | 5768/tcp | 0.000000 | # OpenMail CMTS Server |
| openmailpxy | 5768/udp | 0.000000 | # OpenMail CMTS Server |
| spramsca | 5769/tcp | 0.000000 | # x509solutions Internal CA |
| spramsca | 5769/udp | 0.000000 | # x509solutions Internal CA |
| spramsd | 5770/tcp | 0.000000 | # x509solutions Secure Data |
| spramsd | 5770/udp | 0.000330 | # x509solutions Secure Data |
| netagent | 5771/tcp | 0.000000 | netagent 5771/tcp 0.000000 |
| netagent | 5771/udp | 0.000000 | # NetAgent |
| dali-port | 5777/tcp | 0.000000 | # starfield-io | DALI Port | Control commands and responses |
| dali-port | 5777/udp | 0.000000 | # DALI Port |
| vts-rpc | 5780/tcp | 0.000000 | # Visual Tag System RPC |
| 3par-evts | 5781/tcp | 0.000000 | # 3PAR Event Reporting Service |
| 3par-evts | 5781/udp | 0.000000 | # 3PAR Event Reporting Service |
| 3par-mgmt | 5782/tcp | 0.000000 | # 3PAR Management Service |
| 3par-mgmt | 5782/udp | 0.000000 | # 3PAR Management Service |
| 3par-mgmt-ssl | 5783/tcp | 0.000000 | # 3PAR Management Service with SSL |
| 3par-mgmt-ssl | 5783/udp | 0.000000 | # 3PAR Management Service with SSL |
| ibar | 5784/tcp | 0.000000 | # Cisco Interbox Application Redundancy |
| ibar | 5784/udp | 0.000000 | # Cisco Interbox Application Redundancy |
| 3par-rcopy | 5785/tcp | 0.000000 | # 3PAR Inform Remote Copy |
| 3par-rcopy | 5785/udp | 0.000000 | # 3PAR Inform Remote Copy |
| cisco-redu | 5786/tcp | 0.000000 | # redundancy notification |
| cisco-redu | 5786/udp | 0.000000 | # redundancy notification |
| waascluster | 5787/tcp | 0.000000 | # Cisco WAAS Cluster Protocol |
| xtreamx | 5793/tcp | 0.000000 | # XtreamX Supervised Peer message |
| xtreamx | 5793/udp | 0.000330 | # XtreamX Supervised Peer message |
| spdp | 5794/tcp | 0.000000 | # Simple Peered Discovery Protocol |
| spdp | 5794/udp | 0.000330 | # Simple Peered Discovery Protocol |
| enlabel-dpl | 5798/tcp | 0.000000 | # Proprietary Website deployment service |
| vnc-http | 5800/tcp | 0.005947 | # Virtual Network Computer HTTP Access, display 0 |
| vnc-http-1 | 5801/tcp | 0.000841 | # Virtual Network Computer HTTP Access, display 1 |
| vnc-http-2 | 5802/tcp | 0.000276 | # Virtual Network Computer HTTP Access, display 2 |
| vnc-http-3 | 5803/tcp | 0.000125 | # Virtual Network Computer HTTP Access, display 3 |
| icmpd | 5813/tcp | 0.000000 | icmpd 5813/tcp 0.000000 |
| icmpd | 5813/udp | 0.000000 | # ICMPD |
| spt-automation | 5814/tcp | 0.000076 | # Support Automation |
| spt-automation | 5814/udp | 0.000000 | # Support Automation |
| autopassdaemon | 5820/tcp | 0.000076 | # AutoPass licensing |
| shiprush-d-ch | 5841/tcp | 0.000000 | # Z-firm ShipRush interface for web access and bidirectional data |
| reversion | 5842/tcp | 0.000000 | # Reversion Backup/Restore |
| wherehoo | 5859/tcp | 0.000304 | wherehoo 5859/tcp 0.000304 |
| wherehoo | 5859/udp | 0.000000 | # WHEREHOO |
| ppsuitemsg | 5863/tcp | 0.000000 | # PlanetPress Suite Messeng |
| ppsuitemsg | 5863/udp | 0.000000 | # PlanetPress Suite Messeng |
| diameters | 5868/tcp | 0.000152 | # Diameter over TLS/TCP | Diameter over DTLS/SCTP |
| jute | 5883/tcp | 0.000000 | # Javascript Unit Test Environment |
| vnc | 5900/tcp | 0.023560 | # rfb | Virtual Network Computer display 0 | Remote Framebuffer |
| rfb | 5900/udp | 0.000661 | # Remote Framebuffer |
| vnc-1 | 5901/tcp | 0.002145 | # Virtual Network Computer display 1 |
| vnc-2 | 5902/tcp | 0.000715 | # Virtual Network Computer display 2 |
| vnc-3 | 5903/tcp | 0.000326 | # ff-ice | Virtual Network Computer display 3 | Flight & Flow Info for Collaborative Env |
| ag-swim | 5904/tcp | 0.000304 | # Air-Ground SWIM |
| asmgcs | 5905/tcp | 0.000152 | # Adv Surface Mvmnt and Guidance Cont Sys |
| rpas-c2 | 5906/tcp | 0.000228 | # Remotely Piloted Vehicle C&C |
| dsd | 5907/tcp | 0.000228 | # Distress and Safety Data App |
| ipsma | 5908/tcp | 0.000076 | # IPS Management Application |
| agma | 5909/tcp | 0.000152 | # Air-ground media advisory |
| cm | 5910/tcp | 0.000380 | # ats-atn | Context Management | Air Traffic Services applications using ATN |
| cm | 5910/udp | 0.000000 | # Context Management |
| cpdlc | 5911/tcp | 0.000380 | # ats-acars | Controller Pilot Data Link Communication | Air Traffic Services applications using ACARS |
| cpdlc | 5911/udp | 0.000000 | # Controller Pilot Data Link Communication |
| fis | 5912/tcp | 0.000076 | # ais-met | Flight Information Services | Aeronautical Information Service/Meteorological applications using ACARS |
| fis | 5912/udp | 0.000000 | # Flight Information Services |
| ads-c | 5913/tcp | 0.000000 | # aoc-acars | Automatic Dependent Surveillance | Airline operational communications applications using ACARS |
| ads-c | 5913/udp | 0.000000 | # Automatic Dependent Surveillance |
| teamviewer | 5938/tcp | 0.000152 | # teamviewer - http://www.teamviewer.com/en/help/334-Which-ports-are-used-by-TeamViewer.aspx |
| indy | 5963/tcp | 0.000304 | # Indy Application Server |
| indy | 5963/udp | 0.000000 | # Indy Application Server |
| mppolicy-v5 | 5968/tcp | 0.000152 | mppolicy-v5 5968/tcp 0.000152 |
| mppolicy-v5 | 5968/udp | 0.000000 | mppolicy-v5 5968/udp 0.000000 |
| mppolicy-mgr | 5969/tcp | 0.000076 | mppolicy-mgr 5969/tcp 0.000076 |
| mppolicy-mgr | 5969/udp | 0.000000 | mppolicy-mgr 5969/udp 0.000000 |
| ncd-pref-tcp | 5977/tcp | 0.000075 | # NCD preferences tcp port |
| ncd-diag-tcp | 5978/tcp | 0.000050 | # NCD diagnostic tcp port |
| ncd-conf-tcp | 5979/tcp | 0.000000 | # NCD configuration tcp port |
| couchdb | 5984/tcp | 0.000000 | couchdb 5984/tcp 0.000000 |
| couchdb | 5984/udp | 0.000000 | # CouchDB |
| wsman | 5985/tcp | 0.000076 | # WBEM WS-Management HTTP |
| wsman | 5985/udp | 0.000000 | # WBEM WS-Management HTTP |
| wsmans | 5986/tcp | 0.000076 | # WBEM WS-Management HTTP over TLS/SSL |
| wsmans | 5986/udp | 0.000000 | # WBEM WS-Management HTTP over TLS/SSL |
| wbem-rmi | 5987/tcp | 0.000380 | # WBEM RMI |
| wbem-rmi | 5987/udp | 0.000000 | # WBEM RMI |
| wbem-http | 5988/tcp | 0.000380 | # WBEM CIM-XML (HTTP) |
| wbem-http | 5988/udp | 0.000000 | # WBEM CIM-XML (HTTP) |
| wbem-https | 5989/tcp | 0.000380 | # WBEM CIM-XML (HTTPS) |
| wbem-https | 5989/udp | 0.000000 | # WBEM CIM-XML (HTTPS) |
| wbem-exp-https | 5990/tcp | 0.000000 | # WBEM Export HTTPS |
| wbem-exp-https | 5990/udp | 0.000000 | # WBEM Export HTTPS |
| nuxsl | 5991/tcp | 0.000000 | nuxsl 5991/tcp 0.000000 |
| nuxsl | 5991/udp | 0.000000 | # NUXSL |
| consul-insight | 5992/tcp | 0.000000 | # Consul InSight Security |
| consul-insight | 5992/udp | 0.000000 | # Consul InSight Security |
| cim-rs | 5993/tcp | 0.000000 | # DMTF WBEM CIM REST |
| rms-agent | 5994/tcp | 0.000000 | # RMS Agent Listening Service |
| ncd-pref | 5997/tcp | 0.000025 | # NCD preferences telnet port |
| ncd-diag | 5998/tcp | 0.000163 | # NCD diagnostic telnet port |
| ncd-conf | 5999/tcp | 0.000213 | # cvsup | NCD configuration telnet port | CVSup |
| cvsup | 5999/udp | 0.000000 | # CVSup |
| X11 | 6000/tcp | 0.005683 | # X Window server |
| X11 | 6000/udp | 0.003304 | X11 6000/udp 0.003304 |
| X11:1 | 6001/udp | 0.004625 | X11:1 6001/udp 0.004625 |
| X11:2 | 6002/udp | 0.001652 | X11:2 6002/udp 0.001652 |
| X11:3 | 6003/udp | 0.000000 | X11:3 6003/udp 0.000000 |
| X11:4 | 6004/udp | 0.002973 | X11:4 6004/udp 0.002973 |
| X11:5 | 6005/udp | 0.000000 | X11:5 6005/udp 0.000000 |
| X11:6 | 6006/udp | 0.000000 | X11:6 6006/udp 0.000000 |
| X11:7 | 6007/udp | 0.000000 | X11:7 6007/udp 0.000000 |
| X11:8 | 6008/udp | 0.000000 | X11:8 6008/udp 0.000000 |
| X11:9 | 6009/udp | 0.000000 | X11:9 6009/udp 0.000000 |
| xmail-ctrl | 6017/tcp | 0.000088 | # XMail CTRL server |
| arcserve | 6050/tcp | 0.000100 | # ARCserve agent |
| X11:59 | 6059/udp | 0.000000 | X11:59 6059/udp 0.000000 |
| ndl-ahp-svc | 6064/tcp | 0.000000 | ndl-ahp-svc 6064/tcp 0.000000 |
| ndl-ahp-svc | 6064/udp | 0.000000 | # NDL-AHP-SVC |
| winpharaoh | 6065/tcp | 0.000076 | winpharaoh 6065/tcp 0.000076 |
| winpharaoh | 6065/udp | 0.000000 | # WinPharaoh |
| ewctsp | 6066/tcp | 0.000000 | ewctsp 6066/tcp 0.000000 |
| ewctsp | 6066/udp | 0.000000 | # EWCTSP |
| gsmp | 6068/tcp | 0.000152 | # gsmp-ancp | GSMP/ANCP |
| gsmp | 6068/udp | 0.000000 | # GSMP |
| trip | 6069/tcp | 0.000000 | trip 6069/tcp 0.000000 |
| trip | 6069/udp | 0.000000 | # TRIP |
| messageasap | 6070/tcp | 0.000000 | messageasap 6070/tcp 0.000000 |
| messageasap | 6070/udp | 0.000000 | # Messageasap |
| ssdtp | 6071/tcp | 0.000000 | ssdtp 6071/tcp 0.000000 |
| ssdtp | 6071/udp | 0.000000 | # SSDTP |
| diagnose-proc | 6072/tcp | 0.000000 | diagnose-proc 6072/tcp 0.000000 |
| diagnose-proc | 6072/udp | 0.000330 | # DIAGNOSE-PROC |
| directplay8 | 6073/tcp | 0.000000 | directplay8 6073/tcp 0.000000 |
| directplay8 | 6073/udp | 0.000000 | # DirectPlay8 |
| max | 6074/tcp | 0.000000 | # Microsoft Max |
| max | 6074/udp | 0.000000 | # Microsoft Max |
| dpm-acm | 6075/tcp | 0.000000 | # Microsoft DPM Access Control Manager |
| msft-dpm-cert | 6076/tcp | 0.000000 | # Microsoft DPM WCF Certificates |
| iconstructsrv | 6077/tcp | 0.000076 | # iConstruct Server |
| gue | 6080/tcp | 0.000000 | # Generic UDP Encapsulation |
| geneve | 6081/tcp | 0.000000 | # Generic Network Virtualization Encapsulation (Geneve) |
| p25cai | 6082/tcp | 0.000000 | # APCO Project 25 Common Air Interface - UDP encapsulation |
| miami-bcast | 6083/tcp | 0.000000 | # telecomsoftware miami broadcast |
| p2p-sip | 6084/tcp | 0.000000 | # reload-config | Peer to Peer Infrastructure Protocol | Peer to Peer Infrastructure Configuration |
| konspire2b | 6085/tcp | 0.000076 | # konspire2b p2p network |
| konspire2b | 6085/udp | 0.000000 | # konspire2b p2p network |
| pdtp | 6086/tcp | 0.000000 | # PDTP P2P |
| pdtp | 6086/udp | 0.000330 | # PDTP P2P |
| ldss | 6087/tcp | 0.000000 | # Local Download Sharing Service |
| ldss | 6087/udp | 0.000000 | # Local Download Sharing Service |
| doglms | 6088/tcp | 0.000000 | # doglms-notify | SuperDog License Manager | SuperDog License Manager Notifier |
| raxa-mgmt | 6099/tcp | 0.000000 | # RAXA Management |
| synchronet-db | 6100/tcp | 0.000228 | synchronet-db 6100/tcp 0.000228 |
| synchronet-db | 6100/udp | 0.000330 | # SynchroNet-db |
| backupexec | 6101/tcp | 0.000452 | # synchronet-rtc | Backup Exec UNIX and 95/98/ME Aent | SynchroNet-rtc |
| synchronet-rtc | 6101/udp | 0.000000 | # SynchroNet-rtc |
| synchronet-upd | 6102/tcp | 0.000000 | synchronet-upd 6102/tcp 0.000000 |
| synchronet-upd | 6102/udp | 0.000000 | # SynchroNet-upd |
| RETS-or-BackupExec | 6103/tcp | 0.000125 | # rets | Backup Exec Agent Accelerator and Remote Agent also sql server and cisco works blue | RETS |
| rets | 6103/udp | 0.000000 | # RETS |
| dbdb | 6104/tcp | 0.000000 | dbdb 6104/tcp 0.000000 |
| dbdb | 6104/udp | 0.000330 | # DBDB |
| isdninfo | 6105/tcp | 0.000075 | # primaserver | Prima Server |
| primaserver | 6105/udp | 0.000661 | # Prima Server |
| isdninfo | 6106/tcp | 0.000314 | # mpsserver | i4lmond | MPS Server |
| mpsserver | 6106/udp | 0.000000 | # MPS Server |
| etc-control | 6107/tcp | 0.000000 | # ETC Control |
| etc-control | 6107/udp | 0.000000 | # ETC Control |
| sercomm-scadmin | 6108/tcp | 0.000000 | sercomm-scadmin 6108/tcp 0.000000 |
| sercomm-scadmin | 6108/udp | 0.000000 | # Sercomm-SCAdmin |
| globecast-id | 6109/tcp | 0.000000 | globecast-id 6109/tcp 0.000000 |
| globecast-id | 6109/udp | 0.000000 | # GLOBECAST-ID |
| softcm | 6110/tcp | 0.000063 | # HP SoftBench CM |
| softcm | 6110/udp | 0.000824 | # HP SoftBench CM |
| spc | 6111/tcp | 0.000025 | # HP SoftBench Sub-Process Control |
| spc | 6111/udp | 0.001203 | # HP SoftBench Sub-Process Control |
| dtspc | 6112/tcp | 0.001656 | # dtspcd | CDE subprocess control | Desk-Top Sub-Process Control Daemon |
| dtspcd | 6112/udp | 0.000000 | # Desk-Top Sub-Process Control Daemon |
| dayliteserver | 6113/tcp | 0.000076 | # Daylite Server |
| wrspice | 6114/tcp | 0.000000 | # WRspice IPC Service |
| xic | 6115/tcp | 0.000076 | # Xic IPC Service |
| xtlserv | 6116/tcp | 0.000000 | # XicTools License Manager Service |
| daylitetouch | 6117/tcp | 0.000000 | # Daylite Touch Sync |
| tipc | 6118/tcp | 0.000000 | # Transparent Inter Process Communication |
| spdy | 6121/tcp | 0.000000 | # SPDY for a faster web |
| bex-webadmin | 6122/tcp | 0.000000 | # Backup Express Web Server |
| bex-webadmin | 6122/udp | 0.000330 | # Backup Express Web Server |
| backup-express | 6123/tcp | 0.000380 | # Backup Express |
| backup-express | 6123/udp | 0.000330 | # Backup Express |
| pnbs | 6124/tcp | 0.000000 | # Phlexible Network Backup Service |
| pnbs | 6124/udp | 0.000000 | # Phlexible Network Backup Service |
| damewaremobgtwy | 6130/tcp | 0.000000 | # The DameWare Mobile Gateway Service |
| nbt-wol | 6133/tcp | 0.000000 | # New Boundary Tech WOL |
| nbt-wol | 6133/udp | 0.000000 | # New Boundary Tech WOL |
| pulsonixnls | 6140/tcp | 0.000000 | # Pulsonix Network License Service |
| pulsonixnls | 6140/udp | 0.000000 | # Pulsonix Network License Service |
| meta-corp | 6141/tcp | 0.000013 | # Meta Corporation License Manager |
| meta-corp | 6141/udp | 0.000577 | # Meta Corporation License Manager |
| aspentec-lm | 6142/tcp | 0.000025 | # Aspen Technology License Manager |
| aspentec-lm | 6142/udp | 0.000527 | # Aspen Technology License Manager |
| watershed-lm | 6143/tcp | 0.000038 | # Watershed License Manager |
| watershed-lm | 6143/udp | 0.000643 | # Watershed License Manager |
| statsci1-lm | 6144/tcp | 0.000000 | # StatSci License Manager - 1 |
| statsci1-lm | 6144/udp | 0.000923 | # StatSci License Manager - 1 |
| statsci2-lm | 6145/tcp | 0.000025 | # StatSci License Manager - 2 |
| statsci2-lm | 6145/udp | 0.000807 | # StatSci License Manager - 2 |
| lonewolf-lm | 6146/tcp | 0.000025 | # Lone Wolf Systems License Manager |
| lonewolf-lm | 6146/udp | 0.001071 | # Lone Wolf Systems License Manager |
| montage-lm | 6147/tcp | 0.000025 | # Montage License Manager |
| montage-lm | 6147/udp | 0.000774 | # Montage License Manager |
| ricardo-lm | 6148/tcp | 0.000000 | # Ricardo North America License Manager |
| ricardo-lm | 6148/udp | 0.000643 | # Ricardo North America License Manager |
| tal-pod | 6149/tcp | 0.000000 | tal-pod 6149/tcp 0.000000 |
| tal-pod | 6149/udp | 0.000000 | tal-pod 6149/udp 0.000000 |
| efb-aci | 6159/tcp | 0.000000 | # EFB Application Control Interface |
| ecmp | 6160/tcp | 0.000000 | # ecmp-data | Emerson Extensible Control and Management Protocol | Emerson Extensible Control and Management Protocol Data |
| patrol-ism | 6161/tcp | 0.000076 | # PATROL Internet Srv Mgr |
| patrol-ism | 6161/udp | 0.000000 | # PATROL Internet Srv Mgr |
| patrol-coll | 6162/tcp | 0.000000 | # PATROL Collector |
| patrol-coll | 6162/udp | 0.000000 | # PATROL Collector |
| pscribe | 6163/tcp | 0.000000 | # Precision Scribe Cnx Port |
| pscribe | 6163/udp | 0.000000 | # Precision Scribe Cnx Port |
| lm-x | 6200/tcp | 0.000000 | # LM-X License Manager by X-Formation |
| lm-x | 6200/udp | 0.000000 | # LM-X License Manager by X-Formation |
| thermo-calc | 6201/tcp | 0.000000 | # Management of service nodes in a processing grid for thermodynamic calculations |
| qmtps | 6209/tcp | 0.000000 | # QMTP over TLS |
| radmind | 6222/tcp | 0.000151 | # Radmind protocol | Radmind Access Protocol |
| radmind | 6222/udp | 0.000000 | # Radmind Access Protocol |
| jeol-nsdtp-1 | 6241/tcp | 0.000000 | # jeol-nsddp-1 | JEOL Network Services Data Transport Protocol 1 | JEOL Network Services Dynamic Discovery Protocol 1 |
| jeol-nsddp-1 | 6241/udp | 0.000000 | # JEOL Network Services Dynamic Discovery Protocol 1 |
| jeol-nsdtp-2 | 6242/tcp | 0.000000 | # jeol-nsddp-2 | JEOL Network Services Data Transport Protocol 2 | JEOL Network Services Dynamic Discovery Protocol 2 |
| jeol-nsddp-2 | 6242/udp | 0.000000 | # JEOL Network Services Dynamic Discovery Protocol 2 |
| jeol-nsdtp-3 | 6243/tcp | 0.000000 | # jeol-nsddp-3 | JEOL Network Services Data Transport Protocol 3 | JEOL Network Services Dynamic Discovery Protocol 3 |
| jeol-nsddp-3 | 6243/udp | 0.000330 | # JEOL Network Services Dynamic Discovery Protocol 3 |
| jeol-nsdtp-4 | 6244/tcp | 0.000000 | # jeol-nsddp-4 | JEOL Network Services Data Transport Protocol 4 | JEOL Network Services Dynamic Discovery Protocol 4 |
| jeol-nsddp-4 | 6244/udp | 0.000330 | # JEOL Network Services Dynamic Discovery Protocol 4 |
| tl1-raw-ssl | 6251/tcp | 0.000076 | # TL1 Raw Over SSL/TLS |
| tl1-raw-ssl | 6251/udp | 0.000000 | # TL1 Raw Over SSL/TLS |
| tl1-ssh | 6252/tcp | 0.000000 | # TL1 over SSH |
| tl1-ssh | 6252/udp | 0.000000 | # TL1 over SSH |
| crip | 6253/tcp | 0.000000 | crip 6253/tcp 0.000000 |
| crip | 6253/udp | 0.000000 | # CRIP |
| gld | 6267/tcp | 0.000000 | # GridLAB-D User Interface |
| grid | 6268/tcp | 0.000000 | # Grid Authentication |
| grid | 6268/udp | 0.000000 | # Grid Authentication |
| grid-alt | 6269/tcp | 0.000000 | # Grid Authentication Alt |
| grid-alt | 6269/udp | 0.000000 | # Grid Authentication Alt |
| bmc-grx | 6300/tcp | 0.000000 | # BMC GRX |
| bmc-grx | 6300/udp | 0.000000 | # BMC GRX |
| bmc_ctd_ldap | 6301/tcp | 0.000000 | # bmc-ctd-ldap | BMC CONTROL-D LDAP SERVER |
| bmc_ctd_ldap | 6301/udp | 0.000000 | # BMC CONTROL-D LDAP SERVER |
| ufmp | 6306/tcp | 0.000000 | # Unified Fabric Management Protocol |
| ufmp | 6306/udp | 0.000330 | # Unified Fabric Management Protocol |
| scup | 6315/tcp | 0.000000 | # scup-disc | Sensor Control Unit Protocol | Sensor Control Unit Protocol Discovery Protocol |
| scup-disc | 6315/udp | 0.000000 | # Sensor Control Unit Protocol Discovery Protocol |
| abb-escp | 6316/tcp | 0.000000 | # Ethernet Sensor Communications Protocol |
| abb-escp | 6316/udp | 0.000000 | # Ethernet Sensor Communications Protocol |
| nav-data-cmd | 6317/tcp | 0.000000 | # nav-data | Navtech Radar Sensor Data Command | Navtech Radar Sensor Data |
| repsvc | 6320/tcp | 0.000000 | # Double-Take Replication Service |
| repsvc | 6320/udp | 0.000330 | # Double-Take Replication Service |
| emp-server1 | 6321/tcp | 0.000000 | # Empress Software Connectivity Server 1 |
| emp-server1 | 6321/udp | 0.000000 | # Empress Software Connectivity Server 1 |
| emp-server2 | 6322/tcp | 0.000000 | # Empress Software Connectivity Server 2 |
| emp-server2 | 6322/udp | 0.000000 | # Empress Software Connectivity Server 2 |
| hrd-ncs | 6324/tcp | 0.000076 | # hrd-ns-disc | HR Device Network Configuration Service | HR Device Network service |
| dt-mgmtsvc | 6325/tcp | 0.000000 | # Double-Take Management Service |
| dt-vra | 6326/tcp | 0.000000 | # Double-Take Virtual Recovery Assistant |
| sflow | 6343/tcp | 0.000000 | # sFlow traffic monitoring |
| sflow | 6343/udp | 0.000000 | # sFlow traffic monitoring |
| streletz | 6344/tcp | 0.000000 | # Argus-Spectr security and fire-prevention systems service |
| gnutella | 6346/tcp | 0.000226 | # Gnutella file sharing protocol | gnutella-svc |
| gnutella | 6346/udp | 0.004893 | # Gnutella file sharing protocol |
| gnutella2 | 6347/tcp | 0.000050 | # Gnutella2 file sharing protocol | gnutella-rtr |
| gnutella2 | 6347/udp | 0.002142 | # Gnutella2 file sharing protocol |
| adap | 6350/tcp | 0.000076 | # App Discovery and Access Protocol |
| adap | 6350/udp | 0.000000 | # App Discovery and Access Protocol |
| pmcs | 6355/tcp | 0.000000 | # PMCS applications |
| pmcs | 6355/udp | 0.000000 | # PMCS applications |
| metaedit-mu | 6360/tcp | 0.000000 | # MetaEdit+ Multi-User |
| metaedit-mu | 6360/udp | 0.000000 | # MetaEdit+ Multi-User |
| ndn | 6363/tcp | 0.000000 | # Named Data Networking |
| metaedit-se | 6370/tcp | 0.000000 | # MetaEdit+ Server Administration |
| metaedit-se | 6370/udp | 0.000000 | # MetaEdit+ Server Administration |
| redis | 6379/tcp | 0.000076 | # An advanced key-value cache and store |
| metatude-mds | 6382/tcp | 0.000000 | # Metatude Dialogue Server |
| metatude-mds | 6382/udp | 0.000000 | # Metatude Dialogue Server |
| clariion-evr01 | 6389/tcp | 0.000380 | clariion-evr01 6389/tcp 0.000380 |
| clariion-evr01 | 6389/udp | 0.000000 | clariion-evr01 6389/udp 0.000000 |
| metaedit-ws | 6390/tcp | 0.000000 | # MetaEdit+ WebService API |
| metaedit-ws | 6390/udp | 0.000000 | # MetaEdit+ WebService API |
| crystalreports | 6400/tcp | 0.000025 | # boe-cms | Seagate Crystal Reports | Business Objects CMS contact port |
| boe-cms | 6400/udp | 0.000000 | # Business Objects CMS contact port |
| crystalenterprise | 6401/tcp | 0.000050 | # Seagate Crystal Enterprise | boe-was |
| boe-was | 6401/udp | 0.000000 | boe-was 6401/udp 0.000000 |
| boe-eventsrv | 6402/tcp | 0.000000 | boe-eventsrv 6402/tcp 0.000000 |
| boe-eventsrv | 6402/udp | 0.000000 | boe-eventsrv 6402/udp 0.000000 |
| boe-cachesvr | 6403/tcp | 0.000000 | boe-cachesvr 6403/tcp 0.000000 |
| boe-cachesvr | 6403/udp | 0.000000 | boe-cachesvr 6403/udp 0.000000 |
| boe-filesvr | 6404/tcp | 0.000000 | # Business Objects Enterprise internal server |
| faxcomservice | 6417/tcp | 0.000000 | # Faxcom Message Service |
| faxcomservice | 6417/udp | 0.000000 | # Faxcom Message Service |
| syserverremote | 6418/tcp | 0.000000 | # SYserver remote commands |
| svdrp | 6419/tcp | 0.000000 | # svdrp-disc | Simple VDR Protocol | Simple VDR Protocol Discovery |
| nim-vdrshell | 6420/tcp | 0.000000 | # NIM_VDRShell |
| nim-vdrshell | 6420/udp | 0.000000 | # NIM_VDRShell |
| nim-wan | 6421/tcp | 0.000000 | # NIM_WAN |
| nim-wan | 6421/udp | 0.000000 | # NIM_WAN |
| pgbouncer | 6432/tcp | 0.000000 | pgbouncer 6432/tcp 0.000000 |
| heliosd | 6440/tcp | 0.000000 | # heliosd daemon |
| tarp | 6442/tcp | 0.000000 | # Transitory Application Request Protocol |
| sun-sr-https | 6443/tcp | 0.000000 | # Service Registry Default HTTPS Domain |
| sun-sr-https | 6443/udp | 0.000000 | # Service Registry Default HTTPS Domain |
| sge_qmaster | 6444/tcp | 0.000000 | # sge-qmaster | Grid Engine Qmaster Service |
| sge_qmaster | 6444/udp | 0.000330 | # Grid Engine Qmaster Service |
| sge_execd | 6445/tcp | 0.000000 | # sge-execd | Grid Engine Execution Service |
| sge_execd | 6445/udp | 0.000000 | # Grid Engine Execution Service |
| mysql-proxy | 6446/tcp | 0.000000 | # MySQL Proxy |
| mysql-proxy | 6446/udp | 0.000330 | # MySQL Proxy |
| skip-cert-recv | 6455/tcp | 0.000000 | # SKIP Certificate Receive |
| skip-cert-send | 6456/tcp | 0.000000 | # SKIP Certificate Send |
| skip-cert-send | 6456/udp | 0.000000 | # SKIP Certificate Send |
| ieee11073-20701 | 6464/tcp | 0.000000 | # Port assignment for medical device communication in accordance to IEEE 11073-20701 |
| lvision-lm | 6471/tcp | 0.000000 | # LVision License Manager |
| lvision-lm | 6471/udp | 0.000000 | # LVision License Manager |
| sun-sr-http | 6480/tcp | 0.000000 | # Service Registry Default HTTP Domain |
| sun-sr-http | 6480/udp | 0.000000 | # Service Registry Default HTTP Domain |
| servicetags | 6481/tcp | 0.000152 | # Service Tags |
| servicetags | 6481/udp | 0.000000 | # Service Tags |
| ldoms-mgmt | 6482/tcp | 0.000000 | # Logical Domains Management Interface |
| ldoms-mgmt | 6482/udp | 0.000000 | # Logical Domains Management Interface |
| SunVTS-RMI | 6483/tcp | 0.000000 | # SunVTS RMI |
| SunVTS-RMI | 6483/udp | 0.000000 | # SunVTS RMI |
| sun-sr-jms | 6484/tcp | 0.000000 | # Service Registry Default JMS Domain |
| sun-sr-jms | 6484/udp | 0.000000 | # Service Registry Default JMS Domain |
| sun-sr-iiop | 6485/tcp | 0.000000 | # Service Registry Default IIOP Domain |
| sun-sr-iiop | 6485/udp | 0.000000 | # Service Registry Default IIOP Domain |
| sun-sr-iiops | 6486/tcp | 0.000000 | # Service Registry Default IIOPS Domain |
| sun-sr-iiops | 6486/udp | 0.000000 | # Service Registry Default IIOPS Domain |
| sun-sr-iiop-aut | 6487/tcp | 0.000000 | # Service Registry Default IIOPAuth Domain |
| sun-sr-iiop-aut | 6487/udp | 0.000000 | # Service Registry Default IIOPAuth Domain |
| sun-sr-jmx | 6488/tcp | 0.000000 | # Service Registry Default JMX Domain |
| sun-sr-jmx | 6488/udp | 0.000330 | # Service Registry Default JMX Domain |
| sun-sr-admin | 6489/tcp | 0.000000 | # Service Registry Default Admin Domain |
| sun-sr-admin | 6489/udp | 0.000000 | # Service Registry Default Admin Domain |
| boks | 6500/tcp | 0.000152 | # BoKS Master |
| boks | 6500/udp | 0.000330 | # BoKS Master |
| boks_servc | 6501/tcp | 0.000000 | # boks-servc | BoKS Servc |
| boks_servc | 6501/udp | 0.000000 | # BoKS Servc |
| netop-rc | 6502/tcp | 0.000314 | # boks_servm | boks-servm | NetOp Remote Control (by Danware Data A/S) | BoKS Servm |
| netop-rc | 6502/udp | 0.000741 | # NetOp Remote Control (by Danware Data A/S) |
| boks_clntd | 6503/tcp | 0.000076 | # boks-clntd | BoKS Clntd |
| boks_clntd | 6503/udp | 0.000991 | # BoKS Clntd |
| badm_priv | 6505/tcp | 0.000000 | # badm-priv | BoKS Admin Private Port |
| badm_priv | 6505/udp | 0.000000 | # BoKS Admin Private Port |
| badm_pub | 6506/tcp | 0.000000 | # badm-pub | BoKS Admin Public Port |
| badm_pub | 6506/udp | 0.000000 | # BoKS Admin Public Port |
| bdir_priv | 6507/tcp | 0.000000 | # bdir-priv | BoKS Dir Server, Private Port |
| bdir_priv | 6507/udp | 0.000000 | # BoKS Dir Server, Private Port |
| bdir_pub | 6508/tcp | 0.000000 | # bdir-pub | BoKS Dir Server, Public Port |
| bdir_pub | 6508/udp | 0.000000 | # BoKS Dir Server, Public Port |
| mgcs-mfp-port | 6509/tcp | 0.000000 | # MGCS-MFP Port |
| mgcs-mfp-port | 6509/udp | 0.000000 | # MGCS-MFP Port |
| mcer-port | 6510/tcp | 0.000228 | # MCER Port |
| mcer-port | 6510/udp | 0.000000 | # MCER Port |
| dccp-udp | 6511/tcp | 0.000000 | # Datagram Congestion Control Protocol Encapsulation for NAT Traversal |
| netconf-tls | 6513/tcp | 0.000000 | # NETCONF over TLS |
| syslog-tls | 6514/tcp | 0.000000 | # Syslog over TLS | syslog over DTLS |
| syslog-tls | 6514/udp | 0.000000 | # syslog over DTLS |
| elipse-rec | 6515/tcp | 0.000000 | # Elipse RPC Protocol |
| elipse-rec | 6515/udp | 0.000000 | # Elipse RPC Protocol |
| mythtv | 6543/tcp | 0.001167 | # lds-distrib | lds_distrib |
| lds-distrib | 6543/udp | 0.000000 | # lds_distrib |
| mythtv | 6544/tcp | 0.000025 | # lds-dump | LDS Dump Service |
| lds-dump | 6544/udp | 0.000000 | # LDS Dump Service |
| powerchuteplus | 6547/tcp | 0.000251 | # apc-6547 | APC 6547 |
| apc-6547 | 6547/udp | 0.000000 | # APC 6547 |
| powerchuteplus | 6548/tcp | 0.000013 | # apc-6548 | APC 6548 |
| apc-6548 | 6548/udp | 0.000000 | # APC 6548 |
| apc-6549 | 6549/tcp | 0.000000 | # APC 6549 |
| powerchuteplus | 6549/udp | 0.000511 | powerchuteplus 6549/udp 0.000511 |
| fg-sysupdate | 6550/tcp | 0.000152 | fg-sysupdate 6550/tcp 0.000152 |
| fg-sysupdate | 6550/udp | 0.000330 | fg-sysupdate 6550/udp 0.000330 |
| sum | 6551/tcp | 0.000000 | # Software Update Manager |
| sum | 6551/udp | 0.000000 | # Software Update Manager |
| checkmk-agent | 6556/tcp | 0.000000 | # Checkmk Monitoring Agent |
| xdsxdm | 6558/tcp | 0.000000 | xdsxdm 6558/tcp 0.000000 |
| xdsxdm | 6558/udp | 0.000478 | xdsxdm 6558/udp 0.000478 |
| sane-port | 6566/tcp | 0.000228 | # SANE Control Port |
| sane-port | 6566/udp | 0.000000 | # SANE Control Port |
| esp | 6567/tcp | 0.000228 | # eSilo Storage Protocol |
| esp | 6567/udp | 0.000000 | # eSilo Storage Protocol |
| canit_store | 6568/tcp | 0.000000 | # rp-reputation | canit-store | CanIt Storage Manager | Roaring Penguin IP Address Reputation Collection |
| rp-reputation | 6568/udp | 0.000000 | # Roaring Penguin IP Address Reputation Collection |
| affiliate | 6579/tcp | 0.000076 | affiliate 6579/tcp 0.000076 |
| affiliate | 6579/udp | 0.000000 | # Affiliate |
| parsec-master | 6580/tcp | 0.000380 | # Parsec Masterserver |
| parsec-master | 6580/udp | 0.000000 | # Parsec Masterserver |
| parsec-peer | 6581/tcp | 0.000000 | # Parsec Peer-to-Peer |
| parsec-peer | 6581/udp | 0.000000 | # Parsec Peer-to-Peer |
| parsec-game | 6582/tcp | 0.000000 | # Parsec Gameserver |
| parsec-game | 6582/udp | 0.000000 | # Parsec Gameserver |
| joaJewelSuite | 6583/tcp | 0.000000 | # JOA Jewel Suite |
| joaJewelSuite | 6583/udp | 0.000330 | # JOA Jewel Suite |
| analogx | 6588/tcp | 0.000038 | # AnalogX HTTP proxy port |
| mshvlm | 6600/tcp | 0.000152 | # Microsoft Hyper-V Live Migration |
| mstmg-sstp | 6601/tcp | 0.000000 | # Microsoft Threat Management Gateway SSTP |
| wsscomfrmwk | 6602/tcp | 0.000000 | # Windows WSS Communication Framework |
| odette-ftps | 6619/tcp | 0.000076 | # ODETTE-FTP over TLS/SSL |
| odette-ftps | 6619/udp | 0.000000 | # ODETTE-FTP over TLS/SSL |
| kftp-data | 6620/tcp | 0.000000 | # Kerberos V5 FTP Data |
| kftp-data | 6620/udp | 0.000000 | # Kerberos V5 FTP Data |
| kftp | 6621/tcp | 0.000000 | # Kerberos V5 FTP Control |
| kftp | 6621/udp | 0.000000 | # Kerberos V5 FTP Control |
| mcftp | 6622/tcp | 0.000000 | # Multicast FTP |
| mcftp | 6622/udp | 0.000000 | # Multicast FTP |
| ktelnet | 6623/tcp | 0.000000 | # Kerberos V5 Telnet |
| ktelnet | 6623/udp | 0.000000 | # Kerberos V5 Telnet |
| datascaler-db | 6624/tcp | 0.000000 | # DataScaler database |
| datascaler-ctl | 6625/tcp | 0.000000 | # DataScaler control |
| wago-service | 6626/tcp | 0.000000 | # WAGO Service and Update |
| wago-service | 6626/udp | 0.000000 | # WAGO Service and Update |
| nexgen | 6627/tcp | 0.000000 | # Allied Electronics NeXGen |
| nexgen | 6627/udp | 0.000661 | # Allied Electronics NeXGen |
| afesc-mc | 6628/tcp | 0.000076 | # AFE Stock Channel M/C |
| afesc-mc | 6628/udp | 0.000000 | # AFE Stock Channel M/C |
| nexgen-aux | 6629/tcp | 0.000000 | # Secondary, (non ANDI) multi-protocol multi-function interface to the Allied ANDI-based family of forecourt controllers |
| mxodbc-connect | 6632/tcp | 0.000000 | # eGenix mxODBC Connect |
| cisco-vpath-tun | 6633/tcp | 0.000000 | # Cisco vPath Services Overlay |
| mpls-pm | 6634/tcp | 0.000000 | # MPLS Performance Measurement out-of-band response |
| mpls-udp | 6635/tcp | 0.000000 | # Encapsulate MPLS packets in UDP tunnels. |
| mpls-udp-dtls | 6636/tcp | 0.000000 | # Encapsulate MPLS packets in UDP tunnels with DTLS. |
| ovsdb | 6640/tcp | 0.000000 | # Open vSwitch Database protocol |
| openflow | 6653/tcp | 0.000000 | openflow 6653/tcp 0.000000 |
| pcs-sf-ui-man | 6655/tcp | 0.000000 | # PC SOFT - Software factory UI/manager |
| emgmsg | 6656/tcp | 0.000000 | # Emergency Message Control Service |
| palcom-disc | 6657/tcp | 0.000000 | # PalCom Discovery |
| palcom-disc | 6657/udp | 0.000000 | # PalCom Discovery |
| radmind | 6662/tcp | 0.000100 | # Radmind protocol (deprecated) |
| irc | 6665/tcp | 0.000050 | # Internet Relay Chat |
| ircu | 6665/udp | 0.000000 | # IRCU |
| irc | 6666/tcp | 0.001179 | # internet relay chat server |
| ircu | 6666/udp | 0.000330 | # IRCU |
| irc | 6667/tcp | 0.000652 | # Internet Relay Chat |
| ircu | 6667/udp | 0.000000 | # IRCU |
| irc | 6668/tcp | 0.000176 | # Internet Relay Chat |
| ircu | 6668/udp | 0.000000 | # IRCU |
| irc | 6669/tcp | 0.000176 | # Internet Relay Chat |
| ircu | 6669/udp | 0.000000 | # IRCU |
| irc | 6670/tcp | 0.000088 | # vocaltec-gold | Internet Relay Chat | Vocaltec Global Online Directory |
| vocaltec-gold | 6670/udp | 0.000000 | # Vocaltec Global Online Directory |
| p4p-portal | 6671/tcp | 0.000000 | # P4P Portal Service |
| p4p-portal | 6671/udp | 0.000000 | # P4P Portal Service |
| vision_server | 6672/tcp | 0.000000 | # vision-server |
| vision_server | 6672/udp | 0.000000 | vision_server 6672/udp 0.000000 |
| vision_elmd | 6673/tcp | 0.000000 | # vision-elmd |
| vision_elmd | 6673/udp | 0.000000 | vision_elmd 6673/udp 0.000000 |
| vfbp | 6678/tcp | 0.000000 | # vfbp-disc | Viscount Freedom Bridge Protocol | Viscount Freedom Bridge Discovery |
| osaut | 6679/tcp | 0.000000 | # Osorno Automation |
| clever-ctrace | 6687/tcp | 0.000000 | # CleverView for cTrace Message Service |
| clever-tcpip | 6688/tcp | 0.000000 | # CleverView for TCP/IP Message Service |
| tsa | 6689/tcp | 0.000228 | # Tofino Security Appliance |
| tsa | 6689/udp | 0.000000 | # Tofino Security Appliance |
| cleverdetect | 6690/tcp | 0.000000 | # CLEVERDetect Message Service |
| babel | 6696/tcp | 0.000000 | # Babel Routing Protocol |
| ircs-u | 6697/tcp | 0.000000 | # Internet Relay Chat via TLS/SSL |
| babel | 6697/udp | 0.000330 | # Babel Routing Protocol |
| napster | 6699/tcp | 0.000251 | # babel-dtls | Napster File (MP3) sharing  software | Babel Routing Protocol over DTLS |
| carracho | 6700/tcp | 0.000025 | # Carracho file sharing |
| carracho | 6701/tcp | 0.000038 | # kti-icad-srvr | Carracho file sharing | KTI/ICAD Nameserver |
| kti-icad-srvr | 6701/udp | 0.000000 | # KTI/ICAD Nameserver |
| e-design-net | 6702/tcp | 0.000000 | # e-Design network |
| e-design-net | 6702/udp | 0.000000 | # e-Design network |
| e-design-web | 6703/tcp | 0.000000 | # e-Design web |
| e-design-web | 6703/udp | 0.000330 | # e-Design web |
| frc-hp | 6704/sctp | 0.000000 | # ForCES HP (High Priority) channel |
| frc-mp | 6705/sctp | 0.000000 | # ForCES MP (Medium Priority) channel |
| frc-lp | 6706/sctp | 0.000000 | # ForCES LP (Low priority) channel |
| ibprotocol | 6714/tcp | 0.000000 | # Internet Backplane Protocol |
| ibprotocol | 6714/udp | 0.000000 | # Internet Backplane Protocol |
| fibotrader-com | 6715/tcp | 0.000000 | # Fibotrader Communications |
| fibotrader-com | 6715/udp | 0.000000 | # Fibotrader Communications |
| princity-agent | 6716/tcp | 0.000000 | # Princity Agent |
| bmc-perf-agent | 6767/tcp | 0.000000 | # BMC PERFORM AGENT |
| bmc-perf-agent | 6767/udp | 0.000330 | # BMC PERFORM AGENT |
| bmc-perf-mgrd | 6768/tcp | 0.000000 | # BMC PERFORM MGRD |
| bmc-perf-mgrd | 6768/udp | 0.000000 | # BMC PERFORM MGRD |
| adi-gxp-srvprt | 6769/tcp | 0.000000 | # ADInstruments GxP Server |
| adi-gxp-srvprt | 6769/udp | 0.000000 | # ADInstruments GxP Server |
| plysrv-http | 6770/tcp | 0.000000 | # PolyServe http |
| plysrv-http | 6770/udp | 0.000000 | # PolyServe http |
| plysrv-https | 6771/tcp | 0.000000 | # PolyServe https |
| plysrv-https | 6771/udp | 0.000000 | # PolyServe https |
| ntz-tracker | 6777/tcp | 0.000000 | # netTsunami Tracker |
| ntz-p2p-storage | 6778/tcp | 0.000000 | # netTsunami p2p storage system |
| bfd-lag | 6784/tcp | 0.000000 | # Bidirectional Forwarding Detection (BFD) on Link Aggregation Group (LAG) Interfaces |
| dgpf-exchg | 6785/tcp | 0.000000 | # DGPF Individual Exchange |
| dgpf-exchg | 6785/udp | 0.000000 | # DGPF Individual Exchange |
| smc-jmx | 6786/tcp | 0.000000 | # Sun Java Web Console JMX |
| smc-jmx | 6786/udp | 0.000000 | # Sun Java Web Console JMX |
| smc-admin | 6787/tcp | 0.000000 | # Sun Web Console Admin |
| smc-admin | 6787/udp | 0.000000 | # Sun Web Console Admin |
| smc-http | 6788/tcp | 0.000380 | smc-http 6788/tcp 0.000380 |
| smc-http | 6788/udp | 0.000000 | # SMC-HTTP |
| ibm-db2-admin | 6789/tcp | 0.000760 | # radg | smc-https | IBM DB2 | SMC-HTTPS | GSS-API for the Oracle Remote Administration Daemon |
| smc-https | 6789/udp | 0.000330 | # SMC-HTTPS |
| hnmp | 6790/tcp | 0.000000 | hnmp 6790/tcp 0.000000 |
| hnmp | 6790/udp | 0.000000 | # HNMP |
| hnm | 6791/tcp | 0.000000 | # Halcyon Network Manager |
| hnm | 6791/udp | 0.000000 | # Halcyon Network Manager |
| acnet | 6801/tcp | 0.000000 | # ACNET Control System Protocol |
| acnet | 6801/udp | 0.000000 | # ACNET Control System Protocol |
| pentbox-sim | 6817/tcp | 0.000000 | # PenTBox Secure IM Protocol |
| ambit-lm | 6831/tcp | 0.000000 | ambit-lm 6831/tcp 0.000000 |
| ambit-lm | 6831/udp | 0.000000 | ambit-lm 6831/udp 0.000000 |
| netmo-default | 6841/tcp | 0.000000 | # Netmo Default |
| netmo-default | 6841/udp | 0.000000 | # Netmo Default |
| netmo-http | 6842/tcp | 0.000000 | # Netmo HTTP |
| netmo-http | 6842/udp | 0.000330 | # Netmo HTTP |
| iccrushmore | 6850/tcp | 0.000000 | iccrushmore 6850/tcp 0.000000 |
| iccrushmore | 6850/udp | 0.000330 | # ICCRUSHMORE |
| acctopus-cc | 6868/tcp | 0.000000 | # acctopus-st | Acctopus Command Channel | Acctopus Status |
| acctopus-st | 6868/udp | 0.000000 | # Acctopus Status |
| bittorrent-tracker | 6881/tcp | 0.000640 | # BitTorrent tracker |
| muse | 6888/tcp | 0.000076 | muse 6888/tcp 0.000076 |
| muse | 6888/udp | 0.000000 | # MUSE |
| rtimeviewer | 6900/tcp | 0.000000 | # R*TIME Viewer Data Interface |
| jetstream | 6901/tcp | 0.000380 | # Novell Jetstream messaging protocol |
| split-ping | 6924/tcp | 0.000000 | # Ping with RX/TX latency/loss split |
| ethoscan | 6935/tcp | 0.000000 | # EthoScan Service |
| xsmsvc | 6936/tcp | 0.000000 | # XenSource Management Service |
| xsmsvc | 6936/udp | 0.000000 | # XenSource Management Service |
| bioserver | 6946/tcp | 0.000000 | # Biometrics Server |
| bioserver | 6946/udp | 0.000000 | # Biometrics Server |
| otlp | 6951/tcp | 0.000000 | otlp 6951/tcp 0.000000 |
| otlp | 6951/udp | 0.000000 | # OTLP |
| jmact3 | 6961/tcp | 0.000000 | jmact3 6961/tcp 0.000000 |
| jmact3 | 6961/udp | 0.000661 | # JMACT3 |
| jmevt2 | 6962/tcp | 0.000000 | jmevt2 6962/tcp 0.000000 |
| jmevt2 | 6962/udp | 0.000000 | jmevt2 6962/udp 0.000000 |
| swismgr1 | 6963/tcp | 0.000000 | swismgr1 6963/tcp 0.000000 |
| swismgr1 | 6963/udp | 0.000000 | swismgr1 6963/udp 0.000000 |
| swismgr2 | 6964/tcp | 0.000000 | swismgr2 6964/tcp 0.000000 |
| swismgr2 | 6964/udp | 0.000000 | swismgr2 6964/udp 0.000000 |
| swistrap | 6965/tcp | 0.000000 | swistrap 6965/tcp 0.000000 |
| swistrap | 6965/udp | 0.000000 | swistrap 6965/udp 0.000000 |
| swispol | 6966/tcp | 0.000000 | swispol 6966/tcp 0.000000 |
| swispol | 6966/udp | 0.000000 | swispol 6966/udp 0.000000 |
| acmsoda | 6969/tcp | 0.000389 | acmsoda 6969/tcp 0.000389 |
| acmsoda | 6969/udp | 0.001104 | acmsoda 6969/udp 0.001104 |
| conductor | 6970/tcp | 0.000000 | # conductor-mpx | Conductor test coordination protocol | conductor for multiplex |
| qolyester | 6980/tcp | 0.000000 | # QoS-extended OLSR protocol |
| MobilitySrv | 6997/tcp | 0.000000 | # Mobility XE Protocol |
| MobilitySrv | 6997/udp | 0.000000 | # Mobility XE Protocol |
| iatp-highpri | 6998/tcp | 0.000000 | iatp-highpri 6998/tcp 0.000000 |
| iatp-highpri | 6998/udp | 0.000330 | # IATP-highPri |
| iatp-normalpri | 6999/tcp | 0.000000 | iatp-normalpri 6999/tcp 0.000000 |
| iatp-normalpri | 6999/udp | 0.000000 | # IATP-normalPri |
| afs3-fileserver | 7000/tcp | 0.001995 | # file server itself, msdos | file server itself |
| afs3-fileserver | 7000/udp | 0.002339 | # file server itself |
| afs3-callback | 7001/tcp | 0.000891 | # callbacks to cache managers |
| afs3-callback | 7001/udp | 0.001005 | # callbacks to cache managers |
| afs3-prserver | 7002/tcp | 0.000351 | # users & groups database |
| afs3-prserver | 7002/udp | 0.000560 | # users & groups database |
| afs3-vlserver | 7003/tcp | 0.000125 | # volume location database |
| afs3-vlserver | 7003/udp | 0.000610 | # volume location database |
| afs3-kaserver | 7004/tcp | 0.000201 | # AFS/Kerberos authentication service |
| afs3-kaserver | 7004/udp | 0.000445 | # AFS/Kerberos authentication service |
| afs3-volser | 7005/tcp | 0.000075 | # volume managment server |
| afs3-volser | 7005/udp | 0.000972 | # volume managment server |
| afs3-errors | 7006/tcp | 0.000025 | # error interpretation service |
| afs3-errors | 7006/udp | 0.000494 | # error interpretation service |
| afs3-bos | 7007/tcp | 0.000314 | # basic overseer process |
| afs3-bos | 7007/udp | 0.000610 | # basic overseer process |
| afs3-update | 7008/tcp | 0.000025 | # server-to-server updater |
| afs3-update | 7008/udp | 0.000708 | # server-to-server updater |
| afs3-rmtsys | 7009/tcp | 0.000038 | # remote cache manager service |
| afs3-rmtsys | 7009/udp | 0.001021 | # remote cache manager service |
| ups-onlinet | 7010/tcp | 0.000113 | # onlinet uninterruptable power supplies |
| ups-onlinet | 7010/udp | 0.000643 | # onlinet uninterruptable power supplies |
| talon-disc | 7011/tcp | 0.000000 | # Talon Discovery Port |
| talon-disc | 7011/udp | 0.000000 | # Talon Discovery Port |
| talon-engine | 7012/tcp | 0.000000 | # Talon Engine |
| talon-engine | 7012/udp | 0.000661 | # Talon Engine |
| microtalon-dis | 7013/tcp | 0.000000 | # Microtalon Discovery |
| microtalon-dis | 7013/udp | 0.000000 | # Microtalon Discovery |
| microtalon-com | 7014/tcp | 0.000000 | # Microtalon Communications |
| microtalon-com | 7014/udp | 0.000000 | # Microtalon Communications |
| talon-webserver | 7015/tcp | 0.000000 | # Talon Webserver |
| talon-webserver | 7015/udp | 0.000000 | # Talon Webserver |
| spg | 7016/tcp | 0.000000 | # SPG Controls Carrier |
| grasp | 7017/tcp | 0.000000 | # GeneRic Autonomic Signaling Protocol (TEMPORARY - registered 2017-04-28, expires 2018-04-28) | GeneRic Autonomic Signaling Protocol |
| fisa-svc | 7018/tcp | 0.000000 | # FISA Service |
| doceri-ctl | 7019/tcp | 0.000836 | # doceri-view | doceri drawing service control | doceri drawing service screen view |
| dpserve | 7020/tcp | 0.000000 | # DP Serve |
| dpserve | 7020/udp | 0.000000 | # DP Serve |
| dpserveadmin | 7021/tcp | 0.000000 | # DP Serve Admin |
| dpserveadmin | 7021/udp | 0.000000 | # DP Serve Admin |
| ctdp | 7022/tcp | 0.000000 | # CT Discovery Protocol |
| ctdp | 7022/udp | 0.000000 | # CT Discovery Protocol |
| ct2nmcs | 7023/tcp | 0.000000 | # Comtech T2 NMCS |
| ct2nmcs | 7023/udp | 0.000000 | # Comtech T2 NMCS |
| vmsvc | 7024/tcp | 0.000152 | # Vormetric service |
| vmsvc | 7024/udp | 0.000000 | # Vormetric service |
| vmsvc-2 | 7025/tcp | 0.000228 | # Vormetric Service II |
| vmsvc-2 | 7025/udp | 0.000000 | # Vormetric Service II |
| loreji-panel | 7026/tcp | 0.000000 | # Loreji Webhosting Panel |
| op-probe | 7030/tcp | 0.000000 | # ObjectPlanet probe |
| op-probe | 7030/udp | 0.000000 | # ObjectPlanet probe |
| iposplanet | 7031/tcp | 0.000000 | # IPOSPLANET retailing multi devices protocol |
| quest-disc | 7040/tcp | 0.000000 | # Quest application level network service discovery |
| realserver | 7070/tcp | 0.004328 | # arcp | ARCP |
| arcp | 7070/udp | 0.000000 | # ARCP |
| iwg1 | 7071/tcp | 0.000076 | # IWGADTS Aircraft Housekeeping Message |
| iwg1 | 7071/udp | 0.000000 | # IWGADTS Aircraft Housekeeping Message |
| iba-cfg | 7072/tcp | 0.000076 | # iba-cfg-disc | iba Device Configuration Protocol |
| martalk | 7073/tcp | 0.000000 | # MarTalk protocol |
| empowerid | 7080/tcp | 0.000152 | # EmpowerID Communication |
| empowerid | 7080/udp | 0.000330 | # EmpowerID Communication |
| zixi-transport | 7088/tcp | 0.000000 | # Zixi live video transport protocol |
| jdp-disc | 7095/tcp | 0.000000 | # Java Discovery Protocol |
| lazy-ptop | 7099/tcp | 0.000076 | lazy-ptop 7099/tcp 0.000076 |
| lazy-ptop | 7099/udp | 0.000000 | lazy-ptop 7099/udp 0.000000 |
| font-service | 7100/tcp | 0.000928 | # X Font Service |
| font-service | 7100/udp | 0.001170 | # X Font Service |
| elcn | 7101/tcp | 0.000076 | # Embedded Light Control Network |
| elcn | 7101/udp | 0.000000 | # Embedded Light Control Network |
| aes-x170 | 7107/tcp | 0.000000 | aes-x170 7107/tcp 0.000000 |
| rothaga | 7117/tcp | 0.000000 | # Encrypted chat and file transfer service |
| virprot-lm | 7121/tcp | 0.000076 | # Virtual Prototypes License Manager |
| virprot-lm | 7121/udp | 0.000000 | # Virtual Prototypes License Manager |
| snif | 7123/tcp | 0.000152 | # End-to-end TLS Relay Control Connection |
| scenidm | 7128/tcp | 0.000000 | # intelligent data manager |
| scenidm | 7128/udp | 0.000000 | # intelligent data manager |
| scenccs | 7129/tcp | 0.000000 | # Catalog Content Search |
| scenccs | 7129/udp | 0.000000 | # Catalog Content Search |
| cabsm-comm | 7161/tcp | 0.000000 | # CA BSM Comm |
| cabsm-comm | 7161/udp | 0.000000 | # CA BSM Comm |
| caistoragemgr | 7162/tcp | 0.000000 | # CA Storage Manager |
| caistoragemgr | 7162/udp | 0.000000 | # CA Storage Manager |
| cacsambroker | 7163/tcp | 0.000000 | # CA Connection Broker |
| cacsambroker | 7163/udp | 0.000000 | # CA Connection Broker |
| fsr | 7164/tcp | 0.000000 | # File System Repository Agent |
| fsr | 7164/udp | 0.000000 | # File System Repository Agent |
| doc-server | 7165/tcp | 0.000000 | # Document WCF Server |
| doc-server | 7165/udp | 0.000000 | # Document WCF Server |
| aruba-server | 7166/tcp | 0.000000 | # Aruba eDiscovery Server |
| aruba-server | 7166/udp | 0.000000 | # Aruba eDiscovery Server |
| casrmagent | 7167/tcp | 0.000000 | # CA SRM Agent |
| cnckadserver | 7168/tcp | 0.000000 | # cncKadServer DB & Inventory Services |
| ccag-pib | 7169/tcp | 0.000000 | # Consequor Consulting Process Integration Bridge |
| ccag-pib | 7169/udp | 0.000000 | # Consequor Consulting Process Integration Bridge |
| nsrp | 7170/tcp | 0.000000 | # Adaptive Name/Service Resolution |
| nsrp | 7170/udp | 0.000000 | # Adaptive Name/Service Resolution |
| drm-production | 7171/tcp | 0.000000 | # Discovery and Retention Mgt Production |
| drm-production | 7171/udp | 0.000000 | # Discovery and Retention Mgt Production |
| metalbend | 7172/tcp | 0.000000 | # Port used for MetalBend programmable interface |
| zsecure | 7173/tcp | 0.000000 | # zSecure Server |
| clutild | 7174/tcp | 0.000000 | clutild 7174/tcp 0.000000 |
| clutild | 7174/udp | 0.000000 | # Clutild |
| janus-disc | 7181/tcp | 0.000000 | # Janus Guidewire Enterprise Discovery Service Bus |
| fodms | 7200/tcp | 0.000439 | # FODMS FLIP |
| fodms | 7200/udp | 0.000346 | # FODMS FLIP |
| dlip | 7201/tcp | 0.000188 | dlip 7201/tcp 0.000188 |
| dlip | 7201/udp | 0.000527 | dlip 7201/udp 0.000527 |
| pon-ictp | 7202/tcp | 0.000000 | # Inter-Channel Termination Protocol (ICTP) for multi-wavelength PON (Passive Optical Network) systems |
| PS-Server | 7215/tcp | 0.000000 | # Communication ports for PaperStream Server services |
| PS-Capture-Pro | 7216/tcp | 0.000000 | # PaperStream Capture Professional |
| ramp | 7227/tcp | 0.000000 | # Registry A & M Protocol | Registry A $ M Protocol |
| ramp | 7227/udp | 0.000000 | # Registry A $ M Protocol |
| citrixupp | 7228/tcp | 0.000000 | # Citrix Universal Printing Port |
| citrixuppg | 7229/tcp | 0.000000 | # Citrix UPP Gateway |
| asa-gateways | 7234/tcp | 0.000000 | # Traffic forwarding for Okta cloud infra |
| aspcoordination | 7235/tcp | 0.000000 | # ASP Coordination Protocol |
| display | 7236/tcp | 0.000000 | # Wi-Fi Alliance Wi-Fi Display Protocol |
| pads | 7237/tcp | 0.000000 | # PADS (Public Area Display System) Server |
| frc-hicp | 7244/tcp | 0.000000 | # frc-hicp-disc | FrontRow Calypso Human Interface Control Protocol |
| cnap | 7262/tcp | 0.000000 | # Calypso Network Access Protocol |
| cnap | 7262/udp | 0.000000 | # Calypso Network Access Protocol |
| watchme-7272 | 7272/tcp | 0.000152 | # WatchMe Monitoring 7272 |
| watchme-7272 | 7272/udp | 0.000000 | # WatchMe Monitoring 7272 |
| openmanage | 7273/tcp | 0.000050 | # oma-rlp | Dell OpenManage | OMA Roaming Location |
| oma-rlp | 7273/udp | 0.000000 | # OMA Roaming Location |
| oma-rlp-s | 7274/tcp | 0.000000 | # OMA Roaming Location SEC |
| oma-rlp-s | 7274/udp | 0.000661 | # OMA Roaming Location SEC |
| oma-ulp | 7275/tcp | 0.000000 | # OMA UserPlane Location |
| oma-ulp | 7275/udp | 0.000330 | # OMA UserPlane Location |
| oma-ilp | 7276/tcp | 0.000000 | # OMA Internal Location Protocol |
| oma-ilp | 7276/udp | 0.000000 | # OMA Internal Location Protocol |
| oma-ilp-s | 7277/tcp | 0.000000 | # OMA Internal Location Secure Protocol |
| oma-ilp-s | 7277/udp | 0.000000 | # OMA Internal Location Secure Protocol |
| oma-dcdocbs | 7278/tcp | 0.000152 | # OMA Dynamic Content Delivery over CBS |
| oma-dcdocbs | 7278/udp | 0.000330 | # OMA Dynamic Content Delivery over CBS |
| ctxlic | 7279/tcp | 0.000000 | # Citrix Licensing |
| ctxlic | 7279/udp | 0.000000 | # Citrix Licensing |
| itactionserver1 | 7280/tcp | 0.000000 | # ITACTIONSERVER 1 |
| itactionserver1 | 7280/udp | 0.000000 | # ITACTIONSERVER 1 |
| itactionserver2 | 7281/tcp | 0.000152 | # ITACTIONSERVER 2 |
| itactionserver2 | 7281/udp | 0.000000 | # ITACTIONSERVER 2 |
| mzca-action | 7282/tcp | 0.000000 | # mzca-alert | eventACTION/ussACTION (MZCA) server | eventACTION/ussACTION (MZCA) alert |
| mzca-alert | 7282/udp | 0.000000 | # eventACTION/ussACTION (MZCA) alert |
| genstat | 7283/tcp | 0.000000 | # General Statistics Rendezvous Protocol |
| swx | 7300/tcp | 0.000076 | # The Swiss Exchange |
| icb | 7326/tcp | 0.000013 | # Internet Citizen's Band |
| lcm-server | 7365/tcp | 0.000000 | # LifeKeeper Communications |
| lcm-server | 7365/udp | 0.000000 | # LifeKeeper Communications |
| mindfilesys | 7391/tcp | 0.000000 | # mind-file system server |
| mindfilesys | 7391/udp | 0.000000 | # mind-file system server |
| mrssrendezvous | 7392/tcp | 0.000000 | # mrss-rendezvous server |
| mrssrendezvous | 7392/udp | 0.000000 | # mrss-rendezvous server |
| nfoldman | 7393/tcp | 0.000000 | # nFoldMan Remote Publish |
| nfoldman | 7393/udp | 0.000000 | # nFoldMan Remote Publish |
| fse | 7394/tcp | 0.000000 | # File system export of backup images |
| fse | 7394/udp | 0.000000 | # File system export of backup images |
| winqedit | 7395/tcp | 0.000000 | winqedit 7395/tcp 0.000000 |
| winqedit | 7395/udp | 0.000000 | winqedit 7395/udp 0.000000 |
| hexarc | 7397/tcp | 0.000000 | # Hexarc Command Language |
| hexarc | 7397/udp | 0.000000 | # Hexarc Command Language |
| rtps-discovery | 7400/tcp | 0.000076 | # RTPS Discovery |
| rtps-discovery | 7400/udp | 0.000000 | # RTPS Discovery |
| rtps-dd-ut | 7401/tcp | 0.000000 | # RTPS Data-Distribution User-Traffic |
| rtps-dd-ut | 7401/udp | 0.000000 | # RTPS Data-Distribution User-Traffic |
| rtps-dd-mt | 7402/tcp | 0.000304 | # RTPS Data-Distribution Meta-Traffic |
| rtps-dd-mt | 7402/udp | 0.000000 | # RTPS Data-Distribution Meta-Traffic |
| ionixnetmon | 7410/tcp | 0.000000 | # Ionix Network Monitor |
| ionixnetmon | 7410/udp | 0.000330 | # Ionix Network Monitor |
| daqstream | 7411/tcp | 0.000000 | # Streaming of measurement data |
| ipluminary | 7420/tcp | 0.000000 | # Multichannel real-time lighting control |
| mtportmon | 7421/tcp | 0.000000 | # Matisse Port Monitor |
| mtportmon | 7421/udp | 0.000000 | # Matisse Port Monitor |
| pmdmgr | 7426/tcp | 0.000000 | # OpenView DM Postmaster Manager |
| pmdmgr | 7426/udp | 0.000000 | # OpenView DM Postmaster Manager |
| oveadmgr | 7427/tcp | 0.000000 | # OpenView DM Event Agent Manager |
| oveadmgr | 7427/udp | 0.000330 | # OpenView DM Event Agent Manager |
| ovladmgr | 7428/tcp | 0.000000 | # OpenView DM Log Agent Manager |
| ovladmgr | 7428/udp | 0.000000 | # OpenView DM Log Agent Manager |
| opi-sock | 7429/tcp | 0.000000 | # OpenView DM rqt communication |
| opi-sock | 7429/udp | 0.000000 | # OpenView DM rqt communication |
| xmpv7 | 7430/tcp | 0.000000 | # OpenView DM xmpv7 api pipe |
| xmpv7 | 7430/udp | 0.000000 | # OpenView DM xmpv7 api pipe |
| pmd | 7431/tcp | 0.000000 | # OpenView DM ovc/xmpv3 api pipe |
| pmd | 7431/udp | 0.000000 | # OpenView DM ovc/xmpv3 api pipe |
| faximum | 7437/tcp | 0.000000 | faximum 7437/tcp 0.000000 |
| faximum | 7437/udp | 0.000000 | # Faximum |
| oracleas-https | 7443/tcp | 0.000304 | # Oracle Application Server HTTPS |
| oracleas-https | 7443/udp | 0.000000 | # Oracle Application Server HTTPS |
| pythonds | 7464/tcp | 0.000013 | # Python Documentation Server |
| sttunnel | 7471/tcp | 0.000000 | # Stateless Transport Tunneling Protocol |
| rise | 7473/tcp | 0.000000 | # Rise: The Vieneo Province |
| rise | 7473/udp | 0.000000 | # Rise: The Vieneo Province |
| neo4j | 7474/tcp | 0.000000 | # Neo4j Graph Database |
| openit | 7478/tcp | 0.000000 | # IT Asset Management |
| telops-lmd | 7491/tcp | 0.000000 | telops-lmd 7491/tcp 0.000000 |
| telops-lmd | 7491/udp | 0.000000 | telops-lmd 7491/udp 0.000000 |
| silhouette | 7500/tcp | 0.000076 | # Silhouette User |
| silhouette | 7500/udp | 0.000330 | # Silhouette User |
| ovbus | 7501/tcp | 0.000076 | # HP OpenView Bus Daemon |
| ovbus | 7501/udp | 0.000000 | # HP OpenView Bus Daemon |
| adcp | 7508/tcp | 0.000000 | # Automation Device Configuration Protocol |
| acplt | 7509/tcp | 0.000000 | # ACPLT - process automation service |
| ovhpas | 7510/tcp | 0.000000 | # HP OpenView Application Server |
| ovhpas | 7510/udp | 0.000000 | # HP OpenView Application Server |
| pafec-lm | 7511/tcp | 0.000000 | pafec-lm 7511/tcp 0.000000 |
| pafec-lm | 7511/udp | 0.000000 | pafec-lm 7511/udp 0.000000 |
| saratoga | 7542/tcp | 0.000000 | # Saratoga Transfer Protocol |
| saratoga | 7542/udp | 0.000000 | # Saratoga Transfer Protocol |
| atul | 7543/tcp | 0.000000 | # atul server |
| atul | 7543/udp | 0.000000 | # atul server |
| nta-ds | 7544/tcp | 0.000000 | # FlowAnalyzer DisplayServer |
| nta-ds | 7544/udp | 0.000000 | # FlowAnalyzer DisplayServer |
| nta-us | 7545/tcp | 0.000000 | # FlowAnalyzer UtilityServer |
| nta-us | 7545/udp | 0.000000 | # FlowAnalyzer UtilityServer |
| cfs | 7546/tcp | 0.000000 | # Cisco Fabric service |
| cfs | 7546/udp | 0.000000 | # Cisco Fabric service |
| cwmp | 7547/tcp | 0.000000 | # DSL Forum CWMP | Broadband Forum CWMP |
| cwmp | 7547/udp | 0.000000 | # DSL Forum CWMP |
| tidp | 7548/tcp | 0.000000 | # Threat Information Distribution Protocol |
| tidp | 7548/udp | 0.000000 | # Threat Information Distribution Protocol |
| nls-tl | 7549/tcp | 0.000000 | # Network Layer Signaling Transport Layer |
| nls-tl | 7549/udp | 0.000000 | # Network Layer Signaling Transport Layer |
| cloudsignaling | 7550/tcp | 0.000000 | # Cloud Signaling Service |
| controlone-con | 7551/tcp | 0.000000 | # ControlONE Console signaling |
| sncp | 7560/tcp | 0.000000 | # Sniffer Command Protocol |
| sncp | 7560/udp | 0.000000 | # Sniffer Command Protocol |
| cfw | 7563/tcp | 0.000000 | # Control Framework |
| vsi-omega | 7566/tcp | 0.000000 | # VSI Omega |
| vsi-omega | 7566/udp | 0.000000 | # VSI Omega |
| dell-eql-asm | 7569/tcp | 0.000000 | # Dell EqualLogic Host Group Management |
| aries-kfinder | 7570/tcp | 0.000000 | # Aries Kfinder |
| aries-kfinder | 7570/udp | 0.000000 | # Aries Kfinder |
| coherence | 7574/tcp | 0.000000 | # coherence-disc | Oracle Coherence Cluster Service | Oracle Coherence Cluster discovery service |
| sun-lm | 7588/tcp | 0.000000 | # Sun License Manager |
| sun-lm | 7588/udp | 0.000000 | # Sun License Manager |
| qaz | 7597/tcp | 0.000050 | # Quaz trojan worm |
| mipi-debug | 7606/tcp | 0.000000 | # MIPI Alliance Debug |
| indi | 7624/tcp | 0.000000 | # Instrument Neutral Distributed Interface |
| indi | 7624/udp | 0.000000 | # Instrument Neutral Distributed Interface |
| simco | 7626/sctp | 0.000000 | # SImple Middlebox COnfiguration (SIMCO) | SImple Middlebox COnfiguration (SIMCO) Server |
| simco | 7626/tcp | 0.000000 | # SImple Middlebox COnfiguration (SIMCO) Server |
| soap-http | 7627/tcp | 0.000380 | # SOAP Service Port |
| soap-http | 7627/udp | 0.000000 | # SOAP Service Port |
| zen-pawn | 7628/tcp | 0.000076 | # Primary Agent Work Notification |
| zen-pawn | 7628/udp | 0.000000 | # Primary Agent Work Notification |
| xdas | 7629/tcp | 0.000000 | # OpenXDAS Wire Protocol |
| xdas | 7629/udp | 0.000000 | # OpenXDAS Wire Protocol |
| hawk | 7630/tcp | 0.000000 | # HA Web Konsole |
| tesla-sys-msg | 7631/tcp | 0.000000 | # TESLA System Messaging |
| pmdfmgt | 7633/tcp | 0.000000 | # PMDF Management |
| pmdfmgt | 7633/udp | 0.000330 | # PMDF Management |
| hddtemp | 7634/tcp | 0.000025 | # A cross-platform hard disk temperature monitoring daemon |
| cuseeme | 7648/tcp | 0.000000 | # bonjour-cuseeme |
| cucme-1 | 7648/udp | 0.000923 | # cucme live video/audio server |
| cucme-2 | 7649/udp | 0.000379 | # cucme live video/audio server |
| cucme-3 | 7650/udp | 0.000395 | # cucme live video/audio server |
| cucme-4 | 7651/udp | 0.000988 | # cucme live video/audio server |
| rome | 7663/tcp | 0.000000 | # Proprietary immutable distributed data storage |
| imqstomp | 7672/tcp | 0.000000 | # iMQ STOMP Server |
| imqstomps | 7673/tcp | 0.000000 | # iMQ STOMP Server over SSL |
| imqtunnels | 7674/tcp | 0.000000 | # iMQ SSL tunnel |
| imqtunnels | 7674/udp | 0.000000 | # iMQ SSL tunnel |
| imqtunnel | 7675/tcp | 0.000000 | # iMQ Tunnel |
| imqtunnel | 7675/udp | 0.000000 | # iMQ Tunnel |
| imqbrokerd | 7676/tcp | 0.000228 | # iMQ Broker Rendezvous |
| imqbrokerd | 7676/udp | 0.000000 | # iMQ Broker Rendezvous |
| sun-user-https | 7677/tcp | 0.000000 | # Sun App Server - HTTPS |
| sun-user-https | 7677/udp | 0.000991 | # Sun App Server - HTTPS |
| pando-pub | 7680/tcp | 0.000000 | # ms-do | Pando Media Public Distribution | Microsoft Delivery Optimization Peer-to-Peer |
| pando-pub | 7680/udp | 0.000330 | # Pando Media Public Distribution |
| dmt | 7683/tcp | 0.000000 | # Cleondris DMT |
| bolt | 7687/tcp | 0.000000 | # Bolt database connection |
| collaber | 7689/tcp | 0.000000 | # Collaber Network Service |
| collaber | 7689/udp | 0.000000 | # Collaber Network Service |
| sovd | 7690/tcp | 0.000000 | # Service-Oriented Vehicle Diagnostics |
| klio | 7697/tcp | 0.000000 | # KLIO communications |
| klio | 7697/udp | 0.000330 | # KLIO communications |
| em7-secom | 7700/tcp | 0.000000 | # EM7 Secure Communications |
| nfapi | 7701/tcp | 0.000000 | # SCF nFAPI defining MAC/PHY split |
| sync-em7 | 7707/tcp | 0.000000 | # EM7 Dynamic Updates |
| sync-em7 | 7707/udp | 0.000000 | # EM7 Dynamic Updates |
| scinet | 7708/tcp | 0.000000 | # scientia.net |
| scinet | 7708/udp | 0.000000 | # scientia.net |
| medimageportal | 7720/tcp | 0.000000 | # MedImage Portal |
| medimageportal | 7720/udp | 0.000330 | # MedImage Portal |
| nsdeepfreezectl | 7724/tcp | 0.000000 | # Novell Snap-in Deep Freeze Control |
| nsdeepfreezectl | 7724/udp | 0.000000 | # Novell Snap-in Deep Freeze Control |
| nitrogen | 7725/tcp | 0.000152 | # Nitrogen Service |
| nitrogen | 7725/udp | 0.000330 | # Nitrogen Service |
| freezexservice | 7726/tcp | 0.000000 | # FreezeX Console Service |
| freezexservice | 7726/udp | 0.000000 | # FreezeX Console Service |
| trident-data | 7727/tcp | 0.000000 | # Trident Systems Data |
| trident-data | 7727/udp | 0.000330 | # Trident Systems Data |
| osvr | 7728/tcp | 0.000000 | # Open-Source Virtual Reality |
| smip | 7734/tcp | 0.000000 | # Smith Protocol over IP |
| smip | 7734/udp | 0.000000 | # Smith Protocol over IP |
| aiagent | 7738/tcp | 0.000000 | # HP Enterprise Discovery Agent |
| aiagent | 7738/udp | 0.000330 | # HP Enterprise Discovery Agent |
| scriptview | 7741/tcp | 0.000380 | # ScriptView Network |
| scriptview | 7741/udp | 0.000330 | # ScriptView Network |
| msss | 7742/tcp | 0.000000 | # Mugginsoft Script Server Service |
| sstp-1 | 7743/tcp | 0.000000 | # Sakura Script Transfer Protocol |
| sstp-1 | 7743/udp | 0.000000 | # Sakura Script Transfer Protocol |
| raqmon-pdu | 7744/tcp | 0.000152 | # RAQMON PDU |
| raqmon-pdu | 7744/udp | 0.000000 | # RAQMON PDU |
| prgp | 7747/tcp | 0.000000 | # Put/Run/Get Protocol |
| prgp | 7747/udp | 0.000330 | # Put/Run/Get Protocol |
| inetfs | 7775/tcp | 0.000000 | # A File System using TLS over a wide area network |
| cbt | 7777/tcp | 0.000380 | cbt 7777/tcp 0.000380 |
| cbt | 7777/udp | 0.000000 | cbt 7777/udp 0.000000 |
| interwise | 7778/tcp | 0.000380 | interwise 7778/tcp 0.000380 |
| interwise | 7778/udp | 0.000330 | # Interwise |
| vstat | 7779/tcp | 0.000000 | vstat 7779/tcp 0.000000 |
| vstat | 7779/udp | 0.000330 | # VSTAT |
| accu-lmgr | 7781/tcp | 0.000000 | accu-lmgr 7781/tcp 0.000000 |
| accu-lmgr | 7781/udp | 0.000000 | accu-lmgr 7781/udp 0.000000 |
| s-bfd | 7784/tcp | 0.000000 | # Seamless Bidirectional Forwarding Detection (S-BFD) |
| minivend | 7786/tcp | 0.000000 | minivend 7786/tcp 0.000000 |
| minivend | 7786/udp | 0.000000 | # MINIVEND |
| popup-reminders | 7787/tcp | 0.000000 | # Popup Reminders Receive |
| popup-reminders | 7787/udp | 0.000330 | # Popup Reminders Receive |
| office-tools | 7789/tcp | 0.000076 | # Office Tools Pro Receive |
| office-tools | 7789/udp | 0.000000 | # Office Tools Pro Receive |
| q3ade | 7794/tcp | 0.000000 | # Q3ADE Cluster Service |
| q3ade | 7794/udp | 0.000000 | # Q3ADE Cluster Service |
| pnet-conn | 7797/tcp | 0.000000 | # Propel Connector port |
| pnet-conn | 7797/udp | 0.000000 | # Propel Connector port |
| pnet-enc | 7798/tcp | 0.000000 | # Propel Encoder port |
| pnet-enc | 7798/udp | 0.000000 | # Propel Encoder port |
| altbsdp | 7799/tcp | 0.000000 | # Alternate BSDP Service |
| altbsdp | 7799/udp | 0.000330 | # Alternate BSDP Service |
| asr | 7800/tcp | 0.000228 | # Apple Software Restore |
| asr | 7800/udp | 0.000000 | # Apple Software Restore |
| ssp-client | 7801/tcp | 0.000000 | # Secure Server Protocol - client |
| ssp-client | 7801/udp | 0.000330 | # Secure Server Protocol - client |
| vns-tp | 7802/tcp | 0.000000 | # Virtualized Network Services Tunnel Protocol |
| rbt-wanopt | 7810/tcp | 0.000000 | # Riverbed WAN Optimization Protocol |
| rbt-wanopt | 7810/udp | 0.000000 | # Riverbed WAN Optimization Protocol |
| apc-7845 | 7845/tcp | 0.000000 | # APC 7845 |
| apc-7845 | 7845/udp | 0.000000 | # APC 7845 |
| apc-7846 | 7846/tcp | 0.000000 | # APC 7846 |
| apc-7846 | 7846/udp | 0.000991 | # APC 7846 |
| csoauth | 7847/tcp | 0.000000 | # A product key authentication protocol made by CSO |
| mobileanalyzer | 7869/tcp | 0.000000 | # MobileAnalyzer& MobileMonitor |
| rbt-smc | 7870/tcp | 0.000000 | # Riverbed Steelhead Mobile Service |
| mdm | 7871/tcp | 0.000000 | # Mobile Device Management |
| mipv6tls | 7872/tcp | 0.000000 | # TLS-based Mobile IPv6 Security |
| owms | 7878/tcp | 0.000152 | # Opswise Message Service |
| pss | 7880/tcp | 0.000000 | # Pearson |
| pss | 7880/udp | 0.000000 | # Pearson |
| ubroker | 7887/tcp | 0.000000 | # Universal Broker |
| ubroker | 7887/udp | 0.000330 | # Universal Broker |
| mevent | 7900/tcp | 0.000152 | # Multicast Event |
| mevent | 7900/udp | 0.000000 | # Multicast Event |
| tnos-sp | 7901/tcp | 0.000000 | # TNOS Service Protocol |
| tnos-sp | 7901/udp | 0.000000 | # TNOS Service Protocol |
| tnos-dp | 7902/tcp | 0.000000 | # TNOS shell Protocol |
| tnos-dp | 7902/udp | 0.000000 | # TNOS shell Protocol |
| tnos-dps | 7903/tcp | 0.000000 | # TNOS Secure DiaguardProtocol |
| tnos-dps | 7903/udp | 0.000000 | # TNOS Secure DiaguardProtocol |
| qo-secure | 7913/tcp | 0.000152 | # QuickObjects secure port |
| qo-secure | 7913/udp | 0.000000 | # QuickObjects secure port |
| t2-drm | 7932/tcp | 0.000000 | # Tier 2 Data Resource Manager |
| t2-drm | 7932/udp | 0.000000 | # Tier 2 Data Resource Manager |
| t2-brm | 7933/tcp | 0.000000 | # Tier 2 Business Rules Manager |
| t2-brm | 7933/udp | 0.000330 | # Tier 2 Business Rules Manager |
| nsrexecd | 7937/tcp | 0.001455 | # Legato NetWorker |
| lgtomapper | 7938/tcp | 0.001229 | # Legato portmapper |
| generalsync | 7962/tcp | 0.000000 | # Encrypted, extendable, general-purpose synchronization protocol |
| supercell | 7967/tcp | 0.000000 | supercell 7967/tcp 0.000000 |
| supercell | 7967/udp | 0.000000 | # Supercell |
| micromuse-ncps | 7979/tcp | 0.000000 | micromuse-ncps 7979/tcp 0.000000 |
| micromuse-ncps | 7979/udp | 0.000000 | # Micromuse-ncps |
| quest-vista | 7980/tcp | 0.000000 | # Quest Vista |
| quest-vista | 7980/udp | 0.000330 | # Quest Vista |
| sossd-collect | 7981/tcp | 0.000000 | # Spotlight on SQL Server Desktop Collect |
| sossd-agent | 7982/tcp | 0.000000 | # sossd-disc | Spotlight on SQL Server Desktop Agent | Spotlight on SQL Server Desktop Agent Discovery |
| sossd-disc | 7982/udp | 0.000000 | # Spotlight on SQL Server Desktop Agent Discovery |
| pushns | 7997/tcp | 0.000000 | # PUSH Notification Service |
| usicontentpush | 7998/tcp | 0.000076 | # USI Content Push Service |
| usicontentpush | 7998/udp | 0.000000 | # USI Content Push Service |
| irdmi2 | 7999/tcp | 0.000228 | irdmi2 7999/tcp 0.000228 |
| irdmi2 | 7999/udp | 0.000000 | # iRDMI2 |
| http-alt | 8000/tcp | 0.009710 | # irdmi | A common alternative http port | iRDMI |
| irdmi | 8000/udp | 0.001652 | # iRDMI |
| vcom-tunnel | 8001/tcp | 0.000532 | # VCOM Tunnel |
| vcom-tunnel | 8001/udp | 0.001982 | # VCOM Tunnel |
| teradataordbms | 8002/tcp | 0.001216 | # Teradata ORDBMS |
| teradataordbms | 8002/udp | 0.000000 | # Teradata ORDBMS |
| mcreport | 8003/tcp | 0.000076 | # Mulberry Connect Reporting Service |
| mcreport | 8003/udp | 0.000000 | # Mulberry Connect Reporting Service |
| p2pevolvenet | 8004/tcp | 0.000000 | # Opensource Evolv Enterprise Platform P2P Network Node Connection Protocol |
| mxi | 8005/tcp | 0.000076 | # MXI Generation II for z/OS |
| mxi | 8005/udp | 0.000000 | # MXI Generation II for z/OS |
| wpl-analytics | 8006/tcp | 0.000076 | # wpl-disc | World Programming analytics | World Programming analytics discovery |
| ajp12 | 8007/tcp | 0.000477 | # warppipe | Apache JServ Protocol 1.x | I/O oriented cluster computing software |
| http | 8008/tcp | 0.006843 | # http-alt | IBM HTTP server | HTTP Alternate |
| http-alt | 8008/udp | 0.000330 | # HTTP Alternate |
| ajp13 | 8009/tcp | 0.004642 | # nvme-disc | Apache JServ Protocol 1.3 | NVMe over Fabrics Discovery Service |
| xmpp | 8010/tcp | 0.002129 | # XMPP File Transfer |
| cfg-cloud | 8015/tcp | 0.000152 | # Configuration Cloud Service |
| ads-s | 8016/tcp | 0.000152 | # Beckhoff Automation Device Specification |
| cisco-cloudsec | 8017/tcp | 0.000000 | # Cisco Cloudsec Dataplane Port Number |
| qbdb | 8019/tcp | 0.000152 | # QB DB Dynamic Port |
| qbdb | 8019/udp | 0.000000 | # QB DB Dynamic Port |
| intu-ec-svcdisc | 8020/tcp | 0.000000 | # Intuit Entitlement Service and Discovery |
| intu-ec-svcdisc | 8020/udp | 0.000000 | # Intuit Entitlement Service and Discovery |
| ftp-proxy | 8021/tcp | 0.000627 | # intu-ec-client | Common FTP proxy port | Intuit Entitlement Client |
| intu-ec-client | 8021/udp | 0.000000 | # Intuit Entitlement Client |
| oa-system | 8022/tcp | 0.000228 | oa-system 8022/tcp 0.000228 |
| oa-system | 8022/udp | 0.000000 | oa-system 8022/udp 0.000000 |
| arca-api | 8023/tcp | 0.000076 | # ARCATrust vault API |
| ca-audit-da | 8025/tcp | 0.000076 | # CA Audit Distribution Agent |
| ca-audit-da | 8025/udp | 0.000000 | # CA Audit Distribution Agent |
| ca-audit-ds | 8026/tcp | 0.000000 | # CA Audit Distribution Server |
| ca-audit-ds | 8026/udp | 0.000330 | # CA Audit Distribution Server |
| papachi-p2p-srv | 8027/tcp | 0.000000 | # peer tracker and data relay service |
| pro-ed | 8032/tcp | 0.000000 | # ProEd |
| pro-ed | 8032/udp | 0.000000 | # ProEd |
| mindprint | 8033/tcp | 0.000000 | mindprint 8033/tcp 0.000000 |
| mindprint | 8033/udp | 0.000000 | # MindPrint |
| vantronix-mgmt | 8034/tcp | 0.000000 | # .vantronix Management |
| vantronix-mgmt | 8034/udp | 0.000000 | # .vantronix Management |
| ampify | 8040/tcp | 0.000000 | # Ampify Messaging Protocol |
| ampify | 8040/udp | 0.000661 | # Ampify Messaging Protocol |
| enguity-xccetp | 8041/tcp | 0.000000 | # Xcorpeon ASIC Carrier Ethernet Transport |
| fs-agent | 8042/tcp | 0.000228 | # FireScope Agent |
| fs-server | 8043/tcp | 0.000000 | # FireScope Server |
| fs-mgmt | 8044/tcp | 0.000000 | # FireScope Management Interface |
| rocrail | 8051/tcp | 0.000000 | # Rocrail Client Service |
| senomix01 | 8052/tcp | 0.000076 | # Senomix Timesheets Server |
| senomix01 | 8052/udp | 0.000000 | # Senomix Timesheets Server |
| senomix02 | 8053/tcp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| senomix02 | 8053/udp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| senomix03 | 8054/tcp | 0.000000 | # Senomix Timesheets Server [1 year assignment] |
| senomix03 | 8054/udp | 0.000000 | # Senomix Timesheets Server [1 year assignment] |
| senomix04 | 8055/tcp | 0.000000 | # Senomix Timesheets Server [1 year assignment] |
| senomix04 | 8055/udp | 0.000000 | # Senomix Timesheets Server [1 year assignment] |
| senomix05 | 8056/tcp | 0.000000 | # Senomix Timesheets Server [1 year assignment] |
| senomix05 | 8056/udp | 0.000000 | # Senomix Timesheets Server [1 year assignment] |
| senomix06 | 8057/tcp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| senomix06 | 8057/udp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| senomix07 | 8058/tcp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| senomix07 | 8058/udp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| senomix08 | 8059/tcp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| senomix08 | 8059/udp | 0.000000 | # Senomix Timesheets Client [1 year assignment] |
| aero | 8060/tcp | 0.000076 | # Asymmetric Extended Route Optimization (AERO) |
| toad-bi-appsrvr | 8066/tcp | 0.000000 | # Toad BI Application Server |
| infi-async | 8067/tcp | 0.000000 | # Infinidat async replication |
| ucs-isc | 8070/tcp | 0.000000 | # Oracle Unified Communication Suite's Indexed Search Converter |
| gadugadu | 8074/tcp | 0.000000 | # Gadu-Gadu |
| gadugadu | 8074/udp | 0.000000 | # Gadu-Gadu |
| slnp | 8076/tcp | 0.000050 | # SLNP (Simple Library Network Protocol) by Sisis Informationssysteme GmbH |
| mles | 8077/tcp | 0.000000 | # Mles is a client-server data distribution protocol targeted to serve as a lightweight and reliable distributed publish/subscribe database service. |
| http-proxy | 8080/tcp | 0.042052 | # http-alt | Common HTTP proxy/second web server port | HTTP Alternate (see port 80) |
| http-alt | 8080/udp | 0.000000 | # HTTP Alternate (see port 80) |
| blackice-icecap | 8081/tcp | 0.006147 | # sunproxyadmin | ICECap user console | Sun Proxy Admin Service |
| sunproxyadmin | 8081/udp | 0.000000 | # Sun Proxy Admin Service |
| blackice-alerts | 8082/tcp | 0.000878 | # us-cli | BlackIce Alerts sent to this port | Utilistor (Client) |
| us-cli | 8082/udp | 0.000000 | # Utilistor (Client) |
| us-srv | 8083/tcp | 0.000532 | # Utilistor (Server) |
| us-srv | 8083/udp | 0.000000 | # Utilistor (Server) |
| websnp | 8084/tcp | 0.000532 | # Snarl Network Protocol over HTTP |
| d-s-n | 8086/tcp | 0.000380 | # Distributed SCADA Networking Rendezvous Port |
| d-s-n | 8086/udp | 0.000000 | # Distributed SCADA Networking Rendezvous Port |
| simplifymedia | 8087/tcp | 0.000380 | # Simplify Media SPP Protocol |
| simplifymedia | 8087/udp | 0.000000 | # Simplify Media SPP Protocol |
| radan-http | 8088/tcp | 0.000608 | # Radan HTTP |
| radan-http | 8088/udp | 0.000000 | # Radan HTTP |
| opsmessaging | 8090/tcp | 0.000304 | # Vehicle to station messaging |
| jamlink | 8091/tcp | 0.000000 | # Jam Link Framework |
| sac | 8097/tcp | 0.000152 | # SAC Port Id |
| sac | 8097/udp | 0.000000 | # SAC Port Id |
| xprint-server | 8100/tcp | 0.000304 | # Xprint Server |
| xprint-server | 8100/udp | 0.000000 | # Xprint Server |
| ldoms-migr | 8101/tcp | 0.000000 | # Logical Domains Migration |
| kz-migr | 8102/tcp | 0.000000 | # Oracle Kernel zones migration server |
| skynetflow | 8111/tcp | 0.000000 | # Skynetflow network services |
| mtl8000-matrix | 8115/tcp | 0.000000 | # MTL8000 Matrix |
| mtl8000-matrix | 8115/udp | 0.000330 | # MTL8000 Matrix |
| cp-cluster | 8116/tcp | 0.000076 | # Check Point Clustering |
| cp-cluster | 8116/udp | 0.000000 | # Check Point Clustering |
| purityrpc | 8117/tcp | 0.000000 | # Purity replication clustering and remote management |
| privoxy | 8118/tcp | 0.000138 | # Privoxy, www.privoxy.org | Privoxy HTTP proxy |
| privoxy | 8118/udp | 0.000000 | # Privoxy HTTP proxy |
| apollo-data | 8121/tcp | 0.000000 | # Apollo Data Port |
| apollo-data | 8121/udp | 0.000000 | # Apollo Data Port |
| apollo-admin | 8122/tcp | 0.000000 | # Apollo Admin Port |
| apollo-admin | 8122/udp | 0.000000 | # Apollo Admin Port |
| polipo | 8123/tcp | 0.000038 | # Polipo open source web proxy cache |
| paycash-online | 8128/tcp | 0.000000 | # PayCash Online Protocol |
| paycash-online | 8128/udp | 0.000000 | # PayCash Online Protocol |
| paycash-wbp | 8129/tcp | 0.000000 | # PayCash Wallet-Browser |
| paycash-wbp | 8129/udp | 0.000000 | # PayCash Wallet-Browser |
| indigo-vrmi | 8130/tcp | 0.000000 | indigo-vrmi 8130/tcp 0.000000 |
| indigo-vrmi | 8130/udp | 0.000000 | # INDIGO-VRMI |
| indigo-vbcp | 8131/tcp | 0.000000 | indigo-vbcp 8131/tcp 0.000000 |
| indigo-vbcp | 8131/udp | 0.000000 | # INDIGO-VBCP |
| dbabble | 8132/tcp | 0.000000 | dbabble 8132/tcp 0.000000 |
| dbabble | 8132/udp | 0.000000 | dbabble 8132/udp 0.000000 |
| puppet | 8140/tcp | 0.000000 | # The Puppet server service |
| isdd | 8148/tcp | 0.000000 | # i-SDD file transfer |
| isdd | 8148/udp | 0.000000 | # i-SDD file transfer |
| eor-game | 8149/tcp | 0.000000 | # Edge of Reality game data |
| quantastor | 8153/tcp | 0.000000 | # QuantaStor Management Interface |
| patrol | 8160/tcp | 0.000000 | patrol 8160/tcp 0.000000 |
| patrol | 8160/udp | 0.000000 | # Patrol |
| patrol-snmp | 8161/tcp | 0.000000 | # Patrol SNMP |
| patrol-snmp | 8161/udp | 0.000000 | # Patrol SNMP |
| lpar2rrd | 8162/tcp | 0.000000 | # LPAR2RRD client server communication |
| intermapper | 8181/tcp | 0.000380 | # Intermapper network management system |
| vmware-fdm | 8182/tcp | 0.000000 | # VMware Fault Domain Manager |
| vmware-fdm | 8182/udp | 0.000330 | # VMware Fault Domain Manager |
| proremote | 8183/tcp | 0.000000 | proremote 8183/tcp 0.000000 |
| itach | 8184/tcp | 0.000000 | # Remote iTach Connection |
| itach | 8184/udp | 0.000000 | # Remote iTach Connection |
| gcp-rphy | 8190/tcp | 0.000000 | # Generic control plane for RPHY |
| limnerpressure | 8191/tcp | 0.000000 | # Limner Pressure |
| sophos | 8192/tcp | 0.000760 | # spytechphone | Sophos Remote Management System | SpyTech Phone Service |
| sophos | 8192/udp | 0.000000 | # Sophos Remote Management System |
| sophos | 8193/tcp | 0.000760 | # Sophos Remote Management System |
| sophos | 8193/udp | 0.002973 | # Sophos Remote Management System |
| sophos | 8194/tcp | 0.000760 | # blp1 | Sophos Remote Management System | Bloomberg data API |
| sophos | 8194/udp | 0.000000 | # Sophos Remote Management System |
| blp2 | 8195/tcp | 0.000000 | # Bloomberg feed |
| blp2 | 8195/udp | 0.000000 | # Bloomberg feed |
| vvr-data | 8199/tcp | 0.000000 | # VVR DATA |
| vvr-data | 8199/udp | 0.000330 | # VVR DATA |
| trivnet1 | 8200/tcp | 0.000228 | # TRIVNET |
| trivnet1 | 8200/udp | 0.000000 | # TRIVNET |
| trivnet2 | 8201/tcp | 0.000076 | # TRIVNET |
| trivnet2 | 8201/udp | 0.000661 | # TRIVNET |
| aesop | 8202/tcp | 0.000076 | # Audio+Ethernet Standard Open Protocol |
| lm-perfworks | 8204/tcp | 0.000000 | # LM Perfworks |
| lm-perfworks | 8204/udp | 0.000000 | # LM Perfworks |
| lm-instmgr | 8205/tcp | 0.000000 | # LM Instmgr |
| lm-instmgr | 8205/udp | 0.000000 | # LM Instmgr |
| lm-dta | 8206/tcp | 0.000000 | # LM Dta |
| lm-dta | 8206/udp | 0.000000 | # LM Dta |
| lm-sserver | 8207/tcp | 0.000000 | # LM SServer |
| lm-sserver | 8207/udp | 0.000991 | # LM SServer |
| lm-webwatcher | 8208/tcp | 0.000000 | # LM Webwatcher |
| lm-webwatcher | 8208/udp | 0.000000 | # LM Webwatcher |
| aruba-papi | 8211/tcp | 0.000000 | # Aruba Networks AP management |
| rexecj | 8230/tcp | 0.000000 | # RexecJ Server |
| rexecj | 8230/udp | 0.000000 | # RexecJ Server |
| hncp-udp-port | 8231/tcp | 0.000000 | # HNCP |
| hncp-dtls-port | 8232/tcp | 0.000076 | # HNCP over DTLS |
| synapse-nhttps | 8243/tcp | 0.000000 | # Synapse Non Blocking HTTPS |
| synapse-nhttps | 8243/udp | 0.000000 | # Synapse Non Blocking HTTPS |
| espeasy-p2p | 8266/tcp | 0.000000 | # ESPeasy peer-2-peer communication |
| robot-remote | 8270/tcp | 0.000000 | # Robot Framework Remote Library Interface |
| pando-sec | 8276/tcp | 0.000000 | # ms-mcc | Pando Media Controlled Distribution | Microsoft Connected Cache |
| pando-sec | 8276/udp | 0.000000 | # Pando Media Controlled Distribution |
| synapse-nhttp | 8280/tcp | 0.000000 | # Synapse Non Blocking HTTP |
| synapse-nhttp | 8280/udp | 0.000000 | # Synapse Non Blocking HTTP |
| libelle | 8282/tcp | 0.000076 | # libelle-disc | Libelle EnterpriseBus | Libelle EnterpriseBus discovery |
| blp3 | 8292/tcp | 0.000228 | # Bloomberg professional |
| blp3 | 8292/udp | 0.000330 | # Bloomberg professional |
| hiperscan-id | 8293/tcp | 0.000152 | # Hiperscan Identification Service |
| blp4 | 8294/tcp | 0.000152 | # Bloomberg intelligent client |
| blp4 | 8294/udp | 0.000000 | # Bloomberg intelligent client |
| tmi | 8300/tcp | 0.000228 | # Transport Management Interface |
| tmi | 8300/udp | 0.000000 | # Transport Management Interface |
| amberon | 8301/tcp | 0.000000 | # Amberon PPC/PPS |
| amberon | 8301/udp | 0.000000 | # Amberon PPC/PPS |
| hub-open-net | 8313/tcp | 0.000000 | # Hub Open Network |
| tnp-discover | 8320/tcp | 0.000000 | # Thin(ium) Network Protocol |
| tnp-discover | 8320/udp | 0.000000 | # Thin(ium) Network Protocol |
| tnp | 8321/tcp | 0.000000 | # Thin(ium) Network Protocol |
| tnp | 8321/udp | 0.000330 | # Thin(ium) Network Protocol |
| garmin-marine | 8322/tcp | 0.000000 | # Garmin Marine |
| bitcoin | 8333/tcp | 0.000380 | # Bitcoin crypto currency - https://en.bitcoin.it/wiki/Running_Bitcoin |
| server-find | 8351/tcp | 0.000000 | # Server Find |
| server-find | 8351/udp | 0.000000 | # Server Find |
| cruise-enum | 8376/tcp | 0.000000 | # Cruise ENUM |
| cruise-enum | 8376/udp | 0.000000 | # Cruise ENUM |
| cruise-swroute | 8377/tcp | 0.000000 | # Cruise SWROUTE |
| cruise-swroute | 8377/udp | 0.000000 | # Cruise SWROUTE |
| cruise-config | 8378/tcp | 0.000000 | # Cruise CONFIG |
| cruise-config | 8378/udp | 0.000000 | # Cruise CONFIG |
| cruise-diags | 8379/tcp | 0.000000 | # Cruise DIAGS |
| cruise-diags | 8379/udp | 0.000000 | # Cruise DIAGS |
| cruise-update | 8380/tcp | 0.000000 | # Cruise UPDATE |
| cruise-update | 8380/udp | 0.000000 | # Cruise UPDATE |
| m2mservices | 8383/tcp | 0.000228 | # M2m Services |
| m2mservices | 8383/udp | 0.000000 | # M2m Services |
| marathontp | 8384/tcp | 0.000000 | # Marathon Transport Protocol |
| cvd | 8400/tcp | 0.000380 | cvd 8400/tcp 0.000380 |
| cvd | 8400/udp | 0.000000 | cvd 8400/udp 0.000000 |
| sabarsd | 8401/tcp | 0.000076 | sabarsd 8401/tcp 0.000076 |
| sabarsd | 8401/udp | 0.000000 | sabarsd 8401/udp 0.000000 |
| abarsd | 8402/tcp | 0.000380 | abarsd 8402/tcp 0.000380 |
| abarsd | 8402/udp | 0.000661 | abarsd 8402/udp 0.000661 |
| admind | 8403/tcp | 0.000076 | admind 8403/tcp 0.000076 |
| admind | 8403/udp | 0.000330 | admind 8403/udp 0.000330 |
| svcloud | 8404/tcp | 0.000000 | # SuperVault Cloud |
| svbackup | 8405/tcp | 0.000000 | # SuperVault Backup |
| dlpx-sp | 8415/tcp | 0.000000 | # Delphix Session Protocol |
| espeech | 8416/tcp | 0.000000 | # eSpeech Session Protocol |
| espeech | 8416/udp | 0.000000 | # eSpeech Session Protocol |
| espeech-rtp | 8417/tcp | 0.000000 | # eSpeech RTP Protocol |
| espeech-rtp | 8417/udp | 0.000000 | # eSpeech RTP Protocol |
| aritts | 8423/tcp | 0.000000 | # Aristech text-to-speech server |
| pgbackrest | 8432/tcp | 0.000000 | # PostgreSQL Backup |
| cybro-a-bus | 8442/tcp | 0.000000 | # CyBro A-bus Protocol |
| cybro-a-bus | 8442/udp | 0.000330 | # CyBro A-bus Protocol |
| https-alt | 8443/tcp | 0.009986 | # pcsync-https | Common alternative https port | PCsync HTTPS |
| pcsync-https | 8443/udp | 0.000000 | # PCsync HTTPS |
| pcsync-http | 8444/tcp | 0.000000 | # PCsync HTTP |
| pcsync-http | 8444/udp | 0.000000 | # PCsync HTTP |
| copy | 8445/tcp | 0.000076 | # copy-disc | Port for copy peer sync feature | Port for copy discovery |
| npmp | 8450/tcp | 0.000000 | npmp 8450/tcp 0.000000 |
| npmp | 8450/udp | 0.000000 | npmp 8450/udp 0.000000 |
| nexentamv | 8457/tcp | 0.000000 | # Nexenta Management GUI |
| cisco-avp | 8470/tcp | 0.000076 | # Cisco Address Validation Protocol |
| pim-port | 8471/sctp | 0.000000 | # PIM over Reliable Transport |
| pim-port | 8471/tcp | 0.000076 | # PIM over Reliable Transport |
| pim-port | 8471/udp | 0.000330 | # PIM over Reliable Transport |
| otv | 8472/tcp | 0.000076 | # Overlay Transport Virtualization (OTV) |
| otv | 8472/udp | 0.000000 | # Overlay Transport Virtualization (OTV) |
| vp2p | 8473/tcp | 0.000000 | # Virtual Point to Point |
| vp2p | 8473/udp | 0.000330 | # Virtual Point to Point |
| noteshare | 8474/tcp | 0.000076 | # AquaMinds NoteShare |
| noteshare | 8474/udp | 0.000000 | # AquaMinds NoteShare |
| fmtp | 8500/tcp | 0.000304 | # Flight Message Transfer Protocol |
| fmtp | 8500/udp | 0.000000 | # Flight Message Transfer Protocol |
| cmtp-mgt | 8501/tcp | 0.000000 | # cmtp-av | CYTEL Message Transfer Management | CYTEL Message Transfer Audio and Video |
| ftnmtp | 8502/tcp | 0.000000 | # FTN Message Transfer Protocol |
| lsp-self-ping | 8503/tcp | 0.000000 | # MPLS LSP Self-Ping |
| rtsp-alt | 8554/tcp | 0.000000 | # RTSP Alternate (see port 554) |
| rtsp-alt | 8554/udp | 0.000000 | # RTSP Alternate (see port 554) |
| d-fence | 8555/tcp | 0.000000 | # SYMAX D-FENCE |
| d-fence | 8555/udp | 0.000000 | # SYMAX D-FENCE |
| oap-admin | 8567/tcp | 0.000000 | # dof-tunnel | Object Access Protocol Administration | DOF Tunneling Protocol |
| oap-admin | 8567/udp | 0.000000 | # Object Access Protocol Administration |
| asterix | 8600/tcp | 0.000380 | # Surveillance Data |
| asterix | 8600/udp | 0.000000 | # Surveillance Data |
| canon-cpp-disc | 8609/tcp | 0.000000 | # Canon Compact Printer Protocol Discovery |
| canon-mfnp | 8610/tcp | 0.000000 | # Canon MFNP Service |
| canon-mfnp | 8610/udp | 0.000000 | # Canon MFNP Service |
| canon-bjnp1 | 8611/tcp | 0.000000 | # Canon BJNP Port 1 |
| canon-bjnp1 | 8611/udp | 0.000330 | # Canon BJNP Port 1 |
| canon-bjnp2 | 8612/tcp | 0.000000 | # Canon BJNP Port 2 |
| canon-bjnp2 | 8612/udp | 0.000330 | # Canon BJNP Port 2 |
| canon-bjnp3 | 8613/tcp | 0.000000 | # Canon BJNP Port 3 |
| canon-bjnp3 | 8613/udp | 0.000330 | # Canon BJNP Port 3 |
| canon-bjnp4 | 8614/tcp | 0.000000 | # Canon BJNP Port 4 |
| canon-bjnp4 | 8614/udp | 0.000330 | # Canon BJNP Port 4 |
| imink | 8615/tcp | 0.000000 | # Imink Service Control |
| monetra | 8665/tcp | 0.000000 | monetra 8665/tcp 0.000000 |
| monetra-admin | 8666/tcp | 0.000000 | # Monetra Administrative Access |
| msi-cps-rm | 8675/tcp | 0.000152 | # msi-cps-rm-disc | Motorola Solutions Customer Programming Software for Radio Management | Motorola Solutions Customer Programming Software for Radio Management Discovery |
| sun-as-jmxrmi | 8686/tcp | 0.000152 | # Sun App Server - JMX/RMI |
| sun-as-jmxrmi | 8686/udp | 0.000000 | # Sun App Server - JMX/RMI |
| openremote-ctrl | 8688/tcp | 0.000000 | # OpenRemote Controller HTTP/REST |
| vnyx | 8699/tcp | 0.000000 | # VNYX Primary Port |
| vnyx | 8699/udp | 0.000000 | # VNYX Primary Port |
| semi-grpc | 8710/tcp | 0.000000 | # gRPC for SEMI Standards implementations |
| nvc | 8711/tcp | 0.000000 | # Nuance Voice Control |
| dtp-net | 8732/tcp | 0.000000 | # DASGIP Net Services |
| dtp-net | 8732/udp | 0.000000 | # DASGIP Net Services |
| ibus | 8733/tcp | 0.000000 | ibus 8733/tcp 0.000000 |
| ibus | 8733/udp | 0.000000 | # iBus |
| dey-keyneg | 8750/tcp | 0.000000 | # DEY Storage Key Negotiation |
| mc-appserver | 8763/tcp | 0.000000 | mc-appserver 8763/tcp 0.000000 |
| mc-appserver | 8763/udp | 0.000000 | # MC-APPSERVER |
| openqueue | 8764/tcp | 0.000000 | openqueue 8764/tcp 0.000000 |
| openqueue | 8764/udp | 0.000000 | # OPENQUEUE |
| ultraseek-http | 8765/tcp | 0.000152 | # Ultraseek HTTP |
| ultraseek-http | 8765/udp | 0.000000 | # Ultraseek HTTP |
| amcs | 8766/tcp | 0.000152 | # Agilent Connectivity Service |
| core-of-source | 8767/tcp | 0.000000 | # Online mobile multiplayer game |
| sandpolis | 8768/tcp | 0.000000 | # Sandpolis Server |
| oktaauthenticat | 8769/tcp | 0.000000 | # Okta MultiPlatform Access Mgmt for Cloud Svcs |
| apple-iphoto | 8770/tcp | 0.000025 | # dpap | Apple iPhoto sharing | Digital Photo Access Protocol (iPhoto) |
| dpap | 8770/udp | 0.000000 | # Digital Photo Access Protocol |
| uec | 8778/tcp | 0.000000 | # Stonebranch Universal Enterprise Controller |
| msgclnt | 8786/tcp | 0.000000 | # Message Client |
| msgclnt | 8786/udp | 0.000000 | # Message Client |
| msgsrvr | 8787/tcp | 0.000000 | # Message Server |
| msgsrvr | 8787/udp | 0.000000 | # Message Server |
| acd-pm | 8793/tcp | 0.000000 | # Accedian Performance Measurement |
| sunwebadmin | 8800/tcp | 0.000228 | # Sun Web Server Admin Service |
| sunwebadmin | 8800/udp | 0.000000 | # Sun Web Server Admin Service |
| truecm | 8804/tcp | 0.000000 | truecm 8804/tcp 0.000000 |
| truecm | 8804/udp | 0.000000 | truecm 8804/udp 0.000000 |
| pfcp | 8805/tcp | 0.000000 | # Destination Port number for PFCP |
| hes-clip | 8807/tcp | 0.000000 | # HES-CLIP Interoperability protocol |
| ssports-bcast | 8808/tcp | 0.000000 | # STATSports Broadcast Service |
| 3gpp-monp | 8809/tcp | 0.000000 | # MCPTT Off-Network Protocol (MONP) |
| nessus-xmlrpc | 8834/tcp | 0.000000 | nessus-xmlrpc 8834/tcp 0.000000 |
| dxspider | 8873/tcp | 0.000380 | # dxspider linking protocol |
| dxspider | 8873/udp | 0.000000 | # dxspider linking protocol |
| cddbp-alt | 8880/tcp | 0.000076 | # CDDBP |
| cddbp-alt | 8880/udp | 0.000000 | # CDDBP |
| galaxy4d | 8881/tcp | 0.000000 | # Galaxy4D Online Game Engine |
| secure-mqtt | 8883/tcp | 0.000076 | # Secure MQTT |
| secure-mqtt | 8883/udp | 0.000000 | # Secure MQTT |
| sun-answerbook | 8888/tcp | 0.016522 | # ddi-udp-1 | ddi-tcp-1 | Sun Answerbook HTTP server.  Or gnump3d streaming music server | NewsEDGE server TCP (TCP 1) | NewsEDGE server UDP (UDP 1) |
| ddi-udp-1 | 8888/udp | 0.000000 | # NewsEDGE server UDP (UDP 1) |
| ddi-tcp-2 | 8889/tcp | 0.000152 | # ddi-udp-2 | Desktop Data TCP 1 | NewsEDGE server broadcast |
| ddi-udp-2 | 8889/udp | 0.000000 | # NewsEDGE server broadcast |
| ddi-tcp-3 | 8890/tcp | 0.000000 | # ddi-udp-3 | Desktop Data TCP 2 | NewsEDGE client broadcast |
| ddi-udp-3 | 8890/udp | 0.000000 | # NewsEDGE client broadcast |
| ddi-tcp-4 | 8891/tcp | 0.000000 | # ddi-udp-4 | Desktop Data TCP 3: NESS application | Desktop Data UDP 3: NESS application |
| ddi-udp-4 | 8891/udp | 0.000000 | # Desktop Data UDP 3: NESS application |
| seosload | 8892/tcp | 0.000038 | # ddi-udp-5 | ddi-tcp-5 | From the new Computer Associates eTrust ACX | Desktop Data TCP 4: FARM product | Desktop Data UDP 4: FARM product |
| ddi-udp-5 | 8892/udp | 0.000000 | # Desktop Data UDP 4: FARM product |
| ddi-tcp-6 | 8893/tcp | 0.000000 | # ddi-udp-6 | Desktop Data TCP 5: NewsEDGE/Web application | Desktop Data UDP 5: NewsEDGE/Web application |
| ddi-udp-6 | 8893/udp | 0.000000 | # Desktop Data UDP 5: NewsEDGE/Web application |
| ddi-tcp-7 | 8894/tcp | 0.000000 | # ddi-udp-7 | Desktop Data TCP 6: COAL application | Desktop Data UDP 6: COAL application |
| ddi-udp-7 | 8894/udp | 0.000000 | # Desktop Data UDP 6: COAL application |
| ospf-lite | 8899/tcp | 0.000608 | ospf-lite 8899/tcp 0.000608 |
| ospf-lite | 8899/udp | 0.000330 | ospf-lite 8899/udp 0.000330 |
| jmb-cds1 | 8900/tcp | 0.000076 | # JMB-CDS 1 |
| jmb-cds1 | 8900/udp | 0.001321 | # JMB-CDS 1 |
| jmb-cds2 | 8901/tcp | 0.000000 | # JMB-CDS 2 |
| jmb-cds2 | 8901/udp | 0.000330 | # JMB-CDS 2 |
| dpp | 8908/tcp | 0.000000 | # WFA Device Provisioning Protocol |
| manyone-http | 8910/tcp | 0.000000 | manyone-http 8910/tcp 0.000000 |
| manyone-http | 8910/udp | 0.000330 | manyone-http 8910/udp 0.000330 |
| manyone-xml | 8911/tcp | 0.000000 | manyone-xml 8911/tcp 0.000000 |
| manyone-xml | 8911/udp | 0.000000 | manyone-xml 8911/udp 0.000000 |
| wcbackup | 8912/tcp | 0.000000 | # Windows Client Backup |
| wcbackup | 8912/udp | 0.000000 | # Windows Client Backup |
| dragonfly | 8913/tcp | 0.000000 | # Dragonfly System Service |
| dragonfly | 8913/udp | 0.000000 | # Dragonfly System Service |
| twds | 8937/tcp | 0.000000 | # Transaction Warehouse Data Service |
| ub-dns-control | 8953/tcp | 0.000000 | # unbound dns nameserver control |
| cumulus-admin | 8954/tcp | 0.000076 | # Cumulus Admin Port |
| cumulus-admin | 8954/udp | 0.000000 | # Cumulus Admin Port |
| nod-provider | 8980/tcp | 0.000076 | # Network of Devices Provider |
| nod-client | 8981/tcp | 0.000000 | # Network of Devices Client |
| sunwebadmins | 8989/tcp | 0.000000 | # Sun Web Server SSL Admin Service |
| sunwebadmins | 8989/udp | 0.000000 | # Sun Web Server SSL Admin Service |
| http-wmap | 8990/tcp | 0.000000 | # webmail HTTP service |
| http-wmap | 8990/udp | 0.000000 | # webmail HTTP service |
| https-wmap | 8991/tcp | 0.000000 | # webmail HTTPS service |
| https-wmap | 8991/udp | 0.000000 | # webmail HTTPS service |
| oracle-ms-ens | 8997/tcp | 0.000000 | # Oracle Messaging Server Event Notification Service |
| canto-roboflow | 8998/tcp | 0.000000 | # Canto RoboFlow Control |
| bctp | 8999/tcp | 0.000076 | # Brodos Crypto Trade Protocol |
| bctp | 8999/udp | 0.000000 | # Brodos Crypto Trade Protocol |
| cslistener | 9000/tcp | 0.002129 | cslistener 9000/tcp 0.002129 |
| cslistener | 9000/udp | 0.001652 | # CSlistener |
| tor-orport | 9001/tcp | 0.001216 | # etlservicemgr | Tor ORPort | ETL Service Manager |
| etlservicemgr | 9001/udp | 0.001652 | # ETL Service Manager |
| dynamid | 9002/tcp | 0.000380 | # DynamID authentication |
| dynamid | 9002/udp | 0.000661 | # DynamID authentication |
| golem | 9005/tcp | 0.000076 | # Golem Inter-System RPC |
| ogs-client | 9007/tcp | 0.000000 | # Open Grid Services Client |
| ogs-client | 9007/udp | 0.000000 | # Open Grid Services Client |
| ogs-server | 9008/tcp | 0.000000 | # Open Grid Services Server |
| pichat | 9009/tcp | 0.000456 | # Pichat Server |
| pichat | 9009/udp | 0.000000 | # Pichat Server |
| sdr | 9010/tcp | 0.000380 | # Secure Data Replicator Protocol |
| d-star | 9011/tcp | 0.000380 | # D-Star Routing digital voice+data for amateur radio |
| tambora | 9020/tcp | 0.000076 | tambora 9020/tcp 0.000076 |
| tambora | 9020/udp | 0.001982 | # TAMBORA |
| panagolin-ident | 9021/tcp | 0.000076 | # Pangolin Identification |
| panagolin-ident | 9021/udp | 0.000000 | # Pangolin Identification |
| paragent | 9022/tcp | 0.000076 | # PrivateArk Remote Agent |
| paragent | 9022/udp | 0.000000 | # PrivateArk Remote Agent |
| swa-1 | 9023/tcp | 0.000000 | # Secure Web Access - 1 |
| swa-1 | 9023/udp | 0.000000 | # Secure Web Access - 1 |
| swa-2 | 9024/tcp | 0.000000 | # Secure Web Access - 2 |
| swa-2 | 9024/udp | 0.000000 | # Secure Web Access - 2 |
| swa-3 | 9025/tcp | 0.000000 | # Secure Web Access - 3 |
| swa-3 | 9025/udp | 0.000000 | # Secure Web Access - 3 |
| swa-4 | 9026/tcp | 0.000000 | # Secure Web Access - 4 |
| swa-4 | 9026/udp | 0.000000 | # Secure Web Access - 4 |
| tor-trans | 9040/tcp | 0.000301 | # Tor TransPort, www.torproject.org |
| tor-socks | 9050/tcp | 0.000703 | # versiera | Tor SocksPort, www.torproject.org | Versiera Agent Listener |
| tor-control | 9051/tcp | 0.000025 | # fio-cmgmt | Tor ControlPort, www.torproject.org | Fusion-io Central Manager Service |
| CardWeb-IO | 9060/tcp | 0.000000 | # CardWeb-RT | CardWeb request-response I/O exchange | CardWeb realtime device data |
| glrpc | 9080/tcp | 0.000380 | # Groove GLRPC |
| glrpc | 9080/udp | 0.000330 | # Groove GLRPC |
| cisco-aqos | 9081/tcp | 0.000228 | # Required for Adaptive Quality of Service |
| lcs-ap | 9082/sctp | 0.000000 | # LCS Application Protocol |
| emc-pp-mgmtsvc | 9083/tcp | 0.000000 | # EMC PowerPath Mgmt Service |
| aurora | 9084/sctp | 0.000000 | # IBM AURORA Performance Visualizer |
| aurora | 9084/tcp | 0.000076 | # IBM AURORA Performance Visualizer |
| aurora | 9084/udp | 0.000000 | # IBM AURORA Performance Visualizer |
| ibm-rsyscon | 9085/tcp | 0.000000 | # IBM Remote System Console |
| ibm-rsyscon | 9085/udp | 0.000330 | # IBM Remote System Console |
| net2display | 9086/tcp | 0.000000 | # Vesa Net2Display |
| net2display | 9086/udp | 0.000330 | # Vesa Net2Display |
| classic | 9087/tcp | 0.000000 | # Classic Data Server |
| classic | 9087/udp | 0.000000 | # Classic Data Server |
| sqlexec | 9088/tcp | 0.000000 | # IBM Informix SQL Interface |
| sqlexec | 9088/udp | 0.000330 | # IBM Informix SQL Interface |
| sqlexec-ssl | 9089/tcp | 0.000000 | # IBM Informix SQL Interface - Encrypted |
| sqlexec-ssl | 9089/udp | 0.000330 | # IBM Informix SQL Interface - Encrypted |
| zeus-admin | 9090/tcp | 0.002747 | # websm | Zeus admin server | WebSM |
| websm | 9090/udp | 0.000000 | # WebSM |
| xmltec-xmlmail | 9091/tcp | 0.000304 | xmltec-xmlmail 9091/tcp 0.000304 |
| xmltec-xmlmail | 9091/udp | 0.000330 | xmltec-xmlmail 9091/udp 0.000330 |
| XmlIpcRegSvc | 9092/tcp | 0.000000 | # Xml-Ipc Server Reg |
| XmlIpcRegSvc | 9092/udp | 0.000000 | # Xml-Ipc Server Reg |
| copycat | 9093/tcp | 0.000000 | # Copycat database replication service |
| jetdirect | 9100/tcp | 0.003287 | # pdl-datastream | hp-pdl-datastr | HP JetDirect card | PDL Data Streaming Port | Printer PDL Data Stream |
| hp-pdl-datastr | 9100/udp | 0.000000 | # PDL Data Streaming Port |
| jetdirect | 9101/tcp | 0.000602 | # bacula-dir | HP JetDirect card | Bacula Director |
| bacula-dir | 9101/udp | 0.000330 | # Bacula Director |
| jetdirect | 9102/tcp | 0.002133 | # bacula-fd | HP JetDirect card. Also used (and officially registered for) Bacula File Daemon (an open source backup system) | Bacula File Daemon |
| bacula-fd | 9102/udp | 0.000000 | # Bacula File Daemon |
| jetdirect | 9103/tcp | 0.000188 | # bacula-sd | HP JetDirect card | Bacula Storage Daemon |
| bacula-sd | 9103/udp | 0.002313 | # Bacula Storage Daemon |
| jetdirect | 9104/tcp | 0.000050 | # peerwire | HP JetDirect card | PeerWire |
| peerwire | 9104/udp | 0.000000 | # PeerWire |
| jetdirect | 9105/tcp | 0.000038 | # xadmin | HP JetDirect card | Xadmin Control Service |
| xadmin | 9105/udp | 0.000000 | # Xadmin Control Service |
| jetdirect | 9106/tcp | 0.000038 | # astergate-disc | astergate | HP JetDirect card | Astergate Control Service | Astergate Discovery Service |
| astergate-disc | 9106/udp | 0.000000 | # Astergate Discovery Service |
| jetdirect | 9107/tcp | 0.000038 | # astergatefax | HP JetDirect card | AstergateFax Control Service |
| DragonIDSConsole | 9111/tcp | 0.000251 | # hexxorecore | Dragon IDS Console | Multiple Purpose, Distributed Message Bus |
| mxit | 9119/tcp | 0.000000 | # MXit Instant Messaging |
| mxit | 9119/udp | 0.000000 | # MXit Instant Messaging |
| grcmp | 9122/tcp | 0.000000 | # Global Relay compliant mobile instant messaging protocol |
| grcp | 9123/tcp | 0.000000 | # Global Relay compliant instant messaging protocol |
| dddp | 9131/tcp | 0.000076 | # Dynamic Device Discovery |
| dddp | 9131/udp | 0.000330 | # Dynamic Device Discovery |
| ms-sql2000 | 9152/tcp | 0.000125 | ms-sql2000 9152/tcp 0.000125 |
| apani1 | 9160/tcp | 0.000076 | apani1 9160/tcp 0.000076 |
| apani1 | 9160/udp | 0.000000 | apani1 9160/udp 0.000000 |
| apani2 | 9161/tcp | 0.000076 | apani2 9161/tcp 0.000076 |
| apani2 | 9161/udp | 0.000000 | apani2 9161/udp 0.000000 |
| apani3 | 9162/tcp | 0.000000 | apani3 9162/tcp 0.000000 |
| apani3 | 9162/udp | 0.000000 | apani3 9162/udp 0.000000 |
| apani4 | 9163/tcp | 0.000000 | apani4 9163/tcp 0.000000 |
| apani4 | 9163/udp | 0.000000 | apani4 9163/udp 0.000000 |
| apani5 | 9164/tcp | 0.000000 | apani5 9164/tcp 0.000000 |
| apani5 | 9164/udp | 0.000330 | apani5 9164/udp 0.000330 |
| sun-as-jpda | 9191/tcp | 0.000152 | # Sun AppSvr JPDA |
| sun-as-jpda | 9191/udp | 0.000000 | # Sun AppSvr JPDA |
| wap-wsp | 9200/tcp | 0.000228 | # WAP connectionless session services | WAP connectionless session service |
| wap-wsp | 9200/udp | 0.007268 | # WAP connectionless session services |
| wap-wsp-wtp | 9201/tcp | 0.000000 | # WAP session service |
| wap-wsp-wtp | 9201/udp | 0.000000 | # WAP session service |
| wap-wsp-s | 9202/tcp | 0.000076 | # WAP secure connectionless session service |
| wap-wsp-s | 9202/udp | 0.000000 | # WAP secure connectionless session service |
| wap-wsp-wtp-s | 9203/tcp | 0.000000 | # WAP secure session service |
| wap-wsp-wtp-s | 9203/udp | 0.000000 | # WAP secure session service |
| wap-vcard | 9204/tcp | 0.000000 | # WAP vCard |
| wap-vcard | 9204/udp | 0.000000 | # WAP vCard |
| wap-vcal | 9205/tcp | 0.000000 | # WAP vCal |
| wap-vcal | 9205/udp | 0.000000 | # WAP vCal |
| wap-vcard-s | 9206/tcp | 0.000000 | # WAP vCard Secure |
| wap-vcard-s | 9206/udp | 0.000661 | # WAP vCard Secure |
| wap-vcal-s | 9207/tcp | 0.000532 | # WAP vCal Secure |
| wap-vcal-s | 9207/udp | 0.000330 | # WAP vCal Secure |
| rjcdb-vcards | 9208/tcp | 0.000000 | # rjcdb vCard |
| rjcdb-vcards | 9208/udp | 0.000000 | # rjcdb vCard |
| almobile-system | 9209/tcp | 0.000000 | # ALMobile System Service |
| almobile-system | 9209/udp | 0.000000 | # ALMobile System Service |
| oma-mlp | 9210/tcp | 0.000076 | # OMA Mobile Location Protocol |
| oma-mlp | 9210/udp | 0.000000 | # OMA Mobile Location Protocol |
| oma-mlp-s | 9211/tcp | 0.000076 | # OMA Mobile Location Protocol Secure |
| oma-mlp-s | 9211/udp | 0.000330 | # OMA Mobile Location Protocol Secure |
| serverviewdbms | 9212/tcp | 0.000000 | # Server View dbms access [January 2005] | Server View dbms access |
| serverviewdbms | 9212/udp | 0.000000 | # Server View dbms access [January 2005] |
| serverstart | 9213/tcp | 0.000000 | # ServerStart RemoteControl [August 2005] | ServerStart RemoteControl |
| serverstart | 9213/udp | 0.000000 | # ServerStart RemoteControl [August 2005] |
| ipdcesgbs | 9214/tcp | 0.000000 | # IPDC ESG BootstrapService |
| ipdcesgbs | 9214/udp | 0.000330 | # IPDC ESG BootstrapService |
| insis | 9215/tcp | 0.000000 | # Integrated Setup and Install Service |
| insis | 9215/udp | 0.000000 | # Integrated Setup and Install Service |
| acme | 9216/tcp | 0.000000 | # Aionex Communication Management Engine |
| acme | 9216/udp | 0.000000 | # Aionex Communication Management Engine |
| fsc-port | 9217/tcp | 0.000000 | # FSC Communication Port |
| fsc-port | 9217/udp | 0.000000 | # FSC Communication Port |
| teamcoherence | 9222/tcp | 0.000000 | # QSC Team Coherence |
| teamcoherence | 9222/udp | 0.000330 | # QSC Team Coherence |
| mon | 9255/tcp | 0.000000 | # Manager On Network |
| mon | 9255/udp | 0.000000 | # Manager On Network |
| traingpsdata | 9277/tcp | 0.000000 | # GPS Data transmitted from train to ground network |
| pegasus | 9278/tcp | 0.000000 | # Pegasus GPS Platform |
| pegasus | 9278/udp | 0.000000 | # Pegasus GPS Platform |
| pegasus-ctl | 9279/tcp | 0.000000 | # Pegaus GPS System Control Interface |
| pegasus-ctl | 9279/udp | 0.000000 | # Pegaus GPS System Control Interface |
| pgps | 9280/tcp | 0.000000 | # Predicted GPS |
| pgps | 9280/udp | 0.000000 | # Predicted GPS |
| swtp-port1 | 9281/tcp | 0.000000 | # SofaWare transport port 1 |
| swtp-port1 | 9281/udp | 0.000000 | # SofaWare transport port 1 |
| swtp-port2 | 9282/tcp | 0.000000 | # SofaWare transport port 2 |
| swtp-port2 | 9282/udp | 0.000000 | # SofaWare transport port 2 |
| callwaveiam | 9283/tcp | 0.000000 | callwaveiam 9283/tcp 0.000000 |
| callwaveiam | 9283/udp | 0.000000 | # CallWaveIAM |
| visd | 9284/tcp | 0.000000 | # VERITAS Information Serve |
| visd | 9284/udp | 0.000000 | # VERITAS Information Serve |
| n2h2server | 9285/tcp | 0.000000 | # N2H2 Filter Service Port |
| n2h2server | 9285/udp | 0.000330 | # N2H2 Filter Service Port |
| n2receive | 9286/tcp | 0.000000 | # n2 monitoring receiver |
| cumulus | 9287/tcp | 0.000076 | cumulus 9287/tcp 0.000076 |
| cumulus | 9287/udp | 0.000000 | # Cumulus |
| armtechdaemon | 9292/tcp | 0.000000 | # ArmTech Daemon |
| armtechdaemon | 9292/udp | 0.000000 | # ArmTech Daemon |
| storview | 9293/tcp | 0.000000 | # StorView Client |
| storview | 9293/udp | 0.000000 | # StorView Client |
| armcenterhttp | 9294/tcp | 0.000000 | # ARMCenter http Service |
| armcenterhttp | 9294/udp | 0.000000 | # ARMCenter http Service |
| armcenterhttps | 9295/tcp | 0.000000 | # ARMCenter https Service |
| armcenterhttps | 9295/udp | 0.000000 | # ARMCenter https Service |
| vrace | 9300/tcp | 0.000076 | # Virtual Racing Service |
| vrace | 9300/udp | 0.000330 | # Virtual Racing Service |
| sphinxql | 9306/tcp | 0.000000 | # Sphinx search server (MySQL listener) |
| sapms | 9310/tcp | 0.000000 | # SAP Message Server |
| sphinxapi | 9312/tcp | 0.000000 | # Sphinx search server |
| secure-ts | 9318/tcp | 0.000000 | # PKIX TimeStamp over TLS |
| secure-ts | 9318/udp | 0.000000 | # PKIX TimeStamp over TLS |
| guibase | 9321/tcp | 0.000000 | guibase 9321/tcp 0.000000 |
| guibase | 9321/udp | 0.000000 | guibase 9321/udp 0.000000 |
| litecoin | 9333/tcp | 0.000076 | # Litecoin crypto currency - https://litecoin.info/Litecoin.conf |
| gnmi-gnoi | 9339/tcp | 0.000000 | # gRPC Network Mgmt/Operations Interface |
| gribi | 9340/tcp | 0.000000 | # gRPC Routing Information Base Interface |
| mpidcmgr | 9343/tcp | 0.000076 | mpidcmgr 9343/tcp 0.000076 |
| mpidcmgr | 9343/udp | 0.000000 | # MpIdcMgr |
| mphlpdmc | 9344/tcp | 0.000000 | mphlpdmc 9344/tcp 0.000000 |
| mphlpdmc | 9344/udp | 0.000000 | # Mphlpdmc |
| rancher | 9345/tcp | 0.000000 | # Rancher Agent |
| ctechlicensing | 9346/tcp | 0.000000 | # C Tech Licensing |
| ctechlicensing | 9346/udp | 0.000000 | # C Tech Licensing |
| fjdmimgr | 9374/tcp | 0.000000 | fjdmimgr 9374/tcp 0.000000 |
| fjdmimgr | 9374/udp | 0.000000 | fjdmimgr 9374/udp 0.000000 |
| boxp | 9380/tcp | 0.000000 | # Brivs! Open Extensible Protocol |
| boxp | 9380/udp | 0.000000 | # Brivs! Open Extensible Protocol |
| d2dconfig | 9387/tcp | 0.000000 | # D2D Configuration Service |
| d2ddatatrans | 9388/tcp | 0.000000 | # D2D Data Transfer Service |
| adws | 9389/tcp | 0.000000 | # Active Directory Web Services |
| otp | 9390/tcp | 0.000000 | # OpenVAS Transfer Protocol |
| fjinvmgr | 9396/tcp | 0.000000 | fjinvmgr 9396/tcp 0.000000 |
| fjinvmgr | 9396/udp | 0.000330 | fjinvmgr 9396/udp 0.000330 |
| mpidcagt | 9397/tcp | 0.000000 | mpidcagt 9397/tcp 0.000000 |
| mpidcagt | 9397/udp | 0.000330 | # MpIdcAgt |
| sec-t4net-srv | 9400/tcp | 0.000076 | # Samsung Twain for Network Server |
| sec-t4net-srv | 9400/udp | 0.000000 | # Samsung Twain for Network Server |
| sec-t4net-clt | 9401/tcp | 0.000000 | # Samsung Twain for Network Client |
| sec-t4net-clt | 9401/udp | 0.000000 | # Samsung Twain for Network Client |
| sec-pc2fax-srv | 9402/tcp | 0.000000 | # Samsung PC2FAX for Network Server |
| sec-pc2fax-srv | 9402/udp | 0.000000 | # Samsung PC2FAX for Network Server |
| git | 9418/tcp | 0.000228 | # Git revision control system | git pack transfer service |
| git | 9418/udp | 0.000000 | # git pack transfer service |
| tungsten-https | 9443/tcp | 0.000152 | # WSO2 Tungsten HTTPS |
| tungsten-https | 9443/udp | 0.000000 | # WSO2 Tungsten HTTPS |
| wso2esb-console | 9444/tcp | 0.000152 | # WSO2 ESB Administration Console HTTPS |
| wso2esb-console | 9444/udp | 0.000000 | # WSO2 ESB Administration Console HTTPS |
| mindarray-ca | 9445/tcp | 0.000000 | # MindArray Systems Console Agent |
| sntlkeyssrvr | 9450/tcp | 0.000000 | # Sentinel Keys Server |
| sntlkeyssrvr | 9450/udp | 0.000000 | # Sentinel Keys Server |
| ismserver | 9500/tcp | 0.000380 | ismserver 9500/tcp 0.000380 |
| ismserver | 9500/udp | 0.000000 | ismserver 9500/udp 0.000000 |
| sma-spw | 9522/tcp | 0.000000 | # SMA Speedwire |
| man | 9535/tcp | 0.000790 | # mngsuite | Management Suite Remote Control |
| man | 9535/udp | 0.000560 | man 9535/udp 0.000560 |
| laes-bf | 9536/tcp | 0.000000 | # Surveillance buffering function |
| laes-bf | 9536/udp | 0.000000 | # Surveillance buffering function |
| trispen-sra | 9555/tcp | 0.000000 | # Trispen Secure Remote Access |
| trispen-sra | 9555/udp | 0.000000 | # Trispen Secure Remote Access |
| p4runtime | 9559/tcp | 0.000000 | # P4Runtime gRPC Service |
| ldgateway | 9592/tcp | 0.000076 | # LANDesk Gateway |
| ldgateway | 9592/udp | 0.000000 | # LANDesk Gateway |
| cba8 | 9593/tcp | 0.000760 | # LANDesk Management Agent (cba8) |
| cba8 | 9593/udp | 0.000330 | # LANDesk Management Agent (cba8) |
| msgsys | 9594/tcp | 0.000760 | # Message System |
| msgsys | 9594/udp | 0.000000 | # Message System |
| pds | 9595/tcp | 0.000760 | # Ping Discovery System | Ping Discovery Service |
| pds | 9595/udp | 0.000991 | # Ping Discovery System |
| mercury-disc | 9596/tcp | 0.000000 | # Mercury Discovery |
| mercury-disc | 9596/udp | 0.000000 | # Mercury Discovery |
| pd-admin | 9597/tcp | 0.000000 | # PD Administration |
| pd-admin | 9597/udp | 0.000000 | # PD Administration |
| vscp | 9598/tcp | 0.000000 | # Very Simple Ctrl Protocol |
| vscp | 9598/udp | 0.000330 | # Very Simple Ctrl Protocol |
| robix | 9599/tcp | 0.000000 | robix 9599/tcp 0.000000 |
| robix | 9599/udp | 0.000661 | # Robix |
| micromuse-ncpw | 9600/tcp | 0.000152 | micromuse-ncpw 9600/tcp 0.000152 |
| micromuse-ncpw | 9600/udp | 0.000000 | # MICROMUSE-NCPW |
| streamcomm-ds | 9612/tcp | 0.000000 | # StreamComm User Directory |
| streamcomm-ds | 9612/udp | 0.000000 | # StreamComm User Directory |
| iadt-tls | 9614/tcp | 0.000000 | # iADT Protocol over TLS |
| erunbook_agent | 9616/tcp | 0.000076 | # erunbook-agent | eRunbook Agent |
| erunbook_server | 9617/tcp | 0.000000 | # erunbook-server | eRunbook Server |
| condor | 9618/tcp | 0.000380 | # Condor Collector Service |
| condor | 9618/udp | 0.000000 | # Condor Collector Service |
| odbcpathway | 9628/tcp | 0.000076 | # ODBC Pathway Service |
| odbcpathway | 9628/udp | 0.000000 | # ODBC Pathway Service |
| uniport | 9629/tcp | 0.000000 | # UniPort SSO Controller |
| uniport | 9629/udp | 0.000000 | # UniPort SSO Controller |
| peoctlr | 9630/tcp | 0.000000 | # Peovica Controller |
| peocoll | 9631/tcp | 0.000000 | # Peovica Collector |
| mc-comm | 9632/tcp | 0.000000 | # Mobile-C Communications |
| mc-comm | 9632/udp | 0.000000 | # Mobile-C Communications |
| pqsflows | 9640/tcp | 0.000000 | # ProQueSys Flows Service |
| zoomcp | 9666/tcp | 0.000304 | # Zoom Control Panel Game Server Management |
| xmms2 | 9667/tcp | 0.000076 | # Cross-platform Music Multiplexing System |
| xmms2 | 9667/udp | 0.000000 | # Cross-platform Music Multiplexing System |
| tec5-sdctp | 9668/tcp | 0.000000 | # tec5 Spectral Device Control Protocol |
| tec5-sdctp | 9668/udp | 0.000000 | # tec5 Spectral Device Control Protocol |
| client-wakeup | 9694/tcp | 0.000076 | # T-Mobile Client Wakeup Message |
| client-wakeup | 9694/udp | 0.000000 | # T-Mobile Client Wakeup Message |
| ccnx | 9695/tcp | 0.000000 | # Content Centric Networking |
| ccnx | 9695/udp | 0.000661 | # Content Centric Networking |
| board-roar | 9700/tcp | 0.000076 | # Board M.I.T. Service |
| board-roar | 9700/udp | 0.000000 | # Board M.I.T. Service |
| l5nas-parchan | 9747/tcp | 0.000000 | # L5NAS Parallel Channel |
| l5nas-parchan | 9747/udp | 0.000000 | # L5NAS Parallel Channel |
| board-voip | 9750/tcp | 0.000000 | # Board M.I.T. Synchronous Collaboration |
| board-voip | 9750/udp | 0.000661 | # Board M.I.T. Synchronous Collaboration |
| rasadv | 9753/tcp | 0.000000 | rasadv 9753/tcp 0.000000 |
| rasadv | 9753/udp | 0.000000 | rasadv 9753/udp 0.000000 |
| tungsten-http | 9762/tcp | 0.000000 | # WSO2 Tungsten HTTP |
| tungsten-http | 9762/udp | 0.000000 | # WSO2 Tungsten HTTP |
| davsrc | 9800/tcp | 0.000000 | # WebDav Source Port |
| davsrc | 9800/udp | 0.000000 | # WebDav Source Port |
| sstp-2 | 9801/tcp | 0.000000 | # Sakura Script Transfer Protocol-2 |
| sstp-2 | 9801/udp | 0.000000 | # Sakura Script Transfer Protocol-2 |
| davsrcs | 9802/tcp | 0.000000 | # WebDAV Source TLS/SSL |
| davsrcs | 9802/udp | 0.000330 | # WebDAV Source TLS/SSL |
| sapv1 | 9875/tcp | 0.000076 | # Session Announcement v1 |
| sapv1 | 9875/udp | 0.000000 | # Session Announcement v1 |
| sd | 9876/tcp | 0.000602 | # Session Director |
| sd | 9876/udp | 0.004498 | # Session Director |
| x510 | 9877/tcp | 0.000304 | # The X.510 wrapper protocol |
| kca-service | 9878/tcp | 0.000228 | # The KX509 Kerberized Certificate Issuance Protocol in Use in 2012 |
| cyborg-systems | 9888/tcp | 0.000000 | # CYBORG Systems |
| cyborg-systems | 9888/udp | 0.000000 | # CYBORG Systems |
| gt-proxy | 9889/tcp | 0.000000 | # Port for Cable network related data proxy or repeater |
| gt-proxy | 9889/udp | 0.000000 | # Port for Cable network related data proxy or repeater |
| monkeycom | 9898/tcp | 0.000228 | monkeycom 9898/tcp 0.000228 |
| monkeycom | 9898/udp | 0.000000 | # MonkeyCom |
| sctp-tunneling | 9899/sctp | 0.000000 | # SCTP Tunneling (misconfiguration) | SCTP TUNNELING |
| sctp-tunneling | 9899/tcp | 0.000000 | # SCTP TUNNELING |
| sctp-tunneling | 9899/udp | 0.000000 | # SCTP Tunneling |
| iua | 9900/sctp | 0.000000 | iua 9900/sctp 0.000000 |
| iua | 9900/tcp | 0.000380 | # IUA |
| iua | 9900/udp | 0.000000 | # IUA |
| enrp-sctp | 9901/sctp | 0.000000 | # enrp | ENRP server channel | enrp server channel |
| enrp | 9901/udp | 0.000000 | # ENRP server channel |
| enrp-sctp-tls | 9902/sctp | 0.000000 | # ENRP/TLS server channel | enrp/tls server channel |
| multicast-ping | 9903/tcp | 0.000000 | # Multicast Ping Protocol |
| domaintime | 9909/tcp | 0.000076 | domaintime 9909/tcp 0.000076 |
| domaintime | 9909/udp | 0.000000 | domaintime 9909/udp 0.000000 |
| sype-transport | 9911/tcp | 0.000076 | # SYPECom Transport Protocol |
| sype-transport | 9911/udp | 0.000000 | # SYPECom Transport Protocol |
| xybrid-cloud | 9925/tcp | 0.000000 | # XYBRID Cloud |
| nping-echo | 9929/tcp | 0.000163 | # Nping echo server mode - https://nmap.org/book/nping-man-echo-mode.html - The port frequency is made up to keep it (barely) in top 1000 TCP |
| apc-9950 | 9950/tcp | 0.000076 | # APC 9950 |
| apc-9950 | 9950/udp | 0.002643 | # APC 9950 |
| apc-9951 | 9951/tcp | 0.000000 | # APC 9951 |
| apc-9951 | 9951/udp | 0.000000 | # APC 9951 |
| apc-9952 | 9952/tcp | 0.000000 | # APC 9952 |
| apc-9952 | 9952/udp | 0.000330 | # APC 9952 |
| acis | 9953/tcp | 0.000000 | # 9953 |
| acis | 9953/udp | 0.000000 | # 9953 |
| hinp | 9954/tcp | 0.000000 | # HaloteC Instrument Network Protocol |
| alljoyn-stm | 9955/tcp | 0.000000 | # alljoyn-mcm | Contact Port for AllJoyn standard messaging | Contact Port for AllJoyn multiplexed constrained messaging |
| alljoyn | 9956/tcp | 0.000000 | # Alljoyn Name Service |
| odnsp | 9966/tcp | 0.000000 | # OKI Data Network Setting Protocol |
| odnsp | 9966/udp | 0.000000 | # OKI Data Network Setting Protocol |
| xybrid-rt | 9978/tcp | 0.000000 | # XYBRID RT Server |
| visweather | 9979/tcp | 0.000076 | # Valley Information Systems Weather station data |
| pumpkindb | 9981/tcp | 0.000000 | # Event sourcing database engine with a built-in programming language |
| dsm-scm-target | 9987/tcp | 0.000000 | # DSM/SCM Target Interface |
| dsm-scm-target | 9987/udp | 0.000000 | # DSM/SCM Target Interface |
| nsesrvr | 9988/tcp | 0.000152 | # Software Essentials Secure HTTP server |
| osm-appsrvr | 9990/tcp | 0.000076 | # OSM Applet Server |
| osm-appsrvr | 9990/udp | 0.000000 | # OSM Applet Server |
| issa | 9991/tcp | 0.000063 | # osm-oev | ISS System Scanner Agent | OSM Event Server |
| osm-oev | 9991/udp | 0.000000 | # OSM Event Server |
| issc | 9992/tcp | 0.000138 | # palace-1 | ISS System Scanner Console | OnLive-1 |
| palace-1 | 9992/udp | 0.000000 | # OnLive-1 |
| palace-2 | 9993/tcp | 0.000000 | # OnLive-2 |
| palace-2 | 9993/udp | 0.000000 | # OnLive-2 |
| palace-3 | 9994/tcp | 0.000000 | # OnLive-3 |
| palace-3 | 9994/udp | 0.000000 | # OnLive-3 |
| palace-4 | 9995/tcp | 0.000076 | palace-4 9995/tcp 0.000076 |
| palace-4 | 9995/udp | 0.000000 | # Palace-4 |
| palace-5 | 9996/tcp | 0.000000 | palace-5 9996/tcp 0.000000 |
| palace-5 | 9996/udp | 0.000000 | # Palace-5 |
| palace-6 | 9997/tcp | 0.000000 | palace-6 9997/tcp 0.000000 |
| palace-6 | 9997/udp | 0.000000 | # Palace-6 |
| distinct32 | 9998/tcp | 0.000304 | distinct32 9998/tcp 0.000304 |
| distinct32 | 9998/udp | 0.000330 | # Distinct32 |
| abyss | 9999/tcp | 0.004441 | # Abyss web server remote web management interface | distinct |
| distinct | 9999/udp | 0.000330 | distinct 9999/udp 0.000330 |
| snet-sensor-mgmt | 10000/tcp | 0.011692 | # ndmp | SecureNet Pro Sensor https management server or apple airport admin | Network Data Management Protocol |
| ndmp | 10000/udp | 0.007598 | # Network Data Management Protocol |
| scp-config | 10001/tcp | 0.001292 | # SCP Configuration |
| scp-config | 10001/udp | 0.000000 | # SCP Configuration |
| documentum | 10002/tcp | 0.000380 | # EMC-Documentum Content Server Product |
| documentum | 10002/udp | 0.000000 | # EMC-Documentum Content Server Product |
| documentum_s | 10003/tcp | 0.000228 | # documentum-s | EMC-Documentum Content Server Product |
| documentum_s | 10003/udp | 0.000000 | # EMC-Documentum Content Server Product |
| emcrmirccd | 10004/tcp | 0.000304 | # EMC Replication Manager Client |
| stel | 10005/tcp | 0.000151 | # emcrmird | Secure telnet | EMC Replication Manager Server |
| netapp-sync | 10006/tcp | 0.000076 | # Sync replication protocol among different NetApp platforms |
| mvs-capacity | 10007/tcp | 0.000076 | # MVS Capacity |
| mvs-capacity | 10007/udp | 0.000661 | # MVS Capacity |
| octopus | 10008/tcp | 0.000152 | # Octopus Multiplexer |
| octopus | 10008/udp | 0.000000 | # Octopus Multiplexer |
| swdtp-sv | 10009/tcp | 0.000228 | # Systemwalker Desktop Patrol |
| swdtp-sv | 10009/udp | 0.000000 | # Systemwalker Desktop Patrol |
| rxapi | 10010/tcp | 0.002889 | # ooRexx rxapi services |
| abb-hw | 10020/tcp | 0.000076 | # Hardware configuration and maintenance |
| cefd-vmp | 10023/tcp | 0.000152 | # Comtech EF-Data's Vipersat Management Protocol |
| zabbix-agent | 10050/tcp | 0.000000 | # Zabbix Agent |
| zabbix-agent | 10050/udp | 0.000000 | # Zabbix Agent |
| zabbix-trapper | 10051/tcp | 0.000000 | # Zabbix Trapper |
| zabbix-trapper | 10051/udp | 0.000000 | # Zabbix Trapper |
| qptlmd | 10055/tcp | 0.000000 | # Quantapoint FLEXlm Licensing Service |
| amanda | 10080/tcp | 0.000000 | amanda 10080/tcp 0.000000 |
| amanda | 10080/udp | 0.005585 | # Amanda Backup Util |
| famdc | 10081/tcp | 0.000000 | # FAM Archive Server |
| famdc | 10081/udp | 0.000991 | # FAM Archive Server |
| amandaidx | 10082/tcp | 0.000213 | # Amanda indexing |
| amidxtape | 10083/tcp | 0.000125 | # Amanda tape indexing |
| itap-ddtp | 10100/tcp | 0.000000 | # VERITAS ITAP DDTP |
| itap-ddtp | 10100/udp | 0.000000 | # VERITAS ITAP DDTP |
| ezmeeting-2 | 10101/tcp | 0.000076 | # eZmeeting |
| ezmeeting-2 | 10101/udp | 0.000000 | # eZmeeting |
| ezproxy-2 | 10102/tcp | 0.000000 | # eZproxy |
| ezproxy-2 | 10102/udp | 0.000000 | # eZproxy |
| ezrelay | 10103/tcp | 0.000000 | ezrelay 10103/tcp 0.000000 |
| ezrelay | 10103/udp | 0.000000 | # eZrelay |
| swdtp | 10104/tcp | 0.000000 | # Systemwalker Desktop Patrol |
| swdtp | 10104/udp | 0.000000 | # Systemwalker Desktop Patrol |
| bctp-server | 10107/tcp | 0.000000 | # VERITAS BCTP, server |
| bctp-server | 10107/udp | 0.000000 | # VERITAS BCTP, server |
| nmea-0183 | 10110/tcp | 0.000000 | # NMEA-0183 Navigational Data |
| nmea-0183 | 10110/udp | 0.000330 | # NMEA-0183 Navigational Data |
| nmea-onenet | 10111/tcp | 0.000000 | # NMEA OneNet multicast messaging |
| netiq-endpoint | 10113/tcp | 0.000000 | # NetIQ Endpoint |
| netiq-endpoint | 10113/udp | 0.000000 | # NetIQ Endpoint |
| netiq-qcheck | 10114/tcp | 0.000000 | # NetIQ Qcheck |
| netiq-qcheck | 10114/udp | 0.000330 | # NetIQ Qcheck |
| netiq-endpt | 10115/tcp | 0.000076 | # NetIQ Endpoint |
| netiq-endpt | 10115/udp | 0.000000 | # NetIQ Endpoint |
| netiq-voipa | 10116/tcp | 0.000000 | # NetIQ VoIP Assessor |
| netiq-voipa | 10116/udp | 0.000000 | # NetIQ VoIP Assessor |
| iqrm | 10117/tcp | 0.000000 | # NetIQ IQCResource Managament Svc |
| iqrm | 10117/udp | 0.000000 | # NetIQ IQCResource Managament Svc |
| cimple | 10125/tcp | 0.000000 | # HotLink CIMple REST API |
| bmc-perf-sd | 10128/tcp | 0.000000 | # BMC-PERFORM-SERVICE DAEMON |
| bmc-perf-sd | 10128/udp | 0.000000 | # BMC-PERFORM-SERVICE DAEMON |
| bmc-gms | 10129/tcp | 0.000000 | # BMC General Manager Server |
| qb-db-server | 10160/tcp | 0.000152 | # QB Database Server |
| qb-db-server | 10160/udp | 0.000000 | # QB Database Server |
| snmptls | 10161/tcp | 0.000000 | # snmpdtls | SNMP-TLS | SNMP-DTLS |
| snmpdtls | 10161/udp | 0.000000 | # SNMP-DTLS |
| snmptls-trap | 10162/tcp | 0.000000 | # snmpdtls-trap | SNMP-Trap-TLS | SNMP-Trap-DTLS |
| snmpdtls-trap | 10162/udp | 0.000330 | # SNMP-Trap-DTLS |
| trisoap | 10200/tcp | 0.000000 | # Trigence AE Soap Service |
| trisoap | 10200/udp | 0.000000 | # Trigence AE Soap Service |
| rsms | 10201/tcp | 0.000000 | # rscs | Remote Server Management Service | Remote Server Control and Test Service |
| rscs | 10201/udp | 0.000000 | # Remote Server Control and Test Service |
| apollo-relay | 10252/tcp | 0.000000 | # Apollo Relay Port |
| apollo-relay | 10252/udp | 0.000000 | # Apollo Relay Port |
| eapol-relay | 10253/tcp | 0.000000 | # Relay of EAPOL frames |
| axis-wimp-port | 10260/tcp | 0.000000 | # Axis WIMP Port |
| axis-wimp-port | 10260/udp | 0.000330 | # Axis WIMP Port |
| tile-ml | 10261/tcp | 0.000000 | # Tile remote machine learning |
| blocks | 10288/tcp | 0.000000 | blocks 10288/tcp 0.000000 |
| blocks | 10288/udp | 0.000000 | # Blocks |
| cosir | 10321/tcp | 0.000000 | # Computer Op System Information Report |
| bngsync | 10439/tcp | 0.000000 | # BalanceNG session table synchronization protocol |
| cirrossp | 10443/tcp | 0.000076 | # CirrosSP Workstation Communication |
| hip-nat-t | 10500/tcp | 0.000076 | # HIP NAT-Traversal |
| hip-nat-t | 10500/udp | 0.000000 | # HIP NAT-Traversal |
| MOS-lower | 10540/tcp | 0.000000 | # MOS Media Object Metadata Port |
| MOS-lower | 10540/udp | 0.000330 | # MOS Media Object Metadata Port |
| MOS-upper | 10541/tcp | 0.000000 | # MOS Running Order Port |
| MOS-upper | 10541/udp | 0.000000 | # MOS Running Order Port |
| MOS-aux | 10542/tcp | 0.000000 | # MOS Low Priority Port |
| MOS-aux | 10542/udp | 0.000000 | # MOS Low Priority Port |
| MOS-soap | 10543/tcp | 0.000000 | # MOS SOAP Default Port |
| MOS-soap | 10543/udp | 0.000330 | # MOS SOAP Default Port |
| MOS-soap-opt | 10544/tcp | 0.000000 | # MOS SOAP Optional Port |
| MOS-soap-opt | 10544/udp | 0.000000 | # MOS SOAP Optional Port |
| serverdocs | 10548/tcp | 0.000000 | # Apple Document Sharing Service |
| printopia | 10631/tcp | 0.000000 | # Printopia Serve |
| gap | 10800/tcp | 0.000000 | # Gestor de Acaparamiento para Pocket PCs |
| gap | 10800/udp | 0.000000 | # Gestor de Acaparamiento para Pocket PCs |
| lpdg | 10805/tcp | 0.000000 | # LUCIA Pareja Data Group |
| lpdg | 10805/udp | 0.000000 | # LUCIA Pareja Data Group |
| nbd | 10809/tcp | 0.000000 | # Linux Network Block Device |
| nmc-disc | 10810/tcp | 0.000000 | # Nuance Mobile Care Discovery |
| nmc-disc | 10810/udp | 0.000330 | # Nuance Mobile Care Discovery |
| helix | 10860/tcp | 0.000000 | # Helix Client/Server |
| helix | 10860/udp | 0.000330 | # Helix Client/Server |
| bveapi | 10880/tcp | 0.000000 | # BVEssentials HTTP API |
| octopustentacle | 10933/tcp | 0.000000 | # Listen port used by the Octopus Deploy Tentacle deployment agent |
| rmiaux | 10990/tcp | 0.000000 | # Auxiliary RMI Port |
| rmiaux | 10990/udp | 0.000330 | # Auxiliary RMI Port |
| irisa | 11000/tcp | 0.000076 | irisa 11000/tcp 0.000076 |
| irisa | 11000/udp | 0.000000 | # IRISA |
| metasys | 11001/tcp | 0.000076 | metasys 11001/tcp 0.000076 |
| metasys | 11001/udp | 0.000000 | # Metasys |
| weave | 11095/tcp | 0.000000 | # Nest device-to-device and device-to-service application protocol |
| origo-sync | 11103/tcp | 0.000000 | # OrigoDB Server Sync Interface |
| netapp-icmgmt | 11104/tcp | 0.000000 | # NetApp Intercluster Management |
| netapp-icdata | 11105/tcp | 0.000000 | # NetApp Intercluster Data |
| sgi-lk | 11106/tcp | 0.000000 | # SGI LK Licensing service |
| sgi-lk | 11106/udp | 0.000000 | # SGI LK Licensing service |
| myq-termlink | 11108/tcp | 0.000000 | # Hardware Terminals Discovery and Low-Level Communication Protocol |
| sgi-dmfmgr | 11109/tcp | 0.000000 | # Data migration facility Manager (DMF) is a browser based interface to DMF |
| sgi-soap | 11110/tcp | 0.000380 | # Data migration facility (DMF) SOAP is a web server protocol to support remote access to DMF |
| vce | 11111/tcp | 0.000228 | # Viral Computing Environment (VCE) |
| vce | 11111/udp | 0.000000 | # Viral Computing Environment (VCE) |
| dicom | 11112/tcp | 0.000000 | dicom 11112/tcp 0.000000 |
| dicom | 11112/udp | 0.000000 | # DICOM |
| suncacao-snmp | 11161/tcp | 0.000000 | # sun cacao snmp access point |
| suncacao-snmp | 11161/udp | 0.000000 | # sun cacao snmp access point |
| suncacao-jmxmp | 11162/tcp | 0.000000 | # sun cacao JMX-remoting access point |
| suncacao-jmxmp | 11162/udp | 0.000330 | # sun cacao JMX-remoting access point |
| suncacao-rmi | 11163/tcp | 0.000000 | # sun cacao rmi registry access point |
| suncacao-rmi | 11163/udp | 0.000000 | # sun cacao rmi registry access point |
| suncacao-csa | 11164/tcp | 0.000000 | # sun cacao command-streaming access point |
| suncacao-csa | 11164/udp | 0.000000 | # sun cacao command-streaming access point |
| suncacao-websvc | 11165/tcp | 0.000000 | # sun cacao web service access point |
| suncacao-websvc | 11165/udp | 0.000000 | # sun cacao web service access point |
| snss | 11171/tcp | 0.000000 | # Surgical Notes Security Service Discovery (SNSS) |
| snss | 11171/udp | 0.000000 | # Surgical Notes Security Service Discovery (SNSS) |
| oemcacao-jmxmp | 11172/tcp | 0.000000 | # OEM cacao JMX-remoting access point |
| t5-straton | 11173/tcp | 0.000000 | # Straton Runtime Programing |
| oemcacao-rmi | 11174/tcp | 0.000000 | # OEM cacao rmi registry access point |
| oemcacao-websvc | 11175/tcp | 0.000000 | # OEM cacao web service access point |
| smsqp | 11201/tcp | 0.000000 | smsqp 11201/tcp 0.000000 |
| smsqp | 11201/udp | 0.000000 | smsqp 11201/udp 0.000000 |
| dcsl-backup | 11202/tcp | 0.000000 | # DCSL Network Backup Services |
| wifree | 11208/tcp | 0.000000 | # WiFree Service |
| wifree | 11208/udp | 0.000000 | # WiFree Service |
| memcache | 11211/tcp | 0.000000 | # Memory cache service |
| memcache | 11211/udp | 0.000000 | # Memory cache service |
| xcompute | 11235/tcp | 0.000000 | # numerical systems messaging |
| imip | 11319/tcp | 0.000000 | imip 11319/tcp 0.000000 |
| imip | 11319/udp | 0.000000 | # IMIP |
| imip-channels | 11320/tcp | 0.000000 | # IMIP Channels Port |
| imip-channels | 11320/udp | 0.000000 | # IMIP Channels Port |
| arena-server | 11321/tcp | 0.000000 | # Arena Server Listen |
| arena-server | 11321/udp | 0.000000 | # Arena Server Listen |
| atm-uhas | 11367/tcp | 0.000000 | # ATM UHAS |
| atm-uhas | 11367/udp | 0.000000 | # ATM UHAS |
| pksd | 11371/tcp | 0.000038 | # hkp | PGP Public Key Server | OpenPGP HTTP Keyserver |
| hkp | 11371/udp | 0.000000 | # OpenPGP HTTP Keyserver |
| lsdp | 11430/tcp | 0.000000 | # Lenbrook Service Discovery Protocol |
| asgcypresstcps | 11489/tcp | 0.000000 | # ASG Cypress Secure Only |
| tempest-port | 11600/tcp | 0.000000 | # Tempest Protocol Port |
| tempest-port | 11600/udp | 0.000000 | # Tempest Protocol Port |
| emc-xsw-dconfig | 11623/tcp | 0.000000 | # EMC XtremSW distributed config |
| h323callsigalt | 11720/tcp | 0.000000 | # h323 Call Signal Alternate | H.323 Call Control Signalling Alternate |
| h323callsigalt | 11720/udp | 0.000661 | # h323 Call Signal Alternate |
| emc-xsw-dcache | 11723/tcp | 0.000000 | # EMC XtremSW distributed cache |
| intrepid-ssl | 11751/tcp | 0.000000 | # Intrepid SSL |
| intrepid-ssl | 11751/udp | 0.000000 | # Intrepid SSL |
| lanschool | 11796/tcp | 0.000000 | # lanschool-mpt | Lanschool Multipoint |
| xoraya | 11876/tcp | 0.000000 | # X2E Xoraya Multichannel protocol |
| xoraya | 11876/udp | 0.000000 | # X2E Xoraya Multichannel protocol |
| x2e-disc | 11877/tcp | 0.000000 | # X2E service discovery protocol |
| x2e-disc | 11877/udp | 0.000000 | # X2E service discovery protocol |
| sysinfo-sp | 11967/tcp | 0.000380 | # SysInfo Service Protocol | SysInfo Sercice Protocol |
| sysinfo-sp | 11967/udp | 0.000000 | # SysInfo Sercice Protocol |
| tibsd | 11971/tcp | 0.000000 | # TiBS Service |
| wmereceiving | 11997/sctp | 0.000000 | # WorldMailExpress |
| wmedistribution | 11998/sctp | 0.000000 | # WorldMailExpress |
| wmereporting | 11999/sctp | 0.000000 | # WorldMailExpress |
| cce4x | 12000/tcp | 0.000427 | # entextxid | ClearCommerce Engine 4.x (www.clearcommerce.com) | IBM Enterprise Extender SNA XID Exchange |
| entextxid | 12000/udp | 0.000661 | # IBM Enterprise Extender SNA XID Exchange |
| entextnetwk | 12001/tcp | 0.000076 | # IBM Enterprise Extender SNA COS Network Priority |
| entextnetwk | 12001/udp | 0.000661 | # IBM Enterprise Extender SNA COS Network Priority |
| entexthigh | 12002/tcp | 0.000076 | # IBM Enterprise Extender SNA COS High Priority |
| entexthigh | 12002/udp | 0.000661 | # IBM Enterprise Extender SNA COS High Priority |
| entextmed | 12003/tcp | 0.000000 | # IBM Enterprise Extender SNA COS Medium Priority |
| entextmed | 12003/udp | 0.000991 | # IBM Enterprise Extender SNA COS Medium Priority |
| entextlow | 12004/tcp | 0.000000 | # IBM Enterprise Extender SNA COS Low Priority |
| entextlow | 12004/udp | 0.000661 | # IBM Enterprise Extender SNA COS Low Priority |
| dbisamserver1 | 12005/tcp | 0.000076 | # DBISAM Database Server - Regular |
| dbisamserver1 | 12005/udp | 0.000000 | # DBISAM Database Server - Regular |
| dbisamserver2 | 12006/tcp | 0.000152 | # DBISAM Database Server - Admin |
| dbisamserver2 | 12006/udp | 0.000000 | # DBISAM Database Server - Admin |
| accuracer | 12007/tcp | 0.000000 | # Accuracer Database System ñ Server | Accuracer Database System Server |
| accuracer | 12007/udp | 0.000330 | # Accuracer Database System ñ Server |
| accuracer-dbms | 12008/tcp | 0.000000 | # Accuracer Database System ñ Admin | Accuracer Database System Admin |
| accuracer-dbms | 12008/udp | 0.000000 | # Accuracer Database System ñ Admin |
| ghvpn | 12009/tcp | 0.000076 | # Green Hills VPN |
| edbsrvr | 12010/tcp | 0.000000 | # ElevateDB Server |
| vipera | 12012/tcp | 0.000000 | # Vipera Messaging Service |
| vipera | 12012/udp | 0.000000 | # Vipera Messaging Service |
| vipera-ssl | 12013/tcp | 0.000000 | # Vipera Messaging Service over SSL Communication |
| vipera-ssl | 12013/udp | 0.000000 | # Vipera Messaging Service over SSL Communication |
| rets-ssl | 12109/tcp | 0.000000 | # RETS over SSL |
| rets-ssl | 12109/udp | 0.000000 | # RETS over SSL |
| nupaper-ss | 12121/tcp | 0.000076 | # NuPaper Session Service |
| nupaper-ss | 12121/udp | 0.000000 | # NuPaper Session Service |
| cawas | 12168/tcp | 0.000000 | # CA Web Access Service |
| cawas | 12168/udp | 0.000000 | # CA Web Access Service |
| hivep | 12172/tcp | 0.000000 | hivep 12172/tcp 0.000000 |
| hivep | 12172/udp | 0.000000 | # HiveP |
| linogridengine | 12300/tcp | 0.000000 | # LinoGrid Engine |
| linogridengine | 12300/udp | 0.000000 | # LinoGrid Engine |
| rads | 12302/tcp | 0.000000 | # Remote Administration Daemon (RAD) is a system service that offers secure, remote, programmatic access to Solaris system configuration and run-time state |
| warehouse-sss | 12321/tcp | 0.000000 | # Warehouse Monitoring Syst SSS |
| warehouse-sss | 12321/udp | 0.000661 | # Warehouse Monitoring Syst SSS |
| warehouse | 12322/tcp | 0.000000 | # Warehouse Monitoring Syst |
| warehouse | 12322/udp | 0.000000 | # Warehouse Monitoring Syst |
| netbus | 12345/tcp | 0.000527 | # italk | NetBus backdoor trojan or Trend Micro Office Scan | Italk Chat System |
| italk | 12345/udp | 0.000000 | # Italk Chat System |
| netbus | 12346/tcp | 0.000088 | # NetBus backdoor trojan |
| tsaf | 12753/tcp | 0.000000 | # tsaf port |
| tsaf | 12753/udp | 0.000000 | # tsaf port |
| netperf | 12865/tcp | 0.000076 | # control port for the netperf benchmark |
| i-zipqd | 13160/tcp | 0.000000 | i-zipqd 13160/tcp 0.000000 |
| i-zipqd | 13160/udp | 0.000330 | # I-ZIPQD |
| bcslogc | 13216/tcp | 0.000000 | # Black Crow Software application logging |
| bcslogc | 13216/udp | 0.000330 | # Black Crow Software application logging |
| rs-pias | 13217/tcp | 0.000000 | # R&S Proxy Installation Assistant Service |
| rs-pias | 13217/udp | 0.000000 | # R&S Proxy Installation Assistant Service |
| emc-vcas-tcp | 13218/tcp | 0.000000 | # emc-vcas-udp | EMC Virtual CAS Service | EMV Virtual CAS Service Discovery |
| emc-vcas-udp | 13218/udp | 0.000000 | # EMV Virtual CAS Service Discovery |
| powwow-client | 13223/tcp | 0.000000 | # PowWow Client |
| powwow-client | 13223/udp | 0.000000 | # PowWow Client |
| powwow-server | 13224/tcp | 0.000000 | # PowWow Server |
| powwow-server | 13224/udp | 0.000000 | # PowWow Server |
| doip-data | 13400/tcp | 0.000000 | # doip-disc | DoIP Data | DoIP Discovery |
| netbackup | 13701/tcp | 0.000013 | # vmd           server |
| netbackup | 13702/tcp | 0.000000 | # ascd          server |
| netbackup | 13705/tcp | 0.000000 | # tl8cd         server |
| netbackup | 13706/tcp | 0.000000 | # odld          server |
| netbackup | 13708/tcp | 0.000000 | # vtlcd         server |
| netbackup | 13709/tcp | 0.000000 | # ts8d          server |
| netbackup | 13710/tcp | 0.000000 | # tc8d          server |
| netbackup | 13711/tcp | 0.000000 | # server |
| netbackup | 13712/tcp | 0.000000 | # tc4d          server |
| netbackup | 13713/tcp | 0.000025 | # tl4d          server |
| netbackup | 13714/tcp | 0.000013 | # tsdd          server |
| netbackup | 13715/tcp | 0.000013 | # tshd          server |
| netbackup | 13716/tcp | 0.000000 | # tlmd          server |
| netbackup | 13717/tcp | 0.000000 | # tlhcd         server |
| netbackup | 13718/tcp | 0.000013 | # lmfcd         server |
| netbackup | 13720/tcp | 0.000038 | # bprd | bprd          server | BPRD Protocol (VERITAS NetBackup) |
| bprd | 13720/udp | 0.000000 | # BPRD Protocol (VERITAS NetBackup) |
| netbackup | 13721/tcp | 0.000013 | # bpdbm | bpdbm         server | BPDBM Protocol (VERITAS NetBackup) |
| bpdbm | 13721/udp | 0.000000 | # BPDBM Protocol (VERITAS NetBackup) |
| netbackup | 13722/tcp | 0.000314 | # bpjava-msvc | bpjava-msvc   client | BP Java MSVC Protocol |
| bpjava-msvc | 13722/udp | 0.000330 | # BP Java MSVC Protocol |
| vnetd | 13724/tcp | 0.000152 | # Veritas Network Utility |
| vnetd | 13724/udp | 0.000000 | # Veritas Network Utility |
| netbackup | 13782/tcp | 0.000728 | # bpcd | bpcd          client | VERITAS NetBackup |
| bpcd | 13782/udp | 0.000000 | # VERITAS NetBackup |
| netbackup | 13783/tcp | 0.000389 | # vopied | vopied        client | VOPIED Protocol |
| vopied | 13783/udp | 0.000000 | # VOPIED Protocol |
| nbdb | 13785/tcp | 0.000000 | # NetBackup Database |
| nbdb | 13785/udp | 0.000000 | # NetBackup Database |
| nomdb | 13786/tcp | 0.000000 | # Veritas-nomdb |
| nomdb | 13786/udp | 0.000000 | # Veritas-nomdb |
| dsmcc-config | 13818/tcp | 0.000000 | # DSMCC Config |
| dsmcc-config | 13818/udp | 0.000000 | # DSMCC Config |
| dsmcc-session | 13819/tcp | 0.000000 | # DSMCC Session Messages |
| dsmcc-session | 13819/udp | 0.000000 | # DSMCC Session Messages |
| dsmcc-passthru | 13820/tcp | 0.000000 | # DSMCC Pass-Thru Messages |
| dsmcc-passthru | 13820/udp | 0.000000 | # DSMCC Pass-Thru Messages |
| dsmcc-download | 13821/tcp | 0.000000 | # DSMCC Download Protocol |
| dsmcc-download | 13821/udp | 0.000000 | # DSMCC Download Protocol |
| dsmcc-ccp | 13822/tcp | 0.000000 | # DSMCC Channel Change Protocol |
| dsmcc-ccp | 13822/udp | 0.000000 | # DSMCC Channel Change Protocol |
| bmdss | 13823/tcp | 0.000000 | # Blackmagic Design Streaming Server |
| ucontrol | 13894/tcp | 0.000000 | # Ultimate Control communication protocol |
| dta-systems | 13929/tcp | 0.000000 | # D-TA SYSTEMS |
| dta-systems | 13929/udp | 0.000000 | # D-TA SYSTEMS |
| medevolve | 13930/tcp | 0.000000 | # MedEvolve Port Requester |
| scotty-ft | 14000/tcp | 0.000380 | # SCOTTY High-Speed Filetransfer |
| scotty-ft | 14000/udp | 0.000000 | # SCOTTY High-Speed Filetransfer |
| sua | 14001/sctp | 0.000000 | # De-Registered |
| sua | 14001/tcp | 0.000076 | # SUA |
| sua | 14001/udp | 0.000000 | # De-Registered (2001 June 06) |
| scotty-disc | 14002/tcp | 0.000000 | # Discovery of a SCOTTY hardware codec board |
| sage-best-com1 | 14033/tcp | 0.000000 | # sage Best! Config Server 1 |
| sage-best-com1 | 14033/udp | 0.000000 | # sage Best! Config Server 1 |
| sage-best-com2 | 14034/tcp | 0.000000 | # sage Best! Config Server 2 |
| sage-best-com2 | 14034/udp | 0.000330 | # sage Best! Config Server 2 |
| bo2k | 14141/tcp | 0.000038 | # vcs-app | Back Orifice 2K BoPeep mouse/keyboard input | VCS Application |
| vcs-app | 14141/udp | 0.000000 | # VCS Application |
| icpp | 14142/tcp | 0.000000 | # IceWall Cert Protocol |
| icpp | 14142/udp | 0.000000 | # IceWall Cert Protocol |
| icpps | 14143/tcp | 0.000000 | # IceWall Cert Protocol over TLS |
| gcm-app | 14145/tcp | 0.000000 | # GCM Application |
| gcm-app | 14145/udp | 0.000000 | # GCM Application |
| vrts-tdd | 14149/tcp | 0.000000 | # Veritas Traffic Director |
| vrts-tdd | 14149/udp | 0.000000 | # Veritas Traffic Director |
| vcscmd | 14150/tcp | 0.000000 | # Veritas Cluster Server Command Server |
| vad | 14154/tcp | 0.000000 | # Veritas Application Director |
| vad | 14154/udp | 0.000000 | # Veritas Application Director |
| cps | 14250/tcp | 0.000000 | # Fencing Server |
| cps | 14250/udp | 0.000000 | # Fencing Server |
| ca-web-update | 14414/tcp | 0.000000 | # CA eTrust Web Update Service |
| ca-web-update | 14414/udp | 0.000000 | # CA eTrust Web Update Service |
| xpra | 14500/tcp | 0.000000 | # xpra network protocol |
| hde-lcesrvr-1 | 14936/tcp | 0.000000 | hde-lcesrvr-1 14936/tcp 0.000000 |
| hde-lcesrvr-1 | 14936/udp | 0.000000 | hde-lcesrvr-1 14936/udp 0.000000 |
| hde-lcesrvr-2 | 14937/tcp | 0.000000 | hde-lcesrvr-2 14937/tcp 0.000000 |
| hde-lcesrvr-2 | 14937/udp | 0.000661 | hde-lcesrvr-2 14937/udp 0.000661 |
| hydap | 15000/tcp | 0.001064 | # Hypack Hydrographic Software Packages Data Acquisition | Hypack Data Aquisition |
| hydap | 15000/udp | 0.000000 | # Hypack Hydrographic Software Packages Data Acquisition |
| onep-tls | 15002/tcp | 0.000380 | # Open Network Environment TLS |
| v2g-secc | 15118/tcp | 0.000000 | # v2g Supply Equipment Communication Controller Discovery Protocol |
| swgps | 15126/tcp | 0.000000 | # Nortel Java S/WGPS Global Payment Solutions for US credit card authorizations |
| bo2k | 15151/tcp | 0.000013 | # Back Orifice 2K BoPeep video output |
| xpilot | 15345/tcp | 0.000000 | # XPilot Contact Port |
| xpilot | 15345/udp | 0.000000 | # XPilot Contact Port |
| 3link | 15363/tcp | 0.000000 | # 3Link Negotiation |
| 3link | 15363/udp | 0.000330 | # 3Link Negotiation |
| cisco-snat | 15555/tcp | 0.000000 | # Cisco Stateful NAT |
| cisco-snat | 15555/udp | 0.000000 | # Cisco Stateful NAT |
| bex-xr | 15660/tcp | 0.000380 | # Backup Express Restore Server |
| bex-xr | 15660/udp | 0.000000 | # Backup Express Restore Server |
| ptp | 15740/tcp | 0.000000 | # Picture Transfer Protocol |
| ptp | 15740/udp | 0.000000 | # Picture Transfer Protocol |
| 2ping | 15998/tcp | 0.000000 | # 2ping Bi-Directional Ping Service |
| 2ping | 15998/udp | 0.000000 | # 2ping Bi-Directional Ping Service |
| programmar | 15999/tcp | 0.000000 | # ProGrammar Enterprise |
| fmsas | 16000/tcp | 0.000228 | # Administration Server Access |
| fmsascon | 16001/tcp | 0.000380 | # Administration Server Connector |
| gsms | 16002/tcp | 0.000000 | # GoodSync Mediation Service |
| alfin | 16003/tcp | 0.000000 | # Automation and Control by REGULACE.ORG |
| alfin | 16003/udp | 0.000000 | # Automation and Control by REGULACE.ORG |
| jwpc | 16020/tcp | 0.000000 | # Filemaker Java Web Publishing Core |
| jwpc-bin | 16021/tcp | 0.000000 | # Filemaker Java Web Publishing Core Binary |
| osxwebadmin | 16080/tcp | 0.000251 | # Apple OS X WebAdmin |
| sun-sea-port | 16161/tcp | 0.000076 | # Solaris SEA Port |
| sun-sea-port | 16161/udp | 0.000000 | # Solaris SEA Port |
| solaris-audit | 16162/tcp | 0.000000 | # Solaris Audit - secure remote audit log |
| etb4j | 16309/tcp | 0.000000 | etb4j 16309/tcp 0.000000 |
| etb4j | 16309/udp | 0.000000 | etb4j 16309/udp 0.000000 |
| pduncs | 16310/tcp | 0.000000 | # Policy Distribute, Update Notification |
| pduncs | 16310/udp | 0.000000 | # Policy Distribute, Update Notification |
| pdefmns | 16311/tcp | 0.000000 | # Policy definition and update management |
| pdefmns | 16311/udp | 0.000000 | # Policy definition and update management |
| netserialext1 | 16360/tcp | 0.000000 | # Network Serial Extension Ports One |
| netserialext1 | 16360/udp | 0.000000 | # Network Serial Extension Ports One |
| netserialext2 | 16361/tcp | 0.000000 | # Network Serial Extension Ports Two |
| netserialext2 | 16361/udp | 0.000330 | # Network Serial Extension Ports Two |
| netserialext3 | 16367/tcp | 0.000000 | # Network Serial Extension Ports Three |
| netserialext3 | 16367/udp | 0.000000 | # Network Serial Extension Ports Three |
| netserialext4 | 16368/tcp | 0.000000 | # Network Serial Extension Ports Four |
| netserialext4 | 16368/udp | 0.000000 | # Network Serial Extension Ports Four |
| connected | 16384/tcp | 0.000000 | # Connected Corp |
| connected | 16384/udp | 0.000000 | # Connected Corp |
| rdgs | 16385/tcp | 0.000000 | # Reliable Datagram Sockets |
| overnet | 16444/tcp | 0.000025 | # Overnet file sharing |
| overnet | 16444/udp | 0.000726 | # Overnet file sharing |
| xoms | 16619/tcp | 0.000000 | # X509 Objects Management Service |
| axon-tunnel | 16665/tcp | 0.000000 | # Reliable multipath data transport for high latencies |
| vtp | 16666/tcp | 0.000000 | # Vidder Tunnel Protocol |
| cadsisvr | 16789/tcp | 0.000000 | # This server provides callable services to mainframe External Security Managers from any TCP/IP platform |
| newbay-snc-mc | 16900/tcp | 0.000076 | # Newbay Mobile Client Update Service |
| newbay-snc-mc | 16900/udp | 0.000000 | # Newbay Mobile Client Update Service |
| sgcip | 16950/tcp | 0.000000 | # Simple Generic Client Interface Protocol |
| sgcip | 16950/udp | 0.000000 | # Simple Generic Client Interface Protocol |
| subseven | 16959/tcp | 0.000000 | # Subseven trojan |
| intel-rci-mp | 16991/tcp | 0.000000 | intel-rci-mp 16991/tcp 0.000000 |
| intel-rci-mp | 16991/udp | 0.000000 | # INTEL-RCI-MP |
| amt-soap-http | 16992/tcp | 0.000760 | # Intel(R) AMT SOAP/HTTP |
| amt-soap-http | 16992/udp | 0.000000 | # Intel(R) AMT SOAP/HTTP |
| amt-soap-https | 16993/tcp | 0.000760 | # Intel(R) AMT SOAP/HTTPS |
| amt-soap-https | 16993/udp | 0.000000 | # Intel(R) AMT SOAP/HTTPS |
| amt-redir-tcp | 16994/tcp | 0.000000 | # Intel(R) AMT Redirection/TCP |
| amt-redir-tcp | 16994/udp | 0.000000 | # Intel(R) AMT Redirection/TCP |
| amt-redir-tls | 16995/tcp | 0.000000 | # Intel(R) AMT Redirection/TLS |
| amt-redir-tls | 16995/udp | 0.000000 | # Intel(R) AMT Redirection/TLS |
| isode-dua | 17007/tcp | 0.000013 | isode-dua 17007/tcp 0.000013 |
| isode-dua | 17007/udp | 0.000591 | isode-dua 17007/udp 0.000591 |
| ncpu | 17010/tcp | 0.000000 | # Plan 9 cpu port |
| vestasdlp | 17184/tcp | 0.000000 | # Vestas Data Layer Protocol |
| soundsvirtual | 17185/tcp | 0.000000 | # Sounds Virtual |
| wdbrpc | 17185/udp | 0.013395 | # vxWorks WDB remote debugging ONCRPC |
| chipper | 17219/tcp | 0.000000 | chipper 17219/tcp 0.000000 |
| chipper | 17219/udp | 0.001307 | # Chipper |
| avtp | 17220/tcp | 0.000000 | # IEEE 1722 Transport Protocol for Time Sensitive Applications |
| avdecc | 17221/tcp | 0.000000 | # IEEE 1722.1 AVB Discovery, Enumeration, Connection management, and Control |
| cpsp | 17222/tcp | 0.000000 | # Control Plane Synchronization Protocol (SPSP) |
| isa100-gci | 17223/tcp | 0.000000 | # ISA100 GCI is a service utilizing a common interface between an ISA100 Wireless gateway and a client application |
| trdp-pd | 17224/tcp | 0.000000 | # Train Realtime Data Protocol (TRDP) Process Data |
| trdp-md | 17225/tcp | 0.000000 | # Train Realtime Data Protocol (TRDP) Message Data |
| integrius-stp | 17234/tcp | 0.000000 | # Integrius Secure Tunnel Protocol |
| integrius-stp | 17234/udp | 0.000000 | # Integrius Secure Tunnel Protocol |
| ssh-mgmt | 17235/tcp | 0.000000 | # SSH Tectia Manager |
| ssh-mgmt | 17235/udp | 0.000654 | # SSH Tectia Manager |
| kuang2 | 17300/tcp | 0.000013 | # Kuang2 backdoor |
| db-lsp | 17500/tcp | 0.000076 | # db-lsp-disc | Dropbox LanSync Protocol | Dropbox LanSync Discovery |
| db-lsp-disc | 17500/udp | 0.000000 | # Dropbox LanSync Discovery |
| ailith | 17555/tcp | 0.000000 | # Ailith management of routers |
| ea | 17729/tcp | 0.000000 | # Eclipse Aviation |
| ea | 17729/udp | 0.000000 | # Eclipse Aviation |
| zep | 17754/tcp | 0.000000 | # Encap. ZigBee Packets |
| zep | 17754/udp | 0.001307 | # Encap. ZigBee Packets |
| zigbee-ip | 17755/tcp | 0.000000 | # ZigBee IP Transport Service |
| zigbee-ip | 17755/udp | 0.000654 | # ZigBee IP Transport Service |
| zigbee-ips | 17756/tcp | 0.000000 | # ZigBee IP Transport Secure Service |
| zigbee-ips | 17756/udp | 0.000654 | # ZigBee IP Transport Secure Service |
| sw-orion | 17777/tcp | 0.000000 | # SolarWinds Orion |
| biimenu | 18000/tcp | 0.000138 | # Beckman Instruments, Inc. |
| biimenu | 18000/udp | 0.000541 | # Beckman Instruments, Inc. |
| radpdf | 18104/tcp | 0.000000 | # RAD PDF Service |
| racf | 18136/tcp | 0.000000 | # z/OS Resource Access Control Facility |
| opsec-cvp | 18181/tcp | 0.000025 | # Check Point OPSEC | OPSEC CVP |
| opsec-cvp | 18181/udp | 0.000000 | # OPSEC CVP |
| opsec-ufp | 18182/tcp | 0.000038 | # Check Point OPSEC | OPSEC UFP |
| opsec-ufp | 18182/udp | 0.000654 | # OPSEC UFP |
| opsec-sam | 18183/tcp | 0.000025 | # Check Point OPSEC | OPSEC SAM |
| opsec-sam | 18183/udp | 0.000654 | # OPSEC SAM |
| opsec-lea | 18184/tcp | 0.000038 | # Check Point OPSEC | OPSEC LEA |
| opsec-lea | 18184/udp | 0.000000 | # OPSEC LEA |
| opsec-omi | 18185/tcp | 0.000000 | # Check Point OPSEC | OPSEC OMI |
| opsec-omi | 18185/udp | 0.000000 | # OPSEC OMI |
| ohsc | 18186/tcp | 0.000000 | # Occupational Health SC | Occupational Health Sc |
| ohsc | 18186/udp | 0.000000 | # Occupational Health Sc |
| opsec-ela | 18187/tcp | 0.000013 | # Check Point OPSEC | OPSEC ELA |
| opsec-ela | 18187/udp | 0.000000 | # OPSEC ELA |
| checkpoint-rtm | 18241/tcp | 0.000000 | # Check Point RTM |
| checkpoint-rtm | 18241/udp | 0.000000 | # Check Point RTM |
| iclid | 18242/tcp | 0.000000 | # Checkpoint router monitoring |
| clusterxl | 18243/tcp | 0.000000 | # Checkpoint router state backup |
| gv-pf | 18262/tcp | 0.000000 | # GV NetConfig Service |
| gv-pf | 18262/udp | 0.000654 | # GV NetConfig Service |
| bitcoin | 18333/tcp | 0.000076 | # Bitcoin crypto currency - https://en.bitcoin.it/wiki/Running_Bitcoin |
| ac-cluster | 18463/tcp | 0.000000 | # AC Cluster |
| ac-cluster | 18463/udp | 0.000000 | # AC Cluster |
| heythings | 18516/tcp | 0.000000 | # HeyThings Device communicate service |
| rds-ib | 18634/tcp | 0.000000 | # Reliable Datagram Service |
| rds-ib | 18634/udp | 0.000000 | # Reliable Datagram Service |
| rds-ip | 18635/tcp | 0.000000 | # Reliable Datagram Service over IP |
| rds-ip | 18635/udp | 0.000000 | # Reliable Datagram Service over IP |
| vdmmesh | 18668/tcp | 0.000000 | # vdmmesh-disc | Manufacturing Execution Systems Mesh Communication |
| ique | 18769/tcp | 0.000000 | # IQue Protocol |
| ique | 18769/udp | 0.000654 | # IQue Protocol |
| infotos | 18881/tcp | 0.000000 | infotos 18881/tcp 0.000000 |
| infotos | 18881/udp | 0.000000 | # Infotos |
| apc-necmp | 18888/tcp | 0.000000 | # APCNECMP |
| apc-necmp | 18888/udp | 0.001307 | # APCNECMP |
| igrid | 19000/tcp | 0.000000 | # iGrid Server |
| igrid | 19000/udp | 0.000000 | # iGrid Server |
| scintilla | 19007/tcp | 0.000000 | # Scintilla protocol for device services |
| j-link | 19020/tcp | 0.000000 | # J-Link TCP/IP Protocol |
| gkrellm | 19150/tcp | 0.000013 | # GKrellM remote system activity meter daemon |
| opsec-uaa | 19191/tcp | 0.000000 | # OPSEC UAA |
| opsec-uaa | 19191/udp | 0.000000 | # OPSEC UAA |
| ua-secureagent | 19194/tcp | 0.000000 | # UserAuthority SecureAgent |
| ua-secureagent | 19194/udp | 0.000000 | # UserAuthority SecureAgent |
| cora | 19220/tcp | 0.000000 | # cora-disc | Client Connection Management and Data Exchange Service | Discovery for Client Connection Management and Data Exchange Service |
| keysrvr | 19283/tcp | 0.000304 | # Key Server for SASSAFRAS |
| keysrvr | 19283/udp | 0.004575 | # Key Server for SASSAFRAS |
| keyshadow | 19315/tcp | 0.000304 | # Key Shadow for SASSAFRAS |
| keyshadow | 19315/udp | 0.001307 | # Key Shadow for SASSAFRAS |
| litecoin | 19333/tcp | 0.000076 | # Litecoin crypto currency testnet - https://litecoin.info/Litecoin.conf |
| mtrgtrans | 19398/tcp | 0.000000 | mtrgtrans 19398/tcp 0.000000 |
| mtrgtrans | 19398/udp | 0.000000 | mtrgtrans 19398/udp 0.000000 |
| hp-sco | 19410/tcp | 0.000000 | hp-sco 19410/tcp 0.000000 |
| hp-sco | 19410/udp | 0.000000 | hp-sco 19410/udp 0.000000 |
| hp-sca | 19411/tcp | 0.000000 | hp-sca 19411/tcp 0.000000 |
| hp-sca | 19411/udp | 0.000000 | hp-sca 19411/udp 0.000000 |
| hp-sessmon | 19412/tcp | 0.000000 | hp-sessmon 19412/tcp 0.000000 |
| hp-sessmon | 19412/udp | 0.000000 | # HP-SESSMON |
| fxuptp | 19539/tcp | 0.000000 | fxuptp 19539/tcp 0.000000 |
| fxuptp | 19539/udp | 0.000654 | # FXUPTP |
| sxuptp | 19540/tcp | 0.000000 | sxuptp 19540/tcp 0.000000 |
| sxuptp | 19540/udp | 0.000000 | # SXUPTP |
| jcp | 19541/tcp | 0.000000 | # JCP Client |
| jcp | 19541/udp | 0.001307 | # JCP Client |
| mle | 19788/tcp | 0.000000 | # Mesh Link Establishment |
| faircom-db | 19790/tcp | 0.000000 | # FairCom Database |
| iec-104-sec | 19998/tcp | 0.000000 | # IEC 60870-5-104 process control - secure |
| dnp-sec | 19999/tcp | 0.000000 | # Distributed Network Protocol - Secure |
| dnp-sec | 19999/udp | 0.000000 | # Distributed Network Protocol - Secure |
| dnp | 20000/tcp | 0.000380 | dnp 20000/tcp 0.000380 |
| dnp | 20000/udp | 0.000000 | # DNP |
| microsan | 20001/tcp | 0.000076 | microsan 20001/tcp 0.000076 |
| microsan | 20001/udp | 0.000000 | # MicroSAN |
| commtact-http | 20002/tcp | 0.000152 | # Commtact HTTP |
| commtact-http | 20002/udp | 0.000000 | # Commtact HTTP |
| commtact-https | 20003/tcp | 0.000000 | # Commtact HTTPS |
| commtact-https | 20003/udp | 0.001307 | # Commtact HTTPS |
| btx | 20005/tcp | 0.000401 | # openwebnet | xcept4 (Interacts with German Telekom's CEPT videotext service) | OpenWebNet protocol for electric network |
| openwebnet | 20005/udp | 0.000654 | # OpenWebNet protocol for electric network |
| ss-idi-disc | 20012/tcp | 0.000000 | # Samsung Interdevice Interaction discovery |
| ss-idi-disc | 20012/udp | 0.000000 | # Samsung Interdevice Interaction discovery |
| ss-idi | 20013/tcp | 0.000000 | # Samsung Interdevice Interaction |
| opendeploy | 20014/tcp | 0.000000 | # OpenDeploy Listener |
| opendeploy | 20014/udp | 0.000000 | # OpenDeploy Listener |
| bakbonenetvault | 20031/udp | 0.025490 | # BakBone NetVault primary communications port |
| nburn_id | 20034/tcp | 0.000000 | # nburn-id | NetBurner ID Port |
| nburn_id | 20034/udp | 0.000654 | # NetBurner ID Port |
| tmophl7mts | 20046/tcp | 0.000000 | # TMOP HL7 Message Transfer Service |
| tmophl7mts | 20046/udp | 0.000000 | # TMOP HL7 Message Transfer Service |
| mountd | 20048/tcp | 0.000000 | # NFS mount protocol |
| mountd | 20048/udp | 0.000654 | # NFS mount protocol |
| nfsrdma | 20049/sctp | 0.000000 | # Network File System (NFS) over RDMA |
| nfsrdma | 20049/tcp | 0.000000 | # Network File System (NFS) over RDMA |
| nfsrdma | 20049/udp | 0.000000 | # Network File System (NFS) over RDMA |
| avesterra | 20057/tcp | 0.000000 | # AvesTerra Hypergraph Transfer Protocol (HGTP) |
| tolfab | 20167/tcp | 0.000000 | # TOLfab Data Change |
| tolfab | 20167/udp | 0.000000 | # TOLfab Data Change |
| ipdtp-port | 20202/tcp | 0.000000 | # IPD Tunneling Port |
| ipdtp-port | 20202/udp | 0.000000 | # IPD Tunneling Port |
| ipulse-ics | 20222/tcp | 0.000380 | ipulse-ics 20222/tcp 0.000380 |
| ipulse-ics | 20222/udp | 0.000654 | # iPulse-ICS |
| emwavemsg | 20480/tcp | 0.000000 | # emWave Message Service |
| emwavemsg | 20480/udp | 0.000000 | # emWave Message Service |
| track | 20670/tcp | 0.000000 | track 20670/tcp 0.000000 |
| track | 20670/udp | 0.000000 | # Track |
| crtech-nlm | 20810/tcp | 0.000000 | # CRTech NLM |
| athand-mmp | 20999/tcp | 0.000000 | # At Hand MMP | AT Hand MMP |
| athand-mmp | 20999/udp | 0.000000 | # AT Hand MMP |
| irtrans | 21000/tcp | 0.000000 | # IRTrans Control |
| irtrans | 21000/udp | 0.001307 | # IRTrans Control |
| notezilla-lan | 21010/tcp | 0.000000 | # Notezilla.Lan Server |
| memcachedb | 21201/tcp | 0.000076 | memcachedb 21201/tcp 0.000076 |
| trinket-agent | 21212/tcp | 0.000000 | # Distributed artificial intelligence |
| cohesity-agent | 21213/tcp | 0.000000 | # Cohesity backup agents |
| aigairserver | 21221/tcp | 0.000000 | # Services for Air Server |
| rdm-tfs | 21553/tcp | 0.000000 | # Raima RDM TFS |
| dfserver | 21554/tcp | 0.000000 | # MineScape Design File Server |
| dfserver | 21554/udp | 0.000000 | # MineScape Design File Server |
| vofr-gateway | 21590/tcp | 0.000000 | # VoFR Gateway |
| vofr-gateway | 21590/udp | 0.000000 | # VoFR Gateway |
| tvpm | 21800/tcp | 0.000000 | # TVNC Pro Multiplexing |
| tvpm | 21800/udp | 0.001307 | # TVNC Pro Multiplexing |
| sal | 21801/tcp | 0.000000 | # Safe AutoLogon |
| webphone | 21845/tcp | 0.000000 | webphone 21845/tcp 0.000000 |
| webphone | 21845/udp | 0.000000 | webphone 21845/udp 0.000000 |
| netspeak-is | 21846/tcp | 0.000000 | # NetSpeak Corp. Directory Services |
| netspeak-is | 21846/udp | 0.000000 | # NetSpeak Corp. Directory Services |
| netspeak-cs | 21847/tcp | 0.000000 | # NetSpeak Corp. Connection Services |
| netspeak-cs | 21847/udp | 0.001307 | # NetSpeak Corp. Connection Services |
| netspeak-acd | 21848/tcp | 0.000000 | # NetSpeak Corp. Automatic Call Distribution |
| netspeak-acd | 21848/udp | 0.000000 | # NetSpeak Corp. Automatic Call Distribution |
| netspeak-cps | 21849/tcp | 0.000000 | # NetSpeak Corp. Credit Processing System |
| netspeak-cps | 21849/udp | 0.000000 | # NetSpeak Corp. Credit Processing System |
| snapenetio | 22000/tcp | 0.000000 | snapenetio 22000/tcp 0.000000 |
| snapenetio | 22000/udp | 0.000000 | # SNAPenetIO |
| optocontrol | 22001/tcp | 0.000000 | optocontrol 22001/tcp 0.000000 |
| optocontrol | 22001/udp | 0.000000 | # OptoControl |
| optohost002 | 22002/tcp | 0.000000 | # Opto Host Port 2 |
| optohost002 | 22002/udp | 0.000000 | # Opto Host Port 2 |
| optohost003 | 22003/tcp | 0.000000 | # Opto Host Port 3 |
| optohost003 | 22003/udp | 0.000000 | # Opto Host Port 3 |
| optohost004 | 22004/tcp | 0.000000 | # Opto Host Port 4 |
| optohost004 | 22004/udp | 0.000000 | # Opto Host Port 4 |
| optohost004 | 22005/tcp | 0.000000 | # Opto Host Port 5 |
| optohost004 | 22005/udp | 0.000000 | # Opto Host Port 5 |
| dcap | 22125/tcp | 0.000076 | # dCache Access Protocol |
| gsidcap | 22128/tcp | 0.000076 | # GSI dCache Access Protocol |
| easyengine | 22222/tcp | 0.000152 | # EasyEngine is CLI tool to manage WordPress Sites on Nginx server |
| wnn6 | 22273/tcp | 0.000075 | # Wnn6 (Japanese input) |
| wnn6 | 22273/udp | 0.000000 | wnn6 22273/udp 0.000000 |
| wnn6_Cn | 22289/tcp | 0.000000 | # Wnn6 (Chinese input) |
| wnn6_Kr | 22305/tcp | 0.000000 | # cis | Wnn6 (Korean input) | CompactIS Tunnel |
| cis | 22305/udp | 0.000000 | # CompactIS Tunnel |
| wnn6_Tw | 22321/tcp | 0.000000 | # Wnn6 (Taiwanse input) |
| showcockpit-net | 22333/tcp | 0.000000 | # ShowCockpit Networking |
| shrewd-control | 22335/tcp | 0.000000 | # shrewd-stream | Initium Labs Security and Automation Control | Initium Labs Security and Automation Streaming |
| cis-secure | 22343/tcp | 0.000000 | # CompactIS Secure Tunnel |
| cis-secure | 22343/udp | 0.000000 | # CompactIS Secure Tunnel |
| WibuKey | 22347/tcp | 0.000000 | # WibuKey Standard WkLan |
| WibuKey | 22347/udp | 0.000654 | # WibuKey Standard WkLan |
| CodeMeter | 22350/tcp | 0.000076 | # CodeMeter Standard |
| CodeMeter | 22350/udp | 0.000654 | # CodeMeter Standard |
| codemeter-cmwan | 22351/tcp | 0.000000 | # TPC/IP requests of copy protection software to a server |
| hpnpd | 22370/tcp | 0.000000 | # Hewlett-Packard Network Printer daemon |
| hpnpd | 22370/udp | 0.000726 | # Hewlett-Packard Network Printer daemon |
| caldsoft-backup | 22537/tcp | 0.000000 | # CaldSoft Backup server file transfer |
| vocaltec-wconf | 22555/tcp | 0.000076 | # vocaltec-phone | Vocaltec Web Conference | Vocaltec Internet Phone |
| vocaltec-phone | 22555/udp | 0.000000 | # Vocaltec Internet Phone |
| talikaserver | 22763/tcp | 0.000000 | # Talika Main Server |
| talikaserver | 22763/udp | 0.000000 | # Talika Main Server |
| aws-brf | 22800/tcp | 0.000000 | # Telerate Information Platform LAN |
| aws-brf | 22800/udp | 0.000000 | # Telerate Information Platform LAN |
| brf-gw | 22951/tcp | 0.000000 | # Telerate Information Platform WAN |
| brf-gw | 22951/udp | 0.000000 | # Telerate Information Platform WAN |
| inovaport1 | 23000/tcp | 0.000000 | # Inova LightLink Server Type 1 |
| inovaport1 | 23000/udp | 0.000654 | # Inova LightLink Server Type 1 |
| inovaport2 | 23001/tcp | 0.000000 | # Inova LightLink Server Type 2 |
| inovaport2 | 23001/udp | 0.000000 | # Inova LightLink Server Type 2 |
| inovaport3 | 23002/tcp | 0.000000 | # Inova LightLink Server Type 3 |
| inovaport3 | 23002/udp | 0.000000 | # Inova LightLink Server Type 3 |
| inovaport4 | 23003/tcp | 0.000000 | # Inova LightLink Server Type 4 |
| inovaport4 | 23003/udp | 0.000000 | # Inova LightLink Server Type 4 |
| inovaport5 | 23004/tcp | 0.000000 | # Inova LightLink Server Type 5 |
| inovaport5 | 23004/udp | 0.000000 | # Inova LightLink Server Type 5 |
| inovaport6 | 23005/tcp | 0.000000 | # Inova LightLink Server Type 6 |
| inovaport6 | 23005/udp | 0.000000 | # Inova LightLink Server Type 6 |
| gntp | 23053/tcp | 0.000000 | # Generic Notification Transport Protocol |
| s102 | 23272/tcp | 0.000000 | # S102 application |
| s102 | 23272/udp | 0.000000 | # S102 application |
| 5afe-dir | 23294/tcp | 0.000000 | # 5afe-disc | 5AFE SDN Directory | 5AFE SDN Directory discovery |
| elxmgmt | 23333/tcp | 0.000000 | # Emulex HBAnyware Remote Management |
| elxmgmt | 23333/udp | 0.000000 | # Emulex HBAnyware Remote Management |
| novar-dbase | 23400/tcp | 0.000000 | # Novar Data |
| novar-dbase | 23400/udp | 0.000654 | # Novar Data |
| novar-alarm | 23401/tcp | 0.000000 | # Novar Alarm |
| novar-alarm | 23401/udp | 0.000000 | # Novar Alarm |
| novar-global | 23402/tcp | 0.000000 | # Novar Global |
| novar-global | 23402/udp | 0.000000 | # Novar Global |
| aequus | 23456/tcp | 0.000000 | # Aequus Service |
| aequus-alt | 23457/tcp | 0.000000 | # Aequus Service Mgmt |
| areaguard-neo | 23546/tcp | 0.000000 | # AreaGuard Neo - WebServer |
| med-ltp | 24000/tcp | 0.000000 | med-ltp 24000/tcp 0.000000 |
| med-ltp | 24000/udp | 0.000000 | med-ltp 24000/udp 0.000000 |
| med-fsp-rx | 24001/tcp | 0.000000 | med-fsp-rx 24001/tcp 0.000000 |
| med-fsp-rx | 24001/udp | 0.000000 | med-fsp-rx 24001/udp 0.000000 |
| med-fsp-tx | 24002/tcp | 0.000000 | med-fsp-tx 24002/tcp 0.000000 |
| med-fsp-tx | 24002/udp | 0.000000 | med-fsp-tx 24002/udp 0.000000 |
| med-supp | 24003/tcp | 0.000000 | med-supp 24003/tcp 0.000000 |
| med-supp | 24003/udp | 0.000000 | med-supp 24003/udp 0.000000 |
| med-ovw | 24004/tcp | 0.000000 | med-ovw 24004/tcp 0.000000 |
| med-ovw | 24004/udp | 0.000654 | med-ovw 24004/udp 0.000654 |
| med-ci | 24005/tcp | 0.000000 | med-ci 24005/tcp 0.000000 |
| med-ci | 24005/udp | 0.000654 | med-ci 24005/udp 0.000654 |
| med-net-svc | 24006/tcp | 0.000000 | med-net-svc 24006/tcp 0.000000 |
| med-net-svc | 24006/udp | 0.000000 | med-net-svc 24006/udp 0.000000 |
| filesphere | 24242/tcp | 0.000000 | filesphere 24242/tcp 0.000000 |
| filesphere | 24242/udp | 0.001307 | # fileSphere |
| vista-4gl | 24249/tcp | 0.000000 | # Vista 4GL |
| vista-4gl | 24249/udp | 0.000000 | # Vista 4GL |
| ild | 24321/tcp | 0.000000 | # Isolv Local Directory |
| ild | 24321/udp | 0.000000 | # Isolv Local Directory |
| hid | 24322/tcp | 0.000000 | # Transport of Human Interface Device data streams |
| vrmg-ip | 24323/tcp | 0.000000 | # Verimag mobile class protocol over TCP |
| intel_rci | 24386/tcp | 0.000000 | # intel-rci | Intel RCI |
| intel_rci | 24386/udp | 0.000000 | # Intel RCI |
| tonidods | 24465/tcp | 0.000000 | # Tonido Domain Server |
| tonidods | 24465/udp | 0.000000 | # Tonido Domain Server |
| binkp | 24554/tcp | 0.000076 | binkp 24554/tcp 0.000076 |
| binkp | 24554/udp | 0.000000 | # BINKP |
| bilobit | 24577/tcp | 0.000000 | # bilobit-update | bilobit Service | bilobit Service Update |
| sdtvwcam | 24666/tcp | 0.000000 | # Service used by SmarDTV to communicate between a CAM and a second screen application |
| canditv | 24676/tcp | 0.000000 | # Canditv Message Service |
| canditv | 24676/udp | 0.000000 | # Canditv Message Service |
| flashfiler | 24677/tcp | 0.000000 | flashfiler 24677/tcp 0.000000 |
| flashfiler | 24677/udp | 0.000654 | # FlashFiler |
| proactivate | 24678/tcp | 0.000000 | # Turbopower Proactivate |
| proactivate | 24678/udp | 0.000000 | # Turbopower Proactivate |
| tcc-http | 24680/tcp | 0.000000 | # TCC User HTTP Service |
| tcc-http | 24680/udp | 0.000654 | # TCC User HTTP Service |
| cslg | 24754/tcp | 0.000000 | # Citrix StorageLink Gateway |
| assoc-disc | 24850/tcp | 0.000000 | # Device Association Discovery |
| find | 24922/tcp | 0.000000 | # Find Identification of Network Devices |
| find | 24922/udp | 0.000000 | # Find Identification of Network Devices |
| icl-twobase1 | 25000/tcp | 0.000076 | icl-twobase1 25000/tcp 0.000076 |
| icl-twobase1 | 25000/udp | 0.000000 | icl-twobase1 25000/udp 0.000000 |
| icl-twobase2 | 25001/tcp | 0.000076 | icl-twobase2 25001/tcp 0.000076 |
| icl-twobase2 | 25001/udp | 0.000000 | icl-twobase2 25001/udp 0.000000 |
| icl-twobase3 | 25002/tcp | 0.000000 | icl-twobase3 25002/tcp 0.000000 |
| icl-twobase3 | 25002/udp | 0.000000 | icl-twobase3 25002/udp 0.000000 |
| icl-twobase4 | 25003/tcp | 0.000000 | icl-twobase4 25003/tcp 0.000000 |
| icl-twobase4 | 25003/udp | 0.001961 | icl-twobase4 25003/udp 0.001961 |
| icl-twobase5 | 25004/tcp | 0.000000 | icl-twobase5 25004/tcp 0.000000 |
| icl-twobase5 | 25004/udp | 0.000000 | icl-twobase5 25004/udp 0.000000 |
| icl-twobase6 | 25005/tcp | 0.000000 | icl-twobase6 25005/tcp 0.000000 |
| icl-twobase6 | 25005/udp | 0.000000 | icl-twobase6 25005/udp 0.000000 |
| icl-twobase7 | 25006/tcp | 0.000000 | icl-twobase7 25006/tcp 0.000000 |
| icl-twobase7 | 25006/udp | 0.000000 | icl-twobase7 25006/udp 0.000000 |
| icl-twobase8 | 25007/tcp | 0.000000 | icl-twobase8 25007/tcp 0.000000 |
| icl-twobase8 | 25007/udp | 0.000000 | icl-twobase8 25007/udp 0.000000 |
| icl-twobase9 | 25008/tcp | 0.000000 | icl-twobase9 25008/tcp 0.000000 |
| icl-twobase9 | 25008/udp | 0.000000 | icl-twobase9 25008/udp 0.000000 |
| icl-twobase10 | 25009/tcp | 0.000000 | icl-twobase10 25009/tcp 0.000000 |
| icl-twobase10 | 25009/udp | 0.000000 | icl-twobase10 25009/udp 0.000000 |
| rna | 25471/tcp | 0.000000 | # RNSAP User Adaptation for Iurh |
| minecraft | 25565/tcp | 0.000076 | # A video game - http://en.wikipedia.org/wiki/Minecraft |
| sauterdongle | 25576/tcp | 0.000000 | # Sauter Dongle |
| idtp | 25604/tcp | 0.000000 | # Identifier Tracing Protocol |
| vocaltec-hos | 25793/tcp | 0.000000 | # Vocaltec Address Server |
| vocaltec-hos | 25793/udp | 0.000654 | # Vocaltec Address Server |
| tasp-net | 25900/tcp | 0.000000 | # TASP Network Comm |
| tasp-net | 25900/udp | 0.000000 | # TASP Network Comm |
| niobserver | 25901/tcp | 0.000000 | niobserver 25901/tcp 0.000000 |
| niobserver | 25901/udp | 0.000654 | # NIObserver |
| nilinkanalyst | 25902/tcp | 0.000000 | nilinkanalyst 25902/tcp 0.000000 |
| nilinkanalyst | 25902/udp | 0.000000 | # NILinkAnalyst |
| niprobe | 25903/tcp | 0.000000 | niprobe 25903/tcp 0.000000 |
| niprobe | 25903/udp | 0.000000 | # NIProbe |
| bf-game | 25954/tcp | 0.000000 | # Bitfighter game server |
| bf-master | 25955/tcp | 0.000000 | # Bitfighter master server |
| quake | 26000/tcp | 0.000152 | quake 26000/tcp 0.000152 |
| quake | 26000/udp | 0.000490 | # Quake game server |
| scscp | 26133/tcp | 0.000000 | # Symbolic Computation Software Composability Protocol |
| scscp | 26133/udp | 0.000000 | # Symbolic Computation Software Composability Protocol |
| wnn6_DS | 26208/tcp | 0.000025 | # Wnn6 (Dserver) | wnn6-ds |
| wnn6-ds | 26208/udp | 0.000000 | wnn6-ds 26208/udp 0.000000 |
| cockroach | 26257/tcp | 0.000000 | # CockroachDB |
| ezproxy | 26260/tcp | 0.000000 | ezproxy 26260/tcp 0.000000 |
| ezproxy | 26260/udp | 0.000000 | # eZproxy |
| ezmeeting | 26261/tcp | 0.000000 | ezmeeting 26261/tcp 0.000000 |
| ezmeeting | 26261/udp | 0.000000 | # eZmeeting |
| k3software-svr | 26262/tcp | 0.000000 | # K3 Software-Server |
| k3software-svr | 26262/udp | 0.000000 | # K3 Software-Server |
| k3software-cli | 26263/tcp | 0.000000 | # K3 Software-Client |
| k3software-cli | 26263/udp | 0.000000 | # K3 Software-Client |
| exoline-tcp | 26486/tcp | 0.000000 | # exoline-udp | EXOline-UDP |
| exoline-udp | 26486/udp | 0.000000 | # EXOline-UDP |
| exoconfig | 26487/tcp | 0.000000 | exoconfig 26487/tcp 0.000000 |
| exoconfig | 26487/udp | 0.000000 | # EXOconfig |
| exonet | 26489/tcp | 0.000000 | exonet 26489/tcp 0.000000 |
| exonet | 26489/udp | 0.000000 | # EXOnet |
| hexen2 | 26900/udp | 0.001166 | # Hexen 2 game server |
| flexlm0 | 27000/tcp | 0.000640 | # FlexLM license manager additional ports |
| flex-lm | 27000/udp | 0.000000 | # FLEX LM (1-10) |
| flexlm1 | 27001/tcp | 0.000075 | # FlexLM license manager additional ports |
| flex-lm | 27001/udp | 0.000000 | # FLEX LM (1-10) |
| flexlm2 | 27002/tcp | 0.000013 | # FlexLM license manager additional ports |
| flex-lm | 27002/udp | 0.001307 | # FLEX LM (1-10) |
| flexlm3 | 27003/tcp | 0.000013 | # FlexLM license manager additional ports |
| flex-lm | 27003/udp | 0.000654 | # FLEX LM (1-10) |
| flexlm4 | 27004/tcp | 0.000000 | # FlexLM license manager additional ports |
| flex-lm | 27004/udp | 0.000000 | # FLEX LM (1-10) |
| flexlm5 | 27005/tcp | 0.000013 | # FlexLM license manager additional ports |
| flex-lm | 27005/udp | 0.000000 | # FLEX LM (1-10) |
| flexlm6 | 27006/tcp | 0.000000 | # FlexLM license manager additional ports |
| flex-lm | 27006/udp | 0.000000 | # FLEX LM (1-10) |
| flexlm7 | 27007/tcp | 0.000013 | # FlexLM license manager additional ports |
| flex-lm | 27007/udp | 0.001307 | # FLEX LM (1-10) |
| flexlm8 | 27008/tcp | 0.000000 | # FlexLM license manager additional ports |
| flex-lm | 27008/udp | 0.000000 | # FLEX LM (1-10) |
| flexlm9 | 27009/tcp | 0.000013 | # FlexLM license manager additional ports |
| flex-lm | 27009/udp | 0.000000 | # FLEX LM (1-10) |
| flexlm10 | 27010/tcp | 0.000063 | # flex-lmadmin | FlexLM license manager additional ports | A protocol for managing license services |
| halflife | 27015/udp | 0.002432 | # Half-life game server |
| mongod | 27017/tcp | 0.000076 | # mongodb | http://docs.mongodb.org/manual/reference/default-mongodb-port/ | Mongo database system |
| mongod | 27018/tcp | 0.000076 | # http://docs.mongodb.org/manual/reference/default-mongodb-port/ |
| mongod | 27019/tcp | 0.000076 | # http://docs.mongodb.org/manual/reference/default-mongodb-port/ |
| imagepump | 27345/tcp | 0.000000 | imagepump 27345/tcp 0.000000 |
| imagepump | 27345/udp | 0.000000 | # ImagePump |
| mdcs-scheduler | 27350/tcp | 0.000076 | # MATLAB Job Scheduler |
| subseven | 27374/tcp | 0.000050 | # Subseven Windows trojan |
| jesmsjc | 27442/tcp | 0.000000 | # Job controller service |
| jesmsjc | 27442/udp | 0.000000 | # Job controller service |
| Trinoo_Bcast | 27444/udp | 0.001554 | # Trinoo distributed attack tool Master |
| quakeworld | 27500/udp | 0.000980 | # Quake world |
| kopek-httphead | 27504/tcp | 0.000000 | # Kopek HTTP Head Port |
| kopek-httphead | 27504/udp | 0.000000 | # Kopek HTTP Head Port |
| Trinoo_Master | 27665/tcp | 0.000038 | # Trinoo distributed attack tool Master server control port |
| ars-vista | 27782/tcp | 0.000000 | # ARS VISTA Application |
| ars-vista | 27782/udp | 0.000000 | # ARS VISTA Application |
| astrolink | 27876/tcp | 0.000000 | # Astrolink Protocol |
| quake2 | 27910/udp | 0.000760 | # Quake 2 game server |
| quake3 | 27960/udp | 0.000726 | # Quake 3 Arena Server |
| tw-auth-key | 27999/tcp | 0.000000 | # TW Authentication/Key Distribution and | Attribute Certificate Services |
| tw-auth-key | 27999/udp | 0.000000 | # Attribute Certificate Services |
| nxlmd | 28000/tcp | 0.000000 | # NX License Manager |
| nxlmd | 28000/udp | 0.000000 | # NX License Manager |
| pqsp | 28001/tcp | 0.000000 | # PQ Service |
| gruber-cashreg | 28010/tcp | 0.000000 | # Gruber cash registry protocol |
| rethinkdb | 28015/tcp | 0.000076 | rethinkdb 28015/tcp 0.000076 |
| mongod | 28017/tcp | 0.000076 | # http://docs.mongodb.org/manual/reference/default-mongodb-port/ |
| thor-engine | 28080/tcp | 0.000000 | # thor/server - ML engine |
| a27-ran-ran | 28119/tcp | 0.000000 | # A27 cdma2000 RAN Management |
| voxelstorm | 28200/tcp | 0.000000 | # VoxelStorm game server |
| siemensgsm | 28240/tcp | 0.000000 | # Siemens GSM |
| siemensgsm | 28240/udp | 0.000000 | # Siemens GSM |
| bosswave | 28589/tcp | 0.000000 | # Building operating system services wide area verified exchange |
| heretic2 | 28910/udp | 0.000524 | # Heretic 2 game server |
| saltd-licensing | 29000/tcp | 0.000000 | # Siemens Licensing Server |
| rethinkdb | 29015/tcp | 0.000076 | rethinkdb 29015/tcp 0.000076 |
| sgsap | 29118/sctp | 0.000000 | # SGsAP in 3GPP |
| otmp | 29167/tcp | 0.000000 | # ObTools Message Protocol |
| otmp | 29167/udp | 0.000000 | # ObTools Message Protocol |
| sbcap | 29168/sctp | 0.000000 | # SBcAP in 3GPP |
| iuhsctpassoc | 29169/sctp | 0.000000 | # HNBAP and RUA Common Association |
| bingbang | 29999/tcp | 0.000000 | # data exchange protocol for IEC61850 in wind power plants |
| ndmps | 30000/tcp | 0.000380 | # Secure Network Data Management Protocol |
| pago-services1 | 30001/tcp | 0.000076 | # Pago Services 1 |
| pago-services1 | 30001/udp | 0.000000 | # Pago Services 1 |
| pago-services2 | 30002/tcp | 0.000000 | # Pago Services 2 |
| pago-services2 | 30002/udp | 0.000000 | # Pago Services 2 |
| amicon-fpsu-ra | 30003/tcp | 0.000000 | # Amicon FPSU-IP Remote Administration |
| amicon-fpsu-s | 30004/tcp | 0.000000 | # Amicon FPSU-IP VPN |
| rwp | 30100/tcp | 0.000000 | # Remote Window Protocol |
| kingdomsonline | 30260/tcp | 0.000000 | # Kingdoms Online (CraigAvenue) |
| kingdomsonline | 30260/udp | 0.001307 | # Kingdoms Online (CraigAvenue) |
| gs-realtime | 30400/tcp | 0.000000 | # GroundStar RealTime System |
| samsung-disc | 30832/tcp | 0.000000 | # Samsung Convergence Discovery Protocol |
| ovobs | 30999/tcp | 0.000000 | # OpenView Service Desk Client |
| ovobs | 30999/udp | 0.000000 | # OpenView Service Desk Client |
| ka-sddp | 31016/tcp | 0.000000 | # ka-kdp | Kollective Agent Secure Distributed Delivery Protocol | Kollective Agent Kollective Delivery Protocol |
| autotrac-acp | 31020/tcp | 0.000000 | # Autotrac ACP 245 |
| yawn | 31029/tcp | 0.000000 | # YaWN - Yet Another Windows Notifier |
| yawn | 31029/udp | 0.000000 | # YaWN - Yet Another Windows Notifier |
| Trinoo_Register | 31335/udp | 0.001706 | # Trinoo distributed attack tool Bcast Daemon registration port |
| Elite | 31337/tcp | 0.000163 | # eldim | Sometimes interesting stuff can be found here | eldim is a secure file upload proxy |
| BackOrifice | 31337/udp | 0.011469 | # cDc Back Orifice remote admin tool |
| pace-licensed | 31400/tcp | 0.000000 | # PACE license server |
| boinc | 31416/tcp | 0.000075 | # xqosd | BOINC Client Control | XQoS network monitor |
| xqosd | 31416/udp | 0.000000 | # XQoS network monitor |
| tetrinet | 31457/tcp | 0.000000 | # TetriNET Protocol |
| tetrinet | 31457/udp | 0.000000 | # TetriNET Protocol |
| lm-mon | 31620/tcp | 0.000000 | # lm mon |
| lm-mon | 31620/udp | 0.000000 | # lm mon |
| dsx_monitor | 31685/tcp | 0.000000 | # dsx-monitor | DS Expert Monitor |
| diagd | 31727/tcp | 0.000152 | diagd 31727/tcp 0.000152 |
| gamesmith-port | 31765/tcp | 0.000000 | # GameSmith Port |
| gamesmith-port | 31765/udp | 0.000000 | # GameSmith Port |
| iceedcp_tx | 31948/tcp | 0.000000 | # iceedcp-tx | Embedded Device Configuration Protocol TX |
| iceedcp_tx | 31948/udp | 0.000000 | # Embedded Device Configuration Protocol TX |
| iceedcp_rx | 31949/tcp | 0.000000 | # iceedcp-rx | Embedded Device Configuration Protocol RX |
| iceedcp_rx | 31949/udp | 0.000000 | # Embedded Device Configuration Protocol RX |
| iracinghelper | 32034/tcp | 0.000000 | # iRacing helper service |
| iracinghelper | 32034/udp | 0.000000 | # iRacing helper service |
| t1distproc60 | 32249/tcp | 0.000000 | # T1 Distributed Processor |
| t1distproc60 | 32249/udp | 0.000000 | # T1 Distributed Processor |
| plex | 32400/tcp | 0.000000 | # Plex multimedia |
| apm-link | 32483/tcp | 0.000000 | # Access Point Manager Link |
| apm-link | 32483/udp | 0.000654 | # Access Point Manager Link |
| sec-ntb-clnt | 32635/tcp | 0.000000 | # SecureNotebook-CLNT |
| sec-ntb-clnt | 32635/udp | 0.000000 | # SecureNotebook-CLNT |
| DMExpress | 32636/tcp | 0.000000 | DMExpress 32636/tcp 0.000000 |
| DMExpress | 32636/udp | 0.000000 | DMExpress 32636/udp 0.000000 |
| filenet-powsrm | 32767/tcp | 0.000076 | # FileNet BPM WS-ReliableMessaging Client |
| filenet-powsrm | 32767/udp | 0.000000 | # FileNet BPM WS-ReliableMessaging Client |
| filenet-tms | 32768/tcp | 0.009199 | # Filenet TMS |
| omad | 32768/udp | 0.044407 | # OpenMosix Autodiscovery Daemon |
| filenet-rpc | 32769/tcp | 0.000760 | # Filenet RPC |
| filenet-rpc | 32769/udp | 0.007768 | # Filenet RPC |
| mlsn | 32801/tcp | 0.000000 | # Multiple Listing Service Network |
| mlsn | 32801/udp | 0.000000 | # Multiple Listing Service Network |
| retp | 32811/tcp | 0.000000 | # Real Estate Transport Protocol |
| idmgratm | 32896/tcp | 0.000000 | # Attachmate ID Manager |
| idmgratm | 32896/udp | 0.000518 | # Attachmate ID Manager |
| wg-endpt-comms | 33000/tcp | 0.000076 | # WatchGuard Endpoint Communications |
| mysqlx | 33060/tcp | 0.000000 | # MySQL Database Extended Interface |
| aurora-balaena | 33123/tcp | 0.000000 | # Aurora (Balaena Ltd) |
| aurora-balaena | 33123/udp | 0.000000 | # Aurora (Balaena Ltd) |
| diamondport | 33331/tcp | 0.000000 | # DiamondCentral Interface |
| diamondport | 33331/udp | 0.000000 | # DiamondCentral Interface |
| dgi-serv | 33333/tcp | 0.000000 | # Digital Gaslight Service |
| speedtrace | 33334/tcp | 0.000000 | # speedtrace-disc | SpeedTrace TraceAgent | SpeedTrace TraceAgent Discovery |
| traceroute | 33434/tcp | 0.000000 | # traceroute use |
| traceroute | 33434/udp | 0.000000 | # traceroute use |
| mtrace | 33435/tcp | 0.000000 | # IP Multicast Traceroute |
| snip | 33656/tcp | 0.000000 | # SNIP |
| snip | 33656/udp | 0.000000 | snip 33656/udp 0.000000 |
| digilent-adept | 33890/tcp | 0.000000 | # Adept IP protocol |
| turbonote-2 | 34249/tcp | 0.000000 | # TurboNote Relay Server Default Port |
| turbonote-2 | 34249/udp | 0.000000 | # TurboNote Relay Server Default Port |
| p-net-local | 34378/tcp | 0.000000 | # P-Net on IP local |
| p-net-local | 34378/udp | 0.000000 | # P-Net on IP local |
| p-net-remote | 34379/tcp | 0.000000 | # P-Net on IP remote |
| p-net-remote | 34379/udp | 0.000000 | # P-Net on IP remote |
| dhanalakshmi | 34567/tcp | 0.000000 | # edi_service | dhanalakshmi.org EDI Service |
| profinet-rt | 34962/tcp | 0.000000 | # PROFInet RT Unicast |
| profinet-rt | 34962/udp | 0.000000 | # PROFInet RT Unicast |
| profinet-rtm | 34963/tcp | 0.000000 | # PROFInet RT Multicast |
| profinet-rtm | 34963/udp | 0.000000 | # PROFInet RT Multicast |
| profinet-cm | 34964/tcp | 0.000000 | # PROFInet Context Manager |
| profinet-cm | 34964/udp | 0.000000 | # PROFInet Context Manager |
| ethercat | 34980/tcp | 0.000000 | # EtherCAT Port | EhterCAT Port |
| ethercat | 34980/udp | 0.000000 | # EhterCAT Port |
| heathview | 35000/tcp | 0.000000 | heathview 35000/tcp 0.000000 |
| rt-viewer | 35001/tcp | 0.000000 | # ReadyTech Viewer |
| rt-sound | 35002/tcp | 0.000000 | # ReadyTech Sound Server |
| rt-devicemapper | 35003/tcp | 0.000000 | # ReadyTech DeviceMapper Server |
| rt-classmanager | 35004/tcp | 0.000000 | # ReadyTech ClassManager |
| rt-labtracker | 35005/tcp | 0.000000 | # ReadyTech LabTracker |
| rt-helper | 35006/tcp | 0.000000 | # ReadyTech Helper Service |
| axio-disc | 35100/tcp | 0.000000 | # Axiomatic discovery protocol |
| kitim | 35354/tcp | 0.000000 | # KIT Messenger |
| altova-lm | 35355/tcp | 0.000000 | # altova-lm-disc | Altova License Management | Altova License Management Discovery |
| guttersnex | 35356/tcp | 0.000000 | # Gutters Note Exchange |
| openstack-id | 35357/tcp | 0.000000 | # OpenStack ID Service |
| allpeers | 36001/tcp | 0.000000 | # AllPeers Network |
| allpeers | 36001/udp | 0.000000 | # AllPeers Network |
| wlcp | 36411/tcp | 0.000000 | # Wireless LAN Control plane Protocol (WLCP) |
| s1-control | 36412/sctp | 0.000000 | # S1-Control Plane (3GPP) |
| x2-control | 36422/sctp | 0.000000 | # X2-Control Plane (3GPP) |
| slmap | 36423/tcp | 0.000000 | # SLm Interface Application Protocol |
| nq-ap | 36424/tcp | 0.000000 | # Nq and Nq' Application Protocol |
| m2ap | 36443/tcp | 0.000000 | # M2 Application Part |
| m3ap | 36444/tcp | 0.000000 | # M3 Application Part |
| xw-control | 36462/tcp | 0.000000 | # Xw-Control Plane (3GPP) |
| febooti-aw | 36524/tcp | 0.000000 | # Febooti Automation Workshop |
| observium-agent | 36602/tcp | 0.000000 | # Observium statistics collection agent |
| mapx | 36700/tcp | 0.000000 | # MapX communication |
| kastenxpipe | 36865/tcp | 0.000000 | # KastenX Pipe |
| kastenxpipe | 36865/udp | 0.000000 | # KastenX Pipe |
| 3gpp-w1ap | 37472/tcp | 0.000000 | # W1 signalling transport |
| neckar | 37475/tcp | 0.000000 | # science + computing's Venus Administration Port |
| neckar | 37475/udp | 0.000000 | # science + computing's Venus Administration Port |
| gdrive-sync | 37483/tcp | 0.000000 | # Google Drive Sync |
| eftp | 37601/tcp | 0.000000 | # Epipole File Transfer Protocol |
| unisys-eportal | 37654/tcp | 0.000000 | # Unisys ClearPath ePortal |
| unisys-eportal | 37654/udp | 0.001036 | # Unisys ClearPath ePortal |
| ivs-database | 38000/tcp | 0.000000 | # InfoVista Server Database |
| ivs-insertion | 38001/tcp | 0.000000 | # InfoVista Server Insertion |
| cresco-control | 38002/tcp | 0.000000 | # crescoctrl-disc | Cresco Controller | Cresco Controller Discovery |
| landesk-cba | 38037/tcp | 0.000088 | landesk-cba 38037/tcp 0.000088 |
| landesk-cba | 38037/udp | 0.002869 | landesk-cba 38037/udp 0.002869 |
| galaxy7-data | 38201/tcp | 0.000000 | # Galaxy7 Data Tunnel |
| galaxy7-data | 38201/udp | 0.000000 | # Galaxy7 Data Tunnel |
| fairview | 38202/tcp | 0.000000 | # Fairview Message Service |
| fairview | 38202/udp | 0.000518 | # Fairview Message Service |
| agpolicy | 38203/tcp | 0.000000 | # AppGate Policy Server |
| agpolicy | 38203/udp | 0.000000 | # AppGate Policy Server |
| landesk-cba | 38292/tcp | 0.000276 | landesk-cba 38292/tcp 0.000276 |
| landesk-cba | 38293/udp | 0.002970 | landesk-cba 38293/udp 0.002970 |
| ng-control | 38412/tcp | 0.000000 | # NG Control Plane (3GPP) |
| xn-control | 38422/tcp | 0.000000 | # Xn Control Plane (3GPP) |
| e1-interface | 38462/tcp | 0.000000 | # E1 signalling transport (3GPP) |
| f1-control | 38472/tcp | 0.000000 | # F1 Control Plane (3GPP) |
| psqlmws | 38638/tcp | 0.000000 | # Premier SQL Middleware Server |
| sruth | 38800/tcp | 0.000000 | # Sruth is a service for the distribution of routinely- generated but arbitrary files based on a publish/subscribe distribution model and implemented using a peer-to-peer transport mechanism |
| secrmmsafecopya | 38865/tcp | 0.000000 | # Security approval process for use of the secRMM SafeCopy program |
| vroa | 39063/tcp | 0.000000 | # Children's hearing test/Telemedicine |
| sygatefw | 39213/udp | 0.004446 | # Sygate Firewall management port version 3.0 build 521 and above |
| turbonote-1 | 39681/tcp | 0.000000 | # TurboNote Default Port |
| turbonote-1 | 39681/udp | 0.000000 | # TurboNote Default Port |
| safetynetp | 40000/tcp | 0.000152 | # SafetyNET p |
| safetynetp | 40000/udp | 0.000000 | # SafetyNET p |
| k-patentssensor | 40023/tcp | 0.000000 | # K-PatentsSensorInformation |
| sptx | 40404/tcp | 0.000000 | # Simplify Printing TX |
| cscp | 40841/tcp | 0.000000 | cscp 40841/tcp 0.000000 |
| cscp | 40841/udp | 0.000518 | # CSCP |
| csccredir | 40842/tcp | 0.000000 | csccredir 40842/tcp 0.000000 |
| csccredir | 40842/udp | 0.000000 | # CSCCREDIR |
| csccfirewall | 40843/tcp | 0.000000 | csccfirewall 40843/tcp 0.000000 |
| csccfirewall | 40843/udp | 0.000000 | # CSCCFIREWALL |
| ortec-disc | 40853/tcp | 0.000000 | # ORTEC Service Discovery |
| ortec-disc | 40853/udp | 0.000000 | # ORTEC Service Discovery |
| fs-qos | 41111/tcp | 0.000000 | # Foursticks QoS Protocol |
| fs-qos | 41111/udp | 0.000000 | # Foursticks QoS Protocol |
| tentacle | 41121/tcp | 0.000000 | # Tentacle Server |
| z-wave-s | 41230/tcp | 0.000000 | # Z-Wave Protocol over SSL/TLS | Z-Wave Protocol over DTLS |
| crestron-cip | 41794/tcp | 0.000076 | # Crestron Control Port |
| crestron-cip | 41794/udp | 0.000000 | # Crestron Control Port |
| crestron-ctp | 41795/tcp | 0.000076 | # Crestron Terminal Port |
| crestron-ctp | 41795/udp | 0.000000 | # Crestron Terminal Port |
| crestron-cips | 41796/tcp | 0.000000 | # Crestron Secure Control Port |
| crestron-ctps | 41797/tcp | 0.000000 | # Crestron Secure Terminal Port |
| candp | 42508/tcp | 0.000000 | # Computer Associates network discovery protocol |
| candp | 42508/udp | 0.002071 | # Computer Associates network discovery protocol |
| candrp | 42509/tcp | 0.000000 | # CA discovery response |
| candrp | 42509/udp | 0.000000 | # CA discovery response |
| caerpc | 42510/tcp | 0.000988 | # CA eTrust RPC |
| caerpc | 42510/udp | 0.000000 | # CA eTrust RPC |
| recvr-rc | 43000/tcp | 0.000076 | # recvr-rc-disc | Receiver Remote Control | Receiver Remote Control Discovery |
| reachout | 43188/tcp | 0.000013 | reachout 43188/tcp 0.000013 |
| reachout | 43188/udp | 0.000000 | # REACHOUT |
| ndm-agent-port | 43189/tcp | 0.000000 | ndm-agent-port 43189/tcp 0.000000 |
| ndm-agent-port | 43189/udp | 0.000000 | # NDM-AGENT-PORT |
| ip-provision | 43190/tcp | 0.000000 | ip-provision 43190/tcp 0.000000 |
| ip-provision | 43190/udp | 0.000000 | # IP-PROVISION |
| noit-transport | 43191/tcp | 0.000000 | # Reconnoiter Agent Data Transport |
| shaperai | 43210/tcp | 0.000000 | # shaperai-disc | Shaper Automation Server Management | Shaper Automation Server Management Discovery |
| hmip-routing | 43438/tcp | 0.000000 | # HmIP LAN Routing |
| eq3-update | 43439/tcp | 0.000000 | # eq3-config | EQ3 firmware update | EQ3 discovery and configuration |
| ew-mgmt | 43440/tcp | 0.000000 | # ew-disc-cmd | Cisco EnergyWise Management | Cisco EnergyWise Discovery and Command Flooding |
| ew-disc-cmd | 43440/udp | 0.000000 | # Cisco EnergyWise Discovery and Command Flooding |
| ciscocsdb | 43441/tcp | 0.000000 | # Cisco NetMgmt DB Ports |
| ciscocsdb | 43441/udp | 0.000000 | # Cisco NetMgmt DB Ports |
| z-wave-tunnel | 44123/tcp | 0.000000 | # Z-Wave Secure Tunnel |
| pmcd | 44321/tcp | 0.000000 | # PCP server (pmcd) |
| pmcd | 44321/udp | 0.000000 | # PCP server (pmcd) |
| pmcdproxy | 44322/tcp | 0.000000 | # PCP server (pmcd) proxy |
| pmcdproxy | 44322/udp | 0.000000 | # PCP server (pmcd) proxy |
| pmwebapi | 44323/tcp | 0.000000 | # HTTP binding for Performance Co-Pilot client API |
| tinyfw | 44334/tcp | 0.000088 | # tiny personal firewall admin port |
| coldfusion-auth | 44442/tcp | 0.000163 | # ColdFusion Advanced Security/Siteminder Authentication Port (by Allaire/Netegrity) |
| coldfusion-auth | 44443/tcp | 0.000201 | # ColdFusion Advanced Security/Siteminder Authentication Port (by Allaire/Netegrity) |
| cognex-dataman | 44444/tcp | 0.000000 | # Cognex DataMan Management Protocol |
| acronis-backup | 44445/tcp | 0.000000 | # Acronis Backup Gateway service port |
| domiq | 44544/tcp | 0.000000 | # DOMIQ Building Automation |
| rbr-debug | 44553/tcp | 0.000000 | # REALbasic Remote Debug |
| rbr-debug | 44553/udp | 0.000000 | # REALbasic Remote Debug |
| asihpi | 44600/tcp | 0.000000 | # AudioScience HPI |
| EtherNetIP-2 | 44818/tcp | 0.000000 | # EtherNet/IP-2 | EtherNet-IP-2 | EtherNet/IP messaging |
| EtherNetIP-2 | 44818/udp | 0.000518 | # EtherNet/IP messaging |
| m3da | 44900/tcp | 0.000000 | # m3da-disc | M3DA is used for efficient machine-to-machine communications | M3DA Discovery is used for efficient machine-to-machine communications |
| asmp | 45000/tcp | 0.000000 | # asmp-mon | Nuance AutoStore Status Monitoring Protocol (data transfer) | Nuance AutoStore Status Monitoring Protocol (device monitoring) |
| ciscopop | 45000/udp | 0.000839 | # Cisco Postoffice Protocol for Cisco Secure IDS |
| asmps | 45001/tcp | 0.000000 | # Nuance AutoStore Status Monitoring Protocol (secure data transfer) |
| rs-status | 45002/tcp | 0.000000 | # Redspeed Status Monitor |
| synctest | 45045/tcp | 0.000000 | # Remote application control protocol |
| invision-ag | 45054/tcp | 0.000000 | # InVision AG |
| invision-ag | 45054/udp | 0.000000 | # InVision AG |
| cloudcheck | 45514/tcp | 0.000000 | # cloudcheck-ping | ASSIA CloudCheck WiFi Management System | ASSIA CloudCheck WiFi Management keepalive |
| eba | 45678/tcp | 0.000000 | # EBA PRISE |
| eba | 45678/udp | 0.000000 | # EBA PRISE |
| dai-shell | 45824/tcp | 0.000000 | # Server for the DAI family of client-server products |
| qdb2service | 45825/tcp | 0.000000 | # Qpuncture Data Access Service |
| qdb2service | 45825/udp | 0.000000 | # Qpuncture Data Access Service |
| ssr-servermgr | 45966/tcp | 0.000000 | # SSRServerMgr |
| ssr-servermgr | 45966/udp | 0.000000 | # SSRServerMgr |
| inedo | 46336/tcp | 0.000000 | # Listen port used for Inedo agent communication |
| spremotetablet | 46998/tcp | 0.000000 | # Connection between a desktop computer or server and a signature tablet to capture handwritten signatures |
| mediabox | 46999/tcp | 0.000000 | # MediaBox Server |
| mediabox | 46999/udp | 0.000518 | # MediaBox Server |
| mbus | 47000/tcp | 0.000000 | # Message Bus |
| mbus | 47000/udp | 0.000000 | # Message Bus |
| winrm | 47001/tcp | 0.000000 | # Windows Remote Management Service |
| jvl-mactalk | 47100/tcp | 0.000000 | # Configuration of motors connected to Industrial Ethernet |
| dbbrowse | 47557/tcp | 0.000038 | # Databeam Corporation |
| dbbrowse | 47557/udp | 0.001158 | # Databeam Corporation |
| directplaysrvr | 47624/tcp | 0.000076 | # Direct Play Server |
| directplaysrvr | 47624/udp | 0.002071 | # Direct Play Server |
| ap | 47806/tcp | 0.000076 | # ALC Protocol |
| ap | 47806/udp | 0.000518 | # ALC Protocol |
| bacnet | 47808/tcp | 0.000000 | # Building Automation and Control Networks |
| bacnet | 47808/udp | 0.001554 | # Building Automation and Control Networks |
| presonus-ucnet | 47809/tcp | 0.000000 | # PreSonus Universal Control Network Protocol |
| nimcontroller | 48000/tcp | 0.000000 | # Nimbus Controller |
| nimcontroller | 48000/udp | 0.000000 | # Nimbus Controller |
| nimspooler | 48001/tcp | 0.000000 | # Nimbus Spooler |
| nimspooler | 48001/udp | 0.000000 | # Nimbus Spooler |
| nimhub | 48002/tcp | 0.000000 | # Nimbus Hub |
| nimhub | 48002/udp | 0.000518 | # Nimbus Hub |
| nimgtw | 48003/tcp | 0.000000 | # Nimbus Gateway |
| nimgtw | 48003/udp | 0.000000 | # Nimbus Gateway |
| nimbusdb | 48004/tcp | 0.000000 | # NimbusDB Connector |
| nimbusdbctrl | 48005/tcp | 0.000000 | # NimbusDB Control |
| juka | 48048/tcp | 0.000000 | # Juliar Programming Language Protocol |
| 3gpp-cbsp | 48049/tcp | 0.000000 | # 3GPP Cell Broadcast Service Protocol |
| weandsf | 48050/tcp | 0.000000 | # WeFi Access Network Discovery and Selection Function |
| isnetserv | 48128/tcp | 0.000000 | # Image Systems Network Services |
| isnetserv | 48128/udp | 0.000518 | # Image Systems Network Services |
| blp5 | 48129/tcp | 0.000000 | # Bloomberg locator |
| blp5 | 48129/udp | 0.000000 | # Bloomberg locator |
| com-bardac-dw | 48556/tcp | 0.000000 | com-bardac-dw 48556/tcp 0.000000 |
| com-bardac-dw | 48556/udp | 0.001036 | com-bardac-dw 48556/udp 0.001036 |
| iqobject | 48619/tcp | 0.000076 | iqobject 48619/tcp 0.000076 |
| iqobject | 48619/udp | 0.000000 | iqobject 48619/udp 0.000000 |
| robotraconteur | 48653/tcp | 0.000000 | # Robot Raconteur transport |
| tc_ads_discovery | 48899/udp | 0.000518 | tc_ads_discovery 48899/udp 0.000518 |
| matahari | 49000/tcp | 0.000000 | # Matahari Broker |
| nusrp | 49001/tcp | 0.000000 | # nusdp-disc | Nuance Unity Service Request Protocol | Nuance Unity Service Discovery Protocol |
| inspider | 49150/tcp | 0.000000 | # InSpider System |
| compaqdiag | 49400/tcp | 0.000276 | # Compaq Web-based management |
| ibm-db2 | 50000/tcp | 0.001317 | # (also Internet/Intranet Input Method Server Framework?) |
| iiimsf | 50002/tcp | 0.000351 | # Internet/Intranet Input Method Server Framework |
| bo2k | 54320/tcp | 0.000075 | # Back Orifice 2K Default Port |
| bo2k | 54321/udp | 0.002246 | # Back Orifice 2K Default Port |
| netprowler-manager | 61439/tcp | 0.000000 | netprowler-manager 61439/tcp 0.000000 |
| netprowler-manager2 | 61440/tcp | 0.000000 | netprowler-manager2 61440/tcp 0.000000 |
| netprowler-sensor | 61441/tcp | 0.000000 | netprowler-sensor 61441/tcp 0.000000 |
| iphone-sync | 62078/tcp | 0.000304 | # Apparently used by iPhone while syncing - http://code.google.com/p/iphone-elite/source/browse/wiki/Port_62078.wiki |
| murmur | 64738/udp | 0.000502 | # Murmur is the server-side software for Mumble open source voice chat software |
| pcanywhere | 65301/tcp | 0.000025 | pcanywhere 65301/tcp 0.000025 |
