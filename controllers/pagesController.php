<?php

class PagesController{
    
	private $con;

	function __construct($connection){
		$this->con = $connection;
	}

    function fetchDataByID($id){
        try{
            $sql = "SELECT * FROM projects WHERE id_project = :id";
            
            $queryData = array('id' => $id);
            $preparedStatement = $this->con->prepare($sql);
            $result = $preparedStatement->execute($queryData);
            while($row = $preparedStatement->fetch(PDO::FETCH_ASSOC)){
                $data[] = $row; 
            }
            if(isset($data)){
                return json_encode(array('data' => $data, 'server_message'=>'Operación exitosa'), 200);
            }
            return json_encode(array('data'=>NULL, 'server_message'=>'No hay datos para mostrar'),200);
        }
        catch(PDOException $e){
            return json_encode(array('data'=>NULL, 'server_message' => 'Ocurrió un error'),500);
        }
    }

    function getDataCards(){
        try{
            $sql = "SELECT id_project, title, src_evidence_image FROM projects;";
            
            $preparedStatement = $this->con->prepare($sql);
            $result = $preparedStatement->execute();
            while($row = $preparedStatement->fetch(PDO::FETCH_ASSOC)){
                $data[] = $row; 
            }
            if(isset($data)){
                return json_encode(array('data' => $data, 'server_message'=>'Operación exitosa'), 200);
            }
            return json_encode(array('data'=>NULL, 'server_message'=>'No hay datos para mostrar'),200);
        }
        catch(PDOException $e){
            return json_encode(array('data'=>NULL, 'server_message' => 'Ocurrió un error'),500);
        }
    }
}