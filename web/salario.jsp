<%-- 
    Document   : salario
    Created on : 17-may-2022, 14:31:16
    Author     : ITCA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Complete la imformacion del empleado</h1>
        <br>
        <form action="rest_pago.jsp" method="post">
            <center>
                <table width="50%" border="5">
                    <tr>
                        <th> Nombre trabajador</th>
                        <td><input type="text" name="nombre" size="5" maxlent="10"></td>
                    </tr>
                    <tr>
                        <th>Horas trabajadas</th>
                        <td><input type="text" name="bt" size="5" maxlent="10"></td>
                    </tr>
                    <tr>
                        <th>Pago por hora</th>
                        <td><input type="text" name="ph" size="5" maxlent="10"></td>
                    </tr>
                    
                        
                </table>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="calcular">
                         <input type="reset" value="eliminar">
                    </td>
                </tr>
            </table>
                        
       
    </body>
</html>
