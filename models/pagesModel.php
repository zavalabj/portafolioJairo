<?php

include_once('databases/Connection.php');
include_once('controllers/pagesController.php');

class pagesModel{

    public function fetchByID(){
        $dbc = new connection();
	    $serverResponse = $dbc->doConnection();
        $con = $serverResponse['connection'];
        $controller = new PagesController($con);

        $controllerResponse = $controller->fetchDataByID();
        return $controllerResponse;
    }

}