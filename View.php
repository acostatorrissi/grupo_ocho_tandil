<?php

require_once "libs/Smarty.class.php";

class View{
    
    private $smarty;

    function __construct(){ 
        $this->smarty = new Smarty();
    }

    function Mostrar() {

        $this->smarty->assign('Titulo',"Home");
        $this->smarty->display('template/form-ciudadano.tpl'); 
    }

    function Header() {
        $this->smarty->display('template/header.tpl'); 
    }
}
?>