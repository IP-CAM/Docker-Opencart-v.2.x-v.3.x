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
define('DIR_LANGUAGE', '$OC_CONFIG_WWW_PATH/catalog/language/');
define('DIR_TEMPLATE', '$OC_CONFIG_WWW_PATH/catalog/view/theme/');
define('DIR_CONFIG', '$OC_CONFIG_WWW_PATH/system/config/');
define('DIR_IMAGE', '$OC_CONFIG_WWW_PATH/image/');
define('DIR_CACHE', '$OC_CONFIG_WWW_PATH/system/storage/cache/');
define('DIR_DOWNLOAD', '$OC_CONFIG_WWW_PATH/system/storage/download/');
define('DIR_LOGS', '$OC_CONFIG_WWW_PATH/system/storage/logs/');
define('DIR_MODIFICATION', '$OC_CONFIG_WWW_PATH/system/storage/modification/');
define('DIR_UPLOAD', '$OC_CONFIG_WWW_PATH/system/storage/upload/');

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
define('DIR_LANGUAGE', '$OC_CONFIG_WWW_PATH/admin/language/');
define('DIR_TEMPLATE', '$OC_CONFIG_WWW_PATH/admin/view/template/');
define('DIR_CONFIG', '$OC_CONFIG_WWW_PATH/system/config/');
define('DIR_IMAGE', '$OC_CONFIG_WWW_PATH/image/');
define('DIR_CACHE', '$OC_CONFIG_WWW_PATH/system/storage/cache/');
define('DIR_DOWNLOAD', '$OC_CONFIG_WWW_PATH/system/storage/download/');
define('DIR_LOGS', '$OC_CONFIG_WWW_PATH/system/storage/logs/');
define('DIR_MODIFICATION', '$OC_CONFIG_WWW_PATH/system/storage/modification/');
define('DIR_UPLOAD', '$OC_CONFIG_WWW_PATH/system/storage/upload/');
define('DIR_CATALOG', '$OC_CONFIG_WWW_PATH/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', '$OC_CONFIG_HOSTNAME');
define('DB_USERNAME', '$OC_CONFIG_USERNAME');
define('DB_PASSWORD', '$OC_CONFIG_PASSWORD');
define('DB_DATABASE', '$OC_CONFIG_DATABASE');
define('DB_PORT', '$OC_CONFIG_PORT');
define('DB_PREFIX', 'oc_');
EOF