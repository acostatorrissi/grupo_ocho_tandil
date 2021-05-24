<?php
require_once 'helpers/dbHelper.php';

class Model{

    private $db;
    private $dbHelper;

    function __construct() {
        $this->dbHelper = new DBHelper();
        $this->db = $this->dbHelper->connect();
    }
}

?>