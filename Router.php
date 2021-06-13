<?php
    require_once 'Controller.php';
    require_once 'UserController.php';
    require_once 'RouterClass.php';
    
    // CONSTANTES PARA RUTEO
    define('BASE_URL', 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
    define("Materiales", BASE_URL . 'materiales');
   

    $r = new Router();

    //Ruta por defecto.
    $r->setDefaultRoute("Controller", "Home");

    $r->addRoute("home", "GET", "Controller", "Home");

    $r->addRoute("materiales", "GET", "Controller", "Materiales");

    $r->addRoute("form-ciudadano", "GET", "Controller", "FormCiudadano");
    
    $r->addRoute("insertPedido", "POST", "Controller", "insertarPedido");
    
    //ABM Materiales
        //Alta
    $r->addRoute("agregarMaterial", "GET", "Controller", "addMaterial"); // view
    $r->addRoute("nuevoMaterial", "POST", "Controller", "newMaterial"); // funcion

    //Modificacion
    $r->addRoute("editarMaterial/:ID", "GET", "Controller", "editarMaterial"); // view
    $r->addRoute("editMaterial/:ID", "POST", "Controller", "editMaterial"); // funcion

    //ABM Registro-Login 
    $r->addRoute("registro", "GET", "UserController", "showRegistro");//vista de registrar
    $r->addRoute("registrarse", "POST", "UserController", "registracion");//func de registrar
    $r->addRoute("verificar", "POST", "UserController", "verifyLogin");
    $r->addRoute("login", "GET", "UserController", "showLogin");
    
    
   
    $r->addRoute("logout", "GET", "UserController", "logout");
   
    
   
    
    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
?>