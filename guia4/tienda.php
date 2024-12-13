<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tienda";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Procesar la compra
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['producto_id'])) {
        $producto_id = (int)$_POST['producto_id'];

        // Actualizar la cantidad del producto
        $sql = "UPDATE productos SET cantidad = cantidad - 1 WHERE id = $producto_id";
        if ($conn->query($sql) === TRUE) {
            // Redirigir a una página de confirmación con mensaje
            echo "<script>alert('¡Compra realizada con éxito!');</script>";
            echo "<script>window.location.href = 'index.html';</script>";
        } else {
            echo "Error al actualizar la cantidad: " . $conn->error;
        }
    }
}
?>
