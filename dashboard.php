<?php include 'config.php';

$totalClients = $conn->query("SELECT COUNT(*) as count FROM klientet")->fetch_assoc()['count'];
$totalOrders = $conn->query("SELECT COUNT(*) as count FROM porosingaklientet")->fetch_assoc()['count'];
$totalRevenue = $conn->query("SELECT SUM(fatura_shuma) as total FROM fatura")->fetch_assoc()['total'];
?>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Dashboard</h2>
    <ul>
        <li><strong>Total Clients:</strong> <?= $totalClients ?></li>
        <li><strong>Total Orders:</strong> <?= $totalOrders ?></li>
        <li><strong>Total Revenue:</strong> <?= $totalRevenue ?> LEK</li>
    </ul>
    <a href="index.php">Back to Products</a>
</body>
</html>