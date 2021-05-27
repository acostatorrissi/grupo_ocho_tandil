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
                
                <a href="">Nosotros</a>
                <a href="">Materiales</a>
                <a href="">Registrarse</a>
                <a href="">Novedades</a>
                <a href="">Login</a>
                
            </div>
        </div> 
    </div>
    
    <div class="container-fluid container-postulaciones">
        <form class="row row-plantilla-cargar">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Formulario de Ciudadano</h2>
            </div>  
            <div class="row row-form-cargar">
                <div class="row row-form-post-text">
                    <h5>Nombre</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form">
                </div>
                <div class="row row-form-post-text">
                    <h5>Apellido</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form">
                </div> 
                <div class="row row-form-post-text">
                    <h5>Email</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form">
                </div>  
                <div class="row row-form-post-text">
                    <h5>Domicilio</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form">
                </div>
                <div class="row row-form-post-text">
                    <h5>Teléfono</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form">
                </div>
                <div class="row row-form-post-text">
                    <h5>Capacidad disponible</h5>   
                </div> 
                <div class="row row-form-post">
                    <select name="select" class="select-form">
                        <option value="value1">Entran en un baúl</option>
                        <option value="value2">Entra en una caja de camioneta</option>
                        <option value="value3">Entra en un camión</option>
                        <option value="value4">Entra en una caja</option>                         
                    </select>
                    <button class="btn btn-secondary">
                        <i class="fa fa-picture-o"></i>
                    </button> 
                </div>

                <div class="row row-form-post-text">
                    <h5>Franja horaria</h5>
                </div> 
                <div class="row row-form-post ">
                    <select name="select" class="texto-form">
                        <option value="value1" selected>9hs - 12hs</option>
                        <option value="value2">13hs - 17hs</option>
                    </select>
                </div>                      
            </div> 
            <div class="row box-elem-boton"> 
                <input type="button" value="CARGAR PEDIDO" class="btn-elem-publicar-aviso">
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>