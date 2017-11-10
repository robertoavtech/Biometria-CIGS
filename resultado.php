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
  <title>Resultado</title>
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
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
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
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Relatórios</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="tipo1.php">Aluno</a>
            </li>
            <li>
              <a href="tipo2.php">Missão</a>
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
          <form class="form-inline my-2 my-lg-0 mr-lg-2" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="get">
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
    <div class="row">
        <div class="col-lg-6 offset-md-3">
        <form role="form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="get">
        <br><br><br>            
            <div class="input-group">
            <!--form action="resultado.php" method="post"-->
                <input type="text" class="form-control" name="campo_busca" placeholder="Selecione um filtro...">
                <span class="input-group-btn">
                    <button class="btn btn-secondary" type="submit">Buscar</button>
                </span> 
            </div>
            <div class="input-group offset-md-3" style="padding-top:10px;">
                <div class="col-lg-3">
                <label class="radio-inline">
                    <input type="radio" name="filtro" value="1" <?php if (isset($filtro) && $filtro == "1") echo "checked";?>>Nome
                </label>
                </div>
                <div class="col-lg-3">
                <label class="radio-inline">
                    <input type="radio" name="filtro" value="2" <?php if (isset($filtro) && $filtro == "2") echo "checked";?>>OM
                </label> 
                </div>               
            </div>
            </form>
        </div>
    </div>
    <br>
    <div class="col-lg-12">
        <?php
            include ('functions.php');
            $link = mysqli_connect("localhost", "root", "root", "Biometria_CIGS");
            if (!$link) {
                echo "Erro ao conectar ao banco. " . mysqli_error($link);
                exit;
            }
            mysqli_set_charset($link, "utf8");
            $campo = '';
            $filtro = '';
            if (isset($_GET['busca_barra'])) {
                $campo = $_GET['nome'];
                $filtro = 1;
            } else {
                $campo = $_GET['campo_busca'];
                $filtro = $_GET['filtro'];
            }
            $sql_parcial = "select Usuario.id, nome, OM, PG from (Usuario, Posto_Graduacao) where ";
            if ($filtro == 1) {
                $sql = $sql_parcial . "nome like '%$campo%' and Cod_PG = Posto_Graduacao.id;";
            } else {
                $sql = $sql_parcial . "OM like '%$campo%' and Cod_PG = Posto_Graduacao.id;";
            }
            $result = mysqli_query($link, $sql);
            $table_header = "<thead>
                                <th><center>Nome</center></th>
                                <th><center>OM</center></th>
                                <th><center>Posto/Graduação</center></th>
                                <th><center>Horas de Selva</center></th>
                            </thead>";
            if (mysqli_num_rows($result) > 0) {
                $table = "<div class=\"card mb-3\">
                                <div class=\"card-header\"><center><h2><b>Resultado</b></h2></center></div>
                                <div class=\"card-body\">
                                <div class=\"table-responsive\">
                                <table class=\"table table-bordered\" id=\"dataTable\" width=\"100%\" cellspacing=\"0\">" . $table_header;
                while($row = mysqli_fetch_assoc($result)) {
                    $table = $table . "<tr><td><center><a href=\"aluno.php?id_usuario=" . $row['id'] ."&nome=" . $row['nome'] . "&om=" . $row['OM'] . "&horas_selva=" . Calculadora_Horas_da_Selva($row['id']) . "\">" . $row['nome'] . "</a></center></td><td><center>" . $row['OM'] . "</center></td><td><center>" . $row['PG'] . "</center></td><td><center>" . Calculadora_Horas_da_Selva($row['id']) . "</center></td>";
                }
                $table = $table . "</table></div></div></div>";
                echo $table;
            } else {
                echo "Nenhum resultado a mostrar.";
            }
        ?>
            
    </div>
    <!--/form-->
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © MITRE Softwares Foundation</small>
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
