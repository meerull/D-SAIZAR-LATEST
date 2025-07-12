<?php include('partials-front/menu.php'); ?>

<?php 
if(isset($_GET['soil_id'])) {
    $soil_id = $_GET['soil_id'];
    $sql = "SELECT * FROM tbl_soil WHERE id=$soil_id";
    $res = mysqli_query($conn, $sql);
    $count = mysqli_num_rows($res);

    if($count==1) {
        $row = mysqli_fetch_assoc($res);
        $title = $row['title'];
        $price = $row['price'];
        $image_name = $row['image_name'];
    } else {
        header('location:'.SITEURL);
    }
} else {
    header('location:'.SITEURL);
}
?>

<section class="soil-order">
    <div class="container">
        <h2 class="text-center text-white">Please confirm to place order</h2>

        <form action="" method="POST" class="order" enctype="multipart/form-data">
            <fieldset>
                <legend style="color:white;">Selected Soil</legend>

                <div class="soil-menu-img">
                    <?php 
                    if($image_name=="") {
                        echo "<div class='error'>Image not Available.</div>";
                    } else {
                        echo "<img src='".SITEURL."images/soil/".$image_name."' class='img-responsive img-curve'>";
                    }
                    ?>
                </div>

                <div class="soil-menu-desc">
                    <h3 style="color:white;"><?php echo $title; ?></h3>
                    <input type="hidden" name="soil" value="<?php echo $title; ?>">

                    <p class="soil-price" style="color:white;">RM<?php echo $price; ?></p>
                    <input type="hidden" name="price" value="<?php echo $price; ?>">

                    <div class="order-label" style="color:white;">Quantity</div>
                    <input type="number" name="qty" class="input-responsive" value="1" required>
                </div>
            </fieldset>

            <fieldset>
                <div class="order-label" style="color:white;">Delivery Address</div>
                <textarea name="delivery_address" class="input-responsive" required></textarea>

                <div class="order-label" style="color:white;">Upload Payment Proof (image/pdf)</div>
                <input type="file" name="payment_proof" class="form-control" accept=".jpg,.jpeg,.png,.pdf" required>

                <br>
                <input type="submit" name="submit_payment" value="Confirm Order & Upload Payment" class="btn btn-primary">
            </fieldset>
        </form>

        <?php
        if (isset($_POST['submit_payment'])) {
            if(empty($_SESSION["u_id"])) {
                header('location:login.php');
            } else {
                $soil = $_POST['soil'];
                $price = $_POST['price'];
                $qty = $_POST['qty'];
                $total = $price * $qty;
                date_default_timezone_set('Asia/Kuala_Lumpur');
                $order_date = date("Y-m-d H:i:s");
                $status = "Ordered";
                $u_id = $_SESSION["u_id"];
                $delivery_address = mysqli_real_escape_string($conn, $_POST['delivery_address']);

                // Payment upload
                $payment_date = date("Y-m-d");
                $payment_time = date("H:i:s");
                $filename = $_FILES["payment_proof"]["name"];
                $tempfile = $_FILES["payment_proof"]["tmp_name"];
                $folder = "payment/" . $filename;

                if ($filename == "") {
                    echo "<div class='alert alert-danger'>No file selected.</div>";
                } else {
                    move_uploaded_file($tempfile, $folder);
                    $sql_payment = "INSERT INTO tbl_payment (payment_date, payment_time, payment_prove) 
                                    VALUES ('$payment_date', '$payment_time', '$filename')";
                    $res_payment = mysqli_query($conn, $sql_payment);

                    if ($res_payment) {
                        $payment_id = mysqli_insert_id($conn);

                        $sql_order = "INSERT INTO tbl_order SET 
                            soil = '$soil',
                            price = $price,
                            qty = $qty,
                            total = $total,
                            order_date = '$order_date',
                            status = '$status',
                            u_id='$u_id',
                            delivery_address = '$delivery_address',
                            payment_id = '$payment_id'";

                        $res_order = mysqli_query($conn, $sql_order);

                        if ($res_order) {
                            $_SESSION['order'] = "<div class='success text-center'>Order placed and payment uploaded successfully.</div>";
                            header('location:'.SITEURL);
                        } else {
                            $_SESSION['order'] = "<div class='error text-center'>Order failed.</div>";
                            header('location:'.SITEURL);
                        }
                    } else {
                        $_SESSION['order'] = "<div class='error text-center'>Payment upload failed.</div>";
                        header('location:'.SITEURL);
                    }
                }
            }
        }
        ?>
    </div>
</section>

<?php include('partials-front/footer.php'); ?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
