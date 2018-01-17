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


class HotelList
{
    private $tableName = "hotel";
    private $key = "";
    private $cityName= "";
    private $subjectId = "";
    private $page = 0;
    private $size = 0;
    private $type = "";

    private $pickedPrice = 0;
    private $pickedStar = 0;
    private $pickedHotelName = "";
    private $request = "";

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

    function getHotels()
    {
        self.$this->key= $_REQUEST["key"];
        self.$this->subjectId = $_REQUEST["subjectId"];
        self.$this->cityName = $_REQUEST["cityName"];
        self.$this->page = $_REQUEST["page"];
        self.$this->size = $_REQUEST["size"];
        self.$this->type = $_REQUEST["type"];
        self.$this->pickedPrice = str_replace("元","",$_REQUEST["pickedPrice"]);
        self.$this->pickedHotelName = $_REQUEST["pickedHotelName"];
        self.$this->pickedStar = $_REQUEST["pickedStar"];
        self.$this->request = $_REQUEST["request"];

        $mysqlPdo = new PdoMySQL();

        if($this->key == "" || $this->key !== "TheHotelReversationApplication" ){
            Response::show(201,"fail","非安全的数据请求","json");
        }


        //1、根据城市、酒店主题、分页字段查询主题酒店列表
        if($this->request == "1" ){
            $city = str_replace("市","",$this->cityName);
            $allrows = $mysqlPdo->find($this->tableName,"subject='$this->subjectId' and address like '%$city%'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
            Response::show(200,'主题酒店列表获取成功',$allrows,'json');

            //2、根据查询城市、分页查询所有酒店列表
        }else if($this->request == "2" ){
            $city = str_replace("市","",$this->cityName);
            $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
            Response::show(200,'主题酒店列表获取成功',$allrows,'json');

            //3、查询城市、分页、酒店类型查询酒店列表
        }else if($this->request == "3" ){
            $city = str_replace("市","",$this->cityName);
            $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and kindType='$this->type'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
            Response::show(200,'特色酒店列表获取成功',$allrows,'json');

            //4、根据分页查询酒店类型为具体类型的酒店列表
        }else if($this->request == "4" ){
            $city = str_replace("市","",$this->cityName);
            $allrows = $mysqlPdo->find($this->tableName,"kindType='$this->type'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
            Response::show(200,'特色酒店列表获取成功',$allrows,'json');


            //5、查询城市、分页、酒店类型查询酒店列表
        }else if($this->request == "5"){
            $city = str_replace("市","",$this->cityName);
            //如果精确输入酒店名称，那么优先级最高，则按照酒店名称检索
            if(!empty($this->pickedHotelName)){
                $allrows = $mysqlPdo->find($this->tableName,"hotelName like '%$this->pickedHotelName%'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
            }else{
                if(str_replace("星","",$_REQUEST["pickedStar"]) == "不限"){
                    self.$this->pickedStar = 1;
                    if($this->pickedPrice == 0 || $this->pickedPrice == "不限"){
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }else{
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and stars like '_' and minPrice<'$this->pickedPrice'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }
                }else if(str_replace("星","",$_REQUEST["pickedStar"]) == "经济"){

                    if($this->pickedPrice == 0 || $this->pickedPrice == "不限"){
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and (stars=1 or stars = 2) ","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }else{
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and (stars=1 or stars = 2) and minPrice<'$this->pickedPrice'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }
                }else if(str_replace("星","",$_REQUEST["pickedStar"]) == "三"){

                    self.$this->pickedStar = 3;
                    if($this->pickedPrice == 0 || $this->pickedPrice == "不限"){
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and stars =3","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }else {
                        $allrows = $mysqlPdo->find($this->tableName, "address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and stars = 3 and minPrice<'$this->pickedPrice'", "", "", "", "", [(intval($this->page) - 1) * intval($this->size), intval($this->page) * intval($this->size)]);
                    }
                }else if(str_replace("星","",$_REQUEST["pickedStar"]) == "四"){
                    self.$this->pickedStar = 4;
                    if($this->pickedPrice == 0 || $this->pickedPrice == "不限"){
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and stars =4","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }else{
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and stars = 4 and minPrice<'$this->pickedPrice'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }

                }else if(str_replace("星","",$_REQUEST["pickedStar"]) == "五"){
                    self.$this->pickedStar = 5;
                    if($this->pickedPrice == 0 || $this->pickedPrice == "不限"){
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and stars =5","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }else{
                        $allrows = $mysqlPdo->find($this->tableName,"address like '%$city%' and hotelName LIKE '%$this->pickedHotelName%' and stars = 5 and minPrice<'$this->pickedPrice'","","","","",[(intval($this->page)-1)*intval($this->size),intval($this->page)*intval($this->size)]);
                    }
                }
            }


            Response::show(200,'特色酒店列表获取成功',$allrows,'json');
        }


    }
}

$lister = HotelList::getInstance();
$lister->getHotels();
?>