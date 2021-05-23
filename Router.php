<?php
    require_once 'Controller.php';
    require_once 'RouterClass.php';
    
    // CONSTANTES PARA RUTEO
    define('BASE_URL', 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
    define("Materiales", BASE_URL . 'materiales');
   

    $r = new Router();

    //Ruta por defecto.
    $r->setDefaultRoute("Controller", "Home");

    $r->addRoute("home", "GET", "Controller", "Home");

    $r->addRoute("materiales", "GET", "Controller", "Materiales");
 
    
    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
?>