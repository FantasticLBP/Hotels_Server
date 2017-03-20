<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/20
 * Time: 上午9:15
 */

header('content-type:text.html;charset=utf-8');
error_reporting(0);
require_once '../../model/PdoMySQL.class.php';
require_once '../../model/config.php';
require_once 'Response.php';


class RevokeOrder
{
    private $tableName = "order";
    private $key = "";
    private $orderId = "";

    protected static $_instance = null;

    protected function  __construct()
    {

    }

    protected function  __clone()
    {
        // TODO: Implement __clone() method.
    }


    public function  getInstance()
    {
        if (self::$_instance === null) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    function revokeOrder(){
        self.$this->key = $_REQUEST["key"];
        self.$this->orderId = $_REQUEST["orderId"];


        $mysqlPdo = new PdoMySQL();


        if($this->key == "" || $this->key !== "TheHotelReversationApplication" ){
            Response::show(201,"fail","非安全的数据请求","json");
        }

        $allrows = $mysqlPdo->delete($this->tableName,"id=$this->orderId");
        $roomCountRows = $mysqlPdo->find('room',"hotelId='$this->hotelId'");
        $roomCounts = $roomCountRows[0]["count"];
        $res = $mysqlPdo->update(["count"=>$roomCounts+1],"room","hotelId='$this->hotelId'");
        if($allrows){
            Response::show(200,'订单撤销成功',$allrows,'json');
        }else{
            Response::show(203,'订单不存在',"",'json');
        }


    }
}

$lister = RevokeOrder::getInstance();
$lister->revokeOrder();
?>