<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 2017/2/20
 * Time: 上午9:15
 */

error_reporting(0);
require_once '../../model/PdoMySQL.class.php';
require_once '../../model/config.php';
require_once 'Response.php';


class Subject
{
    private $tableName = "subject";
    private $telephone = "";



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

    function getSubjects()
    {
        self . $this->telephone = $_REQUEST["telephone"];
        $mysqlPdo = new PdoMySQL();


        if($this->telephone == ""){
            Response::show(201,"fail","非安全的数据请求","json");
        }

        $userRows = $mysqlPdo->find("user","telephone='$this->telephone'");
        if($userRows[0]["telephone"] != $this->telephone){
            Response::show(201,"fail","非安全的数据请求","json");
        }

        $allrows = $mysqlPdo->find($this->tableName);
        //var_dump($allrows);
        Response::show(200,'success',$allrows,'json');



    }
}

$api = Subject::getInstance();
$api->getSubjects();
?>