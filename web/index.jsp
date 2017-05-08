<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>Trabalho-DW</title>
    </head>
    <body>
        <%@ include file="cabecalhoLogin.jsp" %>
        <div class="jumbotron">
            <%@ include file="erros.jsp" %>
            <div class="page-header">
                <h1>Trabalho de Desenvolvimento Web.</h1>                
            </div>             
            <p>Trabalho desenvolvido por Guilherme Cordeiro e João Sallé.</p>
            <br>
            <h2>Para cadastrar um novo usuário, clique <a href="cadastroUser.jsp">aqui</a>.</h2>
            <h3>Caso já seja cadastrado, utilize a barra de login acima.</h3>
        </div>
    </body>
</html>
