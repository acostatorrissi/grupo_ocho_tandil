{include "template/header.tpl" }
    <div class="container-fluid container-postulaciones">
        <form class="row row-plantilla-cargar" action="insertCartonero" method="POST" enctype="multipart/form-data">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Rodolfo Suarez</h2>
            </div>  
            <div class="row row-lista-materiales-cartonero">
                <div class="box tabla-materiales-cartonero">
                    <i class="fas fa-user-circle fa-7x img-perfil-cartonero"></i>
                    <table class="table table-materiales-cartonero">
                        <thead>
                            <tr>
                            <th scope="col">N° de Pedido</th>
                            <th scope="col">Materiales</th>
                            <th scope="col">Kilogramos</th>
                            </tr>
                        </thead>
                        <tbody>
                        {foreach from=$materiales item=material}
                            <tr>
                                <td>{$material->id_carga}</td>
                                <th scope="row">{$material->tipo_material}</th>
                                <td>{$material->kilogramos}</td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>

            </div> 
            <div class="row box-elem-boton"> 
                <button type="submit" class="btn-regresar-materiales">REGRESAR</button>
            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>
