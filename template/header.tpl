<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/grupo_ocho_tandil/css/styles.css">
    <link rel="icon" type="image/x-icon" href="/grupo_ocho_tandil/img/logo-reciclaje.png" class="rounded-circle">
    <title>Formulario Ciudadano</title>
</head>
<body>
    <div class="container-fluid container-nav">
        <div class="row row-nav-logo">
            <div class="col">
                 <img src="/grupo_ocho_tandil/img/logo-reciclaje.png" alt="logo-reciclaje" id="logo-reciclaje">
            </div>
        </div> 
        <div class="row row-nav-bar">
            <div class="col col-nav">
                
                <a href="/grupo_ocho_tandil/form-ciudadano">Cargar Pedido</a>
                <a href="/grupo_ocho_tandil/materiales">Materiales</a>
                {if ($smarty.session) && ($smarty.session.ISADMIN)==0} 
                <a href="/grupo_ocho_tandil/logout">Logout</a> 
                {elseif ($smarty.session) && ($smarty.session.ISADMIN)==1}
                <a href="/grupo_ocho_tandil/lista-pedidos">Lista de Pedidos</a>
                <a href="/grupo_ocho_tandil/lista-cartoneros">Lista de Cartoneros</a>
                <a href="/grupo_ocho_tandil/form-cartonero">Registrar Cartonero</a>
                <a href="/grupo_ocho_tandil/logout">Logout</a> 
                {else}
                <a href="/grupo_ocho_tandil/registro">Registrarse</a>
                <a href="/grupo_ocho_tandil/login">Login</a>      
                {/if}           
            </div>
        </div> 
    </div>