<?php

class Database {
    public $link;

    public function __construct() {
        $this->link = mysqli_connect("localhost", "root", "root", "Biometria_CIGS");
        if (!$this->link) {
            echo '<script>window.alert(\'Erro ao conectar com o banco de dados. Contacte o administrador do sistema.\')</script>';
        }
        mysqli_set_charset($this->link, "utf8");
    }
    
    public function query($sql) {
        $sql = str_replace("''", "NULL", $sql);
        if (mysqli_query($this->link, $sql)) {
            echo '<script>window.alert(\'Operação concluída com sucesso!\')</script>';
            return true;
        } else {
            echo '<script>window.alert(\'Erro na operação\')</script>';
            return false;
        }
    }

    public function select($table, $filtro) {
        if ($filtro != '') {
            $sql = "select * from $table;";
        } else {
            $sql = "select * from $table where $filtro;";
        }
        $result = mysqli_query($this->link, $sql);
        if ($result) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        } else {
            echo "Erro em: " . $sql;
        }
    }
        
            
        

    public function nextId() {
        $sql = "select max(cod) as cod from titular;";
        $result = mysqli_query($sql);
        $row = mysqli_fetch_assoc($result);
        $nextId = $row['cod'];
        return $nextId;
    }
    
    public function uploadPhoto($input1, $input2) {
        $target_dir = '/var/www/html/ccfexBeta/fotos/';
        $target_file = $target_dir . basename($input1);
        move_uploaded_file($input2, $targe_file);
        echo "<script>console.log('" . print_r($FILES) . "')</script>";
    } 
}

?>
