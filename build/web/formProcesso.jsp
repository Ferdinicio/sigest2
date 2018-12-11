

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Abrir chamado</title>
    </head>
    <body>
        <form action="formProcessoCtr.jsp" method="get">  <!porque get?>
        </br></br>
        Descrição do problema:</br>
        
            <textarea name="p.descricao"></textarea></br></br>
        Cliente:</br>
        
            <input type="text" name="p.cliente"></br></br>
        Equipamento:</br>
            <input type="radio" name="p.equipamento" value="Desktop" checked> Desktop<br>
            <input type="radio" name="p.equipamento" value="Notebook" checked> Notebook<br>
            <input type="radio" name="p.equipamento" value="Servidor" checked> Servidor<br>
            <input type="radio" name="p.equipamento" value="Impressora" checked> Impressora<br>
            Outro: <input type="text" name="p.equipamento"> </br></br>
        Observação:</br>
        
            <input type="text" name="p.observacao"></textarea></br></br>
        
        <input type ="submit" value="enviar">
        </form>
    </body>
</html>
