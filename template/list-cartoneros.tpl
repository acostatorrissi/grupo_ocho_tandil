{include "template/header.tpl" }
    <div class="container-fluid container-postulaciones">
        <form class="row row-plantilla-cargar" action="insertCartonero" method="POST" enctype="multipart/form-data">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Formulario de Cartonero</h2>
            </div>  
            <div class="row row-lista-cartoneros">
                <div class="box tabla-cartoneros">
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">DNI</th>
                            <th scope="col">Fecha de Nacimiento</th>
                            <th scope="col">Tipo de Vehiculo</th>
                            <th scope="col">Editar</th>
                            <th scope="col">Borrar</th>
                            <th scope="col">Materiales</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>15.321.312</td>
                            <td>23/02/1960</td>
                            <td>Camioneta</td>
                            <td><input type="button" value="EDITAR" class="btn-lista-cartoneros-editar"></td>
                            <td><input type="button" value="BORRAR" class="btn-lista-cartoneros"></td>
                            <td><input type="button" value="VER MATERIALES" class="btn-lista-cartoneros-ver-materiales"></td>
                            </tr>
                            <tr>
                        </tbody>
                    </table>
                </div>

            </div> 
            <div class="row box-elem-boton"> 
            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>
