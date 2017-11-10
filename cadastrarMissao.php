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
  <title>Cadastrar Missão</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
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
          <a class="nav-link" href="charts.html">
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
              <a href="tipo1.php">Tipo 1</a>
            </li>
            <li>
              <a href="tipo2.php">Tipo 2</a>
            </li>
            <li>
              <a href="tipo3.php">Tipo 3</a>
            </li>
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
                <button class="btn btn-primary" name="busca_barra" type="submit">
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
    <div class="col-lg-12">
        <center><h1>Cadastrar Missão</h1></center>
    </div>
    <!--div class="row text-center">
        <div class="row container-fluid">
        <div class="col-lg-6 offset-md-3">
            <div class="col-lg-3">
                <b>Nome:</b>
            </div>
        </div>
        </div>

    </div-->
    <br><br><br><br><br>
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="post">
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label offset-md-2 text-right"><b>Nome</b></label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="nome" placeholder="Nome">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label offset-md-2 text-right"><b>Duração</b></label>
        <div class="col-sm-4">
          <input type="number" class="form-control" name="duracao" placeholder="Duração">
        </div>
      </div>
      <div class="form-group row">
        <div class="col-sm-4 offset-md-5">
          <button type="submit" class="btn btn-primary" name="cancelar">Cancelar</button>
          <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>
        </div>
      </div>
    </form>
    <?php
        if (isset($_POST['enviar'])) {
            $link = mysqli_connect("localhost", "root", "root", "Biometria_CIGS");
            if (!$link) {
                echo "Erro ao conectar com o banco de dados. " . mysqli_error($link);
                exit;   
            }
            $nome = $_POST['nome']; 
            $duracao = $_POST['duracao'];
            $sql = "insert into missao (nome, duracao) values ('$nome', '$duracao');";
            mysqli_query($link, $sql);
            mysqli_close($link);
        }
    ?>
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
