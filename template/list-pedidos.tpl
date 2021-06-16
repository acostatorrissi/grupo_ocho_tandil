{include "template/header.tpl" }
    
    <div class="container-fluid container-postulaciones">
        <div class="row row-lista-pedidos">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Lista de Pedidos</h2>
            </div>  
            <div class="row row-lista">
                <table class="table tabla-pedidos">
                    <thead>
                        <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Imagen</th>
                        <th scope="col">Franja Horaria</th>
                        <th scope="col">Volumen</th>
                        </tr>
                    </thead>
                    <tbody>
                         {foreach from=$pedidos item=pedido}
                            <tr>
                                <th scope="row">{$pedido->id_pedido}</th>
                                <td>{$pedido->nombre}</td>
                                <td>{$pedido->apellido}</td>
                                <td>{$pedido->direccion}</td>
                                <td>{$pedido->telefono}</td>
                                <td>{$pedido->imagen_src}</td>
                                <td>{$pedido->franja_horaria}</td>
                                <td>{$pedido->volumen}</td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>