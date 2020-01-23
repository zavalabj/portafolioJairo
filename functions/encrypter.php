<?php

class EncrypterAndDecrypterClass{

    function encrypt($string){
        $result = $this->stringEncryption('encrypt', $string);
        return $result;
    }

    function decrypt($string){
        $result = $this->stringEncryption('decrypt', $string);
        return $result;
    }

    private function stringEncryption($action, $string){
        $output = false;
        
        $encrypt_method = 'AES-256-CBC';
        $secret_key = '61c4<$(wK;-g';
        $secret_iv = 'im-d¡BT-M)ON4#I';
        
        // hash
        $key = hash('sha256', $secret_key);
        
        // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
        $iv = substr(hash('sha256', $secret_iv), 0, 16);
        
        if( $action == 'encrypt') {
            $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
            $output = base64_encode($output);
        }
        else if( $action == 'decrypt'){
            $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
        }
        
        return $output;
    }
}

?>