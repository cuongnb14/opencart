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
