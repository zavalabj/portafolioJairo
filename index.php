<?php
require "./vendor/autoload.php";
require "./functions/encrypter.php";
require "./functions/tokenValidation.php";
require "./models/pagesModel.php";

use Pecee\SimpleRouter\SimpleRouter;


SimpleRouter::group(['prefix' => '/admin'], function () {
    SimpleRouter::get('/login', function ()    {
        include('./views/admin/login.html');
    });
    SimpleRouter::post('/login', function(){
        
        echo "kk";
    });
    SimpleRouter::get('/system', function(){
        echo "kk.system";
    });
});

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