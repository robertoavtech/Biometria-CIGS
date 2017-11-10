<?php

//Conexão com o banco 'Biometria_CIGS'

$link = mysqli_connect("localhost", "root", "root", "Biometria_CIGS");
if (!$link) {
    echo "Não foi possível conectar ao banco! ";
    exit;
}

echo "Conexão estabelecida!";

if (isset($_POST['submit'])) {

    echo "isset OK!" ;

    $login = $_POST['usuario'];
    $senha = $_POST['senha'];
    $senhaCripto = md5($senha);

    $sql = "select * from admins where usuario = '$login' and senha = '$senhaCripto';";
    $result = mysqli_query($link, $sql);
    $count = mysqli_num_rows($result);

    if ($count == 1) {
        session_start();
        $_SESSION['usuario'] = $_POST['usuario'];
        $_SESSION['senha'] = $_POST['senha'];
        header("Location: index.php");
    } else {
        header("Location: login.html");
    }
}
?>
