<?php
// Datos de conexión
$servername = "localhost";  // o la IP de tu servidor
$username = "root";         // el usuario de la base de datos (por defecto es 'root' en localhost)
$password = "";             // la contraseña (en localhost, si no has configurado una, está vacía)
$dbname = "tienda";         // el nombre de la base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

echo "Conexión exitosa";
?>
