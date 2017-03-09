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


class Order
{
    private  $tableName = "order";
    private  $telephone = 0;
    private  $hotelId = "";
    private  $memberId = "";
    private  $linkman = "";
    private  $totalPrice = 0;
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


    public function orderRoom(){
        $mysqlPdo = new PdoMySQL();

        self.$this->telephone = $_REQUEST["telephone"];
        self.$this->hotelId = $_REQUEST["hotelId"];
        self.$this->memberId = $_REQUEST["memberId"];
        self.$this->linkman = $_REQUEST["linkman"];
        self.$this->totalPrice = $_REQUEST["totalPrice"];

        if($this->telephone == ""){
            Response::show(201,"fail","非安全的数据请求","json");
        }
        $userRows = $mysqlPdo->find('user',"telephone='$this->telephone'");
        if($userRows[0]["telephone"] != $this->telephone){
            Response::show(201,"fail","非安全的数据请求","json");
        }

        $data = ['id'=>null,"hotelId"=>$this->hotelId,"merberId"=>$this->memberId,"linkman"=>$this->linkman,"telephone"=>$this->telephone,"totalPrice"=>$this->totalPrice,"status"=>0];
        $hotelRes = $mysqlPdo->add($data,'order');
        $lastInsertId = $mysqlPdo->getLastInsertId();


        if($hotelRes){
            //酒店下单成功
           Response::show(200,$lastInsertId,"json");
        }else{
            //酒店下单失败
            Response::show(201,$lastInsertId,"json");
        }

    }
}

$order = Order::sharedInstance();
$order->orderRoom();
?>