<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>database</title>
</head>
<body>

<?php

require_once('smarty-3.1.30/libs/Smarty.class.php');

$smarty->display('public/index.tpl');

$user = 'root';
$pass = '';

try {
    $conn = new PDO("mysql:host=localhost;dbname=webshop_zelf", $user, $pass);
} catch (PDOException $error) {
    echo $error;
}

$selectBlog = $conn->prepare("SELECT * FROM blogpost");
$selectBlog->execute();
$blogs = $selectBlog->fetchAll();


foreach ($blogs as $blog) {
    ?>
    <h1><?php echo $blog["titel"]; ?></h1>
    <h4 >Geplaatst op : <?php echo $blog["datum"] ?></h4>
    <p> <?php echo $blog["body"]; ?> </p>
<?php }

?>
</body>
</html>