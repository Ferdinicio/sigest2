<%-- 
    Document   : Listprocesso
    Created on : 14/11/2018, 10:37:20
    Author     : Ferdinicio
--%>



<%@page import="sistema.Processo"%>
<%@page import="sistema.SisAtendimento"%>
<%@page import="sistema.Atendimento"%>
<%@page import="java.util.List"%>
<%@page import="sistema.Sistema"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Lista de Chamados</title>
</head>
<body>
    <table id="customers">
		
	
        <tr>
                        
                        <th>OS</th>
                        <th>Cliente</th>
			<th>Descrição</th>
                        <th>Equipamento</th>
			<th>Observação</th>
		</tr>
                     <% 
                   String cliente = request.getParameter ("cliente");
		List<Atendimento> listPessoa = SisAtendimento.instancia().getListAtendimento();
		for (int i = 0; i < listPessoa.size();i++)
			{
				Atendimento pf = listPessoa.get(i);
                                if (pf.getCliente().equals(cliente)){
		
	
	%>
		<tr>
			  
		
                        <td><%=pf.getOs() %></td>
                        <td><%=pf.getCliente() %></td>
			<td><%=pf.getDescricao() %></td>
                        <td><%=pf.getEquipamento() %></td>
			<td><%=pf.getObservacao() %></td>
		</tr>
                <%}else{ %>
              
                
                <%} %>
		<%} %>
	</table>
        <div>
        <form action="index.html" method="get">
            <input type ="submit" value="Sair"></form></div>
</body>
</html>