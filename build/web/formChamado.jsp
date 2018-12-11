

<%@page import="java.util.List"%>
<%@page import="sistema.Sistema"%>
<%@page import="sistema.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Abrir chamado SIGEST</title>
          
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
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 30px;
    cursor: pointer;
}
    .container {
    
        background: cadetblue;
        display: flex;
        flex-direction: row-reverse;
        justify-content: center;
        align-items: center
}

    input[type=submit]:hover {
    background-color: #45a049;
}

    div {
    border-radius: 30px;
    background-color: #f2f2f2;
    padding: 10px;
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
            <legend>Abertura de chamado</legend>
        <form action="formChamadoCtr.jsp" method="get">  <!porque get?>
           
            <div>Descrição do problema:<input type="text" name="p.descricao"></div><br>
                     
           <div>Cliente: <%--  Este trecho vai trazer a lista de todos os 
clientes, fazer busca no BD e trazer pro select     
            --%>
         <%
         
                List <PessoaFisica> listpessoa = Sistema.instancia().getListPessoaFisica();
                for (int i=0; i < listpessoa.size(); i++){
                   PessoaFisica P = listpessoa.get(i);
                
        
         %>
                <select name="p.cliente"> 
                <option value="Cliente1" selected><%=P.getNome() %></option>
            </select></div>
            <%}%>
            <br>
            <div>Equipamento:<br>
            <input type="radio" name="p.equipamento" value="Desktop" checked> Desktop<br>
            <input type="radio" name="p.equipamento" value="Notebook" checked> Notebook<br>
            <input type="radio" name="p.equipamento" value="Servidor" checked> Servidor<br>
            <input type="radio" name="p.equipamento" value="Impressora" checked> Impressora<br>
            Outro: <input type="text" name="p.equipamento"></div><br>
            <div>Observação:       
            <input type="text" name="p.observacao"></div> <br>
       
            <div><input type ="submit" value="enviar">
        
            </form>
                <form action="index.html" method="get">
        <input type ="submit" value="Inicio"></div>
            </form>
             </fieldset>
        </div>
    </body>
</html>
