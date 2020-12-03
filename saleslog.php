<?php
    //Подключение шапки
    require_once("php/header.php");
    require_once("php/dbconnect.php");

?>
	
  <div class="col-12 InfoWoodLandsquare " style="background: rgba(54,57,63,1)" > 
	<div class="  InfoWoodLandText">
     <H1> Список журнал учета продаж пиломатериалов  </H1>

<?php

$result=$mysqli->query("SELECT order_id,order_email, order_name,order_adress,order_total_id,order_total_price,Time_order FROM orders ");

 $rows = mysqli_num_rows($result); 

//вывод на страничку в виде таблицы
echo "<table align='center' border=2 bordercolor='grey' width=100%>
<tr><th>order_id</th><th>order_email</th><th>order_name</th><th>order_adress</th><th>order_total_id</th><th>order_total_price</th><th>Time_order</th></tr>";

 for ($i = 0 ; $i < $rows ; ++$i)
    {
        $row = mysqli_fetch_row($result);
        echo "<tr>";
            for ($j = 0 ; $j < 7 ; ++$j) echo "<td>$row[$j]</td>";
        echo "</tr>";
    }
    echo "</table>";
     
    // очищаем результат
    mysqli_free_result($result);
?>
    </div>
</div>

<?php
    //Подключение корзины
$filejs='Cart/jscode.js';
    require_once("Cart/cartoption.php");
?>
</body>
</html>
