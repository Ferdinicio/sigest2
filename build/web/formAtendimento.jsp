<%-- 
    Document   : formAtendimento
    Created on : 27/11/2018, 22:56:47
    Author     : Ferdinicio
Formulario que lista os atendimentos abertos e possibilita o atendimento do mesmo
--%>


<%@page import="sistema.Processo"%>
<%@page import="java.util.List"%>
<%@page import="sistema.Sistema"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atendimento em andamento</title>
    </head>
    <body>
        Atender Chamado
        <form action="formAtender.jsp" method="get"> 
        <%
                List <Processo> listprocesso = Sistema.instancia().getListProcesso();
                for (int i=0; i < listprocesso.size(); i++){
                    Processo P = listprocesso.get(i);
                
        %>
        <textarea name = "cliente"><%=P.getCliente()%></textarea></br>
        <textarea name = "descricao"><%=P.getDescricao()%></textarea></br>
        <input type ="submit" value="Atender">
        <%--  <h2> Tempo inicio </h2> 
       <%=P.getTempoInicio()%>--%>
        <%}%>
       </form>
    </body>
</html>
