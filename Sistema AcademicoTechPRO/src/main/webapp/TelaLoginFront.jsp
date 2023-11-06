

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="styleTelaLogin.css">
<link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHiBdO9_0EswtAsWg3uLi8yDHiey1UfW9scw&usqp=CAU" type="image/png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
</head>
<body>
	<div class="container">
	
	<img src="Logo.jpeg.jpg" alt="Logotipo da Empresa" >
		<h2> Login </h2>
		<form id="formularioLogin" action="notasTeste.jsp" method="post">
			<input type="text" placeholder="Nome ou Cpf" name="usuario" required>
			<input type="password" placeholder="Senha" name="senha" required>
			<input type="submit" value="Entrar">
		</form>
		<p>Não possui conta? <a href="Cadastro.jsp">Cadastre-se</a></p>
	</div>

	<script>
	
		document.getElementById("formularioLogin").addEventListener("submit", function(event) {
			var usuario = document.getElementsByName("usuario")[0].value;
			var senha = document.getElementsByName("senha")[0].value;

			if (usuario.length < 5) {
				alert("O nome de usuário deve ter mais de 5 caracteres");
				event.preventDefault(); 
			}
		});
	</script>
</body>
</html>