<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/20
 * Time: 上午9:15
 */

require_once '../../model/PdoMySQL.class.php';
require_once '../../model/config.php';
require_once 'Response.php';
require_once '../fileHandler/upload.class.php';


class UserAvator
{
    private $tableName = "user";
    private $telephone = "";
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

    /**
     *
     */
    function  setAvator()
    {
        self.$this->telephone = $_REQUEST["telephone"];
        $pdoMysql = new PdoMySQL();

        //先查该用户是否已经有头像，有头像先从头像文件夹中删除旧的头像
        $oldAvatorRow = $pdoMysql->find($this->tableName,"telephone='$this->telephone'");


        foreach ($oldAvatorRow as $row) {
            if ($row["avator"]) {
                self.$this->oldAvatorPath = $row["avator"];
                //删除上传的旧文件。
                $uploader = new upload('myAvator', '../../avator');
                $uploader->deleteUploadedFile("../../".$this->oldAvatorPath);
            }
        }

        //再保存新的头像
        $upload = new upload('myAvator', '../../avator');
        $dest = $upload->uploadFile();
        $dest = substr($dest,6);

        //再将头像地址update数据表
        if (strpos($dest, "文件") === false) {
            $pdoMysql->update(["avator"=>"$dest"],$this->tableName,"telephone='$this->telephone'");
        }

        //最后将用户的基本信息返回给客户端
        $baseInfo = $pdoMysql->find($this->tableName,"telephone='$this->telephone'");

        Response::show(200, 'success',$baseInfo[0], 'json');
        if ($baseInfo[0]["avator"]) {
            Response::show(200, 'success',$baseInfo[0], 'json');
        } else {
            Response::show(201, 'fail', "头像上传失败", 'json');
        }
    }

}

$api = UserAvator::getInstance();
$api->setAvator();
?>