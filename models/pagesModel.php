<?php

include_once('databases/Connection.php');
include_once('controllers/pagesController.php');

class pagesModel{

    public function fetchByID($id){
        $dbc = new connection();
	    $serverResponse = $dbc->doConnection();
        $con = $serverResponse['connection'];
        $controller = new PagesController($con);

        $controllerResponse = $controller->fetchDataByID($id);
        return $controllerResponse;
    }

    public function getAllCards(){
        $dbc = new connection();
	    $serverResponse = $dbc->doConnection();
        $con = $serverResponse['connection'];
        $controller = new PagesController($con);
        return $serverResponse['server_message'];
        //$controllerResponse = $controller->getDataCards();
        //return $controllerResponse;
    }
}