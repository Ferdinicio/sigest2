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
        <title>Atendimento em andamento SIGEST</title>
          <style>
    input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 30px;
    box-sizing: border-box;
}

    input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 30px 50px;
    margin: 8px 0;
    border: none;
    border-radius: 30px;
    cursor: pointer;
}
   input[type=submit]:hover {
    background-color: #45a049;
}
 

    div {
    border-radius: 30px;
    background-color: #f2f2f2;
    padding: 60px;
}    
    .container {
    
        
        background: cadetblue;
        display: flex;
        flex-direction: row-reverse;
        justify-content: center;
        align-items: center;
}
legend{
    
       border-radius: 30px;
    background-color: #f2f2f2;
    padding: 10px;
}
    </style>
    </head>
    <body>
        <div class="container">
             <fieldset>
            <legend>Chamados</legend>
         <form action="formAtendimento.jsp" method="get"> 
        <%
                List <Processo> listprocesso = Sistema.instancia().getListProcesso();
                for (int i=0; i < listprocesso.size(); i++){
                   Processo P = listprocesso.get(i);
                
         %>
         <legend>Chamado <br>
      <textarea name = "cliente"><%=P.getCliente()%></textarea><br>
        <textarea name = "descricao"><%=P.getDescricao()%></textarea><br>
        <textarea name = "equipamento"><%=P.getEquipamento()%></textarea><br>
        <textarea name = "observacao"><%=P.getObservacao()%></textarea><br></legend>
        <%--  <h2> Tempo inicio </h2> 
       <%=P.getTempoInicio()%>--%>
        <%}%>
        <input type ="submit" value="Atender chamado">
        
         </form>   
        <form action="index.html" method="get">
        <input type ="submit" value="Inicio">
            </form>
             </fieldset>
                </div>

    </body>
</html>
