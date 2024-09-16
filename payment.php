<?php
// Include Stripe PHP Library
require_once('stripe-php-master/init.php');

// Set API Key
\Stripe\Stripe::setApiKey('sk_test_51MraisSCNs1ZJU0aoJeCjCvznCfUHqjNXbDsIGSyNyLvtSPI9U95mGA96VSRNO9hjyn73aZcS5EmPEbC36bKDf4900JFpvwitq');

// Collect Card Details
$card_number = $_POST['card_number'];
$card_expiry_month = $_POST['card_expiry_month'];
$card_expiry_year = $_POST['card_expiry_year'];
$card_cvc = $_POST['card_cvc'];

// Collect Payment Amount
$amount = $_POST['amount'];

// Create a Charge
$charge = \Stripe\Charge::create(array(
    // Currency
    'currency' => 'usd',
    // Amount
    'amount' => $amount,
    // Source
    'source' => array(
        'object' => 'card',
        'number' => $card_number,
        'exp_month' => $card_expiry_month,
        'exp_year' => $card_expiry_year,
        'cvc' => $card_cvc
    )
));

// Payment Success
echo 'Your payment was successful. Charge ID: '.$charge->id;
?>