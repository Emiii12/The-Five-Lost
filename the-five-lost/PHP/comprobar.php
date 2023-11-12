<?php
$server = "localhost";
$dbName = "the_five_lost";
$username = "root";
$password = "";

$conn = new mysqli($server, $username, $password, $dbName);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$nivelActual = $_GET['nivel'];
$tematica = $_GET['tematica'];

$sql = "SELECT pp.cod_pregunta, pp.pregunta, rp.respuesta, rp.correcto, pp.nivel FROM pregunta_puerta pp
        INNER JOIN respuesta_pregunta rp ON pp.cod_pregunta = rp.cod_pregunta
        WHERE tematica = '$tematica' AND nivel = '$nivelActual' ORDER BY RAND() LIMIT 1;";

$result = $conn->query($sql);

$data = "";
$respuestas = array();
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $cod_pregunta = $row["cod_pregunta"];
    $data .= "Pregunta Nivel " .$row["nivel"] . ": " . $row["pregunta"] . "\n";

    $respuestaSql = "SELECT respuesta, correcto FROM respuesta_pregunta WHERE cod_pregunta = $cod_pregunta";
    $respuestasResult = $conn->query($respuestaSql);

    if ($respuestasResult->num_rows > 0) {
        while ($respuestaRow = $respuestasResult->fetch_assoc()) {
            $respuestas[] = $respuestaRow;
        }
    }
}

foreach ($respuestas as $respuesta) {
    $data .= "Respuesta: " . $respuesta["respuesta"];
    $data .= "\n";
}

$respuestaCorrecta = array_values(array_filter($respuestas, function ($respuesta) {
    return $respuesta["correcto"];
}))[0]["respuesta"];
$data .= "RespuestaCorrecta: " . $respuestaCorrecta;

echo $data;

$conn->close();


// $server = "localhost";
// $dbName = "the_five_lost";
// $username = "root";
// $password = "";

// $conn = new mysqli($server, $username, $password, $dbName);

// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// }

// $niveles = range(1, 8); // Genera un array con los números del 1 al 8

// $data = "";

// foreach ($niveles as $nivel) {
//     $nivelNombre = "Nivel " . $nivel; // Construye el nombre del nivel
//     $sql = "SELECT pp.cod_pregunta, pp.pregunta, rp.respuesta, rp.correcto 
//             FROM pregunta_puerta pp
//             INNER JOIN respuesta_pregunta rp ON pp.cod_pregunta = rp.cod_pregunta
//             WHERE tematica = 'Entretenimiento' AND pp.nivel = '$nivelNombre'
//             ORDER BY RAND()
//             LIMIT 1;";
//     $result = $conn->query($sql);

//     if ($result->num_rows > 0) {
//         $row = $result->fetch_assoc();

//         $data .= "Pregunta: " . $row["pregunta"] . "\n";
//         $data .= "Respuesta: " . $row["respuesta"] . "\n";
//         $data .= "RespuestaCorrecta: " . $row["respuesta"] . "<br>";
//     }
// }

// echo $data;

// $conn->close();
?>
