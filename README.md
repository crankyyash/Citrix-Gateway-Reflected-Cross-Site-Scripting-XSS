# Citrix-Gateway-Reflected-Cross-Site-Scripting-XSS-
Simple exploit script for reflected xss in Citrix gateways

https://blog.assetnote.io/2023/06/29/binary-reversing-citrix-xss/ - 29 June 2023

CVE-2023-24487, CVE-2023-24488

Citrix advisory : https://support.citrix.com/article/CTX477714/citrix-adc-and-citrix-gateway-security-bulletin-for-cve202324487-cve202324488

Simple bash script to check whether citrix gateways are vulnerable to reflected cross site scripting (XSS)

Create a urls list named citrix_urls.txt in same dir as script. Enter urls or ips of citirx gateways on each new line.

Eg. : 

yash@test:~/$ cat citrix_urls.txt

test.qwerty.com

192.168.158.68

POC:

![reflected-xsx-1](https://github.com/crankyyash/Citrix-Gateway-Reflected-Cross-Site-Scripting-XSS/assets/61792333/03eef1d9-4446-4a33-b042-224795325e0f)

![reflected-xss-2](https://github.com/crankyyash/Citrix-Gateway-Reflected-Cross-Site-Scripting-XSS/assets/61792333/1c1f3d12-9945-4706-9f8b-fe102a60ad0d)

<img width="729" alt="reflected-xss-3" src="https://github.com/crankyyash/Citrix-Gateway-Reflected-Cross-Site-Scripting-XSS/assets/61792333/7af0de48-3ede-4ee7-ac19-520e868d9e8b">
