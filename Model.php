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
}

?>