<%@page import="sistema.Sistema"%>
<%@page import="sistema.PessoaFisica"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String nome = request.getParameter("nome");
        String rua = request.getParameter("rua");
        
        PessoaFisica pf = new PessoaFisica();
        
        pf.setNome(nome);
        pf.setRua(rua);
        
        Sistema.instancia().insertPessoaFisica(pf); //estava comantado Antonio
        
        
        
    %>
   <jsp:forward page="listPessoa.jsp"></jsp:forward>
  