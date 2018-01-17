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


class OrderList
{
    private $tableName = "order";
    private $telephone = "";
    private $page = 0;
    private $size = 0;
    private $type = "";

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

    function getOrders(){
        self.$this->telephone = $_REQUEST["telephone"];
        self.$this->page = $_REQUEST["page"];
        self.$this->size = $_REQUEST["size"];
        self.$this->type = $_REQUEST["orderType"];


        $mysqlPdo = new PdoMySQL();


        if($this->telephone == ""){
            Response::show(201,"fail","非安全的数据请求","json");
        }
        $userRows = $mysqlPdo->find("user","telephone='$this->telephone'");
        if($userRows[0]["telephone"] != $this->telephone){
            Response::show(201,"fail","非安全的数据请求","json");
        }

        if(isset($this->type)){
            $allrows = $mysqlPdo->find($this->tableName,"status=$this->type and telephone=$this->telephone","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
            foreach($allrows as &$row){
                $roomId = $row["roomId"];
                $hotelId = $row["hotelId"];
                $roomRow = $mysqlPdo->find("room","id=$roomId");
                $hotelRow = $mysqlPdo->find("hotel","id=$hotelId");
                $row["room"] = $roomRow;
                $row["hotel"] = $hotelRow;
            }
            Response::show(200,'订单列表返回成功',$allrows,'json');
        }else{
            $allrows = $mysqlPdo->find($this->tableName,"telephone=$this->telephone","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
            foreach($allrows as &$row){
                $roomId = $row["roomId"];
                $hotelId = $row["hotelId"];
                $roomRow = $mysqlPdo->find("room","id=$roomId");
                $hotelRow = $mysqlPdo->find("hotel","id=$hotelId");
                $row["room"] = $roomRow;
                $row["hotel"] = $hotelRow;
            }
            Response::show(200,'订单列表返回成功',$allrows,'json');
        }

    }
}

$lister = OrderList::getInstance();
$lister->getOrders();
?>