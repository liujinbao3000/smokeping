### 生成Docker镜像
1. 克隆
2. 进入目录
3. 生成镜像,`名称/项目:标签`
4. 查看镜像
   ```
   https://github.com/liujinbao3000/smokeping.git
   cd smokeping
   docker build -t liujinbao3000/smokeping:latest
   docker images
   ```
### 运行Docker容器
1. 运行Docker容器
```
docker run -itd \
  --name=smokeping \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -p 8088:80 \
  -v /var/local/date/smokeping/config:/config \
  -v /var/local/date/smokeping/data:/data \
  --restart unless-stopped \
liujinbao3000/smokeping
```
1. 访问
   ```
   http://IP:8088
   ```
