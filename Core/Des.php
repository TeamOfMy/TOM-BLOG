<?php
/**
 * Created by PhpStorm.
 * Date: 14-11-11下午3:55
 * @author   Orino
 * Descrition: 
 */

namespace Core;

/**
 * Class Des
 * @package Video\ProjectBundle\Service
 * @name Des Class
 * @desc  字符串加密解密函数
 * @autho D.C
 * @update 2015-03-24
 */

class Des{

    /**
     * @param $string 加密字符串
     * @param $key 密钥
     * @return null|string
     */
     public function Encode($string,$key) {
        $j = null;
        $hash = null;
        $key = sha1($key);
        $strLen = strlen($string);
        $keyLen = strlen($key);
        for ($i = 0; $i < $strLen; $i++) {
            $ordStr = ord(substr($string,$i,1));
            if ($j == $keyLen) { $j = 0; }
            $ordKey = ord(substr($key,$j,1));
            $j++;
            $hash .= strrev(base_convert(dechex($ordStr + $ordKey),16,36));
        }
        return $hash;
    }

    /**
     * @param $string 要解密的字符串
     * @param $key 密钥
     * @return null|string
     */
     public function Decode($string,$key) {
        $j = null;
        $hash = null;
        $key = sha1($key);
        $strLen = strlen($string);
        $keyLen = strlen($key);
        for ($i = 0; $i < $strLen; $i+=2) {
            $ordStr = hexdec(base_convert(strrev(substr($string,$i,2)),36,16));
            if ($j == $keyLen) { $j = 0; }
            $ordKey = ord(substr($key,$j,1));
            $j++;
            $hash .= chr($ordStr - $ordKey);
        }
        return $hash;
    }
}