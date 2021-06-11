<?php

    class AuthHelper{
        public function __construct() {
            $this->isLogged();
        }

        public function login($user) {
            // INICIO LA SESSION Y LOGUEO AL USUARIO
            $_SESSION['ID_USER'] = $user->id;
            $_SESSION['EMAIL'] = $user->usuario;
            $_SESSION['ISADMIN'] = $user->admin;
        }

        public function isLogged() {
            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
        }


    }

?>