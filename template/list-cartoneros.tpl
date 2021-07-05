{include "template/header.tpl" }
    <div class="container-fluid container-postulaciones">
        <div class="row row-plantilla-cargar" action="insertCartonero" method="POST" enctype="multipart/form-data">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Lista de Cartoneros</h2>
            </div>  
            <div class="row row-lista-cartoneros">
                <div class="box tabla-cartoneros">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">DNI</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>  
                                <th scope="col">Direccion</th>                          
                                <th scope="col">Fecha de Nacimiento</th> 
                                <th scope="col">Tipo de Vehiculo</th>  
                                <th scope="col">Editar</th>
                                <th scope="col">Borrar</th>
                                <th scope="col">Materiales</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$cartoneros item=cartonero}
                            <tr>
                                <td>{$cartonero->dni}</td>
                                <td>{$cartonero->nombre}</td>
                                <td>{$cartonero->apellido}</td>                            
                                <td>{$cartonero->direccion}</td>
                                <td>{$cartonero->fechaNacimiento}</td>
                                <td>{$cartonero->vehiculo}</td>
                                <td><button type="button" class="btn-lista-cartoneros-editar" data-toggle="modal" data-target="#modificar{$cartonero->dni}" aria-expanded="false"> EDITAR </button></td>
                                <td><button type="button" value="BORRAR" class="btn-lista-cartoneros"><a href="borrarCartonero/{$cartonero->dni}"> BORRAR </a></button></td>
                                <td><button type="button" value="VER MATERIALES" class="btn-lista-cartoneros-ver-materiales"><a href="cargas-cartonero/{$cartonero->dni}"> VER MATERIALES </a></button></td>
                                <div class="modal fade" id="modificar{$cartonero->dni}" tabindex="-1" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content ">
                                            <form class="form-inline" action="editCartonero/{$cartonero->dni}" method="POST" enctype="multipart/form-data">
                                                <div class="modal-header">

                                                    <h5 class="modal-title">   Editar a  {$cartonero->nombre} {$cartonero->apellido}</h5>
                                                    
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        <label for="nombre" class="text-dark">Nombre</label>
                                                        <input type="text" class="form-control" name="nombre" value={$cartonero->nombre} required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="apellido" class="text-dark">Apellido</label>
                                                        <input type="text" class="form-control" name="apellido" value={$cartonero->apellido} required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="direccion" class="text-dark">Dirección</label>
                                                        <input type="text" class="form-control" name="direccion" value={$cartonero->direccion} required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="fechaNacimiento" class="text-dark">Fecha de nacimiento</label>
                                                        <input type="text" class="form-control" name="fechaNacimiento" value={$cartonero->fechaNacimiento} required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="tipoVehiculo" class="text-dark">Tipo de vehículo</label>
                                                        <select class="form-control" name="tipoVehiculo">
                                                            <optgroup label="Selecione su tipo de vehículo">
                                                                <option value="Automovil" {if $cartonero->vehiculo eq "Automovil"}selected{/if}>Automovil</option>
                                                                <option value="Moto" {if $cartonero->vehiculo eq "Moto"}selected{/if}>Moto</option>
                                                                <option value="Camioneta" {if $cartonero->vehiculo eq "Camioneta"}selected{/if}>Camioneta</option>
                                                                <option value="Camion" {if $cartonero->vehiculo eq "Camion"}selected{/if}>Camion</option>
                                                            </optgroup>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-primary">Confirmar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div> 
                            </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div> 
            </div>
            <div class="row box-elem-boton"> 
                <button class="btn-elem-publicar-aviso"><a id="a-agregar-cartonero" href="/grupo_ocho_tandil/form-ciudadano">AGREGAR CARTONERO</a></button>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/0858cbf469.js"></script>
</body>
</html>
