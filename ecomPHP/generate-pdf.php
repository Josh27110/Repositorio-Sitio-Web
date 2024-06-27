<?php
require '../vendor/autoload.php'; // Ruta correcta al autoload.php
require 'admin/inc/config.php'; // Ruta al archivo de configuración
use Dompdf\Dompdf;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (!isset($_GET['payment_id'])) {
    die('ID de pago no especificado.');
}

$payment_id = $_GET['payment_id'];

try {
    // Conectar a la base de datos usando config.php
    global $pdo;

    // Obtener datos de la tabla tbl_payment
    $statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_id=?");
    $statement->execute([$payment_id]);
    $payment = $statement->fetch(PDO::FETCH_ASSOC);

    if (!$payment) {
        die('ID de pago no encontrado.');
    }

    // Obtener datos de la tabla tbl_order
    $statement = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
    $statement->execute([$payment_id]);
    $orders = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Crear contenido HTML para el PDF
    $html = '<h1>Detalles del Pedido</h1>';
    $html .= '<h2>Carrito de Compras</h2>';
    $html .= '<table border="1" cellpadding="10">';
    $html .= '<tr>
                <th>#</th>
                <th>Nombre del Producto</th>
                <th>Tamaño</th>
                <th>Color</th>
                <th>Cantidad</th>
                <th>Precio Unitario</th>
                <th>Total</th>
              </tr>';

    $total_price = 0;
    foreach ($orders as $index => $order) {
        $product_name = $order['product_name'];
        $size = $order['size'];
        $color = $order['color'];
        $quantity = $order['quantity'];
        $unit_price = $order['unit_price'];
        $total = $quantity * $unit_price;
        $total_price += $total;

        $html .= "<tr>
                    <td>".($index + 1)."</td>
                    <td>$product_name</td>
                    <td>$size</td>
                    <td>$color</td>
                    <td>$quantity</td>
                    <td>$$unit_price</td>
                    <td>$$total</td>
                  </tr>";
    }

    $html .= '</table>';
    $html .= '<h3>Total: $' . $total_price . '</h3>';

    $html .= '<h2>Detalles del Cliente</h2>';
    $html .= '<p>Nombre: ' . $payment['customer_name'] . '</p>';
    $html .= '<p>Email: ' . $payment['customer_email'] . '</p>';
    $html .= '<p>Fecha de Pago: ' . $payment['payment_date'] . '</p>';
    $html .= '<p>Método de Pago: ' . $payment['payment_method'] . '</p>';
    $html .= '<p>Estado del Pago: ' . $payment['payment_status'] . '</p>';
    $html .= '<p>ID de Transacción: ' . $payment['txnid'] . '</p>';
    $html .= '<p>Información de Transacción: ' . nl2br($payment['bank_transaction_info']) . '</p>';

    $dompdf = new Dompdf();
    $dompdf->loadHtml($html);
    $dompdf->setPaper('A4', 'portrait');
    $dompdf->render();
    $dompdf->stream("detalle_pedido_$payment_id.pdf", array("Attachment" => false));

} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
