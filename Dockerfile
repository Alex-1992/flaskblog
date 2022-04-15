FROM python:3.7

# 指定容器工作目录为 /project/
WORKDIR /app

# 将服务器 requirements.txt 文件复制到 容器 /project/目录下
ADD . /app

# 安装 项目依赖
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple


EXPOSE 80
# 运行
CMD flask run --host=0.0.0.0 --port=80
