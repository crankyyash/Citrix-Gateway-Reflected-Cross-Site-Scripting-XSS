# Citrix-Gateway-Reflected-Cross-Site-Scripting-XSS-
Exploit script for reflected xss in Citrix gateways

https://blog.assetnote.io/2023/06/29/binary-reversing-citrix-xss/ - 29 June 2023

Simple bash script to check whether citrix gateways are vulnerable to reflected cross site scripting (XSS)

Create a urls list named citrix_urls.txt in same dir as script. Enter urls or ips of citirx gateways on each line.
Eg. : cat citrix_urls.txt :>
test.qwerty.com
192.168.158.68
