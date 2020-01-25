<?php

class connection{
	private $user = "projects_j_users";
	protected $password = "_A=r#baHA4BG";
	private $database_name = "projectsJairo";
	private $server_name = "localhost";

	function doConnection(){
		try {
		    $conn = new PDO("mysql:host=".$this->server_name.";dbname=".$this->database_name, $this->user, $this->password);
		    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		    return array('connection' => $conn,
                 		 'message' => json_encode(
                 		 	array('server_message' => 'Connected successfully'), 200));
	    }
		catch(PDOException $e)
	    {
	    	return array('connection' => NULL,
	    				'message' => json_encode(
	    					array('server_message' => 'Connection failed'), 500));
	    }
	}
}