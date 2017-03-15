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
    private  $status = "";
    private  $roomId = "";
    private  $startTime = "";
    private  $endTime = "";
    private  $livingPeriod = "";
    private  $orderId = "";

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

    function diffBetweenTwoDays ($day1, $day2){
        //目前的业务不需要跨年住宿，因此只需要判断同一年内日期间隔
        $day1 = "2017-".$day1;
        $day2 = "2017-".$day2;
        $second1 = strtotime($day1);
        $second2 = strtotime($day2);

        if ($second1 < $second2) {
            $tmp = $second2;
            $second2 = $second1;
            $second1 = $tmp;
        }
        return ($second1 - $second2) / 86400;
    }

    function generateOrderId(){
        $yCode = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J');
        $orderSn = $yCode[intval(date('Y')) - 2011] . strtoupper(dechex(date('m'))) . date('d') . substr(time(), -5) . substr(microtime(), 2, 5) . sprintf('%02d', rand(0, 99));
        return $orderSn;
    }


    public function orderRoom(){
        $mysqlPdo = new PdoMySQL();

        self.$this->telephone = $_REQUEST["telephone"];
        self.$this->hotelId = $_REQUEST["hotelId"];
        self.$this->memberId = $_REQUEST["memberId"];
        self.$this->linkman = $_REQUEST["linkman"];
        self.$this->totalPrice = $_REQUEST["totalPrice"];
        self.$this->status = $_REQUEST['status'];
        self.$this->startTime = $_REQUEST["startTime"];
        self.$this->endTime = $_REQUEST["endTime"];
        self.$this->roomId = $_REQUEST["roomId"];
        self.$this->livingPeriod = $this->diffBetweenTwoDays($this->startTime,$this->endTime);
        self.$this->orderId = $this->generateOrderId();

        if($this->telephone == ""){
            Response::show(201,"fail","非安全的数据请求","json");
        }
        $userRows = $mysqlPdo->find('user',"telephone='$this->telephone'");
        if($userRows[0]["telephone"] != $this->telephone){
            Response::show(201,"fail","非安全的数据请求","json");
        }



        $roomCountRows = $mysqlPdo->find('room',"hotelId='$this->hotelId'");
        $roomCounts = $roomCountRows[0]["count"];

        if($roomCounts>=1){
            $res = $mysqlPdo->update(["count"=>$roomCounts-1],"room","hotelId='$this->hotelId'");
            $data = ['id'=>null,"hotelId"=>$this->hotelId,"merberId"=>$this->memberId,"linkman"=>$this->linkman,"telephone"=>$this->telephone,"totalPrice"=>$this->totalPrice,"status"=>0,"roomId"=>$this->roomId,"startTime"=>$this->startTime,"endTime"=>$this->endTime,"orderId"=>$this->orderId,"livingPeriod"=>$this->livingPeriod];
            $hotelRes = $mysqlPdo->add($data,'order');
            $lastInsertId = $mysqlPdo->getLastInsertId();
        }else{
            $res = $mysqlPdo->update(["count"=>0],"room","hotelId='$this->hotelId'");
        }

        if($hotelRes){
            //酒店下单成功
           Response::show(200,"success",["orderId"=>$this->orderId],"json");
        }else{
            //酒店下单失败
            Response::show(201,"fail","json");
        }

    }
}

$order = Order::sharedInstance();
$order->orderRoom();
?>