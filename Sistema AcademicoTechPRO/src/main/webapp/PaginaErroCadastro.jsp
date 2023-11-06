<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ERRO</title>

<link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHiBdO9_0EswtAsWg3uLi8yDHiey1UfW9scw&usqp=CAU" type="image/png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<script>
        function goBack() {
            window.history.back();
        }
        
    </script>
    
    <style>
    body {
        background-color: red;
       ;
    }
    .error-container {
        margin: 10% auto;
        max-width: 400px;
        padding: 20px;
        background-color: white;
        border-radius: 5px;
        text-align: center;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    button {
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #f44336;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
    
</head>
<body>
	<div class="error-container">
        <h1>Erro: Campos Vazios</h1>
        <p>Por favor, preencha todos os campos obrigatórios para prosseguir com o cadastro.</p>
        <button onclick="goBack()">Voltar</button>
    </div>
   
</body>
</html>