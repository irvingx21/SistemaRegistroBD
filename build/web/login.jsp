<%-- 
    Document   : login
    Created on : 07/09/2016, 21:20:11
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
        
        <title>Inicio de Sesion</title>
    </head>
    <body class="card-panel white accent-1">
       <center><h1><font color="#90caf9">Sistema de Matriculacion</font></h1></center>
       <nav class="card-panel blue lighten-3">
          <ul>
             <li><a href='index.jsp'>INICIO</a></li>
             <li><a href='registro.jsp'>LOGIN</a></li>
              <li><a href='registro.jsp'>REGISTRO</a></li>
           </ul>
        </nav>
         
      <header>
          
          <div align="center" >
                 <img  src="imagenes/vehiculo.jpg"  width="200" height="200" >
          </div>  
          
      </header>
        
        <h1>Inicio de Sesion</h1>
            <form action="iniciar" method="get">
            <label> Cedula <label> 
            <input type="text" name="cedula"><br><br>
            <label> Contraseña <label> 
            <input type="text" name="contraseña"><br><br>
            <input type="submit" value="Iniciar Sesion" class="btn waves-effect blue lighten-3">
        </form><br>
        <br>
        <br>
        <hr>
        <a href="registro.jsp">REGISTRATE<a>
    </body>
</html>