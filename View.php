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
    function FormularioLocation(){
        header("Location: ".BASE_URL."form-ciudadano");
    }
    function ShowAddMaterial(){
        $this->smarty->display('');
    }

    function showRegistro($msg = ''){
        $this->smarty->assign('msg', $msg);
        $this->smarty->display('template/registro.tpl');
    }

    function ShowLogin($msg = ''){
        $this->smarty->assign('msg', $msg);
        $this->smarty->display('template/login.tpl');
    }
}
?>