<?php

require_once 'View.php';
require_once 'Model.php';

class Controller{

    private $view;
    private $model;

    function __construct(){

        $this->view = new View();
        $this->model = new Model();
    }

    function Home() {
        $this->view->Mostrar();
    }

    function FormCiudadano() {
        $this->view->MostrarFormCiudadano();
    }
}


?>