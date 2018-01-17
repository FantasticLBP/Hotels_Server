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


class Room
{
    private $tableName = "room";
    private $key = "";
    private  $hotelId = "";

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

    function getRoomInfo()
    {
        self.$this->key = $_REQUEST["key"];
        self.$this->hotelId = $_REQUEST["hotelId"];


        $mysqlPdo = new PdoMySQL();

        if($this->key == "" || $this->key != "TheHotelReversationApplication"){
            Response::show(201,"fail","非安全的数据请求","json");
        }


        $allrows = $mysqlPdo->find($this->tableName,"hotelId='$this->hotelId'");
        Response::show(200,'房间列表获取成功',$allrows,'json');


    }
}

$lister = Room::getInstance();
$lister->getRoomInfo();
?>