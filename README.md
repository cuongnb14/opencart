# opencart (for docker images)
- Đây là mã nguồn opencart đã được cài đặt sẵn dùng để build docker images.
- Dùng file opencart.sql để import cở sở dữ liệu cho mã nguồn này.

### Biến môi trường sử dụng trong mã nguồn
- OC_HOSTNAME: tên host opencart (nếu dùng load balancer thì là tên host của fontend tương ứng)
- OC_PORT: cổng của server opencart (nếu dùng load balancer thì là cổng của fontend tương ứng)
- DB_HOSTNAME: địa chỉ host của database
- DB_PORT: cổng của database
- DB_USERNAME: username db 
- DB_PASSWORD: mật khẩu
- DB_DATABASE: tên database sử dụng 

### Hướng dẫn chạy ứng dụng
1. Tạo một container opencart (với tên `first_opencart`) với một volume (`/var/www/html/image`) để chia sẻ:    
`docker create -v /var/www/html/image --name first_opencart bacuong/opencart`
2. Chạy container mysql (cổng 3307 mapping từ bên ngoài để import dữ liệu):  
`docker run -d -p 3307:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=opencart -restart=always --name opencartdb mysql`
3. Chạy ứng dụng opencart với marathon từ file `opencart.json`
