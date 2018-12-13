<%@page import="sistema.Sistema"%>
<%@page import="sistema.PessoaFisica"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
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
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Clientes</title>
</head>
<body>
    <table id="customers">
		<tr>
			<th>Nome</th>
			<th>Rua</th>
		</tr>
	<% 
	
		List<PessoaFisica> listPessoa = Sistema.instancia().getListPessoaFisica();
		for (int i = 0; i < listPessoa.size();i++)
			{
				PessoaFisica pf = listPessoa.get(i);
		
	
	%>
		<tr>
			<td><%=pf.getNome() %></td>
			<td><%=pf.getRua() %></td>
		</tr>
		<%} %>
	</table>
        <div><form action="formPessoa.jsp" method="get">
                <input type ="submit" value="Cadastrar Nova Pessoa"></form>
        <form action="index.html" method="get">
            <input type ="submit" value="Inicio"></form></div>
</body>
</html>