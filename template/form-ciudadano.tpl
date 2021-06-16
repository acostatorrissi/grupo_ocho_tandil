{include "template/header.tpl" }
    
    <div class="container-fluid container-postulaciones">
        <form class="row row-plantilla-cargar" action="insertPedido" method="POST" enctype="multipart/form-data">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Formulario de Ciudadano</h2>
            </div>  
            <div class="row row-form-cargar">
                <div class="row row-form-post-text">
                    <h5>Nombre</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form" name="nombre">
                </div>
                <div class="row row-form-post-text">
                    <h5>Apellido</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form" name="apellido">
                </div>   
                <div class="row row-form-post-text">
                    <h5>Domicilio</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form" name="direccion">
                </div>
                <div class="row row-form-direccion-img">
                    <img src="img/camino1.png" alt="mapa centro de acopio" id="mapa-centro-acopio">
                </div>
                <div class="row row-form-post-text">
                    <h5>Teléfono</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form" name="telefono">
                </div>
                <div class="row row-form-post-text">
                    <h5>Capacidad disponible</h5>   
                </div> 
                <div class="row row-form-post">
                    <select class="texto-form" name="volumen">
                        <option value="value1">Entran en un baúl</option>
                        <option value="value2">Entra en una caja de camioneta</option>
                        <option value="value3">Entra en un camión</option>
                        <option value="value4">Entra en una caja</option>                         
                    </select>
                </div>
                <div class="row row-form-post-text">
                    <input class="col-titulo" type="file" name="imagen_src">
                </div>

                <div class="row row-form-post-text">
                    <h5>Franja horaria</h5>
                </div> 
                <div class="row row-form-post ">
                    <select class="texto-form" name="franja_horaria">
                        <option value="value1" selected>9hs - 12hs</option>
                        <option value="value2">13hs - 17hs</option>
                    </select>
                </div>                      
            </div> 
            <div class="row box-elem-boton"> 
                <button type="submit" class="btn-elem-publicar-aviso">CARGAR PEDIDO</button>
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>
