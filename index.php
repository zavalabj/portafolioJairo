<?php
require "./vendor/autoload.php";
require "./functions/encrypter.php";
require "./functions/tokenValidation.php";

use Pecee\SimpleRouter\SimpleRouter;


SimpleRouter::get('/', function () {
    echo "kk";
});

SimpleRouter::setDefaultNamespace('\Demo\Controllers');

// Start the routing
SimpleRouter::start();
