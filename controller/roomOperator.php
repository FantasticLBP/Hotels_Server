<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/24
 * Time: 上午9:03
 */

header('content-type:text.html;charset=utf-8');
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
class RoomOperator{
    protected static  $_instance = null;
    protected static  $table = "room";

    protected function __construct()
    {
    }


    protected function  __clone()
    {
        // TODO: Implement __clone() method.
    }

    public function  sharedInstance(){
        if(self::$_instance === null){
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function deleteRoom($roomId){
        $pdoMysql = new PdoMySQL();
        $deleteRes = $pdoMysql->delete(self::$table,"id='{$roomId}'");
        if($deleteRes){
            echo '<script type="text/javascript">alert("房间删除成功");window.location.href="../view/hotelList.php";</script>';
        }else{
            echo '<script type="text/javascript">alert("房间删除失败");window.location.href="../view/hotelList.php";</script>';
        }

    }
}

$roomOperatro = RoomOperator::sharedInstance();
$roomOperatro->deleteRoom($_REQUEST["id"]);
?>