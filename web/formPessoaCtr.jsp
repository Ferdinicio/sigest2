<%@page import="sistema.Sistema"%>
<%@page import="sistema.PessoaFisica"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String nome = request.getParameter("nome");
        String rua = request.getParameter("rua");
        String funcao = request.getParameter("funcao");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        PessoaFisica pf = new PessoaFisica();
        
        pf.setNome(nome);
        pf.setRua(rua);
        pf.setLogin(login);
        pf.setSenha(senha);
        pf.setFuncao(funcao);
        
        Sistema.instancia().insertPessoaFisica(pf); //estava comantado Antonio
        
        
        
    %>
   <jsp:forward page="listPessoa.jsp"></jsp:forward>
  