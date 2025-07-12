<?php include('partials/menu.php'); ?>

<div class="wrapper">
    <h1>Manage Order</h1>
</div>

<br><br><br>

<?php 
if(isset($_SESSION['update'])) {
    echo $_SESSION['update'];
    unset($_SESSION['update']);
}
?>
<br><br>

<table class="content-table">
    <tr>
        <th>S.N.</th>
        <th>Soil</th>
        <th>Price</th>
        <th>Qty</th>
        <th>Total</th>
        <th>Order Date</th>
        <th>Status</th>
        <th>Customer Name</th>
        <th>Contact</th>
        <th>Email</th>
        <th>Address</th>
        <th>Delivery Address</th>
        <th>Payment Proof</th>
        <th>Update Orders</th>
    </tr>

    <?php 
    $sql = "SELECT users.*, tbl_order.*, tbl_payment.payment_prove 
            FROM users 
            INNER JOIN tbl_order ON users.id=tbl_order.u_id
            LEFT JOIN tbl_payment ON tbl_order.payment_id = tbl_payment.payment_id";
    $res = mysqli_query($conn, $sql);
    $count = mysqli_num_rows($res);

    $sn = 1;

    if($count>0) {
        while($row=mysqli_fetch_assoc($res)) {
            $id = $row['id'];
            $soil = $row['soil'];
            $price = $row['price'];
            $qty = $row['qty'];
            $total = $row['total'];
            $order_date = $row['order_date'];
            $status = $row['status'];
            $customer_name = $row['customer_name'];
            $customer_contact = $row['customer_contact'];
            $customer_email = $row['customer_email'];
            $customer_address = $row['customer_address'];
            $delivery_address = $row['delivery_address'];
            $payment_prove = $row['payment_prove'];
    ?>

        <tr>
            <td><?php echo $sn++; ?>.</td>
            <td><?php echo $soil; ?></td>
            <td><?php echo $price; ?></td>
            <td><?php echo $qty; ?></td>
            <td><?php echo $total; ?></td>
            <td><?php echo $order_date; ?></td>
            <td>
                <?php 
                if($status=="Ordered") echo "<label>$status</label>";
                elseif($status=="On Delivery") echo "<label style='color: orange;'>$status</label>";
                elseif($status=="Delivered") echo "<label style='color: green;'>$status</label>";
                elseif($status=="Cancelled") echo "<label style='color: red;'>$status</label>";
                ?>
            </td>
            <td><?php echo $customer_name; ?></td>
            <td><?php echo $customer_contact; ?></td>
            <td><?php echo $customer_email; ?></td>
            <td><?php echo $customer_address; ?></td>
            <td><?php echo $delivery_address; ?></td>
            <td>
                <?php 
                if(!empty($payment_prove)) {
                    $ext = pathinfo($payment_prove, PATHINFO_EXTENSION);
                    if (in_array($ext, ['jpg','jpeg','png'])) {
                        echo "<a href='".SITEURL."payment/$payment_prove' target='_blank'><img src='".SITEURL."payment/$payment_prove' width='60px'></a>";
                    } elseif ($ext == 'pdf') {
                        echo "<a href='".SITEURL."payment/$payment_prove' target='_blank'>View PDF</a>";
                    } else {
                        echo "Unsupported";
                    }
                } else {
                    echo "<label>No Payment</label>";
                }
                ?>
            </td>
            <td>
                <a href="<?php echo SITEURL; ?>admin/update-order.php?id=<?php echo $id; ?>">
                    <img src="../images/icons/update.png"/>
                </a>
            </td>
        </tr>

    <?php
        }
    } else {
        echo "<tr><td colspan='14' class='error'>Orders not Available</td></tr>";
    }
    ?>
</table>

<?php include('partials/footer.php'); ?>
