<?php
/*$host= "localhost";
$db_name="chakron_airline";
$db_username="chakr_airline";
$db_password="airline";*/

$host= "mysql13.000webhost.com";
$db_name="a9192235_taxi";
$db_username="a9192235_taxi";
$db_password="a9192235_taxi";
try
{
$pdo= new PDO('mysql:host='. $host .';dbname='.$db_name, $db_username, $db_password);
}
catch(PDOException $e)
{
exit("Error Connectiong to database");
}
?>