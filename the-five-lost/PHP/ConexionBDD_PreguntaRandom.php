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
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $data .= "Pregunta: " . $row["pregunta"] . "\n";
    
    // Recopilar todas las respuestas para la pregunta seleccionada
    $respuestaSql = "SELECT respuesta, correcto FROM respuesta_pregunta WHERE cod_pregunta = " . $row["cod_pregunta"];
    $respuestasResult = $conn->query($respuestaSql);
    
    if ($respuestasResult->num_rows > 0) {
        while ($respuestaRow = $respuestasResult->fetch_assoc()) {
            $data .= "Respuesta: " . $respuestaRow["respuesta"];
            if ($respuestaRow["correcto"]) {
                $data .= " (Correcta)";
            }
            $data .= "\n";
        }
    }
}

echo $data;

$conn->close();
?>