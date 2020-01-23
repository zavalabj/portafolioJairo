<?php

class tokenValidation
{

    private $token;

    function __construct($token)
    {
        $this->token = $token;
    }

    function tokenValidation()
    {
        $JSONresponse = APICaller::caller('GET', 'http://abc.barzaconstructores.com.mx/token/validation/'.$this->token, false);
        $response = json_decode($JSONresponse, true);
        return $response['data'];
    }
}