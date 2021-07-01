<?php
    require_once 'Controller.php';
    require_once 'UserController.php';
    require_once 'RouterClass.php';
    
    
    // CONSTANTES PARA RUTEO
    define('BASE_URL', 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
    define("Materiales", BASE_URL . 'materiales');
    define("Cartoneros", BASE_URL . 'lista-cartoneros');

    define("LOGIN", BASE_URL . 'login');
   

    $r = new Router();

    //Ruta por defecto.
    $r->setDefaultRoute("Controller", "Materiales");

    $r->addRoute("home", "GET", "Controller", "Home");

    $r->addRoute("materiales", "GET", "Controller", "Materiales");

    $r->addRoute("form-ciudadano", "GET", "Controller", "FormCiudadano");
    
    $r->addRoute("form-cartonero", "GET", "Controller", "FormCartonero");

    $r->addRoute("insertPedido", "POST", "Controller", "insertarPedido");
    $r->addRoute("insertCartonero", "POST", "Controller", "insertarCartonero");

    $r->addRoute("form-kilos", "GET", "Controller", "FormKilos"); // view
    $r->addRoute("insertKilogramoMaterial", "POST", "Controller", "insertKilogramos"); // funcion

    $r->addRoute("lista-pedidos", "GET", "Controller", "ListaPedidos");

    $r->addRoute("lista-cartoneros", "GET", "Controller", "verCartoneros");
    
    //ABM Materiales
        //Alta
    $r->addRoute("agregarMaterial", "GET", "Controller", "addMaterial"); // view
    $r->addRoute("nuevoMaterial", "POST", "Controller", "newMaterial"); // funcion

    //Modificacion
    $r->addRoute("editarMaterial/:ID", "GET", "Controller", "editarMaterial"); // view
    $r->addRoute("editMaterial/:ID", "POST", "Controller", "editMaterial"); // funcion
    $r->addRoute("editCartonero/:ID", "POST", "Controller", "editarCartonero");


    //Baja
    $r->addRoute("borrarMaterial/:ID", "GET", "Controller", "borrarMaterial");
    $r->addRoute("borrarCartonero/:ID", "GET", "Controller", "borrarCartonero");


    //ABM Registro-Login 
    $r->addRoute("registro", "GET", "UserController", "showRegistro");//vista de registrar
    $r->addRoute("registrarse", "POST", "UserController", "registracion");//func de registrar
    $r->addRoute("verificar", "POST", "UserController", "verifyLogin");
    $r->addRoute("login", "GET", "UserController", "showLogin"); 
    $r->addRoute("logout", "GET", "UserController", "logout");
   

    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
?>