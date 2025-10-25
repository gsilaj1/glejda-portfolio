<?php include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $emri = $_POST['emri'];
    $pershkrimi = $_POST['pershkrimi'];
    $prodhim = $_POST['prodhim'];
    $skadence = $_POST['skadence'];
    $cmimi = $_POST['cmimi'];
    $kapaciteti = $_POST['kapaciteti'];
    $sasia = $_POST['sasia'];

    $stmt = $conn->prepare("INSERT INTO produktet (produkt_emri, produkt_pershkrimi, produkt_data_prodhimit, produkt_data_skadences, produkt_cmimi, produkt_kapaciteti, produkt_sasia_aktuale) VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssiii", $emri, $pershkrimi, $prodhim, $skadence, $cmimi, $kapaciteti, $sasia);
    $stmt->execute();
    echo "Product added successfully. <a href='index.php'>Go back</a>";
    exit;
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="background">
    <h2>Add Product</h2>
    <form method="post">
        <input name="emri" placeholder="Name" required><br>
        <input name="pershkrimi" placeholder="Description" required><br>
        <input type="date" name="prodhim" required><br>
        <input type="date" name="skadence" required><br>
        <input type="number" name="cmimi" placeholder="Price" required><br>
        <input type="number" name="kapaciteti" placeholder="Capacity" required><br>
        <input type="number" name="sasia" placeholder="Quantity" required><br>
        <button type="submit">Add</button>
    </form>
    <a href="index.php">Back to Product List</a>
</body>
</html>
