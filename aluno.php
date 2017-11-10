<!DOCTYPE html>

<?php
    session_start();
    if (!isset($_SESSION['usuario'])) {
        header("Location: login.html");
    }
?>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Alunos</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <style>
    .valor {
        text-align: center;
    }
  </style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.php">HS - CIGS</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Home">
          <a class="nav-link" href="index.php">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Home</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Missão">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
            <!--i class="fa fa-fw fa-file"></i-->
            <i class="fa fa-fw fa-road"></i>
            <span class="nav-link-text">Missão</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseMulti">
            <li>
              <a href="cadastrarMissao.php">Cadastrar</a>
            </li>
            <li>
              <a href="atualizarMissao.php">Atualizar</a>
            </li>
          </ul>
        </li>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Estatísticas">
          <a class="nav-link" href="estatiscas.php">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Estatísticas</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Relatórios">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Relatórios</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="tipo1.php">Aluno</a>
            </li>
            <li>
              <a href="tipo2.php">Missao</a>
            </li>
            <!--li>
              <a href="tipo3.php">Tipo 3</a>
            </li-->
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2" action="resultado.php" method="get">
            <div class="input-group">
              <input class="form-control" type="text" name="nome" placeholder="Busca por nome...">
              <span class="input-group-btn">
                <button class="btn btn-primary" type="submit" name="busca_barra">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a href="sair.php" class="nav-link">
            <i class="fa fa-fw fa-sign-out"></i>Sair</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <!--ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Home</a>
        </li>
        <li class="breadcrumb-item active">My Dashboard</li>
      </ol-->
    <div class="row">
        <div class="col-lg-12">
            <center><h2 class="page-header">
                Perfil do Aluno
            </h2></center>             
        </div>
        <br><br>
    </div>
    <br><br>
    <div class="row offset-md-2">
        <div class"col-lg-4">
        <?php
            $link = mysqli_connect("localhost", "root", "root", "Biometria_CIGS");
            if (!$link) {
                echo "Erro no banco de dados. " . mysqli_error($link);
            }
            $cod = $_GET['id_usuario'];
            $sql = "select Usuario.nome, OM, PG, id_missao, missao.nome, data, id_tipo from (Usuario, Evento, missao, Posto_Graduacao) where Usuario.id = id_usuario and Cod_PG = Posto_Graduacao.id and cod_missao = id_missao and Usuario.id = '$cod' order by data";
            $result = mysqli_query($link, $sql);
            echo "  
            <table class=\"table table-bordered table-hover table-striped\">
                <tr>
                    <td><b>Código:</b></td>
                    <td>123</td>
                    <td><b>Nome:</b></td>
                    <td style=\"width: 550px;\" colspan=\"4\"><center>André Badenas</center></td>                   
                </tr>
                <tr>
                    <td colspan=\"2\"><b>Posto/Graduação:</b></td>
                    <td style=\"150px\"><center>Outros</center></td>
                    <td><center><b>OM:</b></center></td>
                    <td>IME</td>
                    <td><center><b>Horas de Selva:</center></b></td>
                    <td><center>60</center></td>
                </tr>
                <tr>
                    <td colspan=\"7\"><center><b>MISSÔES</b></td>
                </tr>
                <tr>
                    <td colspan=\"1\"><center><b>ID</b></center></td>
                    <td colspan=\"2\"><center><b>Nome</b></center></td>
                    <td colspan=\"2\"><center><b>Entrada</b></center></td>
                    <td colspan=\"2\"><center><b>Saída</b></center></td>
                    <!--td colspan=\"1\"><center><b>(H)</b></center></br-->
                </tr>
                <tr>
                    <td class=\"valor\">12</td>
                    <td colspan=\"2\" class=\"valor\">CiOPEsp</td>
                    <td colspan=\"2\" class=\"valor\">12/01/2017</td>
                    <td colspan=\"2\" class=\"valor\">12/01/2314</td>
                    <!--td>70</td-->

                </tr>
            </table>";    
        ?>
        </div>
    </div>
    <br><br><br>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Desenvolvido na Operação Ricardo Franco 2017</small>
        </div>
      </div>
    </footer>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>
