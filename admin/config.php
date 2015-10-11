<?php
// HTTP
define('HTTP_SERVER', 'http://'.getenv('OC_HOST').'/admin/');
define('HTTP_CATALOG', 'http://'.getenv('OC_HOST').'/');

// HTTPS
define('HTTPS_SERVER', 'http://'.getenv('OC_HOST').'/admin/');
define('HTTPS_CATALOG', 'http://'.getenv('OC_HOST').'/');

// DIR
define('DIR_APPLICATION', '/var/www/html/opencart/admin/');
define('DIR_SYSTEM', '/var/www/html/opencart/system/');
define('DIR_LANGUAGE', '/var/www/html/opencart/admin/language/');
define('DIR_TEMPLATE', '/var/www/html/opencart/admin/view/template/');
define('DIR_CONFIG', '/var/www/html/opencart/system/config/');
define('DIR_IMAGE', '/var/www/html/opencart/image/');
define('DIR_CACHE', '/var/www/html/opencart/system/cache/');
define('DIR_DOWNLOAD', '/var/www/html/opencart/system/download/');
define('DIR_UPLOAD', '/var/www/html/opencart/system/upload/');
define('DIR_LOGS', '/var/www/html/opencart/system/logs/');
define('DIR_MODIFICATION', '/var/www/html/opencart/system/modification/');
define('DIR_CATALOG', '/var/www/html/opencart/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'mysql');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', 'opencart');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
