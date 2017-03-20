<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/27
 * Time: 下午11:25
 */


header('content-type:text.html;charset=utf-8;');
error_reporting(0);
require_once '../../model/PdoMySQL.class.php';
require_once '../../model/config.php';
require_once 'Response.php';

class WelcomeImage{
    private  $tableName = "subject";
    private  $size = 0;
    private  $Key = "";


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

    function getImage(){
        self.$this->size = $_REQUEST["size"];
        self.$this->key = $_REQUEST["key"];
        $mysqlPdo = new PdoMySQL();

        if($this->key == "" || $this->key !== "TheHotelReversationApplication"){
            Response::show(201,"fail","非安全的数据请求","json");
        }

        $allrows = $mysqlPdo->find($this->tableName,"","image","","","",[0,intval($this->size)]);
        Response::show(200,'主题图片获取成功',$allrows,'json');

    }
}

$api = WelcomeImage::getInstance();
$api->getImage();
?>