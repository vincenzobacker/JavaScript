<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bestelling</title>
</head>
<body>
<h1>
    Bestelling plaatsen
</h1>
<form action="bestelling.php" method="post">

    <label for orderID></label> ID <input type="text" name="orderID"> <br />
    <label for order_Time></label> Tijd <input type="text" name="order_time"> <br />
    <label for cust_firstname></label> Naam <input type="text" name="cust_firstname"> <br />
    <label for cust_lastname></label> Achternaam <input type="text" name="cust_lastname"> <br />
    <label for cust_email></label> E-Mail <input type="text" name="cust_email"> <br />
    <label for cust_country></label> Land <input type="text" name="cust_country"> <br />
    <label for cust_zip></label> Postcode <input type="text" name="cust_zip"> <br />
    <label for cust_state></label> Staat <input type="text" name="cust_state"> <br />
    <label for cust_city></label> Stad <input type="text" name="cust_city"> <br />
    <label for cust_address></label> Adres <input type="text" name="cust_address"> <br />
    <label for cust_phone></label> Telefoonnummer <input type="text" name="cust_phone"> <br />
    <input type="submit" value="bestellen">

</form>

</body>
</html>
