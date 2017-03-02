<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/21
 * Time: 下午9:55
 */

header('content-type:text.html;charset=utf-8');
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
require_once 'api/Response.php';
include_once 'fileHandler/upload.func.php';

class PublishHotel{
    private  $tableName = "room";
    private  $type = "";                   //房屋类型
    private  $znecancelPrice = "";         //住哪儿可取消价格
    private  $znePrice = "";               //住哪儿不可取消价格
    private  $delegatecancelPrice = "";    //代理可取消价格
    private  $delegatePrice = "";          //代理不可取消价格
    private  $hasWindow = "";               //有无窗户
    private  $hasWifi = "";                 //有无wifi
    private  $equipmentCondtion = "";       //配套设施情况
    private  $floor = "";                   //房屋楼层
    private  $square = "";                  //房屋面积
    private  $bedScale = "";                //床位大小
    private $availablePerson = "";          //可入住人数
    private $otherInfo = "";                //其他信息
    private $count = "";                    //房屋总数
    private $hotelId = "";                 //酒店id

    private  $name = "";
    private  $wifi = "";
    private  $equipment = "";

    protected static $_instance = null;
    protected function __construct(){
        //disallow new instance
    }
    protected function __clone(){
        //disallow clone
    }
    public function getInstance(){
        if (self::$_instance === null) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    function publish(){
        self.$this->type= $_POST["type"];
        self.$this->znecancelPrice = $_POST["znecancelPrice"];
        self.$this->znePrice = $_POST["znePrice"];

        self.$this->delegatecancelPrice  = $_POST["delegatecancelPrice"];
        self.$this->delegatePrice = $_POST["delegatePrice"];
        self.$this->hasWindow = $_POST["hasWindow"];
        self.$this->hasWifi  = $_POST["hasWifi"];
        self.$this->equipmentCondtion = $_POST["equipmentCondtion"];
        self.$this->floor = $_POST["floor"];
        self.$this->square = $_POST["square"];
        self.$this->bedScale = $_POST["bedScale"];
        self.$this->availablePerson = $_POST["availablePerson"];
        self.$this->otherInfo = $_POST["otherInfo"];
        self.$this->count = $_POST["count"];
        self.$this->hotelId = $_POST["hotelId"];
        self.$this->name = $_POST["hotelName"];
        self.$this->wifi = $_POST["hasWifi"];
        self.$this->equipment = $_POST["equipmentCondtion"];


        foreach($_FILES as $fileInfo){
            //判断图片：如果上传的图片数组里面是不为空的图片则进行图片保存函数。
            if($fileInfo["name"] != ""){
                $files[] = uploadFile($fileInfo,"../postedImage");
            }
        }

        $PdoMySQL = new PdoMySQL();
        $data = ["hotelId"=>$this->hotelId,"type"=>$this->type,"znecancelPrice"=>$this->znecancelPrice,"znePrice"=>$this->znePrice,"delegatecancelPrice"=>$this->delegatecancelPrice,"delegatePrice"=>$this->delegatePrice,"hasWindow"=>$this->hasWindow,
            "hasWifi"=>$this->hasWifi,"equipmentCondtion"=>$this->equipmentCondtion,"floor"=>$this->floor,"square"=>$this->square,"bedScale"=>$this->bedScale,"availablePerson"=>$this->availablePerson,"roomCount	"=>$this->count,"otherInfo"=>$this->otherInfo,"count"=>$this->count,"image1"=>substr($files[0], 3),"image2"=>substr($files[1], 3),"image3"=>substr($files[2], 3),"image4"=>substr($files[3], 3),"image5"=>substr($files[4], 3)];

        $hotelRes = $PdoMySQL->add($data,$this->tableName);
        $lastInsertId=$PdoMySQL->getLastInsertId();
        if($hotelRes){

            //插入房间的时候将该酒店下所有房间的最低价查询出来，之后将更新酒店表，将最低价的价格进行更新
            $pdo=new PDO('mysql:host=localhost;dbname=db_Hotel','root','root');
            $pdo->query("set names utf8");
            $minSql = "SELECT MIN(delegatePrice) FROM room WHERE hotelId =".$this->hotelId.";";
            $stmt = $pdo->prepare($minSql);
            $stmt->execute();
            $priceRow=$stmt->fetch();
            $minPrice = $priceRow[0];
            $PdoMySQL->update(["minPrice"=>$minPrice],"hotel","id='$this->hotelId'");
            //酒店上传成功
            echo '<script type="text/javascript">alert("房屋发布成功");window.location.href = "../view/roomList.php?id='.$this->hotelId.'&name='.$this->name.'&wifi='.$this->wifi.'&equipment='.$this->equipment .'";</script>';
        }else{
            //酒店上传失败
            echo '<script type="text/javascript">alert("放我信息发布失败，请稍后重试！");</script>';
        }
    }
}

$api = PublishHotel::getInstance();
$api->publish();
?>