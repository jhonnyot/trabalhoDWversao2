<%@page import="DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>Trabalho-DW</title>
    </head>

    <%@ include file="cabecalhoLogin.jsp" %>

    <div class="page-header">
        <h1>Sucesso!</h1>                
    </div> 
    <p>Parabéns! Seu cadastro foi efetuado.</p>
    <p>Seu número de identificação é: <%=UsuarioDAO.retornaId()%> </p> 
    <br>             


</html>
