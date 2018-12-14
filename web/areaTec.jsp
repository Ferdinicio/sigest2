<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="sistema.Processo"%>
<%@page import="sistema.SisAtendimento"%>
<%@page import="sistema.Atendimento"%>
<%@page import="sistema.PessoaFisica"%>
<%@page import="java.util.List"%>
<%@page import="sistema.Sistema"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
       
        <title>SIGEST</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <% 
                   String cliente = request.getParameter ("tecnico");
                   String funcao;
                   funcao = "tecnico";
		List<PessoaFisica> listPessoa = Sistema.instancia().getListPessoaFisica();
		for (int i = 0; i < listPessoa.size();i++)
			{
				PessoaFisica pf = listPessoa.get(i);
                                if ((pf.getNome().equals(cliente))&& (pf.getFuncao().equals(funcao)))
                                    {
	
	%>
        
       <div class="container">
        <fieldset>
            <legend>Menu SIGEST</legend>
                  <form action="formChamado.jsp" method="get">
        <div><input type ="submit" value="Abrir Chamado">
            </form>
        <form action="Listchamado.jsp" method="get">
        <input type ="submit" value="Listar Chamados">
        </form>
          <form action="formPessoa.jsp" method="get">
        <input type ="submit" value="Cadastrar Usuário">
            </form>
          <form action="listPessoa.jsp" method="get">
        <input type ="submit" value="Listar Usuários">
            </form>
                <form action="index.html" method="get"> 
        <input type ="submit" value="Inicio"></div>
        </form>
        </fieldset>
           </div>
        <%}else{ %>
              
                
                <%} %>
		<%} %>
    </body>
</html>
