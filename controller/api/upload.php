<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/20
 * Time: 上午9:15
 */

error_reporting(0);
require_once 'upload.class.php';
require_once '../../model/PdoMySQL.class.php';
require_once '../../model/config.php';
require_once '../../model/pwd.php';
require_once 'Response.php';
require_once 'upload.class.php';


class UserAvator
{
    private $tableName = "user";
    private $telephone = "";
    private $avatorUrl = "";


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

    function  setAvator(){

        self.$this->telephone = $_POST["telephone"];
        $upload=new upload('myAvator','../../avator');
        $dest=$upload->uploadFile();

        if(!strstr($dest,"文件")){
            $pdo=new PDO('mysql:host=localhost;dbname=db_Hotel','root','root');
            $pdo->query("set names utf8");
            $sql = 'UPDATE user set avator ="'.$dest.'" WHERE telephone ="'.$this->telephone.'" ;';
            $stmt=$pdo->prepare($sql);
            $stmt->execute();
        }

        $avatorSql = 'SELECT avator FROM user WHERE telephone ="'.$this->telephone.'";';
        $avatorStmt=$pdo->prepare($avatorSql);
        $avatorStmt->execute();
        $avatorRow=$avatorStmt->fetch();
        if ($avatorRow["avator"]) {
            Response::show(200, 'success', $avatorRow[0], 'json');
        } else {
            Response::show(201, 'fail', "头像上传失败", 'json');
        }
    }
}

$api = UserAvator::getInstance();
$api->setAvator();
?>