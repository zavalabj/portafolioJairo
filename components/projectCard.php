<?php 

class CardRecyclerView{
    private $id, $titulo, $image_dir;

    function __construct($id, $titulo, $image_dir)
    {
        $this->id = $id;
        $this->titulo = $titulo;
        $this->image_dir = $image_dir;
    }

    function getAllProjects()
    {
        echo "caca";
    }
}