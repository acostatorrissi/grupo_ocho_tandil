let showImg = () =>{
    document.querySelector(".row-form-direccion-img").style.display = "flex";
    document.querySelector("#mapa-centro-acopio").src = "img/camino"+randomPicture()+".png";
}

let randomPicture= () =>{
    return Math.floor(Math.random() * (4 - 1)) + 1;
}

let loading = () => {
    document.querySelector("#input-domicilio").addEventListener('blur', showImg);
}

document.addEventListener("DOMContentLoaded", loading);