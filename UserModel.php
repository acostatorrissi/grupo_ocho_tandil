<?php

  include_once 'helpers/dbHelper.php';
  
  class UserModel{
  
    private $db;
    private $dbHelper;
  
    function __construct() {
      $this->dbHelper = new DBHelper();
      $this->db = $this->dbHelper->connect();
      }
    
    public function addUsuario($usuario,$clave){
        $sentencia = $this->db->prepare("INSERT INTO user(usuario,contrasenia) VALUES(?,?)");
        $sentencia->execute(array($usuario,$clave));
    }
      
    public function getByUser($usuario) {
        $query = $this->db->prepare('SELECT * FROM user WHERE usuario = ?');
        $query->execute(array($usuario));
        return $query->fetch(PDO::FETCH_OBJ);
    }


}
?>