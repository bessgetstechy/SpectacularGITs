<?php

spl_autoload_register(function ($classname) {
    $filename = str_replace('\\', DIRECTORY_SEPARATOR, $classname) . '.php';
    include($filename);
}); 