<%-- 
    Document   : amigos
    Created on : May 8, 2017, 8:43:11 PM
    Author     : Salle
--%>

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
        <%@ include file="cabecalhoLogado.jsp" %>      
        <div class="jumbotron">
            <div class="container">
                <div class="row">

                    <div class="col-md-3">
                        <%@ include file="menu.jsp" %>
                    </div>

                    <div class="col-md-9">
                        <div class="page-header">
                            <h1>Olá, <%= user.getNome()%>!</h1>
                            <h2>Estes são seus amigos:</h2>
                            <p><%= user.getAmigos()%></p>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
