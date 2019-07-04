### 生成Docker镜像
1. 克隆
2. 进入目录
3. 生成镜像,`名称/项目:标签`
4. 查看镜像
   ```
   git clone https://github.com/liujinbao3000/smokeping.git
   cd smokeping
   docker build -t liujinbao3000/smokeping:latest
   docker images
   ```
### 运行Docker容器
1. 更新内容
   1. 2019.7.4 
      1. 加大主机显示图片的大小
      1. 增加多主机图
      1. 支持图片中文
1. 运行Docker容器
   ```
   docker run -itd \
     --name=smokeping \
     -e PUID=1000 \
     -e PGID=1000 \
     -e TZ=Asia/Shanghai \
     -p 8088:80 \
     -v /var/local/docker/smokeping/config:/config \
     -v /var/local/docker/smokeping/data:/data \
     --restart unless-stopped \
   liujinbao3000/smokeping
   ```
1. 访问
   ```
   http://IP:8088
   ```
1. 运行管理脚本
   ```
   bash /var/local/docker/smokeping/config/smokeping
   ```
1. 脚本预览
   ```
    ----------------------------------------
    |*************smokeping菜单*************|
    ----------------------------------------
    容器名字和路径如果不对用8项更改
    可以在任意选择界面按Ctrl+c键退出
    1)重启smokeping
    2)停止smokeping
    3)显示smokeping日志
    4)备份当前监控主机文件
    5)恢复监控主机文件
    6)增加被监控主机
    7)使用vi编辑配置文件
    8)自定义smokeping的名称和配置目录
    9)删除容器smokeping
    0)退出
   请输入功能对应的数字：
   ```
