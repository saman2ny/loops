<?php

include('config.php');

$random=$_POST["random"];
$name=$_POST["custname"];
$email=$_POST["custemail"];
$address=$_POST["address"];
$custemail=$_POST["custemail"];
$city=$_POST["city"];
$pin =$_POST["pin"];
$mobile=$_POST["mobile"];
$currdate=$_POST["currdate"];
$truevalue=$_POST["truevalue"];
$trueqnty=$_POST["trueqnty"];

$cod=$_POST["cod"];

if($cod == "COD")
{

    
    function set_order() {
		
$random=$_POST["random"];
$name=$_POST["custname"];
$email=$_POST["custemail"];
$address=$_POST["address"];
$custemail=$_POST["custemail"];
$city=$_POST["city"];
$pin =$_POST["pin"];
$mobile=$_POST["mobile"];
$currdate=$_POST["currdate"];
$truevalue=$_POST["truevalue"];
$trueqnty=$_POST["trueqnty"];
$cod=$_POST["cod"];


    $timestamp = time();
    $appID = 2733;
    $key = 'GjNSE7CR0zE=';
    $secret = 'wafqFsXlIbKt2Nte/JP1wP7ECZXl6WtO1pc3edBblKHDcG3vzQK1Z84+QGTn+EmoJA7ZnSrnwyX1p91ywVGwJw==';

    $sign = "key:". $key ."id:". $appID. ":timestamp:". $timestamp;
    $authtoken = rawurlencode(base64_encode(hash_hmac('sha256', $sign, $secret, true)));
    $ch = curl_init();

    $data = array( 'orders'=> [
                array(
                    "orderId"=> $random,
                    "customerName"=> $name,
                    "customerAddress"=> $address,
                    "customerCity"=> $city,
                    "customerPinCode"=> $pin,
                    "customerContact"=> $mobile,
                    "orderDate"=> $currdate,
                    "modeType"=> "Air",
                    "orderType"=> $cod,
                    "totalValue"=> $truevalue,
                    "categoryName"=> "Clothing and Accessories",
                    "packageName"=> "Loops Fashions",
                    "quantity"=> $trueqnty,
                    "packageLength"=> "5.50",
                    "packageWidth"=> "10",
                    "packageHeight"=> "1.0",
                    "packageWeight"=> "0.5",
                    "sellerAddressId"=> "11636" 
                )
            ]);

    $data_json = json_encode($data);

    $header = array(
        "x-appid: $appID",
        "x-sellerid:15813",
        "x-timestamp: $timestamp",
        "x-version:3", // for auth version 3.0 only
        "Authorization: $authtoken",
        "Content-Type: application/json",
        "Content-Length: ".strlen($data_json)
    );

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, 'https://api.shyplite.com/order');
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT');
    curl_setopt($ch, CURLOPT_POSTFIELDS,$data_json);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response  = curl_exec($ch);
    var_dump($response);
//    exit;
    curl_close($ch);

}
    
    set_order();
    

}


?>