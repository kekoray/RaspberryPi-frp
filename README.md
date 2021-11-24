# RaspberryPi-FRP内网穿透搭建



> FRP软件的官网地址 :  https://gofrp.org/docs/
>
> 此教程为**树莓派arm版本**, 其他系统需下载对应的软件包进行操作.



**服务端和客户端都先添加githubusercontent的hosts, 要不然访问不到GitHub;**

```shell
echo '185.199.111.133  raw.githubusercontent.com '  >>  /etc/hosts
echo '185.199.109.133  raw.githubusercontent.com '  >>  /etc/hosts
echo '185.199.110.133  raw.githubusercontent.com '  >>  /etc/hosts
echo '185.199.108.133  raw.githubusercontent.com '  >>  /etc/hosts
```



---



## 1. Server服务端

> 在server(服务器)设置frp  

1. **获取一键安装的脚本** 

   ```shell
   wget https://raw.githubusercontent.com/kekoray/RaspberryPi-frp/main/SetupServer.sh
   chmod +x SetupServer.sh  
   sudo ./SetupServer.sh  
   ```

2. **修改`端口`和`token`即可**  

   ```shell
   sudo vim /etc/frp/frps.ini
   ```

3. **启动服务, 并设置服务开机自启**  

   ```shell
   sudo systemctl daemon-reload # 重载所有修改过的配置文件  
   sudo systemctl start frps    # 启动服务  
   sudo systemctl enable frps   # 将服务设置为开机启动  
   ```




---



### 2. Client客户端

> 在client(客户端)设置frp  

1. **获取一键安装的脚本** 

   ```shell
   wget https://raw.githubusercontent.com/kekoray/RaspberryPi-frp/main/SetupClient.sh
   chmod +x SetupClient.sh  
   sudo ./SetupClient.sh  
   ```

2. **修改`服务器IP,token,服务器端口,远程端口`等即可**

   ```shell
   sudo vim /etc/frp/frpc.ini  
   ```

3. **启动服务, 并设置服务开机自启**  

   ```shell
   sudo systemctl daemon-reload # 重载所有修改过的配置文件  
   sudo systemctl start frpc    # 启动服务  
   sudo systemctl enable frpc   # 将服务设置为开机启动  
   ```

   
