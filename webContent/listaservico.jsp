<%-- 
    Document   : listaservico
    Created on : 14/11/2018, 11:11:59
    Author     : lec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <select>
           <%for(int i = 0 ; i< listServico.size(); i++)
           
           servico S = listServico.get(i);
           %>
       </select>  
           
    </body>
</html>
