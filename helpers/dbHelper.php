<?php

class dbHelper {
    public function __construct() {
        $this->host = 'localhost';
        $this->database = 'cooperativa_reciclaje';
        $this->user = 'root';
        $this->password = '';
    }

    public function connect() {
        $db = new PDO("mysql:host={$this->host};"."dbname={$this->database};charset=utf8", 
                        $this->user, $this->password);
        return $db;
    }    
}