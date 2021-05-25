{include file="template/header.tpl" }

    <div class="container">
        <div class="row row-cols-2">
            {foreach from=$materiales item=material} 
                <div class="col">

                    <h3>{$material->nombre}</h3>
                    <img src="{$material->imagen_src}" class="rounded-circle" width="75px" height="75px"/>
                    <p>{$material->descripcion}</p>
                
                </div>
            {/foreach}
        </div>
    </div>
</body>
</html>