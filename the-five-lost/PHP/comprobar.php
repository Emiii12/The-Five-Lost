<?php
$server = "localhost";
$dbName = "the_five_lost";
$username = "root";
$password = "";

$conn = new mysqli($server, $username, $password, $dbName);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Ejemplo de consulta SELECT
$sql = "SELECT pp.cod_pregunta, pp.pregunta, rp.respuesta, rp.correcto FROM pregunta_puerta pp
        INNER JOIN respuesta_pregunta rp ON pp.cod_pregunta = rp.cod_pregunta
        WHERE tematica = 'Entretenimiento' ORDER BY RAND() LIMIT 1;";
$result = $conn->query($sql);

$data = "";
$respuestas = array(); // Creamos un arreglo para almacenar las respuestas
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $cod_pregunta = $row["cod_pregunta"];
    $data .= "Pregunta: " . $row["pregunta"] . "\n";

    $respuestaSql = "SELECT respuesta, correcto FROM respuesta_pregunta WHERE cod_pregunta = $cod_pregunta";
    $respuestasResult = $conn->query($respuestaSql);

    if ($respuestasResult->num_rows > 0) {
        while ($respuestaRow = $respuestasResult->fetch_assoc()) {
            $respuestas[] = $respuestaRow; // Almacenamos cada respuesta en el arreglo
        }
    }
}

// Mostramos las respuestas concatenando correctamente la información
foreach ($respuestas as $respuesta) {
    $data .= "Respuesta: " . $respuesta["respuesta"];
    if ($respuesta["correcto"]) {
        $data .= " (Correcta)";
    }
    $data .= "\n";
}

// Buscamos la respuesta correcta y la marcamos
$respuestaCorrecta = array_values(array_filter($respuestas, function ($respuesta) {
    return $respuesta["correcto"];
}))[0]["respuesta"];
$data .= "RespuestaCorrecta: " . $respuestaCorrecta;

echo $data;

$conn->close();
?>