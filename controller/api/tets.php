<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/21
 * Time: 上午11:07
 */
//function getName($telehone = "")
//{
//    date_default_timezone_set('PRC'); //设置中国时区
//    $date = date("Ymdhms", time());
//    echo $date."".$telehone;
//}
//getName("15757118174");


//echo date("Ymd")."15757118174";


//$file = 'upload的副本.php';
//$result = @unlink($file);
//echo $result;


$firstname = "Bill";
$lastname = "lbp";
$age = "";

$result = compact('firstname', 'lastname', "age");

print_r($result);
?>