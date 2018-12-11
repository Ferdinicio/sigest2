<%-- 
    Document   : Listprocesso
    Created on : 14/11/2018, 10:37:20
    Author     : lec
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
        <%
                List <Processo> listprocesso = Sistema.instancia().getListProcesso();
                for (int i=0; i < listprocesso.size(); i++){
                    Processo P = listprocesso.get(i);
                
        %>
        <textarea name = "cliente"><%=P.getCliente()%></textarea></br>
        <textarea name = "descricao"><%=P.getDescricao()%></textarea></br>
        <textarea name = "equipamento"><%=P.getEquipamento()%></textarea></br>
        <textarea name = "observacao"><%=P.getObservacao()%></textarea></br>
        <%--  <h2> Tempo inicio </h2> 
       <%=P.getTempoInicio()%>--%>
        <%}%>
       
    </body>
</html>
