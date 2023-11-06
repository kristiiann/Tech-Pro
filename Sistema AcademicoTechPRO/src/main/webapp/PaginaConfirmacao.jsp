<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sucesso Login</title>

<link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHiBdO9_0EswtAsWg3uLi8yDHiey1UfW9scw&usqp=CAU" type="image/png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .confirmation-page {
            width: 50%;
            margin: 100px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
        }

        p {
            color: #666;
            margin-bottom: 15px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
    
</head>
<body>
 
    <div class="confirmation-page">
   
        <h1>Olá Prof°, <%out.print(request.getParameter("nome")); %>  <%out.print(request.getParameter("sobrenome")); %> </h1> 
        <p>Seu Cadastro foi efetuado com sucesso!</p>
        <p>Obrigado por escolher a Instituto TechPRO, estamos ansiosos pelas suas aulas! </p> 
        <img src="Logo.jpeg.jpg" alt="Logotipo da Empresa" >
        <p>Um e-mail de confirmação foi enviado para o seu endereço de e-mail.</p>
        <a href="TelaLoginFront.jsp">Prosseguir para a Página de Login </a>
    </div>


</body>
</html>