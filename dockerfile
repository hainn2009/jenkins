FROM python:3.12-slim

# Cài Java để Jenkins agent chạy remoting.jar
RUN apt-get update && apt-get install -y openjdk-17-jre-headless && rm -rf /var/lib/apt/lists/*

# Tạo user jenkins và thư mục home
RUN useradd -m -d /home/jenkins jenkins

# Chuyển sang user jenkins (Jenkins Docker plugin sẽ dùng user này)
USER jenkins

# Thư mục làm việc mặc định
WORKDIR /home/jenkins