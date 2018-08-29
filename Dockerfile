 FROM node:10.9.0
 # 指定制作我们的镜像的联系人信息（镜像创建者）
 MAINTAINER jindw

 # 将根目录下的文件都copy到container（运行此镜像的容器）文件系统的文件夹下
 ADD . /test/
 # cd到app文件夹下
 WORKDIR /test

 # 安装项目依赖包
 # RUN npm install
 RUN npm i yarn -g
 RUN yarn

 # 配置环境变量
 ENV HOST 0.0.0.0
 ENV PORT 8000

 # 容器对外暴露的端口号
 EXPOSE 8000

 CMD ["yarn","pm2"]
