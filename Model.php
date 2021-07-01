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

    function getCartoneros(){
        $query = $this->db->prepare("SELECT * FROM cartonero");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }
    
    function insertPedido($nombre,$apellido,$direccion,$telefono,$img,$franja_horaria,$volumen){
        $sentencia = $this->db->prepare("INSERT INTO pedido(nombre,apellido,direccion,telefono,imagen_src,franja_horaria,volumen) VALUES(?,?,?,?,?,?,?)");
        $sentencia->execute(array($nombre,$apellido,$direccion,$telefono,$img,$franja_horaria,$volumen));
    }

    function insertCartonero($nombre,$apellido,$dni,$direccion,$fechaNacimiento,$vehiculo){
        $sentencia = $this->db->prepare("INSERT INTO cartonero(nombre,apellido,dni,direccion,fechaNacimiento,vehiculo) VALUES(?,?,?,?,?,?)");
        $sentencia->execute(array($nombre,$apellido,$dni,$direccion,$fechaNacimiento,$vehiculo));
    }

    function insertMaterial($nombre,$img,$descripcion){
        $sentencia = $this->db->prepare("INSERT INTO material(nombre,imagen_src,descripcion) VALUES(?,?,?)");
        $sentencia->execute(array($nombre,$img,$descripcion));
    }

    function insertKilogramos($material, $kilogramos){
        $sentencia = $this->db->prepare("INSERT INTO carga(tipo_material,kilogramos) VALUES (?,?)");
        $sentencia->execute(array($material, $kilogramos));
    }

    function editarMaterial($nombre,$img,$descripcion,$id){
        $sentencia = $this->db->prepare("UPDATE material SET nombre=?,imagen_src=?, descripcion=? WHERE id=?");
        $sentencia->execute(array($nombre,$img,$descripcion,$id));
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

    function borrarCartonero($id){
        $sentencia = $this->db->prepare("DELETE FROM cartonero WHERE dni=?");
        $sentencia->execute(array($id));
    }

    function getPedidos(){
        $query = $this->db->prepare("SELECT * FROM pedido");
        $query->execute();
        return  $query->fetchAll(PDO::FETCH_OBJ);
    }

    function editarCartonero($nombre, $apellido, $dni, $direccion, $fechaNacimiento, $tipoVehiculo){
        $sentencia = $this->db->prepare("UPDATE cartonero SET nombre=?,apellido=?, dni=?, direccion=?, fechaNacimiento=?, vehiculo=? WHERE dni=?");
        $sentencia->execute(array($nombre, $apellido, $dni, $direccion, $fechaNacimiento, $tipoVehiculo));
    }
}

?>