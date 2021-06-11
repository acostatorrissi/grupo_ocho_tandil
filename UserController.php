<?php

require_once 'View.php';
require_once 'UserModel.php';
require_once 'helpers/AuthHelper.php';


class UserController{

    private $view;
    private $model;
    private $authHelper;
    
    public function __construct(){
        $this->view = new View();
        $this->model = new UserModel();
        $this->authHelper = new AuthHelper();
    }

    public function showRegistro() {
        $this->view->showRegistro();
    }
    
    public function showLogin() {
        $this->view->ShowLogin();
    }

    public function registracion(){
        $usuario = $_POST['usuario'];
        $contrasena = $_POST['contrasena'];
       
        
        if(!empty($usuario)){

                
                if(!empty($contrasena)){
                    $userFromDB = $this->model->getByUser($usuario);
                    if(!($userFromDB)) {
                        $clave = password_hash($contrasena, PASSWORD_DEFAULT);
                        $this->model->addUsuario($usuario,$clave);
                        $this->verifyLogin();
                    }
                    else{
                        $msg = "YA EXISTE EL USUARIO";
                        $this->view->showRegistro($msg);
                    }
                }
                else{
                    $msg = "INGRESE UNA CONTRASEÑA";
                    $this->view->showRegistro($msg);
                }

        }
        else{
            $msg = "INGRESE EL USUARIO";
            $this->view->showRegistro($msg);
        }   
    } 


    public function verifyLogin() {
        $usuario = $_POST['usuario'];
        $contrasena = $_POST['contrasena'];

        // verifico campos obligatorios
        if (empty($usuario)||empty($contrasena)) {
            if (empty($usuario)) {
                $msg = "NO INGRESO EL EMAIL";
            }
            else if (empty($password)) {
                $msg = "NO INGRESO LA CONTRASEÑA";
            }
            $this->view->ShowLogin($msg);
            die();
        } 
        // obtengo el usuario
        $user = $this->model->getByUser($usuario);

        // si el usuario existe, y las contraseñas coinciden
        if(!empty($user)){
            $passTrue = password_verify($contrasena, $user->contrasenia);
            if(!$passTrue){
                $msg = "CONTRASEÑA INCORRECTA";
                $this->view->ShowLogin($msg);
            }
            else if($user && $passTrue){
                $this->authHelper->login($user);//creo la sesion 
                header('Location: ' . BASE_URL);
            }
        }
        else{
            $msg = "EL USUARIO NO EXISTE";
            $this->view->ShowLogin($msg);
        }

    }

    
}


?>