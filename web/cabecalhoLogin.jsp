<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">Trabalho-DW</a>
        </div>

        <div>
            <form class="navbar-form navbar-right" role="search" action="ValidaLoginServlet" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Identificação" name="userId">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Senha" name="senha">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<br><br>
