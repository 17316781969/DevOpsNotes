# 安装
```
# 安装 snap （jumpserver 会报警）
apt install snapd

# 卸载其他形式安装的 certbot
sudo apt-get remove certbot
sudo dnf remove certbot
sudo yum remove certbot

# install snap
sudo snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/
certbot --version

# 出现以下返回即可
------------------------
root@zuiyoujie:/opt# certbot --version
certbot 1.7.0
------------------------
```
# 证书申请:
```
certbot -d example.com -d *.example.com  --manual --config-dir config --work-dir work --logs-dir logs --preferred-challenges dns certonly
```
注:==会出现两个txt值,解析时会冲突,需要将命令执行两次,即可实现主域名和泛域名共用同一个证书==
# txt值验证:
```
dig +noall +answer "_acme-challenge.example.com" -t txt
```
`#0969DA`The background color is `#ffffff` for light mode and `#000000` for dark mode.
