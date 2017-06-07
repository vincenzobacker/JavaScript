    <?php

    foreach( $db->query($sql) as $row ) {

        echo "<tr>";
        echo "<td>".$row['orderID']."</td>";
        echo "<td>".$row['order_time']."</td>";
        echo "<td>".$row['cust_firstname']."</td>";
        echo "<td>".$row['cust_lastname']."</td>";
        echo "<td>".$row['cust_email']."</td>";
        echo "<td>".$row['cust_country']."</td>";
        echo "<td>".$row['cust_zip']."</td>";
        echo "<td>".$row['cust_state']."</td>";
        echo "<td>".$row['cust_city']."</td>";
        echo "<td>".$row['cust_address']."</td>";
        echo "<td>".$row['cust_phone']."</td>";
        echo "</tr>";
    }

    $db = null;

    ?>

</table>

</body>


</html>