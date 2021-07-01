{include "template/header.tpl" }

    <div class="container-fluid container-postulaciones">
        <div class="row row-plantilla">
            <div class="row box-elem-titulo">
                <h2 class="titulo-pagina">Materiales Reciclables</h2>
            </div>  
            <div class="row row-postulaciones">
               
                {$n = 1}
                {foreach from=$materiales item=material}
                  
                    <div class="row box-elem{$n}">
                        <div class="box-img">                            
                           <img src="img/{$material->imagen_src}" alt="lata-reciclaje" id="lata-reciclaje">
                        </div> 
                        <div class="box-elem">                    
                            <h5 class="titulo">{$material->nombre}</h5>
                            <p class="descripcion">{$material->descripcion}</p>                                                      
                        </div>   
                        <div>
                            {if ($smarty.session) && ($smarty.session.ISADMIN) == 1} 
                            <button class="btn-admin-borrar"><a href="borrarMaterial/{$material->id}"><i class="fas fa-trash-alt"></i></a> </button>
                            <button type="button" class="btn-admin-editar" data-toggle="modal" data-target="#modificar{$material->id}" aria-expanded="false"><i class="far fa-edit"></i></button>
                            {/if}
                        </div>                     
                    </div> 
                    <div class="modal fade" id="modificar{$material->id}" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content ">
                                <form class="form-inline" action="editMaterial/{$material->id}" method="POST" enctype="multipart/form-data">
                                    <div class="modal-header">

                                        <h5 class="modal-title"   >   Editar:  "{$material->nombre}"</h5>
                                        
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="nombre" class="text-dark">Material:</label>
                                            <input type="text" class="form-control" name="nombre" value={$material->nombre} required>
                                        </div>
                                        <div class="form-group">
                                            <label for="descripcion" class="text-dark">Descripción:</label>
                                            <input type="text" class="form-control" name="descripcion" value={$material->descripcion} required>
                                        </div>
                                        <div class="form-group">
                                            <label for="imagen" class="text-dark">Imagen</label>
                                            <input class="form-control" type="file" name="imagen">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary">Confirmar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div> 
                    {$n=$n+1}
                {/foreach}
            </div> 
            <div class="row box-elem-boton"> 
                {if ($smarty.session) && ($smarty.session.ISADMIN) == 1 }
                <a href="agregarMaterial"><input type="button" value="Agregar" class="btn-admin-agregar"></a>
                {/if}
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>