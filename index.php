<?php
require "./vendor/autoload.php";
require "./functions/encrypter.php";
require "./functions/tokenValidation.php";
require "./models/pagesModel.php";

use Pecee\SimpleRouter\SimpleRouter;


SimpleRouter::get('/', function () {
    include('./views/principal.html');
});

SimpleRouter::get('/getcards', function(){
    $response = pagesModel::getAllCards();
    echo $response;
});

SimpleRouter::get('/getprojectdata/{id}', function($id){
    $response = pagesModel::fetchByID($id);
    echo $response;
})->where(['id','[0-9]+']);

SimpleRouter::get('/proyecto/{id}', function($id){
    include('./views/proyecto.html');
})->where(['id','[0-9]+']);

SimpleRouter::setDefaultNamespace('\Demo\Controllers');

// Start the routing
SimpleRouter::start();