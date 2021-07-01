<?php

require_once 'View.php';
require_once 'Model.php';
require_once './helpers/AuthHelper.php';

class Controller{

    private $view;
    private $model;
    private $autHelper;

    function __construct(){
        $this->view = new View();
        $this->model = new Model();
        $this->authHelper = new AuthHelper();
    }

    function Home() {
        $this->view->Mostrar();
    }

    function FormCiudadano() {
        $this->view->MostrarFormCiudadano();
    }

    function FormCartonero() {
        $this->view->MostrarFormCartonero();
    }

    function FormKilos() {
        $this->view->MostrarFormKilos();
    }

    function insertKilogramos() {
        $material = $_POST['material'];
        $kilogramos = $_POST['kilogramos'];

        if (!empty($material) && !empty($kilogramos)) {
            $this->model->insertKilogramos($material, $kilogramos);
        } 
        $this->view->MostrarFormKilos();
    }

    function Materiales() {
        $materiales = $this->model->getMateriales();
        $isAdmin = $this->authHelper->isAdmin();
        $this->view->MostrarMateriales($materiales, $isAdmin);
    }
    
    function ListaPedidos() {
        $pedidos = $this->model->getPedidos();
        $this->view->ListaPedidos($pedidos);
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

    function verCartoneros() {
        $cartoneros = $this->model->getCartoneros();
        $this->view->verCartoneros($cartoneros);
    }

    function insertarCartonero(){
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $dni = $_POST['dni'];
        $direccion = $_POST['direccion'];
        $fechaNacimiento = $_POST['fechaNacimiento'];
        $vehiculo = $_POST['vehiculo'];

        if (!empty($nombre)&&!empty($apellido)&&!empty($direccion)
            &&!empty($dni)&&!empty($fechaNacimiento)&&!empty($vehiculo)) {

            $this->model->insertCartonero($nombre,$apellido,$dni,$direccion,$fechaNacimiento,$vehiculo);
        }
        $this->view->ListaCartonerosLocation();
    }

    function uploadImage($rutaTemp,$nombreImagen){
        $img = uniqid() . "." . pathinfo($nombreImagen, PATHINFO_EXTENSION);
        move_uploaded_file($rutaTemp,"img/".$img);
        return $img;
    }
    function newMaterial(){
        $nombre = $_POST['nombre'];
        $rutaTemp = $_FILES['imagen']['tmp_name'];//ruta+nombre del archivo temporal
        $nombreImagen = $_FILES['imagen']['name'];
        $descripcion = $_POST['descripcion'];
        
        if (!empty($nombre)&&!empty($descripcion)) {
            //se encarga de mover la imagen a la carpeta del proyecto
            if($_FILES['imagen']['type'] == "image/jpg" || $_FILES['imagen']['type'] == "image/jpeg" ||
            $_FILES['imagen']['type'] == "image/png"){
                $img = $this->uploadImage($rutaTemp,$nombreImagen);
            }
            else{
                $img = null;
            }
            $this->model->insertMaterial($nombre,$img,$descripcion);
        }
        $this->Materiales();
    }

    function addMaterial(){
        $this->view->ShowAddMaterial();
    }

    function editMaterial($params = null){ //esta funcion es la que edita el material
        $this->authHelper->checkLoggedIn();
        $id = $params[':ID'];
        $nombre = $_POST['nombre'];
        $rutaTemp = $_FILES['imagen']['tmp_name'];
        $nombreImagen = $_FILES['imagen']['name'];
        $descripcion = $_POST['descripcion'];

        if($nombre!=''){
            if($nombreImagen!=''){
                $img = $this->uploadImage($rutaTemp,$nombreImagen);
            }
            else{
                $img= $_POST['img'];
            }
            $this->model->editarMaterial($nombre,$img,$descripcion,$id);
        }
        header('Location: '.Materiales);
    }

    function borrarMaterial($params = null){
        $id = $params[':ID'];
        $this->model->borrarMaterial($id);
        header('Location: '.Materiales);
    }

    function borrarCartonero($params = null){
        $id = $params[':ID'];
        $this->model->borrarCartonero($id);
        header('Location: '.Cartoneros);
    }

    function editarCartonero($params = null){
        $this->authHelper->checkLoggedIn();
        $id = $params[':ID'];
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $dni = $_POST['dni'];
        $direccion = $_POST['direccion'];
        $fechaNacimiento = $_POST['fechaNAcimiento'];
        $tipoVehiculo = $_POST['tipoVehiculo'];
       
        if($nombre !='' && $apellido !='' && $dni !='' && $direccion !='' && $fechaNacimiento !='' && $tipoVehiculo !=''){
            $this->model->editarCartonero($nombre, $apellido, $dni, $direccion, $fechaNacimiento, $tipoVehiculo);
        }
        else{
            $msg = "COMPLETE TODOS LOS CAMPOS";
            $cartonero = $this->model->getCartonero($id);
            $this->view->showEditarCartonero($cartonero,$msg);
        }
        header('Location: '.Cartoneros);
    }
 
}
