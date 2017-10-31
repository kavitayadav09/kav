<?php
//echo $_SERVER[HTTP_HOST].$_SERVER[REQUEST_URI];

$url = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$rev = strrev($url);
$value =  strpos($rev, '/')."<br />";
//$length = strlen($url);

echo $value;

$values = (str_split($rev, $value));
$display = $values[0];
echo strrev($display);

//print_r($_SERVER['HTTP']);
?>