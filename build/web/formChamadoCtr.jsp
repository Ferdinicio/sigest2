<%@page import="java.util.Date"%>
<%@page import="sistema.Atendimento"%> 

      <%
    
String descricao = request.getParameter ("p.descricao"); //requisi��o de um parametro em string chamado p.descricao (que est� no formProcesso)
String cliente = request.getParameter ("p.cliente");
String equipamento = request.getParameter ("p.equipamento");
String observacao = request.getParameter ("p.observacao");
Atendimento p = new Atendimento (); //instancia um novo processo de Processo.java
p.setDescricao(descricao); // seta a string que eu dei request na minha descricao ques est� dentro de Processo.java 
p.setCliente(cliente);
p.setEquipamento(equipamento);
p.setObservacao(observacao);
// p.setTempoInicio(new Date().getTime()); //set tamb�m um valor em tempoInicio do meu Processo.java
sistema.Sistema.instancia().insertAtendimento;// n�o sei pra que serve, se tirar n�o d� em nada
session.setAttribute("atendimento", p); //abre uma sessao chamada processo e o valor dela � o que setei no Processo P

%>

<jsp:forward page= "Listchamado.jsp"/> <!libera as coisas pra pag viewProcesso>
