<?php
// initializ shopping cart class
include 'CartCRUD.php';
include 'config.php';
$cart = new CartCRUD;


?>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>Check Out</title>

        <?php require 'partial/css.php'?>

</head>
<body>

	<!-- LOADING -->
	<div class="loading-container" id="loading">
		<div class="loading-inner">
			<span class="loading-1"></span>
			<span class="loading-2"></span>
			<span class="loading-3"></span>
		</div>
	</div>
	<!-- END LOADING -->

	<div class="wrap-page">

		<!-- HEADER -->
		<?php require 'partial/aftercheckoutheader.php'?>
		<!-- END HEADER -->
		
		<!-- BREAKCRUMB -->
		<section class="breakcrumb bg-grey">
			<div class="container">
				<h3 class="pull-left">Checkout <span>Cart</span></h3>
				<ul class="nav-breakcrumb  pull-right">
					<li><a onClick="window.location.href = 'index';">Home</a></li>
					<li><span>Checkout</span></li>
				</ul>

			</div>
		</section>
		<!-- END BREAKCRUMB -->
		
		<!-- CHECK OUT -->
		<section class="check-out">
			<div class="container">
				<div class="check-out-cn">
					
					<!-- STEP CHECK OUT -->
					
					



					<ul class="check-out-step text-uppercase " data-tabs="tabs">
						<li data-toggle="tab"  onclick="makeactive(this)" data-step="1" href="#checkout-method"  class="current active"><span><a>Checkout Method</a></span></li>
						<li data-toggle="tab"   onclick="makeactive(this)" data-step="2" href="#billing-details" ><span><a>Place Order</a></span></li>
						<li data-toggle="tab"  onclick="makeactive(this)" data-step="3" href="#pay-info"><span><a>Payment Information</a></span></li>
						<li data-toggle="tab"   onclick="makeactive(this)" data-step="4" href="#order-summary"><span><a>ORDER SUMMARY</a></span></li>
					</ul>
					<!-- END STEP CHECK OUT -->
					
					<!-- CHECK OUT FORM -->
					<span class="tab-content">
					<div class="form check-out-form tab-pane active"  id ="checkout-method">
					
					<?php 
$email =$_SESSION['email'];

                                    $query = "select * from userinfo where email ='".$email."' ";								 
                                    $result = mysqli_query($conn,$query) or die('Error, query failed');
                                    while($row = mysqli_fetch_array($result))
                                    {
                                            $del = $row['del_status'];
                                   
if($del === '1')
{
$query = $conn->query("select * from userinfo where email ='".$email."'");
$custRow = $query->fetch_assoc();  ?>


					
						<div class="row">
							<div class="col-xs-12">
								<label>First Name <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['firstname']; ?>"disabled>
							</div>
		
							<div class="col-xs-12">
								<label>Email Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['email']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['address']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Town/City</label>
								<input type="text" class="input-text" value="<?php echo $custRow['city']; ?>"disabled>
							</div>	
							<div class="col-xs-6">
								<label>Country <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['country']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Postal Code <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['zipcode']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Phone Number <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['mobile']; ?>"disabled>
							</div>
					
							<div class="col-xs-12">
								<button class="btn btn-13 text-uppercase pull-right btnNext">Next Step</button>
							</div>
						</div>
						


<?php
}}
?>

<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->

					
					<?php 
$email =$_SESSION['email'];

                                    $query = "select * from delivery_address where session_name ='".$email."' ";								 
                                    $result = mysqli_query($conn,$query) or die('Error, query failed');
                                    while($row = mysqli_fetch_array($result))
                                    {
                                            $del = $row['del_status'];
                                   
if($del === '1')
{
$query = $conn->query("select * from delivery_address where session_name ='".$email."' ");
$custRow = $query->fetch_assoc();  ?>


					
						<div class="row">
							<div class="col-xs-12">
								<label>First Name <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['firstname']; ?>"disabled>
							</div>
		
							<div class="col-xs-12">
								<label>Email Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['session_name']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['address']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Town/City</label>
								<input type="text" class="input-text" value="<?php echo $custRow['city']; ?>"disabled>
							</div>	
							<div class="col-xs-6">
								<label>Country <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['country']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Postal Code <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['zipcode']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Phone Number <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['mobile']; ?>"disabled>
							</div>
					
							<div class="col-xs-12">
									<button  class="btn btn-13 text-uppercase pull-right btnNext">Next Step</button>
							</div>
						</div>
						


<?php
}}
?>
						
			
						
					</div>
					<!-- END CHECK OUT FORM -->
					<!-- END CHECK OUT FORM -->
					<!-- END CHECK OUT FORM -->
					<!-- END CHECK OUT FORM -->
					<!-- END CHECK OUT FORM -->

















						<div id ="billing-details"  class="form check-out-form tab-pane">
							
							
												
					<?php 
$email =$_SESSION['email'];

                                    $query = "select * from userinfo where email ='".$email."' ";								 
                                    $result = mysqli_query($conn,$query) or die('Error, query failed');
                                    while($row = mysqli_fetch_array($result))
                                    {
                                            $del = $row['del_status'];
                                   
if($del === '1')
{
$query = $conn->query("select * from userinfo where email ='".$email."'");
$custRow = $query->fetch_assoc();  ?>


					
						<div class="row">
							<div class="col-xs-12">
								<label>First Name <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['firstname']; ?>"disabled>
							</div>
		
							<div class="col-xs-12">
								<label>Email Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['email']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['address']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Town/City</label>
								<input type="text" class="input-text" value="<?php echo $custRow['city']; ?>"disabled>
							</div>	
							<div class="col-xs-6">
								<label>Country <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['country']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Postal Code <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['zipcode']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Phone Number <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['mobile']; ?>"disabled>
							</div>
					
						<?php
					
	
						$zipee = $custRow['zipcode'];
					
						$url = 'https://api.shyplite.com/getserviceability/'.$zipee.'/'.$zipee.'';

					
function serviciability($url) {
				

    $timestamp = time();
    $appID = 2733;
    $key = 'GjNSE7CR0zE=';
    /** @var string [you will get this key after login function runs.] */
    $secret = 'wafqFsXlIbKt2Nte/JP1wP7ECZXl6WtO1pc3edBblKHDcG3vzQK1Z84+QGTn+EmoJA7ZnSrnwyX1p91ywVGwJw==';

    $sign = "key:". $key ."id:". $appID. ":timestamp:". $timestamp;
    $authtoken = rawurlencode(base64_encode(hash_hmac('sha256', $sign, $secret, true)));
    $ch = curl_init();

    $header = array(
        "x-appid: $appID",
        "x-timestamp: $timestamp",
        "x-sellerid:15813",
        "x-version:2", // for auth version 3.0 only
        "Authorization: $authtoken"
    );

    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $server_output = curl_exec($ch);
   
		

	
	
		// var_dump($server_output);
		$data = json_decode($server_output, true);
		// print_r ($data);
	 	$prepaid = $data["serviceability"]["airPrepaid"];
	   $cod =  $data["serviceability"]["airCod"]; //Cod


?>
			<?php if($prepaid === "1" || $cod === "1") { ?>
		
							<div class="col-xs-12">
									<button  class="btn btn-13 text-uppercase pull-right btnNext">Place Order</button>
									<a href='packing'>Run PHP Function</a>

							</div>
			<?php } else {  ?>
        
                            <div class="col-xs-12">
                                <a href="javascript:void(0);" class="btn btn-13 text-uppercase pull-right">No Service Available in your pincode</a>

							</div>
        
            <?php }?>
							
						</div>
						
<?php

    // exit;
    curl_close($ch);

}
    serviciability($url)
	
					?>
						


<?php
}}
?>

<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->

					
					<?php 
$email =$_SESSION['email'];

                                    $query = "select * from delivery_address where session_name ='".$email."' ";								 
                                    $result = mysqli_query($conn,$query) or die('Error, query failed');
                                    while($row = mysqli_fetch_array($result))
                                    {
                                            $del = $row['del_status'];
                                   
if($del === '1')
{
$query = $conn->query("select * from delivery_address where session_name ='".$email."' ");
$custRow = $query->fetch_assoc();  ?>


					
						<div class="row">
							<div class="col-xs-12">
								<label>First Name <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['firstname']; ?>"disabled>
							</div>
		
							<div class="col-xs-12">
								<label>Email Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['session_name']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Address <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['address']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Town/City</label>
								<input type="text" class="input-text" value="<?php echo $custRow['city']; ?>"disabled>
							</div>	
							<div class="col-xs-6">
								<label>Country <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['country']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Postal Code <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['zipcode']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Phone Number <sup>*</sup></label>
								<input type="text" class="input-text" value="<?php echo $custRow['mobile']; ?>"disabled>
							</div>
					
					
					<?php
					
	
						$zipee = $custRow['zipcode'];
					
						$url = 'https://api.shyplite.com/getserviceability/'.$zipee.'/'.$zipee.'';

					
function serviciability($url) {
				

    $timestamp = time();
    $appID = 2733;
    $key = 'GjNSE7CR0zE=';
    /** @var string [you will get this key after login function runs.] */
    $secret = 'wafqFsXlIbKt2Nte/JP1wP7ECZXl6WtO1pc3edBblKHDcG3vzQK1Z84+QGTn+EmoJA7ZnSrnwyX1p91ywVGwJw==';

    $sign = "key:". $key ."id:". $appID. ":timestamp:". $timestamp;
    $authtoken = rawurlencode(base64_encode(hash_hmac('sha256', $sign, $secret, true)));
    $ch = curl_init();

    $header = array(
        "x-appid: $appID",
        "x-timestamp: $timestamp",
        "x-sellerid:15813",
        "x-version:2", // for auth version 3.0 only
        "Authorization: $authtoken"
    );

    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $server_output = curl_exec($ch);
   
		

	
	
		// var_dump($server_output);
		$data = json_decode($server_output, true);
		// print_r ($data);
	 	$prepaid = $data["serviceability"]["airPrepaid"];
	   $cod =  $data["serviceability"]["airCod"]; //Cod


?>
			<?php if($prepaid == "1" || $cod == "1") { ?>
		
							<div class="col-xs-12">
									<button  class="btn btn-13 text-uppercase pull-right btnNext">Placee Order</button>
									<a href='packing'>Run PHP Function</a>

							</div>
			<?php } else {  ?>
        
                            <div class="col-xs-12">
                                <a href="javascript:void(0);" class="btn btn-13 text-uppercase pull-right">No Service Available in your pincode</a>

							</div>
        
            <?php }?>
							
						</div>
						
<?php

    // exit;
    curl_close($ch);

}
    serviciability($url)
	
					?>

<?php

	
}}
?>


						</div>
						

                        
<!-- Mode of Payment -->
<!-- Mode of Payment -->
<!-- Mode of Payment -->
<!-- Mode of Payment -->
<!-- Mode of Payment -->
<!-- Mode of Payment -->

							
							<div class="form check-out-form tab-pane"  id ="pay-info">
								
                                
                                
                                <p>Cheque or Cash</p>
                                
                                
                                
                                					<?php
					
	
						$zipee = $custRow['zipcode'];
					
						$url = 'https://api.shyplite.com/getserviceability/'.$zipee.'/'.$zipee.'';

					
function paid_serviciability($url) {
				

    $timestamp = time();
    $appID = 2733;
    $key = 'GjNSE7CR0zE=';
    /** @var string [you will get this key after login function runs.] */
    $secret = 'wafqFsXlIbKt2Nte/JP1wP7ECZXl6WtO1pc3edBblKHDcG3vzQK1Z84+QGTn+EmoJA7ZnSrnwyX1p91ywVGwJw==';

    $sign = "key:". $key ."id:". $appID. ":timestamp:". $timestamp;
    $authtoken = rawurlencode(base64_encode(hash_hmac('sha256', $sign, $secret, true)));
    $ch = curl_init();

    $header = array(
        "x-appid: $appID",
        "x-timestamp: $timestamp",
        "x-sellerid:15813",
        "x-version:2", // for auth version 3.0 only
        "Authorization: $authtoken"
    );

    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $server_output = curl_exec($ch);
   
		

	
	
		// var_dump($server_output);
		$data = json_decode($server_output, true);
		// print_r ($data);
	 	$prepaid = $data["serviceability"]["airPrepaid"];
	   $cod =  $data["serviceability"]["airCod"]; //Cod


?>
			<?php if($prepaid == "1") { ?>
		
							<div class="col-xs-12">
									<button  class="btn btn-13 text-uppercase pull-right btnNext">Prepaid</button>
									<a href='packing'>Run PHP Function</a>
							</div>
			<?php } else {  ?>
        
                            <div class="col-xs-12">
                                <a href="javascript:void(0);" class="btn btn-13 text-uppercase pull-right">No Prepaid Service Available in your pincode</a>
							</div>
        
            <?php } ?>
                                <?php if ($cod == "1") { ?>
						
                            <div class="row">
                              
                                							
												
					<?php 
           include('config.php');
$email =$_SESSION['email'];

                                    $query = "select * from userinfo where email ='".$email."' ";								 
                                    $result = mysqli_query($conn,$query) or die('Error, query failed');
                                    while($row = mysqli_fetch_array($result))
                                    {
                                            $del = $row['del_status'];
                                   
if($del === '1')
{
$query = $conn->query("select * from userinfo where email ='".$email."'");
$custRow = $query->fetch_assoc();  ?>
                                
                                <form id="package">

							<div class="col-xs-12">
								<label>First Name <sup>*</sup></label>
								<input type="text" class="input-text" name="custname" id="custname" value="<?php echo $custRow['firstname']; ?>"disabled>
							</div>
		
							<div class="col-xs-12">
								<label>Email Address <sup>*</sup></label>
								<input type="text" class="input-text" name="custemail" id="custemail" value="<?php echo $custRow['session_name']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Address <sup>*</sup></label>
								<input type="text" class="input-text" name="address" id="address" value="<?php echo $custRow['address']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Town/City</label>
								<input type="text" class="input-text" name="city" id="city" value="<?php echo $custRow['city']; ?>"disabled>
							</div>	
							<div class="col-xs-6">
								<label>Country <sup>*</sup></label>
								<input type="text" class="input-text" name="country" id="country" value="<?php echo $custRow['country']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Postal Code <sup>*</sup></label>
								<input type="text" class="input-text" name="pin" id="pin" value="<?php echo $custRow['zipcode']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Phone Number <sup>*</sup></label>
								<input type="text" class="input-text" name="mobile" id="mobile" value="<?php echo $custRow['mobile']; ?>"disabled>
							</div>
					       <div class="col-xs-6">
								<label>Current Date <sup>*</sup></label>
								<input type="text" class="input-text" name="currdate" id="currdate" value="<?php echo date('Y-m-d'); ?>"disabled>
							</div>
							
                                        <div class="col-xs-12">
                                            <label>COD<sup>*</sup></label>
                                            <input type="text" class="input-text" value="COD" name="cod" id="cod" disabled>
                                        </div>


							<div class="col-xs-6">
								<label>Price <sup>*</sup></label>
								<input type="text" class="input-text" name="truevalue" id="truevalue"  disabled>
							</div>
							
														
							<div class="col-xs-6">
								<label>Qtny <sup>*</sup></label>
								<input type="text" class="input-text" name="trueqnty" id="trueqnty"  disabled>
							</div>
							
							
                                        <div class="col-xs-12">
                                            <button type="submit" class="btn btn-13 text-uppercase pull-right btnNext">COD</button>//Billing
                                        </div>
                                </form>
         <?php }} ?>
                                
                                
                          
                                
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->
<!-- Delivery Address Table -->

					
					<?php 
$email =$_SESSION['email'];

                                    $query = "select * from delivery_address where session_name ='".$email."' ";								 
                                    $result = mysqli_query($conn,$query) or die('Error, query failed');
                                    while($row = mysqli_fetch_array($result))
                                    {
                                            $del = $row['del_status'];
                                   
if($del === '1')
{
$query = $conn->query("select * from delivery_address where session_name ='".$email."' ");
$custRow = $query->fetch_assoc();  ?>
                                
                                
                                
                                            <form id="package">
                            <div class="col-xs-12">
								<label>First Name <sup>*</sup></label>
								<input type="text" class="input-text" name="custname" id="custname" value="<?php echo $custRow['firstname']; ?>"disabled>
							</div>
		
							<div class="col-xs-12">
								<label>Email Address <sup>*</sup></label>
								<input type="text" class="input-text" name="custemail" id="custemail" value="<?php echo $custRow['session_name']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Address <sup>*</sup></label>
								<input type="text" class="input-text" name="address" id="address" value="<?php echo $custRow['address']; ?>"disabled>
							</div>
							<div class="col-xs-12">
								<label>Town/City</label>
								<input type="text" class="input-text" name="city" id="city" value="<?php echo $custRow['city']; ?>"disabled>
							</div>	
							<div class="col-xs-6">
								<label>Country <sup>*</sup></label>
								<input type="text" class="input-text" name="country" id="country" value="<?php echo $custRow['country']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Postal Code <sup>*</sup></label>
								<input type="text" class="input-text" name="pin" id="pin" value="<?php echo $custRow['zipcode']; ?>"disabled>
							</div>
							<div class="col-xs-6">
								<label>Phone Number <sup>*</sup></label>
								<input type="text" class="input-text" name="mobile" id="mobile" value="<?php echo $custRow['mobile']; ?>"disabled>
							</div>
					       <div class="col-xs-6">
								<label>Current Date <sup>*</sup></label>
								<input type="text" class="input-text" name="currdate" id="currdate" value="<?php echo date('Y-m-d'); ?>"disabled>
							</div>

                            <div class="col-xs-12">
                                <label>COD<sup>*</sup></label>
                                <input type="text" class="input-text" value="COD" name="cod" id="cod" disabled>
                            </div>
							
							<div class="col-xs-6">
								<label>Price <sup>*</sup></label>
								<input type="text" class="input-text" name="truevalue" id="truevalue"  disabled>
							</div>
							
														
							<div class="col-xs-6">
								<label>Qtny <sup>*</sup></label>
								<input type="text" class="input-text" name="trueqnty" id="trueqnty"  disabled>
							</div>
																					
							<div class="col-xs-6">
								<label>Random <sup>*</sup></label>
								<input type="text" class="input-text" name="random" id="random" value="LF1234" disabled>
							</div>

                                        <div class="col-xs-12">
                                            <button type="submit" class="btn btn-13 text-uppercase pull-right btnNext">CODD</button>//Delievry
                                        </div>
                                </form>
								<?php }} ?>
                                         
                                
                                
                             </div>
                                
					<?php }  else {  ?>
                                
                        <div class="col-xs-12">
                                <a href="javascript:void(0);" class="btn btn-13 text-uppercase pull-right">No COD Service Available in your pincode</a>
							</div>
                           <?php }  ?>     
<?php

    // exit;
    curl_close($ch);

}
    paid_serviciability($url)
	
					?>
                        
                        <div class="product-data">
                                
                                
                                </div>
							</div>
						</span>
				</div>
			</div>
		</section>
		<!-- END CHECK OUT -->

		<!-- PARTNER -->

		<!-- END PARTNER -->
		
		
		
		<span>
		
		<div class="summa row hidden" >
 		
				<?php 
                        $total_Capital = 0;

                        ?>
                <?php
				

                if($cart->total_items() > 0){
                    //get cart items from session
                    $cartItems = $cart->contents();
                    foreach($cartItems as $item){
                        $total_Capital +=  $item["subtotal"];
                ?>
				
							<div class="col-xs-6">
								<label>Price <sup>*</sup></label>
								<input type="text" class="input-text" name="dupvalue" id="dupvalue" value="<?php echo $item["subtotal"]; ?>" disabled>
							</div>
							
											
							<div class="col-xs-6">
								<label>Qtny <sup>*</sup></label>
								<input type="text" class="input-text" name="dupqnty" id="dupqnty" value="<?php echo $item["qty"]; ?>" disabled>
							</div>
							
				
				 <?php } } ?>
				 
				 </div>

		</span>
		<!-- FOOTER -->
<?php require 'partial/footer.php'?>
		<!-- END FOOTER -->

		<!-- SCROLL TOP -->
		<div id="scroll-top" class="_1">Scroll Top</div>
		<!-- END SCROLL TOP -->

	</div>

	<!-- Library JS -->
<?php require 'partial/js.php'?>

<script>
$(window).load(function(){ 
$value = $("#dupvalue").val();
$('input[name=truevalue]').val($value);
$qtny = $("#dupqnty").val();
$('input[name=trueqnty]').val($qtny);
});

function makeactive(elem) {
	
	
	    // get all 'a' elements
    var a = document.getElementsByTagName('li');
    // loop through all 'a' elements
    for (i = 0; i < a.length; i++) {
        // Remove the class 'active' if it exists
        a[i].classList.remove('current')
    }
    // add 'active' classs to the element that was clicked
    elem.classList.add('current');
	// elem.stopPropagation();
	
}

 // $('.btnNext').click(function(){
	 // $('.check-out-step > .active').next('li').find('a').trigger('click');
// });


   jQuery(document).ready(function ($) {
        $('.check-out-step').tab();
    });
    // $('button').addClass('btn-primary').text('Switch to Orange Tab');
	
	// For 1st checkout
	 $('.btnNext').click(function(){
		$('.check-out-step > .active').next('li').find('a').trigger('click');
    });
	


	     $(function () {

       
                 var random  = $("#random").val();
				 var custname  = $("#custname").val();
				 var custemail  = $("#custemail").val();
				 var address  = $("#address").val();
				 var city  = $("#city").val();
				 var pin  = $("#pin").val();
				 var mobile  = $("#mobile").val();
				 var currdate  = $("#currdate").val();
				 var truevalue  = $("#dupvalue").val();
				 var trueqnty  = $("#dupqnty").val();
				 var cod = $("#cod").val();
				 
        $('#package').on('submit', function (e) {
     
          e.preventDefault();

          $.ajax({
            type: 'POST',
           
                    data: {
							cod: cod,
							random: random,
							custname: custname,
							custemail: custemail,
							address: address,
							city: city,
							pin: pin,
							mobile: mobile,
							currdate: currdate,
							truevalue: truevalue,
							trueqnty: trueqnty
                    },
					 url: 'packing',
					success: function (trueqnty) {
//              alert('form was submitted');
                 $('.product-data').html(trueqnty);
            }
          });

        });

      });
    
</script>

    
</body>
</html>