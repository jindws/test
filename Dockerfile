 FROM node:10.9.0
 # 指定制作我们的镜像的联系人信息（镜像创建者）
 #MAINTAINER jindw

 # 将根目录下的文件都copy到container（运行此镜像的容器）文件系统的文件夹下
 #ADD . /test/
 # cd到app文件夹下
 #WORKDIR /test

# Create app directory
#RUN mkdir -p /home/Service             # 用于在Image里创建一个文件夹并用来保存我们的代码
#WORKDIR /home/Service                  # 将我们创建的文件夹做为工作目录
#COPY . /home/Service

 # 安装项目依赖包
 # RUN npm install
 #RUN npm i yarn -g
 #RUN yarn

 # Bundle app source
 ADD . /src
# Install app dependencies
RUN cd /src; npm i yarn -g;yarn

 # 配置环境变量
 #ENV HOST 0.0.0.0
 #ENV PORT 3001

 # 容器对外暴露的端口号
 EXPOSE 8000

 CMD ["node","index.js"]
