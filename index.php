
<?php
include 'config.php';
$products = $conn->query("SELECT * FROM produktet");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Supermarket - Produktet</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="background">
    <h2>Lista e Produkteve</h2>
    <a href="add_product.php">Shto Produkt të Ri</a> | 
    <a href="create_invoice.php">Krijo Faturë</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Emri</th>
            <th>Çmimi</th>
            <th>Sasia</th>
            <th>Veprime</th>
        </tr>
        <?php while($row = $products->fetch_assoc()): ?>
        <tr>
            <td><?= $row['produkt_id'] ?></td>
            <td><?= $row['produkt_emri'] ?></td>
            <td><?= $row['produkt_cmimi'] ?> LEK</td>
            <td><?= $row['produkt_sasia_aktuale'] ?></td>
            <td>
                <a href="delete_product.php?id=<?= $row['produkt_id'] ?>" onclick="return confirm('A jeni i sigurt?')">Fshij</a> |
                <a href="view_product.php?id=<?= $row['produkt_id'] ?>">Shiko Detajet</a>
            </td>
        </tr>
        <?php endwhile; ?>
    </table>
</body>
</html>
