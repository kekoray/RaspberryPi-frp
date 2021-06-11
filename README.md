# FRP内网穿透搭建

> FRP软件的官网地址 :  https://gofrp.org/docs/





添加域名hosts, 并重启

```shell
echo '185.199.111.133  raw.githubusercontent.com '  >>  /etc/hosts
echo '185.199.109.133  raw.githubusercontent.com '  >>  /etc/hosts
echo '185.199.110.133  raw.githubusercontent.com '  >>  /etc/hosts
echo '185.199.108.133  raw.githubusercontent.com '  >>  /etc/hosts


```





### 1. Server服务端

> 在server(服务器)设置frp  

1. **运行以下4句指令**  

   ```shell
   wget https://raw.githubusercontent.com/kekoray/RaspberryPi-frp/main/SetupServer.sh
   chmod +x SetupServer.sh  
   ./SetupServer.sh  
   ```

2. **修改端口和token即可**  

   ```shell
   vim /etc/frp/frps.ini
   ```

3. **运行以下3句指令，将frp设置为服务 和 开机自动开启服务**  

   ```shell
   systemctl daemon-reload # 重载所有修改过的配置文件  
   systemctl start frps    # 启动服务  
   systemctl enable frps   # 将服务设置为开机启动  
   ```



---



### 2. Client客户端

> 在client(客户端)设置frp  

1. **运行以下4句指令**  

   ```shell
   wget https://raw.githubusercontent.com/kekoray/RaspberryPi-frp/main/SetupClient.sh
   chmod +x SetupClient.sh  
   sudo ./SetupClient.sh  
   ```

2. **修改服务器IP , token , 服务器端口 , 远程端口等即可**

   ```shell
   vim /etc/frp/frpc.ini  
   ```

3. **运行以下3句指令，将frp设置为服务 和 开机自动开启服务**  

   ```shell
   systemctl daemon-reload # 重载所有修改过的配置文件  
   systemctl start frpc    # 启动服务  
   systemctl enable frpc   # 将服务设置为开机启动  
   ```

   
