<?php
include 'config.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $conn->query("DELETE FROM produktet WHERE produkt_id = $id");
}

header("Location: index.php");
exit;
?>
