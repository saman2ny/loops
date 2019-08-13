<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>Shop Cart</title>

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
		 <?php require 'partial/header.php'?>
		<!-- END HEADER -->
		
		<!-- BREAKCRUMB -->
		<section class="breakcrumb bg-grey">
			<div class="container">
				<h3 class="pull-left">Shopping <span>Cart</span></h3>
				<ul class="nav-breakcrumb  pull-right">
					<li><a onClick="window.location.href = 'index';">Home</a></li>
                    <li><a onClick="window.location.href = 'login-access';"><span>Cart</span></a></li>
				</ul>

			</div>
		</section>
		<!-- END BREAKCRUMB -->
		
		<!-- SHOP CART -->
		<section class="shop-cart">
			<div class="container">

				<!-- TABLE CART -->
				<div class="table-cn ">
					<table class="table table-cart">
						<thead>
							<tr>
								<th>Items</th>
								<th>Quantity</th>
								<th>Subtotal</th>
								<th>GrandTotal</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
						
						
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
				
				
							<tr>

								<td class="td-item">
									<div class="img">
										<a href="#">
											<img src="ProductsAdmin/<?php echo $item["file_name"]; ?>" alt="<?php echo $item["id"]; ?>" style="width:150px;height:180px;">
										</a>
									</div>
									<div class="info">
										<a href="#"><?php echo $item["shirt_pattern"]; ?> &nbsp; <?php echo $item["sleeve_type"]; ?></a>
										<span class="attr">Color : <span><?php echo $item["shirt_color"]; ?></span></span>
										<span class="attr">Size : <span><?php echo $item["sizes"]; ?></span></span>
									</div>
								</td>
								<td class="td-qty text-center">
									<div class="qty">
										<input type="number" min="0" max="9" class="form-control text-center" id="qua_item" value="<?php echo $item["qty"]; ?>" onchange="updateCartItem(this, '<?php echo $item["rowid"]; ?>')">
										
									</div>
								</td>
								<td class="td-sub text-center">
									₹<?php echo $item["shirt_range"]; ?>
								</td>
								<td class="td-sub text-center">
									₹<?php echo $item["subtotal"]; ?>
								</td>
								<td class="td-remove text-center">
									<a href="Cartaction?action=removeCartItem&id=<?php echo $item["rowid"]; ?>&places=<?php echo $item["sizes"]; ?>" onclick="return confirm('Are you sure?')"><img src="vendor/img/icon-delete.png" alt=""></a>
								</td>
							</tr>
					
					
					               <?php } }else{ ?>
                <tr><td colspan="5" onload="window.open(index)"><h2 class="text-center">Your Cart is Empty</h2></td>
                <?php } ?>
		
		

		
		
						</tbody>
						<?php if($total_Capital != '0'){ ?>
						<tfoot>
							<tr class="tr-f">
								<td class="td-item">
									<p>Shipping: <span> <?php $total_shipping = "60";?><?php echo '₹ '.$total_shipping.' INR'; ?></span></p>
								</td>
								<td></td>
								<td class="td-sub text-center">
									<?php echo '₹ '.$total_Capital.' INR'; ?>
								</td>
								<td class="td-sub text-center">
								 <?php $foo = $total_Capital + $total_shipping?>
									<?php echo 'Total Amount: ₹ '.$foo.' INR '; ?>
								</td>
								<td></td>
							</tr>
						</tfoot>
						<?php } else { ?>
						
					<tfoot>
							<tr class="tr-f">
								<td class="td-item">
									<p>Shipping: <span> <?php $total_shipping = "0";?><?php echo '₹ '.$total_shipping.' INR'; ?></span></p>
								</td>
								<td></td>
								<td class="td-sub text-center">
									<?php echo '₹ '.$total_Capital.' INR'; ?>
								</td>
								<td class="td-sub text-center">
								 <?php $foo = $total_Capital + $total_shipping?>
									<?php echo 'Total Amount: ₹ '.$foo.' INR '; ?>
								</td>
								<td></td>
							</tr>
						</tfoot>
						
						<?php }?>
					</table>
				</div>
				<!-- END TABLE CART -->
				
				<!-- CART BUTTON -->
				<div class="shop-button clearfix">

                                         
					<a href="javascript: history.go(-1);" class="btn btn-13 pull-left">Continue Shopping</a>
									 
									 				                                                                                                 <?php
                                          include('config.php');
                                     if(isset($_SESSION['email']) && !empty($_SESSION['email'])) { ?>
									 
					<a href="check-out" class="btn btn-13 pull-right">Process to Checkout</a>
					
                                                   
                                   <?php  }
                                                    else { ?>
														<a href="login-access" class="btn btn-13 pull-right">Login to see the Action</a>
					<?php } ?>
				</div>
				<!-- END CART BUTTON -->
				
				<!-- CART COLLATERALS 
				<div class="cart-collaterals">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<h2>Have a Gift Card?</h2>
							<input type="text" class="input-text" placeholder="Enter gift code...">
							<button class="btn btn-13">APPLY</button>
						</div>
						<div class="col-sm-6 col-md-4">
							<h2>Got a Coupon?</h2>
							<input type="text" class="input-text" placeholder="Enter coupon code...">
							<button class="btn btn-13">APPLY</button>
						</div>
						<div class="col-sm-12 col-md-4">
							<h2>Esitimate &amp; Tax</h2>

							<label>Country <sup>*</sup></label>
							<select>
								<option>Select Option...</option>
								<option>Afghanistan</option>
								<option>Åland Islands</option>
								<option>Albania</option>
							</select>

							<label>State/ Province<sup>*</sup></label>
							<select>
								<option>Select Option...</option>
								<option>Alabama</option>
								<option>Alaska</option>
								<option>American Samoa</option>
							</select>

							<label>State/ Province</label>
							<input type="text" class="input-text" placeholder="Select Option...">

							<button class="btn btn-13">Get a Qoute</button>

						</div>
					</div>
				</div>-->
				<!-- END CART COLLATERALS -->

			</div>
		</section>
		<!-- END SHOP CART -->
<?php 


$timestamp    = time();
$appID        = 2405;
$key          = 'mAHrOKKCprI=';
$secret       = '15813';

$sign = "key:".$key."id:".$appID.":timestamp:".$timestamp;
$authtoken = rawurlencode(base64_encode(hash_hmac('sha256', $sign, $secret, true)));  
echo $authtoken;
echo $timestamp;
                 
				 
				 
?>
		
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
    function updateCartItem(obj,id){
        $.get("Cartaction", {action:"updateCartItem", id:id, qty:obj.value}, function(data){
            if(data = 'ok'){
                window.location.reload();
            }else{
                alert('Cart update failed, please try again.');
            }
        });
    }
    </script>
	
</body>
</html>