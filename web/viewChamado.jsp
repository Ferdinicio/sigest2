<%@page import="sistema.Processo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         
               <%
          Processo p1  = (Processo) session.getAttribute("processo"); //pegar os atributos de uma sessão chamada processo(valores de p em formProcessoCtr), e colocar esses valores em p1 que é um Processo.java 
            %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGEST</title>
    </head>
    <body>
        <fieldset>
    <legend>Chamado:</legend>   
   
    <div> Descricao: <%=p1.getDescricao ()%></div> <!atraves de p1 que é um Processo.java da sessão processo, acesso o metodo getDescricao e exibo>
    <div> Inicio: <%= p1.getTempoInicio()%></div>   
        </fieldset>
    <div> <a href="index.html">inicio</a> </div>
    </body>
</html>
