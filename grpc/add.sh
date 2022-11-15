#!/bin/bash

red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################


MYIP=$(curl -sS ipv4.icanhazip.com)
clear
domain=$(cat /etc/xray/domain)
tls=$(cat /etc/xray/vmessgrpc.json | grep port | awk '{print $2}' | sed 's/,//g')
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\\E[0;41;36m      Add Xray/Vmess Account      \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

		read -rp "User: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/vmessgrpc.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmessgrpc$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/vmessgrpc.json
cat > /etc/xray/$user-tls.json << EOF
      {
      "v": "0",
      "ps": "${user}",
      "add": "${domain}",
      "port": "${tls}",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "grpc",
      "type": "none",
      "host": "${sni}",
      "tls": "tls"
}
EOF
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
##vmesslink#1="vmess://$(base64 -w 0 /etc/xray/$user-tls.json)"
vmesslink1="vmess://${uuid}@${domain}:${tls}/?type=grpc&encryption=auto&serviceName=grpc&security=tls&sni=${domain}#$user"
systemctl restart fb-vmess-grpc.service
systemctl restart vmess-grpc.service
service cron restart
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "            XRAY GRPC            " 
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Remarks           : ${user}"
echo -e "Domain            : ${domain}"
echo -e "Port VMess        : 443"
echo -e "ID                : ${uuid}"
echo -e "Alter ID          : 0"
echo -e "Mode              : Gun"
echo -e "Security          : TLS"
echo -e "Type              : grpc"
echo -e "Service Name gRPC : grpc"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Link VMess GRPC  : "
echo -e "${vmesslink1}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Expired On     : $exp"

