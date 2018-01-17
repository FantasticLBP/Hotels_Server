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
        private  $tableName = "hotel";
        private  $hotelName = "";           //酒店名称
        private  $address = "";             //酒店地址
        private  $hasWifi = "";             //wifi情况
        private  $hasParking = "";          //停车场情况
        private  $hasPackage = "";          //行李寄存情况
        private  $hasMeetingRoom = "";      //会议室情况
        private  $decorateTime = "";        //装修时间
        private  $startTime = "";           //开业时间
        private  $imageId = "";
        private  $evaluationId = "";
        private  $subject = "";              //酒店主题
        private  $kindDescription = "";      //酒店介绍
        private  $kindType = 1;              //酒店类型
        private  $stars = 3;




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
            self.$this->hotelName= $_POST["hotelName"];
            self.$this->address = $_POST["address"];
            self.$this->decorateTime = $_POST["decorateTime"];
            self.$this->startTime = $_POST["startTime"];
            self.$this->hasWifi = $_POST["hasWifi"];
            self.$this->hasParking = $_POST["hasParking"];
            self.$this->hasMeetingRoom = $_POST["hasMeeting"];
            self.$this->hasPackage = $_POST["hasPackage"];
            self.$this->subject = $_POST["subject"];

            self.$this->kindType = $_POST["kindType"];
            self.$this->kindDescription = $_POST["kindDescription"];
            self.$this->stars = $_POST["stars"];




            foreach($_FILES as $fileInfo){
                //判断图片：如果上传的图片数组里面是不为空的图片则进行图片保存函数。
                if($fileInfo["name"] != ""){
                    $files[] = uploadFile($fileInfo,"../postedImage");
                }
            }

            $PdoMySQL = new PdoMySQL();
            $data = ["hotelName"=>$this->hotelName,"address"=>$this->address,"subject"=>$this->subject,"hasWifi"=>$this->hasWifi,"hasParking"=>$this->hasParking,"hasPackage"=>$this->hasPackage,"hasMeetingRoom"=>$this->hasMeetingRoom,
            "startTime"=>$this->startTime,"decorateTime"=>$this->decorateTime,"evaluationId"=>"","image1"=>substr($files[0], 3),"image2"=>substr($files[1], 3),"image3"=>substr($files[2], 3),"image4"=>substr($files[3], 3),"image5"=>substr($files[4], 3),"minPrice"=>0,"kindDescription"=>$this->kindDescription,"kindType"=>$this->kindType,"stars"=>$this->stars];

            $hotelRes = $PdoMySQL->add($data,'hotel');
            $lastInsertId = $PdoMySQL->getLastInsertId();


            if($hotelRes){
                //酒店上传成功
                echo '<script type="text/javascript">alert("酒店发布成功");window.location.href ="../view/hotelList.php";</script>';
            }else{
                //酒店上传失败
                echo '<script type="text/javascript">alert("酒店信息发布失败，请稍后重试！");</script>';
            }



        }
    }

    $api = PublishHotel::getInstance();
    $api->publish();
?>