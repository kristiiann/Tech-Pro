<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Notas e Faltas dos Alunos</title>
    <link rel="stylesheet" type="text/css" href="styleNotaseFaltas.css">
    <link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHiBdO9_0EswtAsWg3uLi8yDHiey1UfW9scw&usqp=CAU" type="image/png">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    
    <style>
        .relatorio {
    float: right;
    margin-right: 20px;
}
     
.botao-sair {
      background-color: red; 
      color: white;
      border: none; 
      padding: 5px 10px; 
      border-radius: 3px;
      cursor: pointer;
    }

    
    .botao-sair:hover {
      background-color: darkred; 
    }
    
		#botaoConfirmar{
			background-color: #98FB98;
			color: #fff;
            padding: 5px 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            align-items:flex-end ;
            text-align:right;
		}
		
#botaoConfirmar:hover
{
	background-color: #00FF00;
	color: white;
	cursor: pointer;
}


#botaoRelatorio{
	background-color: #98FB98;
	color: #fff;
    padding: 5px 10px;
    border: none;
     border-radius: 3px;
            cursor: pointer;
            align-items:flex-end ;
            text-align:right;
		}
		
#botaoRelatorio:hover
{
	background-color: #00FF00;
	color: white;
	cursor: pointer;

    </style>
</head>
<body>
    <div class="container">
        <button type="button" id="botaoRelatorio" class="relatorio" onclick="prosseguirParaRelatorio()">Prosseguir para Relatório</button>
        <button type="button" class="botao-sair" onclick="voltarParaLogin()">Sair</button>
        <h1>Notas e Faltas dos Alunos</h1>

        <form method="post" action="relatorioTeste.jsp">
            <table >
                <tr>
                    <th>Nomes</th>
                    <th> RGM </th>
                    <th> Nota</th>
                    <th>Faltas</th>
                </tr>
                <tr>
                    <td> Carlos Henrique </td>
                    <td>726598745</td>
                    <td id="notaAluno1" contenteditable="false">8</td>
                    <td id="faltasAluno1" contenteditable="false">1</td>
                </tr>
                
                <tr>
                <td>Charles Valdeci</td>
			   <td>72654893</td>
			   <td id="notaAluno2" contenteditable="false"> 7 </td>
			   <td id="faltasAluno2" contenteditable="false"> 2 </td>
			   
			</tr>
			
			<tr>
            <td>Deivid Cardoso</td>
            <td>72654893</td>
            <td id="notaAluno3" contenteditable="false"> 6 </td>
			<td id="faltasAluno3" contenteditable="false"> 3 </td>
        </tr>
        
        <tr>
            <td>Gabriel de Souza</td>
            <td>72648854</td>
            <td id="notaAluno4" contenteditable="false">8.5</td>
            <td id="faltasAluno4" contenteditable="false">4</td>
        </tr>
        
        <tr>
            <td>Kristian Oliveira</td>
            <td>72787954</td>
            <td id="notaAluno5" contenteditable="false">9</td>
            <td id="faltasAluno5" contenteditable="false">1</td>
        </tr>
          
            </table>

            <div class="container-botoes">
                <button type="button" id="botaoEditar" class="editar" onclick="habilitarEdicao()"> Editar </button>
                <button type="button" id="botaoConfirmar" class="confirmar" onclick="desabilitarEdicao()" style="display: none;"> Confirmar </button>
            </div>
        </form>

  <script>

        let edicaoFeita = false;
		
        // PERMITE A EDIÇÃO DOS ATRIBUTOS DOS ALUNOS
        const habilitarEdicao = () => {
            document.getElementById('notaAluno1').setAttribute('contenteditable', 'true');
            document.getElementById('faltasAluno1').setAttribute('contenteditable', 'true');
            
            document.getElementById('notaAluno2').setAttribute('contenteditable', 'true');
            document.getElementById('faltasAluno2').setAttribute('contenteditable', 'true');

            document.getElementById('notaAluno3').setAttribute('contenteditable', 'true');
            document.getElementById('faltasAluno3').setAttribute('contenteditable', 'true');
            
            document.getElementById('notaAluno4').setAttribute('contenteditable', 'true');
            document.getElementById('faltasAluno4').setAttribute('contenteditable', 'true');
            
            document.getElementById('notaAluno5').setAttribute('contenteditable', 'true');
            document.getElementById('faltasAluno5').setAttribute('contenteditable', 'true');
            
            document.getElementById('botaoEditar').style.display = 'none';
            document.getElementById('botaoConfirmar').style.display = 'inline';
        };
		
        // DESABILITA AS EDIÇÃO DOS ALUNOS QUANDO NÃO CLICAR NO BOTÃO DE EDITAR
        const desabilitarEdicao = () => {
            const notaAluno1 = document.getElementById('notaAluno1').innerText;
            const faltasAluno1 = document.getElementById('faltasAluno1').innerText;
            document.getElementById('notaAluno1').setAttribute('contenteditable', 'false');
            document.getElementById('faltasAluno1').setAttribute('contenteditable', 'false');

            const notaAluno2 = document.getElementById('notaAluno2').innerText;
            const faltasAluno2 = document.getElementById('faltasAluno2').innerText;
            document.getElementById('notaAluno2').setAttribute('contenteditable', 'false');
            document.getElementById('faltasAluno2').setAttribute('contenteditable', 'false');
            
            const notaAluno3 = document.getElementById('notaAluno3').innerText;
            const faltasAluno3 = document.getElementById('faltasAluno3').innerText;
            document.getElementById('notaAluno3').setAttribute('contenteditable', 'false');
            document.getElementById('faltasAluno3').setAttribute('contenteditable', 'false');
            
            const notaAluno4 = document.getElementById('notaAluno4').innerText;
            const faltasAluno4 = document.getElementById('faltasAluno4').innerText;
            document.getElementById('notaAluno4').setAttribute('contenteditable', 'false');
            document.getElementById('faltasAluno4').setAttribute('contenteditable', 'false');
            
            const notaAluno5 = document.getElementById('notaAluno5').innerText;
            const faltasAluno5 = document.getElementById('faltasAluno5').innerText;
            document.getElementById('notaAluno5').setAttribute('contenteditable', 'false');
            document.getElementById('faltasAluno5').setAttribute('contenteditable', 'false');

            edicaoFeita = true;
         
        };

            
		// FUNÇÃO VOLTADA PARA QAUNDO CLICAR NO BOTÃO VOLTAR, RETORNAR PARA A TELA DE LOGI 
        function voltarParaLogin() {
            window.location.href = "TelaLoginFront.jsp";
        }

        function prosseguirParaRelatorio() {
            if (edicaoFeita) {
                const notaAluno1 = document.getElementById('notaAluno1').innerText;
                const faltasAluno1 = document.getElementById('faltasAluno1').innerText;
                
                const notaAluno2 = document.getElementById('notaAluno2').innerText;
                const faltasAluno2 = document.getElementById('faltasAluno2').innerText;
                
                const notaAluno3 = document.getElementById('notaAluno3').innerText;
                const faltasAluno3 = document.getElementById('faltasAluno3').innerText;
                
                const notaAluno4 = document.getElementById('notaAluno4').innerText;
                const faltasAluno4 = document.getElementById('faltasAluno4').innerText
                ;
                const notaAluno5 = document.getElementById('notaAluno5').innerText;
                const faltasAluno5 = document.getElementById('faltasAluno5').innerText;
                
                var url = "relatorioTeste.jsp?notaAluno1=" + notaAluno1 + "&faltasAluno1=" + faltasAluno1 +
                "&notaAluno2=" + notaAluno2 + "&faltasAluno2=" + faltasAluno2 + "&notaAluno3=" + notaAluno3 + 
                "&faltasAluno3=" + faltasAluno3 + "&notaAluno4=" + notaAluno4 + "&faltasAluno4=" + faltasAluno4 
                + "&notaAluno5=" + notaAluno5 + "&faltasAluno5=" + faltasAluno5;
                window.location.href = url;
                

            } else {
                alert("Nenhum aluno foi editado. Edite pelo menos um aluno antes de prosseguir para o relatorio.");
            }
        }

        function verificarAprovacao(nota) {
            if (parseFloat(nota) >= 6) {
                return "Aprovado";
            } else {
                return "Reprovado";
            }
        }
        
        document.getElementById('notaAluno1').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const nota = document.getElementById('notaAluno1').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(nota) > 10) {
                e.preventDefault();
            }
        });
        document.getElementById('faltasAluno1').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const faltas = document.getElementById('faltasAluno1').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(faltas) > 60) {
                e.preventDefault();
            }
        });

        
        //
        document.getElementById('notaAluno2').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const nota = document.getElementById('notaAluno2').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(nota) > 10) {
                e.preventDefault();
            }
        });
        document.getElementById('faltasAluno2').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const faltas = document.getElementById('faltasAluno2').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(faltas) > 60) {
                e.preventDefault();
            }
        });
        
        //
        document.getElementById('notaAluno3').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const nota = document.getElementById('notaAluno3').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(nota) > 10) {
                e.preventDefault();
            }
        });
        document.getElementById('faltasAluno3').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const faltas = document.getElementById('faltasAluno3').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(faltas) > 60) {
                e.preventDefault();
            }
        });
        
        //
        document.getElementById('notaAluno4').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const nota = document.getElementById('notaAluno4').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(nota) > 10) {
                e.preventDefault();
            }
        });
        document.getElementById('faltasAluno4').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const faltas = document.getElementById('faltasAluno4').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(faltas) > 60) {
                e.preventDefault();
            }
        });
   
        
        //
        document.getElementById('notaAluno5').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const nota = document.getElementById('notaAluno5').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(nota) > 10) {
                e.preventDefault();
            }
        });
        document.getElementById('faltasAluno5').addEventListener('keypress', function (e) {
            const keyCode = e.which ? e.which : e.keyCode;
            const faltas = document.getElementById('faltasAluno5').innerText + String.fromCharCode(keyCode);
            if (keyCode < 48 || keyCode > 57 || parseFloat(faltas) > 60) {
                e.preventDefault();
            }
        });
        
    </script>
    </div>
</body>
</html>