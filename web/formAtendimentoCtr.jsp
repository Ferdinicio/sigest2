<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="sistema.Sistema"%> 
<%@page import="sistema.SisAtendimento"%> 
<%@page import="sistema.Atendimento"%> 
      <%
    
int os = Integer.parseInt (request.getParameter ("os"));  
      String status = request.getParameter ("status");
      String observacao = request.getParameter ("observacao");
 
            Atendimento p = new Atendimento (); 
            p.setObservacao(observacao);
            p.setStatus(status);
            p.setOs(os);
            
            java.util.Date d = new Date();

String data = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(d);
      
      p.setTempoInicio(data);
      // p.setTempoInicio(new Date().getTime()); //set também um valor em tempoInicio do meu Processo.java
            sistema.SisAtendimento.instancia().updateAtendimento(p);
            session.setAttribute("atendimento", p);
          
      %>

<jsp:forward page= "Listchamado.jsp"/>