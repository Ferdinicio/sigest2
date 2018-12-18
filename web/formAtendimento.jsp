

<%@page import="java.util.List"%>
<%@page import="sistema.Sistema"%>
<%@page import="sistema.PessoaFisica"%>
<%@page import="sistema.SisAtendimento"%>
<%@page import="sistema.Atendimento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Abrir chamado SIGEST</title>
          
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
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 30px;
    cursor: pointer;
}
    .container {
    
        background: cadetblue;
        display: flex;
        flex-direction: row-reverse;
        justify-content: center;
        align-items: center
}

    input[type=submit]:hover {
    background-color: #45a049;
}

    div {
    border-radius: 30px;
    background-color: #f2f2f2;
    padding: 10px;
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
            <legend>Atendimento de chamado</legend><br>
                      <% 
                
               int os = Integer.parseInt (request.getParameter ("atender"));  
		List<Atendimento> listPessoa = SisAtendimento.instancia().getListAtendimento();
		for (int i = 0; i < listPessoa.size();i++)
			{
				Atendimento pf = listPessoa.get(i);
                              if (pf.getOs() == os){

		
	
	%>
           
        <form action="formAtendimentoCtr.jsp" method="get">  
            
            <div>OS: <input type="text" value="<%=pf.getOs() %>" name="os" ></div> <br>
          
            <div>Descrição do problema: <%=pf.getDescricao() %></div><br>
       
            <div>Cliente: <%=pf.getCliente() %> </div><br>
       
            <div>Equipamento: <%=pf.getEquipamento() %></div><br>
            <div>Observação:       
                <input type="text" value="<%=pf.getObservacao() %>" name="observacao"></div> <br>
            
            <div>Status:
            <select name="status">
            
            <option value="aberto" selected>Aberto</option>
            <option value="Em Andamento" selected>Em Andamento</option>
            <option value="Encerrado" selected>Encerrado</option>
                
            </select></div><br>
            
            <div><input type ="submit" value="Atualizar">
        
            </form>
      
           <%}else{%>
           <%}%>
           <%}%>
          
                <form action="index.html" method="get">
        <input type ="submit" value="Inicio"></div>
            </form>
             
             </fieldset>
        </div>
        
    </body>
</html>

