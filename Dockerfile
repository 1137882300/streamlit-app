# 使用官方的 Python 镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . /app

# 安装依赖项
RUN pip install -r requirements.txt

# 暴露 Streamlit 默认的端口
EXPOSE 8501

# 运行 Streamlit 应用
CMD ["streamlit", "run", "app.py"]
