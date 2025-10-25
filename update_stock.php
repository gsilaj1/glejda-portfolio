
<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $produkt_id = intval($_POST['produkt_id']);
    $shtesa = intval($_POST['shtesa']);

    $conn->query("UPDATE produktet SET produkt_sasia_aktuale = produkt_sasia_aktuale + $shtesa WHERE produkt_id = $produkt_id");
    echo "<p style='color:green'>Sasia u shtua me sukses!</p>";
}

$produkte = $conn->query("SELECT produkt_id, produkt_emri FROM produktet");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Shto Sasi te Produktit</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="background">
    <h2>Shto Sasi të Re për Produkt</h2>
    <form method="post">
        <label>Zgjidh Produktin:</label><br>
        <select name="produkt_id" required>
            <?php while($p = $produkte->fetch_assoc()): ?>
                <option value="<?= $p['produkt_id'] ?>"><?= $p['produkt_emri'] ?></option>
            <?php endwhile; ?>
        </select><br><br>
        <input type="number" name="shtesa" placeholder="Sasia për të shtuar" required><br>
        <button type="submit">Shto Sasi</button>
    </form>
    <a href="index.php">Kthehu te Produktet</a>
</body>
</html>
