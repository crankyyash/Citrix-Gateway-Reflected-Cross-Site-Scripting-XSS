# Citrix-Gateway-Reflected-Cross-Site-Scripting-XSS-
Simple exploit script for reflected xss in Citrix gateways

https://blog.assetnote.io/2023/06/29/binary-reversing-citrix-xss/ - 29 June 2023

CVE-2023-24487, CVE-2023-24488

Citrix advisory : https://support.citrix.com/article/CTX477714/citrix-adc-and-citrix-gateway-security-bulletin-for-cve202324487-cve202324488

Simple bash script to check whether citrix gateways are vulnerable to reflected cross site scripting (XSS)

Create a urls list named citrix_urls.txt in same dir as script. Enter urls or ips of citirx gateways on each line.
Eg. : cat citrix_urls.txt :>
test.qwerty.com
192.168.158.68
