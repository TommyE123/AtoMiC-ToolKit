#!/bin/bash
echo
echo -e "$YELLOW--->Enablinging Duck DNS in ATK Sites conf...$ENDCOLOR"
ATKCONFFILE='/etc/nginx/sites-available/AtoMiC-ToolKit-configured-sites'
# Check if the sites file is present
if [[ -f $ATKCONFFILE ]]; then
    # If it is does it have the duckdns domain in it?
    if grep -q "$DOMAINNAME.duckdns.org" "$ATKCONFFILE"; then
        echo "$DOMAINNAME.duckdns.org already in $ATKCONFFILE"
    else  
        # No so insert it in
        if sed -i "s@^server_name @server_name  $DOMAINNAME.duckdns.org@" "$ATKCONFFILE"; then
            echo "$DOMAINNAME.duckdns.org inserted into $ATKCONFFILE"
        fi
    fi
else
    echo -e "${RED}/etc/nginx/sites-available/AtoMiC-ToolKit-configured-sites not found. \
Please install NGINX or you will need to configure your webserer software manually.$ENDCOLOR"
fi
echo