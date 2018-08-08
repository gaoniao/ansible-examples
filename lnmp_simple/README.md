# LNMP单机环境自动搭建

## 环境

| 主机名 | 作用            | 系统       |
| ------ | --------------- | ---------- |
| env1   | Ansible控制主机 | CentOS 7.4 |
| env2   | 数据库主机      | CentOS 7.4 |
| env3   | web主机         | CentOS 7.4 |


### 构造局域网Yum源

1. 首先找一台能联网的CentOS服务器，如果找不到就用能联网的个人PC或笔记本使用虚拟机创建一个CentOS系统。

2. 设置yum.conf

   ```bash
   > vim /etc/yum.conf
   
   # 软件包的缓存地址
   cachedir=/var/cache/yum/$basearch/$releasever
   # 是否开启缓存功能，这里需要修改为1
   keepcache=1
   ```

3. 开始相关安装软件包

   ```bash
   # 安装ntp
   > yum -y install ntp
   
   # 安装nginx，安装nginx需要epel源
   > yum -y install epel-release
   > yum -y install nginx
   
   # 安装MySQL
   # 由于CentOS 7版本将MySQL数据库软件从默认的程序列表中移除，用MariaDB代替，防止MySQL被甲骨文公司收购后可能闭源的状况，所以默认安装的是MariaDB。但我还是想安装MySQL 5.7，进行如下操作
   > wget -P /opt http://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
   > rpm -ivh /opt/mysql57-community-release-el7-11.noarch.rpm
   # 检查Yum选择安装的版本
   > yum repolist all | grep mysql
   # 确认其他版本被禁用，只保留mysql57版本是启用状态
   # 可以使用yum-config-manager --enable/--disable mysql57-community命令开启或禁用
   mysql57-community/x86_64           MySQL 5.7 Community Server    enabled:    287
   > yum -y install mysql
   ```

4. 复制文件至Ansible服务器下nginx目录中（Ansible服务器需要安装nginx）

   ```bash
   > cd /usr/share/nginx/html/
   > mkdir lnmp
   > find /var/cache/yum/x86_64/7/ -name "*.rpm"  -exec cp {} ./lnmp \;
   ```

5. 配置nginx.conf

   ```bash
   > vim /etc/nginx.conf
   # 需要加上autoindex on，其他配置省略
   listen      80 default_server;
   location / {
               autoindex on;
           } 
   ```

6. 修改nginx index.html

   ```html
   > vim /usr/share/nginx/html/index.html
   
   <p style="font-weight:bolder;color:green;font-size:30px;">ALL of the packages in the below:</p>
   <br/>
   <a href="http://192.168.198.21/lnmp">LNMP环境</a>
   <br/>
   ```

7. 查看网站是否能显示包

   输入http://192.168.198.21/。

   ![1533634048628](https://github.com/gaoniao/images/raw/master/1533634048628.png)

   点击LNMP。

   ![1533634082877](https://github.com/gaoniao/images/raw/master/1533634082877.png)

8. 构建Yum源

   ```bash
   # 首先安装createrepo
   > yum -y install createrepo
   # 使用createrepo命令构建Yum源 
   > createrepo lnmp/
   ```



此时就可以使用局域网Yum源了。

比如在远程服务器上配置lan.repo：

```
[lan]
name = lan yum
baseurl = http://192.168.198.21/lnmp
gpgcheck = 0
enabled = 1
```

当然我们不用去手动配置每台远程主机的Yum源，只需要使用Ansible进行配置。

## 运行Ansible
```bash
ansible-playbook -i hosts site.yml
```
