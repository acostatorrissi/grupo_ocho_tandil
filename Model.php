<?php
require_once 'helpers/dbHelper.php';

class Model{

    private $db;
    private $dbHelper;

    function __construct() {
        $this->dbHelper = new DBHelper();
        $this->db = $this->dbHelper->connect();
    }

    function getMateriales(){
        $query = $this->db->prepare("SELECT * FROM material");
        $query->execute();
        return  $query->fetchAll(PDO::FETCH_OBJ);
    }

    function insertPedido($nombre,$apellido,$direccion,$telefono,$img,$franja_horaria,$volumen){
        $sentencia = $this->db->prepare("INSERT INTO pedido(nombre,apellido,direccion,telefono,imagen_src,franja_horaria,volumen) VALUES(?,?,?,?,?,?,?)");
        $sentencia->execute(array($nombre,$apellido,$direccion,$telefono,$img,$franja_horaria,$volumen));
    }
    
    function insertMaterial($nombre,$img,$descripcion){
        $sentencia = $this->db->prepare("INSERT INTO material(nombre,imagen_src,descripcion) VALUES(?,?,?)");
        $sentencia->execute(array($nombre,$img,$descripcion));
    }

    function editarMaterial($nombre,$imagen,$id,$descripcion){
        $sentencia = $this->db->prepare("UPDATE material SET nombre=?,imagen_src=?, descripcion=? WHERE id=?");
        $sentencia->execute(array($nombre,$imagen,$id,$descripcion));
    }
    
    function getMaterial($id){
        $sentencia = $this->db->prepare( "SELECT * from material where id=?");
        $sentencia->execute([$id]);
        return $sentencia->fetch(PDO::FETCH_OBJ);
    }

    function borrarMaterial($id){
        $sentencia = $this->db->prepare("DELETE FROM material WHERE id=?");
        $sentencia->execute(array($id));
    }
}

?>