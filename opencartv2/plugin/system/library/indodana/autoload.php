<?php
define('INDODANA_LIB_DIR', __DIR__ . DIRECTORY_SEPARATOR . 'lib' . DIRECTORY_SEPARATOR);
define('INDODANA_LOG_DIR', __DIR__ . DIRECTORY_SEPARATOR . 'log' . DIRECTORY_SEPARATOR);

spl_autoload_register(function($className) {
    static $classMap;

    if (!isset($classMap)) {
        $classMap = require __DIR__ . DIRECTORY_SEPARATOR . 'classmap.php';
    }

    if (isset($classMap[$className])) {
        include $classMap[$className];
    }
});