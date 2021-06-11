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

    function Materiales() {
        $materiales = $this->model->getMateriales();
        $this->view->MostrarMateriales($materiales);
    }
   
    function insertarPedido(){

        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $direccion = $_POST['direccion'];
        $telefono = $_POST['telefono'];
        $rutaTemp = $_FILES['imagen_src']['tmp_name'];
        $nombreImagen = $_FILES['imagen_src']['name'];
        $franja_horaria = $_POST['franja_horaria'];
        $volumen = $_POST['volumen'];


        if (!empty($nombre)&&!empty($apellido)&&!empty($direccion)
            &&!empty($telefono)&&!empty($franja_horaria)&&!empty($volumen)) {

            if($_FILES['imagen_src']['type'] == "image/jpg" || $_FILES['imagen_src']['type'] == "image/jpeg" ||
            $_FILES['imagen_src']['type'] == "image/png"){
                $img = $this->uploadImage($rutaTemp,$nombreImagen);
            }
            else{
                $img = null;
            }
            $this->model->insertPedido($nombre,$apellido,$direccion,$telefono,$img,$franja_horaria,$volumen);
            }
         $this->view->FormularioLocation();
    }

    function uploadImage($rutaTemp,$nombreImagen){
        $img = uniqid() . "." . pathinfo($nombreImagen, PATHINFO_EXTENSION);
        move_uploaded_file($rutaTemp,"img/".$img);
        return $img;
    }
    
}


?>