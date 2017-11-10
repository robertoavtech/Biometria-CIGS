<?php
    function Calculadora_Horas_da_Selva($id_usuario) {
        $link = mysqli_connect("localhost", "root", "root", "Biometria_CIGS");
        if (!$link) {
            echo "Erro ao conectar com o banco." . mysqli_error($link);
            exit;
        }
        $sql = "select id_tipo, data from Evento where id_usuario = '$id_usuario';";
        $result = mysqli_query($link, $sql);
        $num_rows = mysqli_num_rows($result);
        $horas_selva = 0;
        $Array_da_Selva = array();
        $contador = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $Array_da_Selva[$contador] = $row['data'];
            $contador = $contador + 1;            
        }
        $sql_timestampdiff = "select timestampdiff(second, '";
        $tamanho_Array_da_Selva = count($Array_da_Selva);
        for ($x = 0; $x < $tamanho_Array_da_Selva - 1; $x = $x + 2) {
            $sql_Onca = $sql_timestampdiff . $Array_da_Selva[$x] . "', '" . $Array_da_Selva[$x + 1] . "') as diff;";
            $result = mysqli_query($link, $sql_Onca);
            $row = mysqli_fetch_assoc($result);
            $horas_selva = $horas_selva + $row['diff'];
        }
        return $horas_selva;
    }

    function Horas_de_Selva_OM() {
        $link = mysqli_connect("localhost", "root", "root", "Biometria_CIGS");
        if (!$link) {
            echo "Erro ao conectar com o banco." . mysqli_error($link);
            exit;
        }
        $sql = "select distinct OM from Usuario;";
        $result = mysqli_query($link, $sql);
        $row = mysqli_fetch_array($result, MYSQLI_NUM);
        echo "<br><br<h1>" . $row[2] . "</h1>";
        
    }
//    Horas_de_Selva_OM();
?>
