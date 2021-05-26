<?php

require_once "libs/Smarty.class.php";

class View{
    
    private $smarty;

    function __construct(){ 
        $this->smarty = new Smarty();
    }

    function Mostrar() {

        $this->smarty->assign('Titulo',"Home");
        $this->smarty->display('template/header.tpl'); 
    }

    function Header() {
        $this->smarty->display('template/header.tpl'); 
    }

    function MostrarFormCiudadano() {
        $this->smarty->display('template/form-ciudadano.tpl');  
    }

    function MostrarMateriales($materiales) {
        $this->smarty->assign('materiales', $materiales, false);
        $this->smarty->assign('cont', count($materiales));
        $this->smarty->display('template/materiales.tpl');  
    }
}
?>