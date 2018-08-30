 FROM node:10.9.0

 ADD . /src
 RUN cd /src;
 RUN npm i yarn -g
 RUN yarn

 # 配置环境变量
 #ENV HOST 0.0.0.0

 # 容器对外暴露的端口号
 EXPOSE 8000

 CMD ["node","src/index.js"]
