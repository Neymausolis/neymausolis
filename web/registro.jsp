<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Pacientes</title>
        <!--Liberias y componentes de JS y CSS3-->
   
    </head>
    <body style="background-color: #C2DAFF" >
        <hr>
        <!--LIBRERIAS-->
        <%@page import = "java.sql.*"%>
        <%@page import = "conexionbd.Conexion" %>
        <%@page errorPage = "error.jsp" %>
        
        <!--Llamada a la conexion y variables, instruccion SQL para insertar-->
        <%
            Conexion conexion=new Conexion("jdbc:mysql://localhost/bddti_solis","root", ""); 
            int idPaciente= Integer.parseInt(request.getParameter("idpac"));
            String nombre=request.getParameter("nom");
            String diasInternado =request.getParameter("dias");
            String costito=request.getParameter("costo");
            
            String altaQuery="INSERT INTO exahospital VALUES ('"+idPaciente+"', '"+nombre+"', '"+diasInternado+"', '"+costito+"')";
            int c = conexion.ejecutaSentencia(altaQuery);
            if(c==1){
     
        %>
        <div class="container" style="border-radius: 50px;
background: #e0e4e5;
box-shadow:  20px 20px 60px #b0bcc1,
             -20px -20px 60px #eefeff;">
            <div class="jumbotron" style="border-radius: 50px;
background: #e0e4e5;
box-shadow:  20px 20px 60px #b0bcc1,
             -20px -20px 60px #eefeff;">
                <center>
                    <h2>Confirma Alta de Paciente</h2>
                    <hr>
                    <div class="thumbnail">
                        <h2>Se agrego de forma exitosa el siguiente paciente:</h2>
                        <hr>
                        <h3>Id del Paciente: <%= idPaciente%></h3>
                        <h3>Nombre Completo: <%= nombre%></h3>
                        <h3>Dias Internado: <%= diasInternado%></h3>
                        <h3>Costo: <%= costito%></h3>
                    </div>
                    <h3>Fecha y hora de sistema:  <%= new java.util.Date() %></h3>
                    <a href="index.html"><h3>Regresar a Menu Principal</h3></a>
                </center>
                <%
                    } //termina if
                %>
            </div>
            
        </div>
        
         
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>
    <script type="js/jquery-1.8.0.min"></script>        
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>