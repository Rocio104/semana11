<%-- 
    Document   : respago
    Created on : 17-may-2022, 14:32:23
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
        <%
            String nombre = request.getParameter("nombrer");
            String senal = request.getParameter("calc");
            double ht = Double.parseDouble(request.getParameter("ht"));
            double ph = Double.parseDouble(request.getParameter("ph"));
        
        
        
        double salario = 0;
        double renta = 0;
        double pago =0;
        
        if (senal ! =null && nombre!="") {
            
            salario = ht * ph;
            renta = salario * 0.1;
            pago = salario - renta;
            
            pago = slario m- renta;
        }
        %>
    <center>
        <table border="1">
            <tr>
                <th>Su nombre es:</th>
                <td><%= nombre %></td>              
            </tr>
            <tr>
                <th>Su salario es: </th>
                <td><%= pago %></td>
            </tr>
            <tr>
                <th> El descuento aplicado es:</th>
            </tr>
        
   
    </body>
</html>
