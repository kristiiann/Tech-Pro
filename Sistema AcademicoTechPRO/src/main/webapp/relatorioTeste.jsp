<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Relatório Alunos</title>
    
    <link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHiBdO9_0EswtAsWg3uLi8yDHiey1UfW9scw&usqp=CAU" type="image/png">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    
    <style>
        table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        h1 {
            text-align: center;
        }

        .aprovado {
            color: green;
        }

        .reprovado {
            color: red;
        }

        .reprovado-falta {
            color: orange;
        }
        
         .botao-sair {
      background-color: red; 
      color: white; 
      border: none;
      padding: 10px ; 
      cursor: pointer; 
      margin: 0 auto;
      padding: 10px;
      border-radius: 5px;
    }

   
    .botao-sair:hover {
      background-color: darkred;
    }
    </style>
    
</head>
<body>
<button type="button" class="botao-sair" onclick="voltarParaNotaseFaltas()">Voltar</button>
    <h1>Relatório de Notas e Faltas dos Alunos</h1>

    <table>
        <tr>
            <th>Aluno</th>
            <th>Nota</th>
            <th>Faltas</th>
            <th>Situação</th>
        </tr>
        
        <tr>
            <td>Carlos Henrique</td>
            <td><%= (request.getParameter("notaAluno1") != null && !request.getParameter("notaAluno1").isEmpty()) ? request.getParameter("notaAluno1") : "ALUNO SEM NOTA" %></td>
            <td><%= (request.getParameter("faltasAluno1") != null && !request.getParameter("faltasAluno1").isEmpty()) ? request.getParameter("faltasAluno1") : "ALUNO SEM FALTA" %></td>
            <td>
                <span class="<%= ((request.getParameter("notaAluno1") != null && !request.getParameter("notaAluno1").isEmpty() && isNumeric(request.getParameter("notaAluno1")) && Double.parseDouble(request.getParameter("notaAluno1")) >= 6) && (request.getParameter("faltasAluno1") != null && !request.getParameter("faltasAluno1").isEmpty() && isNumeric(request.getParameter("faltasAluno1")) && Double.parseDouble(request.getParameter("faltasAluno1")) <= 5)) ? "aprovado" : (request.getParameter("faltasAluno1") != null && !request.getParameter("faltasAluno1").isEmpty() && isNumeric(request.getParameter("faltasAluno1")) && Double.parseDouble(request.getParameter("faltasAluno1")) > 5) ? "reprovado-falta" : "reprovado" %>">
                    <%= ((request.getParameter("notaAluno1") != null && !request.getParameter("notaAluno1").isEmpty() && isNumeric(request.getParameter("notaAluno1")) && Double.parseDouble(request.getParameter("notaAluno1")) >= 6) && (request.getParameter("faltasAluno1") != null && !request.getParameter("faltasAluno1").isEmpty() && isNumeric(request.getParameter("faltasAluno1")) && Double.parseDouble(request.getParameter("faltasAluno1")) <= 5)) ? "Aprovado" : (request.getParameter("faltasAluno1") != null && !request.getParameter("faltasAluno1").isEmpty() && isNumeric(request.getParameter("faltasAluno1")) && Double.parseDouble(request.getParameter("faltasAluno1")) > 5) ? "Reprovado por Falta" : "Reprovado" %>
                </span>
            </td>
        </tr>
        
        <tr>
            <td>Charles Valdeci</td>
            <td><%= (request.getParameter("notaAluno2") != null && !request.getParameter("notaAluno2").isEmpty()) ? request.getParameter("notaAluno2") : "ALUNO SEM NOTA" %></td>
            <td><%= (request.getParameter("faltasAluno2") != null && !request.getParameter("faltasAluno2").isEmpty()) ? request.getParameter("faltasAluno2") : "ALUNO SEM FALTA" %></td>
            <td>
                <span class="<%= ((request.getParameter("notaAluno2") != null && !request.getParameter("notaAluno2").isEmpty() && isNumeric(request.getParameter("notaAluno2")) && Double.parseDouble(request.getParameter("notaAluno2")) >= 6) && (request.getParameter("faltasAluno2") != null && !request.getParameter("faltasAluno2").isEmpty() && isNumeric(request.getParameter("faltasAluno2")) && Double.parseDouble(request.getParameter("faltasAluno2")) <= 5)) ? "aprovado" : (request.getParameter("faltasAluno2") != null && !request.getParameter("faltasAluno2").isEmpty() && isNumeric(request.getParameter("faltasAluno2")) && Double.parseDouble(request.getParameter("faltasAluno2")) > 5) ? "reprovado-falta" : "reprovado" %>">
                    <%= ((request.getParameter("notaAluno2") != null && !request.getParameter("notaAluno2").isEmpty() && isNumeric(request.getParameter("notaAluno2")) && Double.parseDouble(request.getParameter("notaAluno2")) >= 6) && (request.getParameter("faltasAluno2") != null && !request.getParameter("faltasAluno2").isEmpty() && isNumeric(request.getParameter("faltasAluno2")) && Double.parseDouble(request.getParameter("faltasAluno2")) <= 5)) ? "Aprovado" : (request.getParameter("faltasAluno2") != null && !request.getParameter("faltasAluno2").isEmpty() && isNumeric(request.getParameter("faltasAluno2")) && Double.parseDouble(request.getParameter("faltasAluno2")) > 5) ? "Reprovado por Falta" : "Reprovado" %>
                </span>
            </td>
        </tr>
        
        <tr>
            <td>Deivid Cardoso</td>
            <td><%= (request.getParameter("notaAluno3") != null && !request.getParameter("notaAluno3").isEmpty()) ? request.getParameter("notaAluno3") : "ALUNO SEM NOTA" %></td>
            <td><%= (request.getParameter("faltasAluno3") != null && !request.getParameter("faltasAluno3").isEmpty()) ? request.getParameter("faltasAluno3") : "ALUNO SEM FALTA" %></td>
            <td>
                <span class="<%= ((request.getParameter("notaAluno3") != null && !request.getParameter("notaAluno3").isEmpty() && isNumeric(request.getParameter("notaAluno3")) && Double.parseDouble(request.getParameter("notaAluno3")) >= 6) && (request.getParameter("faltasAluno3") != null && !request.getParameter("faltasAluno3").isEmpty() && isNumeric(request.getParameter("faltasAluno3")) && Double.parseDouble(request.getParameter("faltasAluno3")) <= 5)) ? "aprovado" : (request.getParameter("faltasAluno3") != null && !request.getParameter("faltasAluno3").isEmpty() && isNumeric(request.getParameter("faltasAluno3")) && Double.parseDouble(request.getParameter("faltasAluno3")) > 5) ? "reprovado-falta" : "reprovado" %>">
                    <%= ((request.getParameter("notaAluno3") != null && !request.getParameter("notaAluno3").isEmpty() && isNumeric(request.getParameter("notaAluno3")) && Double.parseDouble(request.getParameter("notaAluno3")) >= 6) && (request.getParameter("faltasAluno3") != null && !request.getParameter("faltasAluno3").isEmpty() && isNumeric(request.getParameter("faltasAluno3")) && Double.parseDouble(request.getParameter("faltasAluno3")) <= 5)) ? "Aprovado" : (request.getParameter("faltasAluno3") != null && !request.getParameter("faltasAluno3").isEmpty() && isNumeric(request.getParameter("faltasAluno3")) && Double.parseDouble(request.getParameter("faltasAluno3")) > 5) ? "Reprovado por Falta" : "Reprovado" %>
                </span>
            </td>
        </tr>
        
        <tr>
            <td>Gabriel de Souza</td>
            <td><%= (request.getParameter("notaAluno4") != null && !request.getParameter("notaAluno4").isEmpty()) ? request.getParameter("notaAluno4") : "ALUNO SEM NOTA" %></td>
            <td><%= (request.getParameter("faltasAluno4") != null && !request.getParameter("faltasAluno4").isEmpty()) ? request.getParameter("faltasAluno4") : "ALUNO SEM NOTA" %></td>
            <td>
                <span class="<%= ((request.getParameter("notaAluno4") != null && !request.getParameter("notaAluno4").isEmpty() && isNumeric(request.getParameter("notaAluno4")) && Double.parseDouble(request.getParameter("notaAluno4")) >= 6) && (request.getParameter("faltasAluno4") != null && !request.getParameter("faltasAluno4").isEmpty() && isNumeric(request.getParameter("faltasAluno4")) && Double.parseDouble(request.getParameter("faltasAluno4")) <= 5)) ? "aprovado" : (request.getParameter("faltasAluno4") != null && !request.getParameter("faltasAluno4").isEmpty() && isNumeric(request.getParameter("faltasAluno4")) && Double.parseDouble(request.getParameter("faltasAluno4")) > 5) ? "reprovado-falta" : "reprovado" %>">
                    <%= ((request.getParameter("notaAluno4") != null && !request.getParameter("notaAluno4").isEmpty() && isNumeric(request.getParameter("notaAluno4")) && Double.parseDouble(request.getParameter("notaAluno4")) >= 6) && (request.getParameter("faltasAluno4") != null && !request.getParameter("faltasAluno4").isEmpty() && isNumeric(request.getParameter("faltasAluno4")) && Double.parseDouble(request.getParameter("faltasAluno4")) <= 5)) ? "Aprovado" : (request.getParameter("faltasAluno4") != null && !request.getParameter("faltasAluno4").isEmpty() && isNumeric(request.getParameter("faltasAluno4")) && Double.parseDouble(request.getParameter("faltasAluno4")) > 5) ? "Reprovado por Falta" : "Reprovado" %>
                </span>
            </td>
        </tr>
        
        <tr>
            <td>Kristian Oliveira</td>
            <td><%= (request.getParameter("notaAluno5") != null && !request.getParameter("notaAluno5").isEmpty()) ? request.getParameter("notaAluno5") : "ALUNO SEM NOTA" %></td>
            <td><%= (request.getParameter("faltasAluno5") != null && !request.getParameter("faltasAluno5").isEmpty()) ? request.getParameter("faltasAluno5") : "ALUNO SEM FALTA" %></td>
            <td>
                <span class="<%= ((request.getParameter("notaAluno5") != null && !request.getParameter("notaAluno5").isEmpty() && isNumeric(request.getParameter("notaAluno5")) && Double.parseDouble(request.getParameter("notaAluno5")) >= 6) && (request.getParameter("faltasAluno5") != null && !request.getParameter("faltasAluno5").isEmpty() && isNumeric(request.getParameter("faltasAluno5")) && Double.parseDouble(request.getParameter("faltasAluno5")) <= 5)) ? "aprovado" : (request.getParameter("faltasAluno5") != null && !request.getParameter("faltasAluno5").isEmpty() && isNumeric(request.getParameter("faltasAluno5")) && Double.parseDouble(request.getParameter("faltasAluno5")) > 5) ? "reprovado-falta" : "reprovado" %>">
                    <%= ((request.getParameter("notaAluno5") != null && !request.getParameter("notaAluno5").isEmpty() && isNumeric(request.getParameter("notaAluno5")) && Double.parseDouble(request.getParameter("notaAluno5")) >= 6) && (request.getParameter("faltasAluno5") != null && !request.getParameter("faltasAluno5").isEmpty() && isNumeric(request.getParameter("faltasAluno5")) && Double.parseDouble(request.getParameter("faltasAluno5")) <= 5)) ? "Aprovado" : (request.getParameter("faltasAluno5") != null && !request.getParameter("faltasAluno5").isEmpty() && isNumeric(request.getParameter("faltasAluno5")) && Double.parseDouble(request.getParameter("faltasAluno5")) > 5) ? "Reprovado por Falta" : "Reprovado" %>
                </span>
            </td>
        </tr>
    </table>

    <%!
        public static boolean isNumeric(String str) {
            if (str == null) {
                return false;
            }
            try {
                double d = Double.parseDouble(str);
            } catch (NumberFormatException nfe) {
                return false;
            }
            return true;
        }
    %>
 
 <script>
 function voltarParaNotaseFaltas() {
     window.location.href = "notasTeste.jsp";
 }
 </script>
</body>
</html>