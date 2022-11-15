# Autoscript Xray VPS
[![Go Report Card](https://goreportcard.com/badge/github.com/Jrohy/trojan)](https://goreportcard.com/report/github.com/Jrohy/trojan)
[![Downloads](https://img.shields.io/github/downloads/Jrohy/trojan/total.svg)](https://img.shields.io/github/downloads/Jrohy/trojan/total.svg)
[![License](https://img.shields.io/badge/license-GPL%20V3-blue.svg?longCache=true)](https://www.gnu.org/licenses/gpl-3.0.en.html)
![](https://img.shields.io/github/v/release/Jrohy/trojan.svg) 
![](https://img.shields.io/docker/pulls/jrohy/trojan.svg)

![OS](https://shields.io/badge/OS-Ubuntu%2020.04-green?logo=ubuntu&style=for-the-badge) ![Virtualization](https://shields.io/badge/Virtualization-KVM-green?logo=tryhackme&style=for-the-badge) ![Architecture](https://shields.io/badge/Architecture-Intel%20or%20AMD-green?logo=moleculer&style=for-the-badge)

![Personal VPS](https://shields.io/badge/Personal-VPS-orange?logo=jamboard&style=for-the-badge) ![Openclash](https://shields.io/badge/Service-Openclash-orange?logo=keepassxc&style=for-the-badge) ![Passwal](https://shields.io/badge/Service-Passwal-orange?logo=openvpn&style=for-the-badge) ![Free Licence](https://shields.io/badge/Free-Licence-orange?logo=testinglibrary&style=for-the-badge) ![Auto Reboot](https://shields.io/badge/Auto-Reboot-orange?logo=openapiinitiative&style=for-the-badge) ![Xtls](https://shields.io/badge/Service-Xtls%20Mini-orange?logo=ublockorigin&style=for-the-badge) ![Xray](https://shields.io/badge/Service-Xray-orange?logo=xstate&style=for-the-badge)

![avatar](file/ss.png)

Ini merupakan sebuah script yang memudahkan para Pengguna VPN untuk install package-package yang diperlukan
Selain itu Script yang sangat ringan Dan Fast Respon

### Service & Port:
  Service Port
 - XRAY  Vmess TLS + gRPC  : 443
 - XRAY  Vless TLS + gRPC  : 443
 - Trojan WS + gRPC        : 443
 - XRAY  Vmess None TLS    : 80
 - XRAY  Vless None TLS    : 80
 - Nginx                   : 81

### Other Services:
Speedtest CLI

### Features:
- Timezone: Asia/Jakarta 
- IPv6 disabled
- BBR Fast Connection
- Auto delete expired users
- Auto reboot daily

## Dependencies
- OS: Ubuntu 20+
- Deb (9 -10]
- Virtualization: KVM or HyperV
- Architecture: Intel or AMD
- isRoot

## Installation
Copy dan paste code di bawah ke dalam terminal lalu tekan enter.

**Link Copy:**

```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && rm -rf setup.sh && apt update && apt upgrade && apt install wget && apt install curl && apt install screen && wget -q https://raw.githubusercontent.com/rullpqh/lite/main/setup.sh && chmod +x setup.sh && screen -S netzinstall ./setup.sh
```
## Silahkan Digunakan dengan Bijak ...
Gunakan Sc free ni sebaiknya, **JANGAN DI JUAL**. Jangan lupa feedback saya di Telegram, [@bhoikfost_yahya](https://t.me/bhoikfost_yahya).
