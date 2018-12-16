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
        
         <div class="container">
        <fieldset>
            <legend>SIGEST</legend>
                  <form action="login.jsp" method="get"> 
        <div>Login: <input type= "text" name ="login"><br>
        Senha: <input type= "text" name ="senha"></div><br>
        <input type ="submit" value="Autenticar">
        </form>
              <form action="index.html" method="get"> 
        <input type ="submit" value="Inicio">
        </form>
        </fieldset>
           </div>
        <% 
                   String login = request.getParameter("login");
                   String senha = request.getParameter("senha");
                   String funcao;
                   int certo=0;
                   funcao = "tecnico";
		List<PessoaFisica> listPessoa = Sistema.instancia().getListPessoaFisica();
		for (int i = 0; i < listPessoa.size();i++)
			{
				PessoaFisica pf = listPessoa.get(i);
                                if ((pf.getLogin().equals(login))&&(pf.getSenha().equals(senha)))
                                    {
                                        certo=1;
                                    
                                        
                                    if (pf.getFuncao().equals(funcao)){    
                                    
	
	%>
        
       <META http-equiv="refresh" content="1;URL=areaTec.jsp"> 
           
        <%}else{ %>
        <META http-equiv="refresh" content="1;URL=areaCli.jsp?cliente=<%=pf.getNome() %>"> 
       
                <%} %>
		<%}else{ %>
              
                <%} %>
                <%} %>
                 <%if(certo==0){%> 
                <div>Usuário não encontrado</div>
                 <form action="index.html" method="get"> 
        <input type ="submit" value="Inicio">
        </form>
              <%}else{%>
              <%}%>
    </body>
</html>
