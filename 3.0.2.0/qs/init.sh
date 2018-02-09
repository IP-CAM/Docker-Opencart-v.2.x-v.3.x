#!/bin/sh

set -e

cat << EOF > /www/config.php
<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/');

// DIR
define('DIR_APPLICATION', '$OC_CONFIG_WWW_PATH/catalog/');
define('DIR_SYSTEM', '$OC_CONFIG_WWW_PATH/system/');
define('DIR_IMAGE', '$OC_CONFIG_WWW_PATH/image/');
define('DIR_STORAGE', DIR_SYSTEM . 'storage/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/theme/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '$OC_CONFIG_HOSTNAME');
define('DB_USERNAME', '$OC_CONFIG_USERNAME');
define('DB_PASSWORD', '$OC_CONFIG_PASSWORD');
define('DB_DATABASE', '$OC_CONFIG_DATABASE');
define('DB_PORT', '$OC_CONFIG_PORT');
define('DB_PREFIX', 'oc_');
EOF

cat << EOF > /www/admin/config.php
<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/admin/');
define('HTTP_CATALOG', 'http://localhost/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/admin/');
define('HTTPS_CATALOG', 'http://localhost/');

// DIR
define('DIR_APPLICATION', '$OC_CONFIG_WWW_PATH/admin/');
define('DIR_SYSTEM', '$OC_CONFIG_WWW_PATH/system/');
define('DIR_IMAGE', '$OC_CONFIG_WWW_PATH/image/');
define('DIR_STORAGE', DIR_SYSTEM . 'storage/');
define('DIR_CATALOG', '$OC_CONFIG_WWW_PATH/catalog/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/template/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '$OC_CONFIG_HOSTNAME');
define('DB_USERNAME', '$OC_CONFIG_USERNAME');
define('DB_PASSWORD', '$OC_CONFIG_PASSWORD');
define('DB_DATABASE', '$OC_CONFIG_DATABASE');
define('DB_PORT', '$OC_CONFIG_PORT');
define('DB_PREFIX', 'oc_');

// OpenCart API
define('OPENCART_SERVER', 'https://www.opencart.com/');
EOF