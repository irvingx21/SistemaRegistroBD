<%-- 
    Document   : registro
    Created on : 27/08/2016, 10:38:22
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
      <script src="jquery-1.11.3.min.js" type='text/javascript'></script>
      <script src="jquery-1.11.3.js" type='text/javascript'></script>
        
        <title>Registrate</title>
    </head>
    <body class="card-panel white accent-1">
        
       <header>
       <center><h1><font color="#90caf9">Sistema de Matriculacion</font></h1></center>
       <nav class="card-panel blue lighten-3">
          <ul>
             <li><a href='index.jsp'>INICIO</a></li>
             <li><a href='registro.jsp'>LOGIN</a></li>
             <li><a href='registro.jsp'>REGISTRO</a></li>
           </ul>
        </nav>
        <div align="center" >
                 <img  src="imagenes/vehiculo.jpg"  width="200" height="200" >
          </div> 
      </header>
        
        <section>
            <div class="row">
            <div class="row">
            
                <h1>Registro</h1>
            <form action="registrausuario" method="get">
            <label> Usuario <label>
            <input type="text" name="usuario"><br><br>
            <label> Nombre <label>
            <input type="text" name="nombre"><br><br>        
            <label> Apellido <label>
            <input type="text" name="apellido"><br><br>
            <label> N°Cedula <label>
            <input type="text" name="cedula"><br><br>
            <label> Contraseña <label>
            <input type="text" name="contraseña"><br><br>
            
            <input type="submit" value="Registrarse" class="btn waves-effect blue lighten-3">  
        </form>
                
            </div>
            </div>    
          </section>
    </body>
</html>
