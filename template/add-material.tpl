{include "template/header.tpl" }
    
<div class="container-fluid container-postulaciones">
    <div class="row row-plantilla-cargar">
        <div class="row box-elem-titulo">
            <h2 class="titulo-pagina">Agregar material</h2>
        </div>  
        <div class="row row-form-add">
            <div class="row-add">
                <form action="nuevoMaterial" method="POST" enctype="multipart/form-data">
                    <h4>Nombre</h4>
                    <input type="text" class="texto-form" name="nombre">
                    <h4>Descripcion</h4>
                    <input type="text" class="texto-form" name="descripcion">
                    <h4>Imagen</h4>
                    <input class="col-titulo" type="file" name="imagen">
                
            </div>

        <div class="row box-elem-boton"> 
            
            </form>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>