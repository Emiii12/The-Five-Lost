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