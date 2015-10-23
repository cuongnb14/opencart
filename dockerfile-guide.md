# Giới thiệu Dockerfile cho ứng dụng opencart
1. Chuẩn bị môi trường
  - images được build từ php:5.6-apache, sau đó cài thêm các php extendtion một số gói cần thiết cần thiết như git để clone mã nguồn từ github về
  - Thư mục code được đặt ở thư mục `/var/www/html` trong container 
  - Có 1 biến môi trường bắt buộc là `REPO_URL` dùng để xác định url (từ github) chứa mã nguồn của người dùng. 
2. Download và deploy mã nguồn
  - Từ env `REPO_URL` khi build image sẽ clone mã nguồn từ github về và copy vào thư mục `/var/www/html` sau đó phân quyền cho người dùng
  - Cung cấp một số biến môi trường để xác định cấu hình mặc định cho ứng dụng
    - ENV OC_HOSTNAME localhost
    - ENV OC_PORT 10000
    - ENV DB_HOSTNAME mysql
    - ENV DB_PORT 3306
    - ENV DB_USERNAME root
    - ENV DB_PASSWORD root
    - ENV DB_DATABASE opencart
  
