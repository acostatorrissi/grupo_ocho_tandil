<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/styles.css">
    <title>Formulario Ciudadano</title>
</head>
<body>
    <div class="container-fluid container-nav">
        <div class="row row-nav-logo">
            <div class="col">
                 <img src="img/logo-reciclaje.png" alt="logo-reciclaje" id="logo-reciclaje">
            </div>
        </div> 
        <div class="row row-nav-bar">
            <div class="col col-nav">
                
                <a href="form-ciudadano">Nosotros</a>
                <a href="materiales">Materiales</a>
                {if ($smarty.session) && ($smarty.session.ISADMIN)==0} 
                <a href="logout">Logout</a> 
                {elseif ($smarty.session) && ($smarty.session.ISADMIN)==1}
                <a href="lista-pedidos">Lista de Pedidos</a>
                <a href="logout">Logout</a> 
                {else}
                <a href="registro">Registrarse</a>
                <a href="login">Login</a>      
                {/if}           
            </div>
        </div> 
    </div>