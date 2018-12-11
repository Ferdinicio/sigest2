<%@page import="sistema.Sistema"%>
<%@page import="sistema.PessoaFisica"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
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
</body>
</html>