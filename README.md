# Elastic Search 收集rsyslog日志
## 环境

```text
NAME="Ubuntu"
VERSION="20.04.6 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.6 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal
```

## 准备

- 安装rsyslog服务

```shell
sudo add-apt-repository ppa:adiscon/v8-devel 
sudo apt-get update 
sudo apt-get install rsyslog 

sudo cat>/etc/rsyslog.d/99-port514.conf<<'EOF'
$ModLoad imtcp
$InputTCPServerRun 514
*.* @@localhost:4560
EOF

sudo service rsyslog restart
```
- 设置 vm

```shell
echo 'vm.max_map_count=262144' >>/etc/sysctl.conf
sysctl -p
```

```
 curl -I https://registry-1.docker.io/v2/
```


## Loki

https://grafana.com/docs/loki/latest/get-started/