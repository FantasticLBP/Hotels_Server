<?php

/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/3/9
 * Time: 上午9:24
 */

header('content-type:text.html;charset=utf-8');
error_reporting(0);
require_once '../../model/PdoMySQL.class.php';
require_once '../../model/config.php';
require_once 'Response.php';


class RandomHotel
{
    private  $tableName = "hotel";
    private  $key = "";
    private  $city = "";

    protected static  $_instance = null;

    private  function  __construct()
    {
    }

    private  function  __clone()
    {
        // TODO: Implement __clone() method.
    }

    public function  sharedInstance(){
        if(self::$_instance == null){
            self::$_instance = new self();
        }
        return self::$_instance;
    }



    private function random($start,$end){
        $tmp=array();
        while(count($tmp)<1){
            $tmp[]=mt_rand($start,$end);
            $tmp=array_unique($tmp);
        }
        return $tmp[0]-1;
    }

    public function getHotel(){
        $mysqlPdo = new PdoMySQL();

        self.$this->key = $_REQUEST["key"];
        self.$this->city = $_REQUEST["city"];

        if($this->key == "" || $this->key !== "TheHotelReversationApplication" ){
            Response::show(201,"fail","非安全的数据请求","json");
        }

        $pdo=new PdoMySQL();
        $res = $pdo->find($this->tableName,"address like '%".$this->city."%'");

        $random = $this->random(1,count($res));

        if($res){
            //随机酒店获取成功
            Response::show(200,"随机酒店获取成功",$res[$random],"json");
        }else{
            //随机酒店获取失败
            Response::show(201,"随机酒店获取失败","json");
        }
    }
}

$hotel = RandomHotel::sharedInstance();
$hotel->getHotel();
?>