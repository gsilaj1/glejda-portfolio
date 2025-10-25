
<?php
include 'config.php';
$id = intval($_GET['id']);
$result = $conn->query("SELECT * FROM produktet WHERE produkt_id = $id");
$row = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Detajet e Produktit</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="background">
    <h2>Detajet për: <?= $row['produkt_emri'] ?></h2>
    <ul>
        <li><strong>ID:</strong> <?= $row['produkt_id'] ?></li>
        <li><strong>Përshkrimi:</strong> <?= $row['produkt_pershkrimi'] ?></li>
        <li><strong>Data e Prodhimit:</strong> <?= $row['produkt_data_prodhimit'] ?></li>
        <li><strong>Data e Skadencës:</strong> <?= $row['produkt_data_skadences'] ?></li>
        <li><strong>Çmimi:</strong> <?= $row['produkt_cmimi'] ?> LEK</li>
        <li><strong>Kapaciteti:</strong> <?= $row['produkt_kapaciteti'] ?></li>
        <li><strong>Sasia Aktualisht:</strong> <?= $row['produkt_sasia_aktuale'] ?></li>
    </ul>
    <a href="index.php">Kthehu mbrapa</a>
</body>
</html>
