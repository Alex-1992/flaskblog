FROM python:3.7

# 指定容器工作目录为 /app/
WORKDIR /app

# 将项目下的所有文件复制到工作目录
ADD . /app

# 安装 项目依赖
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

#创建一个匿名数据卷挂载点，由docker管理，用来存放数据库和上传的数据。
VOLUME ["/app/data"]

#暴露80端口
EXPOSE 80

# 使我们的程序运行在80端口，并且指定host为0.0.0.0
# 这样访问网址就能访问到，不必加端口号
CMD flask run --host=0.0.0.0 --port=80
