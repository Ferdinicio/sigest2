<%@page import="java.util.Date"%>
<%@page import="sistema.Sistema"%> 
<%@page import="sistema.Processo"%> 
      <%
    
String descricao = request.getParameter ("p.desinsertPessoaFisica(cricao"); //requisi��o de um parametro em string chamado p.descricao (que est� no formProcesso)
String cliente = request.getParameter ("p.cliente");
String equipamento = request.getParameter ("p.equipamento");
String observacao = request.getParameter ("p.observacao");
Processo p = new Processo (); //instancia um novo processo de Processo.java
p.setDescricao(descricao); // seta a string que eu dei request na minha descricao ques est� dentro de Processo.java 
p.setCliente(cliente);
p.setEquipamento(equipamento);
p.setObservacao(observacao);
p.setTempoInicio(new Date().getTime()); //set tamb�m um valor em tempoInicio do meu Processo.java
//Sistema.instancia().insertPessoaFisica(p); // ver tabela e criar classe adaptada
session.setAttribute("processo", p); //abre uma sessao chamada processo e o valor dela � o que setei no Processo P

%>

<jsp:forward page= "Listchamado.jsp"/> <!--  libera as coisas pra pag viewProcesso>-->
