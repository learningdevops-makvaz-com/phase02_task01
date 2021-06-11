#!/bin/bash
# cd /var/

# nginx -v >> /var/nginxVersion.env 2>&1 
# VAR=$((nginx -v) 2>&1)


#!/bin/bash
cd /var/
VAR=$((nginx -v) 2>&1)
arrIN=(${VAR//':'/ })
echo "VERSION=${arrIN[2]}" > /var/nginxVersion.env

if [[ -z "$VERSION" ]]; then
	echo "Generated Version Var"
    echo "Exiting with failure to force restart with new var applied" 1>&2
    exit 1
fi