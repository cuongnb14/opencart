<?php
// HTTP
define('HTTP_SERVER', 'http://'+getenv('OC_HOST')+'/');

// HTTPS
define('HTTPS_SERVER', 'http://'+getenv('OC_HOST')+'/');

// DIR
define('DIR_APPLICATION', '/var/www/html/catalog/');
define('DIR_SYSTEM', '/var/www/html/system/');
define('DIR_LANGUAGE', '/var/www/html/catalog/language/');
define('DIR_TEMPLATE', '/var/www/html/catalog/view/theme/');
define('DIR_CONFIG', '/var/www/html/system/config/');
define('DIR_IMAGE', '/var/www/html/image/');
define('DIR_CACHE', '/var/www/html/system/cache/');
define('DIR_DOWNLOAD', '/var/www/html/system/download/');
define('DIR_UPLOAD', '/var/www/html/system/upload/');
define('DIR_MODIFICATION', '/var/www/html/system/modification/');
define('DIR_LOGS', '/var/www/html/system/logs/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'mysql');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', 'opencart');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
