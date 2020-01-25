<?php

class connection{
	private $user = "";
	protected $password = "";
	private $database_name = "";
	private $server_name = "";

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