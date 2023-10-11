<?php
// Datos de conexión a la base de datos
$hostname = "localhost";  // Cambia a la dirección del servidor si es necesario
$database = "The_Five_Lost";
$username = "tu_usuario";
$password = "tu_contraseña";

try {
    $pdo = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Si la conexión es exitosa, $pdo contendrá el objeto de conexión
} catch (PDOException $e) {
    echo "Error de conexión: " . $e->getMessage();
}
?>
<?php
// Incluye el archivo de conexión
include('conexion.php');

// Consulta para obtener preguntas y respuestas
$consulta = "SELECT pp.cod_pregunta, pp.pregunta, pp.nivel, rp.cod_respuesta, rp.respuesta, rp.correcto 
             FROM Pregunta_Puerta pp
             JOIN Respuesta_Pregunta rp ON pp.cod_pregunta = rp.cod_pregunta
             WHERE rp.correcto = 1
             ORDER BY pp.cod_pregunta ASC";

// Ejecuta la consulta
$stmt = $pdo->query($consulta);
$preguntas = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Convierte el resultado a JSON y envíalo al cliente
header('Content-Type: application/json');
echo json_encode($preguntas);
?>
