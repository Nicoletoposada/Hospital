<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    </head>
    
    <body>
        <h1>Seleccione el centro en el que quiere consultar informacion</h1>
        <%@ page import="paquete.Medico"%>
        <%@ page import="paquete.Paciente"%>
        <%@ page import="paquete.IMedico"%>
        <%@ page import="paquete.IPaciente"%>
        <%@ page import="paquete.Hospital"%>
        <%@ page import="paquete.Persona" %>       
        <% String c1="";
        String c2="";
        String c3="";
        String c4="";
        String c5="";
        Hospital h = new Paciente();
        Persona ip = new IPaciente();       
        if (request.getParameter("CDS").equals("1")) {
            c1 += ip.persona(h.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));           
        }
        if (request.getParameter("CDS").equals("2")) {
            c2 += ip.persona(h.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
        }
        if (request.getParameter("CDS").equals("3")) {
            c3 += ip.persona(h.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
        }
        if (request.getParameter("CDS").equals("4")) {
            c4 += ip.persona(h.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
        }
        if (request.getParameter("CDS").equals("5")) {
            c5 += ip.persona(h.Datos(request.getParameter("Codigo"), request.getParameter("Apellidos"), request.getParameter("Nombres"), request.getParameter("Sexo"), request.getParameter("Direccion"), request.getParameter("Mot"), request.getParameter("Medico"), request.getParameter("Fecha")));
        } %>       
         
        <button id="1" onclick="v1()">1</button>
        <button id="2" onclick="v2()">2</button>
        <button id="3" onclick="v3()">3</button>
        <button id="4" onclick="v4()">4</button>
        <button id="5" onclick="v5()">5</button><br/> 
        <button id ="bp" onclick="p()">Paciente</button>
        <button id ="bm" onclick="p()">Medico</button>
        <p id="rp"></p>
        <p id="rm"></p>
        <script>
            $('#bp').hide();
            $('#bm').hide();
            $('#rp').hide();
            $('#rm').hide();
            $(function(){
                $('#1').click(function(){
                    $('#bp').show();
                    $('#bm').show();
                    $('#rp').hide();
                    $('#rm').hide();
                    document.getElementById("rp").innerHTML = "Pacientes centro 1";
                    document.getElementById("rm").innerHTML = "Doctores centro 1";
                });                
            });
            $(function(){
                $('#2').click(function(){
                    $('#bp').show();
                    $('#bm').show();
                    $('#rp').hide();
                    $('#rm').hide();
                    document.getElementById("rp").innerHTML = "Pacientes centro 2";
                    document.getElementById("rm").innerHTML = "Doctores centro 2";
                });                
            });
            $(function(){
                $('#3').click(function(){
                    $('#bp').show();
                    $('#bm').show();
                    $('#rp').hide();
                    $('#rm').hide();
                    document.getElementById("rp").innerHTML = "Pacientes centro 3";
                    document.getElementById("rm").innerHTML = "Doctores centro 3";
                });                
            });
            $(function(){
                $('#4').click(function(){
                    $('#bp').show();
                    $('#bm').show();
                    $('#rp').hide();
                    $('#rm').hide();
                    document.getElementById("rp").innerHTML = "Pacientes centro 4";
                    document.getElementById("rm").innerHTML = "Doctores centro 4";
                });                
            });
            $(function(){
                $('#5').click(function(){
                    $('#bp').show();
                    $('#bm').show();
                    $('#rp').hide();
                    $('#rm').hide();
                    document.getElementById("rp").innerHTML = "Pacientes centro 5";
                    document.getElementById("rm").innerHTML = "Doctores centro 5";
                });                
            });
            $(function(){
                $('#bp').click(function(){
                    $('#rp').show();
                    $('#rm').hide();
                });                
            });
            $(function(){
                $('#bm').click(function(){
                    $('#rm').show();
                    $('#rp').hide();
                });                
            });
        </script>
        <p id ="r" ><%out.print(c1);%></p>
        <script>
            $('#r').hide();
            $(function(){
                $('#bp').click(function(){
                    $('#r').show();                   
                });                
            });
        </script> 
    </body>
</html>
