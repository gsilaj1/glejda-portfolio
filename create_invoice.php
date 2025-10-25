
<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $product_id = intval($_POST['product_id']);
    $quantity = intval($_POST['quantity']);

    $check = $conn->query("SELECT produkt_sasia_aktuale, produkt_cmimi, produkt_emri FROM produktet WHERE produkt_id = $product_id");
    $row = $check->fetch_assoc();
    $available = $row['produkt_sasia_aktuale'];
    $price = $row['produkt_cmimi'];
    $name = $row['produkt_emri'];

    if ($available >= $quantity) {
        $total = $quantity * $price;
        $conn->query("UPDATE produktet SET produkt_sasia_aktuale = produkt_sasia_aktuale - $quantity WHERE produkt_id = $product_id");
        $stmt = $conn->prepare("INSERT INTO fatura (fatura_data, fatura_shuma, punonjes_id) VALUES (CURDATE(), ?, 211)");
        $stmt->bind_param("d", $total);
        $stmt->execute();

        echo "<div style='background:#fff;padding:20px;margin:30px auto;width:500px;text-align:center;border-radius:10px;box-shadow:0 0 10px #ccc'>";
        echo "<h2>Fatura e Krijuar</h2>";
        echo "<p><strong>Produkti:</strong> $name</p>";
        echo "<p><strong>Sasia:</strong> $quantity</p>";
        echo "<p><strong>Çmimi Total:</strong> <span style='font-size:20px;color:green'><strong>$total LEK</strong></span></p>";
        echo "<a href='index.php'>Kthehu te Produktet</a></div>";
    } else {
        echo "<p style='color:red'>Sasi e pamjaftueshme! Vetëm $available në stok.</p>";
    }
}
$products = $conn->query("SELECT produkt_id, produkt_emri FROM produktet");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Krijo Faturë</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="background">
    <h2>Krijo Faturë</h2>
    <form method="post">
        <label>Zgjidh Produktin:</label><br>
        <select name="product_id" required>
            <?php while($p = $products->fetch_assoc()): ?>
                <option value="<?= $p['produkt_id'] ?>"><?= $p['produkt_emri'] ?></option>
            <?php endwhile; ?>
        </select><br><br>
        <input type="number" name="quantity" placeholder="Sasia për shitje" required><br>
        <button type="submit">Krijo Faturë</button>
    </form>
    <a href="index.php">Kthehu te Produktet</a>
</body>
</html>
