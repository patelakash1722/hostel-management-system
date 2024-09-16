<?php
require 'vendor/autoload.php';
include_once "constants.php";
class StripeHelper
{
    /**
     * @var \Stripe\StripeClient
     */
    public $stripeClient;

    public function __construct()
    {
        $this->stripeClient = new \Stripe\StripeClient('sk_test_51MraisSCNs1ZJU0aoJeCjCvznCfUHqjNXbDsIGSyNyLvtSPI9U95mGA96VSRNO9hjyn73aZcS5EmPEbC36bKDf4900JFpvwitq');
    }
    /**
     * Create product
     * @return \Stripe\Product
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function createProducts()
    {
        return $this->stripeClient->products->create(array(
            'name' => 'hostel managament system',
            
        ));
    }

    /**
     * Create price
     * @param $product
     * @param $productPrice
     * @return \Stripe\Price
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function createProductPrice($product, $productPrice)
    {
        return $this->stripeClient->prices->create(array(
            'unit_amount' => $productPrice ,
            'currency' => 'INR',
            'product' => $product->id,
        ));
    }
    /**
     * Get session detail
     * @param $sessionId
     * @return \Stripe\Checkout\Session
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function getSession($sessionId)
    {
        return $this->stripeClient->checkout->sessions->retrieve($sessionId);
    }
}
