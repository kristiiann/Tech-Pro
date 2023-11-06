<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Cadastre-se</title>

<link rel="stylesheet" type="text/css" href="styleCadastro.css">
<link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHiBdO9_0EswtAsWg3uLi8yDHiey1UfW9scw&usqp=CAU" type="image/png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<script>
    
    function validaForm() {
        var nome = document.getElementById("nome").value;
        var sobrenome = document.getElementById("sobrenome").value;
        var cpf = document.getElementById("cpf").value;
        var email = document.getElementById("email").value;
        var senha = document.getElementById("senha").value;
        var confirmaSenha = document.getElementById("confirmaSenha").value;

        if (nome === "" || sobrenome === "" || cpf === "" || email === "" || senha === "" || confirmaSenha === "") {
            window.location.href = "PaginaErroCadastro.jsp";
            return false;
       } else if (senha !== confirmaSenha) {
            alert("As senhas não correspondem. Por favor, insira senhas correspondentes.");
            return false;
        } else {
            return true;
        }
    }

    </script>
    
</head>
<body>

<div class="container">

	<form action="PaginaConfirmacao.jsp"  method = "post" onsubmit="return validaForm()">
    	<h2>Cadastro</h2>
  
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome">

        <label for="sobrenome">Sobrenome:</label>
        <input type="text" id="sobrenome" name="sobrenome">

        <label for="cpf">CPF:</label>
        <input type="text" id="cpf" name="cpf" oninput="formatarCPF(this); limitarTamanho(this)" 
       oninput="this.value = this.value.replace(/[^0-9]/g, '')" 
       onkeypress="return event.charCode >= 48 && event.charCode <= 57" 
       maxlength="11">

        

        <label for="email">Email:</label>
        <input type="email" id="email" name="email">

        <label for="senha">Senha:</label>
        <input type="password" id="senha" name="senha">

        <label for="nome">Confirme a Senha:</label>
        <input type="password" id="confirmaSenha" name="confirmaSenha">

          <input type="submit" value="Cadastrar">

	</form>
	
</div>

</body>
</html>