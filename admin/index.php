<?php require_once('header.php'); ?>

    <section class="content-header">
        <h1>Panel</h1>
    </section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_top_category");
$statement->execute();
$total_top_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_mid_category");
$statement->execute();
$total_mid_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_end_category");
$statement->execute();
$total_end_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_product");
$statement->execute();
$total_product = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_status='1'");
$statement->execute();
$total_customers = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_subscriber WHERE subs_active='1'");
$statement->execute();
$total_subscriber = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost");
$statement->execute();
$available_shipping = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Completed'));
$total_order_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE shipping_status=?");
$statement->execute(array('Completed'));
$total_shipping_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Pending'));
$total_order_pending = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=? AND shipping_status=?");
$statement->execute(array('Completed', 'Pending'));
$total_order_complete_shipping_pending = $statement->rowCount();
?>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <section class="content">
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h3><?php echo $total_product; ?></h3>

                        <p>Productos</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-android-cart"></i>
                    </div>

                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-maroon">
                    <div class="inner">
                        <h3><?php echo $total_order_pending; ?></h3>

                        <p>Ordenes pendientes</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-clipboard"></i>
                    </div>

                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3><?php echo $total_order_completed; ?></h3>

                        <p>Pedidos completados</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-android-checkbox-outline"></i>
                    </div>

                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3><?php echo $total_shipping_completed; ?></h3>

                        <p>Envio completado</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-checkmark-circled"></i>
                    </div>

                </div>
            </div>
            <!-- ./col -->

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-orange">
                    <div class="inner">
                        <h3><?php echo $total_order_complete_shipping_pending; ?></h3>

                        <p>Envios pendientes</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-load-a"></i>
                    </div>

                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3><?php echo $total_customers; ?></h3>

                        <p>Clientes activos</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-person-stalker"></i>
                    </div>

                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3><?php echo $total_subscriber; ?></h3>

                        <p>Subscritos</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-person-add"></i>
                    </div>

                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-teal">
                    <div class="inner">
                        <h3><?php echo $available_shipping; ?></h3>

                        <p>Envios disponibles</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-location"></i>
                    </div>

                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-olive">
                    <div class="inner">
                        <h3><?php echo $total_top_category; ?></h3>

                        <p>Categorías principales</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-arrow-up-b"></i>
                    </div>

                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-blue">
                    <div class="inner">
                        <h3><?php echo $total_mid_category; ?></h3>

                        <p>Categorías medias</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-android-menu"></i>
                    </div>

                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-maroon">
                    <div class="inner">
                        <h3><?php echo $total_end_category; ?></h3>

                        <p>Categorías finales</p>
                    </div>
                    <div class="icon">
                        <i class="ionicons ion-arrow-down-b"></i>
                    </div>

                </div>
            </div>

            <div class="col-lg-6 col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Relación de Suscriptores</h3>
                    </div>
                    <div class="box-body">
                        <canvas id="subscriberChart"></canvas>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Relación de Órdenes</h3>
                    </div>
                    <div class="box-body">
                        <canvas id="ordersChart"></canvas>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-6 col-xs-12">
                <div class="box box-warning">
                    <div class="box-header with-border">
                        <h3 class="box-title">Relación de Envíos</h3>
                    </div>
                    <div class="box-body">
                        <canvas id="shippingChart"></canvas>
                    </div>
                </div>
            </div>
    
            <div class="col-lg-6 col-xs-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Relación de Categorías</h3>
                    </div>
                    <div class="box-body">
                        <canvas id="categoriesChart"></canvas>
                    </div>
                </div>
            </div>

        </div>

    </section>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Obtener datos de PHP
            var totalSubscribers = <?php echo $total_subscriber; ?>;
            var totalCustomers = <?php echo $total_customers; ?>;
            var totalNotSubscribed = totalCustomers - totalSubscribers;

            // Datos para la gráfica
            var data = {
                labels: ["Suscritos", "No Suscritos"],
                datasets: [{
                    data: [totalSubscribers, totalNotSubscribed],
                    backgroundColor: ["#DAA520", "#E97451"],
                }]
            };

            // Opciones para la gráfica
            var options = {
                responsive: true,
                maintainAspectRatio: false,
            };

            // Crear la gráfica
            var ctx = document.getElementById('subscriberChart').getContext('2d');
            new Chart(ctx, {
                type: 'pie',
                data: data,
                options: options
            });
        });
    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Obtener datos de PHP
            var totalOrderPending = <?php echo $total_order_pending; ?>;
            var totalOrderCompleted = <?php echo $total_order_completed; ?>;

            // Datos para la gráfica
            var ordersData = {
                labels: ["Ordenes Pendientes", "Pedidos Completados"],
                datasets: [{
                    data: [totalOrderPending, totalOrderCompleted],
                    backgroundColor: ["#AA336A", "#00A36C"],
                }]
            };

            // Opciones para la gráfica
            var ordersOptions = {
                responsive: true,
                maintainAspectRatio: false,
            };

            // Crear la gráfica
            var ordersCtx = document.getElementById('ordersChart').getContext('2d');
            new Chart(ordersCtx, {
                type: 'pie',
                data: ordersData,
                options: ordersOptions
            });
            
            // Datos de envíos desde PHP
            var totalShippingCompleted = <?php echo $total_shipping_completed; ?>;
            var totalShippingPending = <?php echo $total_order_complete_shipping_pending; ?>;
        
            // Datos para la gráfica de envíos
            var shippingData = {
                labels: ["Envíos Completados", "Envíos Pendientes"],
                datasets: [{
                    data: [totalShippingCompleted, totalShippingPending],
                    backgroundColor: ["#0095B6", "#b8860b"],
                }]
            };
        
            // Opciones para la gráfica de envíos
            var shippingOptions = {
                responsive: true,
                maintainAspectRatio: false,
            };
        
            // Crear la gráfica de envíos
            var shippingCtx = document.getElementById('shippingChart').getContext('2d');
            new Chart(shippingCtx, {
                type: 'pie',
                data: shippingData,
                options: shippingOptions
            });
        
            // Datos de categorías desde PHP
            var totalTopCategory = <?php echo $total_top_category; ?>;
            var totalMidCategory = <?php echo $total_mid_category; ?>;
            var totalEndCategory = <?php echo $total_end_category; ?>;
        
            // Datos para la gráfica de categorías
            var categoriesData = {
                labels: ["Categorías Principales", "Categorías Medias", "Categorías Finales"],
                datasets: [{
                    data: [totalTopCategory, totalMidCategory, totalEndCategory],
                    backgroundColor: ["#2E8B57", "#4682B4", "#FF6384"],
                }]
            };
        
            // Opciones para la gráfica de categorías
            var categoriesOptions = {
                responsive: true,
                maintainAspectRatio: false,
            };
        
            // Crear la gráfica de categorías
            var categoriesCtx = document.getElementById('categoriesChart').getContext('2d');
            new Chart(categoriesCtx, {
                type: 'pie',
                data: categoriesData,
                options: categoriesOptions
            });
        });
    </script>

<?php require_once('footer.php'); ?>