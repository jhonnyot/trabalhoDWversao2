<%@page import="model.Usuario"%>
<% 
    Usuario user = (Usuario) session.getAttribute("userId");
    Usuario usuario = null;
%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="home.jsp">Trabalho-DW</a>
        </div>

        <div>
            <form class="navbar-form navbar-right" role="search" action="SairServlet" method="post">                
                <button type="submit" class="btn btn-default">Sair</button>
            </form>
        </div><!-- /.navbar-collapse -->

    </div><!-- /.container-fluid -->
</nav>
<br><br>
