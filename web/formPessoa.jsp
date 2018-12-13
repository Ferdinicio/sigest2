<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Cliente</title>

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
            <legend>Abertura de chamado</legend>
            
        <form action="formPessoaCtr.jsp" method="get"> 
        <div><input type= "text" name ="nome"></div><br>
        <div><input type= "text" name ="rua"></div><br>
        <input type ="submit" value="Registrar">
        </form>
              <form action="index.html" method="get"> 
        <input type ="submit" value="Inicio">
        </form>
            </fieldset>
	</div>
</body>
</html>