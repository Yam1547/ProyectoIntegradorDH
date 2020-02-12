//Login------------------------------------------------------------

window.addEventListener ('load', function (){

      //var ingresar = document.querySelector(".ingresar");


          var usuario = document.querySelector("#usuario");
          var contraseña = document.querySelector("#contraseña");
          var email = document.querySelector("#email");

      var errores = false;
      var errorUsuario = document.querySelector(".ErrorUsuario");
      var errorContraseña = document.querySelector(".ErrorPassword");
      var errorEmail = document.querySelector(".ErrorEmail");

      var formatoEmail = /^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;



    //ingresar.addEventListener('click', function(){

    document.querySelector("form").addEventListener("submit", function(event) {




    if (usuario.value.trim() == ""){
      event.preventDefault();
    errorUsuario.innerHTML = "El usuario es obligatorio";
    usuario.style.border ="2px solid red";
      errores=true;
    }else if (usuario.value.length < 5){
      event.preventDefault();
    errorUsuario.innerHTML = "Usuario incorrecto";
    usuario.style.border ="2px solid red";
    errores=true;
      } else {
    errorUsuario.innerHTML = "";
    usuario.style.border ="2px solid green";

      }


    if (contraseña.value.trim() == "") {
      event.preventDefault();
    errorContraseña.innerHTML = "La contraseña es obligatoria";
    contraseña.style.border ="2px solid red";
      errores = true;
    }else if (contraseña.value.length < 8){
      event.preventDefault();
    errorContraseña.innerHTML = "Contraseña incorrecta";
    contraseña.style.border ="2px solid red";
    errores=true;
    } else {
    errorContraseña.innerHTML = "";
    contraseña.style.border ="2px solid green";

        }



        if (email.value.trim() == ""){
           event.preventDefault();
          errorEmail.innerHTML = "El email es obligatorio";
          email.style.border ="2px solid red";
                  errores=true;
        }else if (!formatoEmail.test(email.value)){
            event.preventDefault();
        errorEmail.innerHTML = "El email es inválido";
        email.style.border ="2px solid red";
        errores=true;
        } else {
        errorEmail.innerHTML = "";
        email.style.border ="2px solid green";

              }

              if (!errores){
                alert("Bienvenido");
              }






    })


    });



//Registro---------------------------------------------------------





window.addEventListener ('load', function (){



var nombre = document.querySelector("#nombre");
var apellido = document.querySelector("#apellido");
var usuario = document.querySelector("#usuario");
var email = document.querySelector("#email");
var contraseña = document.querySelector("#contraseña");
var confirmarContraseña = document.querySelector("#confirmar-contraseña");
var paises = document.querySelector(".paises");

var errores = false;
var errorNombre = document.querySelector(".ErrorNombre");
var errorApellido = document.querySelector(".ErrorApellido");
var errorUsuario = document.querySelector(".ErrorUsuario");
var errorEmail = document.querySelector(".ErrorEmail");
var errorContraseña = document.querySelector(".ErrorPassword");
var errorPaises = document.querySelector(".ErrorPaises");

var formatoEmail = /^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;


document.querySelector("form").addEventListener("submit", function(event) {




if (nombre.value.trim() == ""){
  event.preventDefault();
  errorNombre.innerHTML ="El nombre es obligatorio";
  nombre.style.border ="2px solid red";
  errores=true;
}else if (nombre.value.length < 3){
  event.preventDefault();
  errorNombre.innerHTML = "El nombre debe tener al menos 3 caracteres";
nombre.style.border ="2px solid red";
errores=true;
} else {
errorNombre.innerHTML = "";
nombre.style.border ="2px solid green";
}


if (apellido.value.trim() == "") {
  event.preventDefault();
  errorApellido.innerHTML = "El apellido es obligatorio";
apellido.style.border ="2px solid red";
errores=true;
}else if (apellido.value.length < 5){
  event.preventDefault();
  errorApellido.innerHTML = "El apellido debe tener al menos 5 caracteres";
apellido.style.border ="2px solid red";
errores=true;
} else {
errorApellido.innerHTML = "";
apellido.style.border ="2px solid green";
}

if (usuario.value.trim() == ""){
  event.preventDefault();
  errorUsuario.innerHTML = "El usuario es obligatorio";
usuario.style.border ="2px solid red";
errores=true;
}else if (usuario.value.length < 5){
  event.preventDefault();
  errorUsuario.innerHTML = "El usuario debe tener al menos 5 caracteres";
usuario.style.border ="2px solid red";
errores=true;
} else {
errorUsuario.innerHTML = "";
usuario.style.border ="2px solid green";
}





if (email.value.trim() == ""){
  event.preventDefault();
  errorEmail.innerHTML = "El email es obligatorio";
  email.style.border ="2px solid red";
    errores=true;
}else if (!formatoEmail.test(email.value)){
  event.preventDefault();
errorEmail.innerHTML = "El email es inválido";
email.style.border ="2px solid red";
errores=true;
} else {
errorEmail.innerHTML = "";
email.style.border ="2px solid green";
}





if (contraseña.value.trim() == "") {
  event.preventDefault();
  errorContraseña.innerHTML = "La contraseña es obligatoria";
contraseña.style.border ="2px solid red";
errores=true;
}else if (contraseña.value.length < 8){
  event.preventDefault();
  errorContraseña.innerHTML = "La contraseña debe tener al menos 8 caracteres";
contraseña.style.border ="2px solid red";
errores=true;
} else if (contraseña.value != confirmarContraseña.value){
  event.preventDefault();
errorContraseña.innerHTML = "La contraseña debe coincidir";
contraseña.style.border ="2px solid red";
errores=true;
} else {
errorContraseña.innerHTML = "";
contraseña.style.border ="2px solid green";
}

if (paises.value == ""){
  event.preventDefault();
  errorPaises.innerHTML ="El país es obligatorio";
  paises.style.border ="2px solid red";
  errores=true;
} else {
errorPaises.innerHTML = "";
paises.style.border ="2px solid green";
}


if (!errores){
  alert("Se ha registrado correctamente");
}

})
});

window.addEventListener ('load', function (){
fetch("https://restcountries.eu/rest/v2/all")
.then(function (response){
  return response.json();
})
  .then(function(data){
    console.log(data);
    var seleccionPaises = document.querySelector(".paises");
    for(var i = 0; i < data.length;i++){
    seleccionPaises.innerHTML += "<option>"+data[i].name+"</option>";
}
    })

});
