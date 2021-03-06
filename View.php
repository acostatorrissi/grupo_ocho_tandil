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

    function MostrarFormCartonero() {
        $this->smarty->display('template/form-cartonero.tpl');  
    }

    function MostrarFormKilos($cartoneros, $msg = '') {
        $this->smarty->assign('cartoneros',$cartoneros);
        $this->smarty->assign('msg',$msg);
        $this->smarty->display('template/form-kilos.tpl');
    }

    function MostrarMateriales($materiales, $isAdmin) {
        $this->smarty->assign('materiales', $materiales);
        $this->smarty->assign('ISADMIN', $isAdmin);
        $this->smarty->assign('cont', count($materiales));
        $this->smarty->display('template/materiales.tpl');  
    }

    function FormularioLocation(){
        header("Location: ".BASE_URL."form-ciudadano");
    }

    function FormularioCartoneroLocation(){
        header("Location: ".BASE_URL."form-cartonero");
    }

    function ListaCartonerosLocation(){
        header("Location: ".BASE_URL."lista-cartoneros");
    }
    
    function ShowAddMaterial(){
        $this->smarty->display('template/add-material.tpl');
    }

    function showRegistro($msg = ''){
        $this->smarty->assign('msg', $msg);
        $this->smarty->display('template/registro.tpl');
    }

    function ShowLogin($msg = ''){
        $this->smarty->assign('msg', $msg);
        $this->smarty->display('template/login.tpl');
    }
    function showEditarMaterial($material,$msg=''){
        $this->smarty->assign('material',$material);
        $this->smarty->assign('msg',$msg);//mensaje de error
        $this->smarty->display('template/edit-material.tpl');
    }

    function ListaPedidos($pedidos){
        $this->smarty->assign('pedidos', $pedidos, false);
        $this->smarty->display('template/list-pedidos.tpl');
    }

    function verCartoneros($cartoneros){
        $this->smarty->assign('cartoneros',$cartoneros);
        $this->smarty->display('template/list-cartoneros.tpl');
    }

    function verMaterialesPorCartonero($materiales){
        $this->smarty->assign('materiales',$materiales);
        $this->smarty->display('template/list-materiales.tpl');
    }
    
}
?>