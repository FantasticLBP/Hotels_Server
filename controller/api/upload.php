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
require_once 'Response.php';
require_once '../fileHandler/upload.class.php';


class UserAvator
{
    private $tableName = "user";
    private $telephone = "";
    private $avatorUrl = "";
    private $oldAvatorPath = "";


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

    function  setAvator()
    {
        self . $this->telephone = $_POST["telephone"];
        $pdo = new PDO('mysql:host=localhost;dbname=db_Hotel', 'root', 'root');
        $pdo->query("set names utf8");

        //先查该用户是否已经有头像，有头像先从头像文件夹中删除旧的头像，再保存新的头像，再将头像地址update数据表
        $selectSql = "SELECT avator FROM user WHERE telephone ='" . $this->telephone . "';";
        $oldAvatorStmt = $pdo->prepare($selectSql);
        $oldAvatorStmt->execute();
        $oldAvatorRow = $oldAvatorStmt->fetch();
        if ($oldAvatorRow["avator"]) {
            self . $this->oldAvatorPath = $oldAvatorRow["avator"];
            //删除上传的旧文件。
            $uploader = new upload('myAvator', '../../avator', $this->telephone);
            $uploader->deleteUploadedFile($this->oldAvatorPath);
        }
        $upload = new upload('myAvator', '../../avator', $this->telephone);
        $dest = $upload->uploadFile();

        if (!strstr($dest, "文件")) {
            $updatSql = 'UPDATE user set avator ="' . $dest . '" WHERE telephone ="' . $this->telephone . '" ;';
            $stmt = $pdo->prepare($updatSql);
            $stmt->execute();
        }

        $avatorSql = 'SELECT avator FROM user WHERE telephone ="' . $this->telephone . '";';
        $avatorStmt = $pdo->prepare($avatorSql);
        $avatorStmt->execute();
        $avatorRow = $avatorStmt->fetch();
        self . $this->avatorUrl = $avatorRow[0];
        if ($avatorRow["avator"]) {
            Response::show(200, 'success', substr($this->avatorUrl, 5), 'json');
        } else {
            Response::show(201, 'fail', "头像上传失败", 'json');
        }
    }
}

$api = UserAvator::getInstance();
$api->setAvator();
?>