{include "template/header.tpl" }
    <div class="container-fluid container-postulaciones">
        <form class="row row-plantilla-cargar" action="insertCartonero" method="POST" enctype="multipart/form-data">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Formulario de Cartonero</h2>
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
                    <h5>DNI</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form" name="dni">
                </div>
                <div class="row row-form-post-text">
                    <h5>Domicilio</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form" name="direccion">
                </div>
                <div class="row row-form-post-text">
                    <h5>Fecha de Nacimiento</h5>   
                </div> 
                <div class="row row-form-post">
                    <input type="text" class="texto-form" name="fechaNacimiento">
                </div>
                <div class="row row-form-post-text">
                    <h5>Tipo de vehículo</h5>   
                </div> 
                <div class="row row-form-post">
                    <select class="texto-form" name="vehiculo">
                        <option value="value1">Automovil</option>
                        <option value="value2">Moto</option>
                        <option value="value3">Camioneta</option>
                        <option value="value4">Camion</option>                         
                    </select>
                </div>
            </div> 
            <div class="row box-elem-boton"> 
                <button type="submit" class="btn-elem-publicar-aviso">DAR DE ALTA</button>
            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>
