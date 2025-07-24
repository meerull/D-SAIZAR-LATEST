<?php 
include('../config/constants.php'); // Correct relative path to DB connection

header("Content-Type: application/vnd.ms-excel");
header("Content-Disposition: attachment; filename=delivered_orders_report.xls");

echo "<table border='1'>";
echo "<tr>
        <th>Soil</th>
        <th>Price (RM)</th>
        <th>Qty</th>
        <th>Total (RM)</th>
        <th>Order Date</th>
        <th>Customer Name</th>
        <th>Contact</th>
        <th>Delivery Address</th>
      </tr>";

$sql = "SELECT 
            o.soil, o.price, o.qty, o.total, o.order_date, o.delivery_address,
            u.customer_name, u.customer_contact
        FROM tbl_order o
        JOIN users u ON o.u_id = u.id
        WHERE o.status = 'Delivered'
        ORDER BY o.order_date DESC";

$res = mysqli_query($conn, $sql);

if(mysqli_num_rows($res) > 0) {
    while($row = mysqli_fetch_assoc($res)) {
        echo "<tr>";
        echo "<td>{$row['soil']}</td>";
        echo "<td>{$row['price']}</td>";
        echo "<td>{$row['qty']}</td>";
        echo "<td>{$row['total']}</td>";
        echo "<td>{$row['order_date']}</td>";
        echo "<td>{$row['customer_name']}</td>";
        echo "<td>{$row['customer_contact']}</td>";
        echo "<td>{$row['delivery_address']}</td>";
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='8'>No delivered orders found.</td></tr>";
}

echo "</table>";
?>
