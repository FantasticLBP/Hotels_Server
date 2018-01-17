-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 20, 2017 at 05:44 AM
-- Server version: 5.5.42
-- PHP Version: 5.5.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_Hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '性别',
  `birthday` varchar(22) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出生日期',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`, `telephone`, `gender`, `birthday`, `name`) VALUES
(1, 'admin', 'MTIzNDU2', 1, NULL, '', NULL, ''),
(2, 'test', 'MTIzNDU2', 0, NULL, '', NULL, ''),
(3, '1', 'MQ==', 0, NULL, '', NULL, ''),
(4, '', '', 0, NULL, '', NULL, ''),
(5, '', '', 0, NULL, '', NULL, ''),
(6, '', '', 0, NULL, '', NULL, ''),
(7, '', '', 0, NULL, '', NULL, ''),
(8, '', '', 0, NULL, '', NULL, ''),
(9, '', '', 0, NULL, '', NULL, ''),
(10, '', '', 0, NULL, '', NULL, ''),
(11, '', '', 0, NULL, '', NULL, ''),
(12, '', '', 0, NULL, '', NULL, ''),
(13, '', '', 0, NULL, '', NULL, ''),
(14, '', '', 0, NULL, '', NULL, ''),
(15, '', '', 0, NULL, '', NULL, ''),
(16, '', '', 0, NULL, '', NULL, ''),
(17, '', '', 0, NULL, '', NULL, ''),
(18, '', '', 0, NULL, '', NULL, ''),
(19, '', '', 0, NULL, '', NULL, ''),
(20, '', '', 0, NULL, '', NULL, ''),
(21, '', '', 0, NULL, '', NULL, ''),
(22, '', '', 0, NULL, '', NULL, ''),
(23, '', '', 0, NULL, '', NULL, ''),
(24, '', '', 0, NULL, '', NULL, ''),
(25, '', '', 0, NULL, '', NULL, ''),
(26, '', '', 0, NULL, '', NULL, ''),
(27, '', '', 0, NULL, '', NULL, ''),
(28, '', '', 0, NULL, '', NULL, ''),
(29, '', '', 0, NULL, '', NULL, ''),
(30, '', '', 0, NULL, '', NULL, ''),
(31, '', '', 0, NULL, '', NULL, ''),
(32, '', '', 0, NULL, '', NULL, ''),
(33, '', '', 0, NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(10) NOT NULL COMMENT '评价id',
  `orderId` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '订单id',
  `evaluateTime` varchar(14) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '评价时间',
  `userId` int(10) NOT NULL COMMENT '用户id',
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '评价内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(10) NOT NULL COMMENT '酒店id',
  `hotelName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店名称',
  `subject` int(1) NOT NULL COMMENT '酒店主题',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店地址',
  `hasWifi` int(1) NOT NULL COMMENT '是否有wifi:1-有，2-无',
  `hasParking` int(1) NOT NULL COMMENT '可否停车：1-可以，2-不可以',
  `hasPackage` int(1) NOT NULL COMMENT '可否寄存行李：1-可以，2-不可以',
  `hasMeetingRoom` int(1) NOT NULL COMMENT '是否有会议室：1-有；2-无',
  `startTime` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '开业时间',
  `decorateTime` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '装修时间',
  `evaluationId` varchar(10) NOT NULL COMMENT '评价表单id',
  `image1` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店主图1',
  `image2` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店主图2',
  `image3` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店主图3',
  `image4` varchar(150) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL COMMENT '酒店主图4',
  `image5` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店主图5',
  `minPrice` int(10) NOT NULL COMMENT '该酒店房间的最低价格',
  `kindDescription` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店特色介绍',
  `kindType` int(1) NOT NULL DEFAULT '1' COMMENT '酒店类型：1、主题酒店；2、特色酒店；3、特惠酒店',
  `stars` int(1) NOT NULL DEFAULT '3' COMMENT '几星级'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hotelName`, `subject`, `address`, `hasWifi`, `hasParking`, `hasPackage`, `hasMeetingRoom`, `startTime`, `decorateTime`, `evaluationId`, `image1`, `image2`, `image3`, `image4`, `image5`, `minPrice`, `kindDescription`, `kindType`, `stars`) VALUES
(1, '杭州开元名都大酒店', 10, '浙江省杭州市 萧山区市心中路818号', 1, 1, 1, 1, '2017-02-17 09:25', '2017-02-01 01:05', '', 'postedImage/da7ca80fb78cf043573e88b2159b7f8f.jpg', 'postedImage/86f05f0c5a69f99c2579a01ee7509053.jpg', 'postedImage/3932348dc975f5955bd5951a0057a26d.jpg', 'postedImage/0888fd7c77f5fc94798d7050951fd866.jpg', 'postedImage/2c658d799380741587c6afd8aac0ac37.jpg', 630, '', 1, 5),
(2, '杭州凯悦酒店', 10, '杭州市 上城区 湖滨路28号 ，与平海路交叉口处。', 1, 1, 1, 1, '2017-02-17 09:25', '2017-02-01 01:05', '', 'postedImage/40149a54219f37b9003bb9cd1a4bbbf0.jpg', 'postedImage/4c52d560672617d7f901216891fd346c.jpg', '', '', '', 1300, '', 1, 5),
(3, '浙江百瑞国际大酒店 ', 10, '杭州市 西湖区 教工路195号 ，近文一路。', 1, 1, 1, 1, '2017-02-08 08:25', '2017-02-01 02:05', '', 'postedImage/146f01cbe2b8f3e02fca7cbba61a97c4.jpg', 'postedImage/7f2e16a87eb20b720d2738719f1f1718.jpg', '', '', '', 360, '', 1, 5),
(4, '杭州湖滨君亭酒店 ', 10, '杭州 上城区 解放路221号 ，与青年路交叉口处。 ', 1, 1, 1, 1, '2017-02-17 15:45', '2017-02-01 02:05', '', 'postedImage/dc47a3aa8cf2de95799a965f7bbdc88d.jpg', 'postedImage/7f2c02054306aab8724d356c96e24ea6.jpg', '', '', '', 350, '', 1, 5),
(5, '杭州西溪喜来登度假大酒店', 8, '杭州市 西湖区 紫金港路西溪天堂国际旅游综合体1号 ，近文苑路。', 1, 1, 2, 1, '2017-02-01 22:05', '2017-02-01 02:05', '', 'postedImage/403ffadad345740f84052ef4aeb7f69e.jpg', 'postedImage/e2318b9a8303a54703cd8d8b4d1da242.jpg', '', '', '', 58888, '', 1, 5),
(6, '杭州银隆君亭酒店', 4, '杭州市 萧山区 市心中路288号 ，地铁2号线杭发厂站C2出入口，近银隆百货。', 1, 1, 1, 1, '2017-02-01 02:05', '2017-02-01 02:05', '', 'postedImage/3683669029c6f721cabcacd5dcab004d.jpg', '', '', '', '', 455, '', 1, 5),
(7, '杭州国大雷迪森广场酒店', 10, '杭州市 下城区 体育场路333号 ，与延安路交叉口处，近地铁一号线武林广场站E出口。 ', 1, 1, 1, 1, '2017-02-09 09:30', '2017-02-08 08:25', '', 'postedImage/c3afdb89a6abe8c120ecfd3204f05416.jpg', '', '', '', '', 1200, '', 1, 5),
(8, '杭州西溪悦椿度假酒店 ', 3, '杭州 西湖区 紫金港路西溪天堂国际旅游综合体8号 ，近天目山路。', 1, 1, 1, 1, '2016-11-29 02:25', '2017-01-05 10:30', '', 'postedImage/02c3cabce2f2fa5d66232c04bf458f61.jpg', 'postedImage/53637a5047caae7c02e536dc0abf175f.jpg', 'postedImage/95d61d84790f8bb499ffa80311dcdcfb.jpg', 'postedImage/b719e6f2898f03dbe246c11039e984af.jpg', 'postedImage/59365c3abfebbf03d8ddecec8583112f.jpg', 450, '', 1, 5),
(9, '上海同文君亭酒店 ', 4, '上海 虹口区 四川北路1755号 ，近海伦西路。', 1, 1, 2, 2, '2016-08-03 08:25', '2015-06-01 01:00', '', 'postedImage/f5dade5a55ad0dfba6f899d67490e13b.jpg', 'postedImage/20ab48ab4d5c45917b5839fe4de53274.jpg', 'postedImage/46d154ca9599fb76b2f8677e232eb483.jpg', 'postedImage/a868488ff1c38cfea0bdf38920166830.jpg', 'postedImage/6dd13d10adcace84e14c32ebede9602f.jpg', 500, '', 1, 5),
(10, '北京金霖酒店 ', 11, '北京 东城区 珠市口东大街18号 ，近前门大街、地铁7号线珠市口C出口、刘根大舞台、天坛北门', 1, 2, 1, 1, '2017-02-25 15:21', '2015-09-01 01:05', '', 'postedImage/645c85da1d26ecc04d5cf9dd028e4cf2.jpg', 'postedImage/bcd1e9c483b7bdeedc2ef3166dd8164f.jpg', 'postedImage/5eb14823e56dcdc8f07a168180943bbc.jpg', 'postedImage/990ce46d3327d8dcfed3ee770569eca3.jpg', 'postedImage/f06e16d806413841d4fc5e02ad798c2d.jpg', 0, '', 1, 5),
(11, '北京远见桃花海度假别墅 ', 14, '北京市平谷区金海湖镇祖务村祖务西路1号(近京东大溶洞南1公里)', 0, 0, 1, 2, '2016-11-30 00:05', '2015-07-08 08:25', '', 'postedImage/0fd48841aaa47aa42c311bc67ca21249.jpg', 'postedImage/9dfff46582cec85297d063cc4013e880.jpg', 'postedImage/7d7bf44805b5461495b6f5597d5e6711.jpg', 'postedImage/db230513caf17ec12238103c07824717.jpg', 'postedImage/2feb18648fec5234fe818d9a82def2d1.jpg', 0, '坐标：平谷，精致的欧式独栋别墅，包含五室一厅，适合家庭、好友聚会。拥有私家庭影院、阳光露台、自助、烧烤选择丰富，附带娱乐设施。', 3, 4),
(12, '上海中福大酒店 ', 11, '上海市 黄浦区九江路619号(浙江中路路口 近南京路步行街 地铁一号线14号口)', 1, 1, 1, 1, '2017-03-01 02:05', '2016-11-29 01:05', '', 'postedImage/39ce5bea0649b2d5f192785d14638928.jpg', 'postedImage/863f94c00eecb6bc3caefe2824c2dcde.jpg', 'postedImage/a0937d9bd88cba1e924927cfdd61cc93.jpg', 'postedImage/b74b32b04cd8e395633bb524c134a913.jpg', 'postedImage/0a37e3ec03a676b82492e2edf18946e3.jpg', 0, '', 1, 4),
(13, '上海衡山路十二号豪华精选酒店 ', 8, '上海衡山路12号', 1, 1, 1, 1, '2013-01-01 09:00', '2012-12-12 09:00', '', 'postedImage/d8abed9deccec6c42b1fbc418555960a.jpg', 'postedImage/7658fffafdd63741e1526a8fb3f8d372.jpg', 'postedImage/10323faed1cdc5847e4980ccc344046d.jpg', 'postedImage/1be5197ebbcda7f85177a46e1bf60e3b.jpg', 'postedImage/98da2d61f1b7c546d1b6d4cd28cc5fa3.jpg', 0, 'L形的户外露台是云尚西餐厅的亮点所在，简约的设计和木质架构让人看着很舒服，欣赏着周遭唯美海派 楼宇景致和伤害天际线，怎一个惬意了得。', 3, 4),
(14, '广州圣丰索菲特大酒店', 11, '[广州东站/天河北/天平架]天河区广州大道中988号(近火车东站,天河体育中心,时代广场)', 1, 1, 1, 1, '2010-02-02 09:00', '2010-01-01 12:10', '', 'postedImage/7657d7de043de806f6d961baefe1d965.jpg', 'postedImage/1aa39255e7f62ec62e66f11312e1d002.jpg', 'postedImage/7d9d34f534d1875ed59f95ace9fb6bc7.jpg', 'postedImage/6cc96dab8eb907556aab1e7e315017d4.jpg', 'postedImage/8958a62012d5b4ba6dc449fe37e4edbe.jpg', 0, '酒店坐落在广州天河区中心地带，交通便利，购物、就餐、游览均一站式满足。独特的法国艺术气息在酒店洋溢，Spa水疗中心、24小时健康身体中心及室内全景游泳池，带来极致奢侈。', 3, 4),
(15, '千岛湖洲际度假酒店 ', 12, '杭州淳安县千岛湖镇羡山半岛', 1, 1, 1, 1, '2009-01-01 12:00', '2008-12-04 12:22', '', 'postedImage/08ff82ccff9ab865114a2a6cb97c31e3.jpg', 'postedImage/d918850851c55f4bf84c86d22012365f.jpg', 'postedImage/04317e202d3e6060c9fa7523e36956da.jpg', 'postedImage/62c1cf37892afc45385dc6c3e1a552bc.jpg', 'postedImage/1b42c8225a67a6a8d3e516bfddf6bf20.jpg', 0, '酒店位于羡山半岛深处，早上拉开窗帘就看到青山碧水，身心愉悦。在这里可以体验农家采摘、植树、羡山半岛游、山地卡丁车，小孩家长各得其乐。', 3, 5),
(16, '天使恋人情侣酒店(万象城店)', 13, '深圳罗湖区宝安南路嘉宾花园四楼(近万象城城市天地,大剧院地铁站F出口)', 1, 1, 1, 1, '2007-01-12 09:00', '2006-12-12 09:00', '', 'postedImage/e969c2bad2c8005d48f8db3ae0fbea28.jpg', 'postedImage/f95a500685ad9507042ef84312e9e95c.jpg', 'postedImage/aac4ec3ee296caa379126d9fd27169ea.jpg', 'postedImage/7cb4f6e0a61af888179f7695d5b867f1.jpg', 'postedImage/9d997770bd5eeab77b1a2cb2edfcfb2e.jpg', 970, '酒店以制造浪漫为使命，有着风情万种的烂漫温馨。海洋主题斑斓而梦幻，田园主题清新而狂野，些在激情大片中才会出现的场景，在天使恋人就可尽情享有。', 3, 4),
(17, '杭州新延安饭店 ', 9, '杭州下城区延安路直戒坛寺巷20号(地铁凤起路B出口,向前直行约500米,市中心武林银泰对面)', 1, 1, 1, 1, '2008-01-10 12:00', '2008-01-01 12:00', '', 'postedImage/11f09abeb56854af8fefa4051d3b8269.jpg', 'postedImage/32094f614d02aac0cdb6618cf9afcce8.jpg', 'postedImage/37290ff97bc9590580677868773279d2.jpg', 'postedImage/4a7ea1e4735fba950fd6fd3d0e62caa4.jpg', 'postedImage/8c8801ecc0edf97e324bb1f3593a254b.jpg', 0, '', 1, 3),
(18, '测试酒店', 1, '浙江杭州', 1, 1, 1, 1, '2017-04-13 17:55', '2017-04-05 08:30', '', 'postedImage/ce25763880e3c68ba5d7d34a396b6fbb.jpg', '', '', '', '', 120, '民宿中的战斗机', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) NOT NULL COMMENT 'id',
  `hotelId` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '酒店id',
  `merberId` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '会员id',
  `linkman` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人',
  `telephone` varchar(11) NOT NULL COMMENT '联系电话',
  `totalPrice` int(100) NOT NULL COMMENT '总金额',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '默认订单状态：0，待付款：1，未出行：2，待评价：3：完成',
  `roomId` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '房间id',
  `startTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '入住时间',
  `endTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '离开时间',
  `orderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '订单id',
  `livingPeriod` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '住宿日期'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `hotelId`, `merberId`, `linkman`, `telephone`, `totalPrice`, `status`, `roomId`, `startTime`, `endTime`, `orderId`, `livingPeriod`) VALUES
(1, '1', '22', '陈独秀', '15757118111', 647, 1, '1', '03-11', '03-16', 'G311258607986547', '5'),
(2, '1', '22', '陈独秀', '15757118111', 750, 1, '2', '03-11', '03-16', 'G311486018625494', '5'),
(3, '2', '22', '陈独秀', '15757118111', 1725, 2, '4', '03-12', '03-16', 'G311523493549341', '4'),
(4, '3', '22', '陈独秀', '15757118111', 385, 1, '5', '03-12', '03-16', 'G311536200436636', '4'),
(5, '5', '22', '陈独秀', '15757118111', 58888, 3, '8', '03-12', '03-24', 'G311541010208540', '12'),
(6, '7', '22', '陈独秀', '15757118111', 1268, 1, '10', '03-12', '03-22', 'G311543120932576', '10'),
(8, '6', '22', '陈独秀', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315612514598577', '9'),
(9, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315613502529444', '9'),
(10, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315614002838234', '9'),
(11, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315615109957328', '9'),
(12, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315615385577582', '9'),
(13, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315618046891151', '9'),
(14, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315618056108545', '9'),
(15, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315634677606486', '9'),
(16, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315635322879718', '9'),
(17, '6', '22', '昔年', '15757118111', 478, 0, '9', '03-15', '03-24', 'G315635386954149', '9'),
(18, '1', '22', '陈独秀', '15757118111', 647, 0, '1', '03-15', '03-18', 'G315654843400406', '3'),
(19, '1', '22', '陈独秀', '15757118111', 647, 0, '1', '03-15', '03-18', 'G315655009870417', '3'),
(20, '1', '22', '陈独秀', '15757118111', 647, 0, '1', '03-15', '03-18', 'G315655014515844', '3'),
(21, '1', '22', '陈独秀', '15757118111', 647, 1, '1', '03-15', '03-18', 'G315655452618177', '3'),
(22, '1', '22', '陈独秀', '15757118111', 647, 1, '1', '03-15', '03-18', 'G315656203241014', '3'),
(23, '1', '22', '昔年', '15757118111', 647, 1, '1', '03-15', '03-18', 'G315714702692829', '3'),
(24, '1', '2', '陈独秀', '15757118111', 647, 0, '1', '03-21', '03-24', 'G321112105917020', '3'),
(25, '1', '2', '陈独秀', '15757118111', 647, 1, '1', '03-21', '03-24', 'G321113430946111', '3'),
(26, '1', '2', '陈独秀', '15757118111', 647, 1, '1', '03-24', '03-29', 'G324260783827830', '4.'),
(27, '1', '2', '陈独秀', '15757118111', 647, 1, '1', '03-24', '03-31', 'G324264180727873', '6.'),
(28, '1', '2', '陈独秀', '15757118111', 647, 1, '1', '03-24', '03-30', 'G324265331798560', '5.'),
(29, '1', '2', '陈独秀', '15757118111', 647, 1, '1', '03-24', '03-30', 'G324267574728868', '5.'),
(30, '1', '2', '陈独秀', '15757118111', 647, 1, '1', '03-24', '03-31', 'G324269367472294', '6.'),
(31, '1', '2', '陈独秀', '15757118174', 647, 1, '1', '', '', 'G409332662195775', '0'),
(32, '11', '2', '陈独秀', '15757118111', 1145, 0, '14', '20-7-', '20-7-', 'G419043637011833', '0'),
(33, '11', '2', '陈独秀', '15757118111', 1145, 0, '14', '20-7-', '20-7-', 'G419043637018298', '0'),
(34, '11', '2', '陈独秀', '15757118111', 1145, 0, '14', '20-7-', '20-7-', 'G419043637258978', '0'),
(35, '11', '2', '陈独秀', '15757118111', 1145, 0, '14', '20-7-', '20-7-', 'G419043637270604', '0'),
(36, '11', '2', '陈独秀', '15757118111', 1145, 0, '14', '20-7-', '20-7-', 'G419043637459172', '0'),
(37, '11', '2', '陈独秀', '15757118111', 1145, 0, '14', '20-7-', '20-7-', 'G419043637587830', '0'),
(38, '11', '2', '陈独秀', '15757118111', 1145, 1, '14', '20-7-', '20-7-', 'G419044891303636', '0'),
(39, '3', '2', '陈独秀', '15757118111', 385, 1, '5', '20-7-', '20-7-', 'G419063244045206', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orderList`
--

CREATE TABLE `orderList` (
  `id` int(10) NOT NULL COMMENT '订单id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '订单用户',
  `order_id` int(14) NOT NULL COMMENT '订单id',
  `startTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '入住时间',
  `endTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '离店时间',
  `orderTime` varchar(19) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '下单时间',
  `price` int(10) NOT NULL COMMENT '订单金额',
  `hotel_id` int(10) NOT NULL COMMENT '酒店id',
  `room_id` int(10) NOT NULL COMMENT '房间id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `hotelId` int(10) NOT NULL COMMENT '酒店id',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '房屋类型',
  `znecancelPrice` int(10) NOT NULL DEFAULT '0' COMMENT '住哪儿可取消价格',
  `znePrice` int(10) NOT NULL DEFAULT '0' COMMENT '住哪儿不可取消价格',
  `delegatecancelPrice` int(10) NOT NULL DEFAULT '0' COMMENT '代理可取消价格',
  `delegatePrice` int(10) NOT NULL DEFAULT '0' COMMENT '代理不可取消价格',
  `hasWindow` int(1) NOT NULL DEFAULT '1' COMMENT '有无窗户：默认有',
  `hasWifi` int(1) NOT NULL DEFAULT '1' COMMENT '有无wifi：默认有',
  `equipmentCondtion` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '配套设施情况',
  `floor` varchar(100) NOT NULL DEFAULT '1' COMMENT '楼层：默认1楼',
  `square` int(4) NOT NULL COMMENT '面积：平米',
  `bedScale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '床大小',
  `availablePerson` int(3) NOT NULL COMMENT '可入住人数',
  `roomCount` int(3) NOT NULL COMMENT '总房间数量',
  `otherInfo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '其他信息',
  `count` int(10) NOT NULL COMMENT '可用房屋数量',
  `image1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '房屋附图1',
  `image2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '房屋附图2',
  `image3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '房屋附图3',
  `image4` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '房屋附图4',
  `image5` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '房屋附图5'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `hotelId`, `type`, `znecancelPrice`, `znePrice`, `delegatecancelPrice`, `delegatePrice`, `hasWindow`, `hasWifi`, `equipmentCondtion`, `floor`, `square`, `bedScale`, `availablePerson`, `roomCount`, `otherInfo`, `count`, `image1`, `image2`, `image3`, `image4`, `image5`) VALUES
(1, 1, '高级双床房', 647, 640, 640, 630, 1, 1, '全优 ', '2', 88, '3米宽', 2, 14, '红木高级大床房', 0, 'postedImage/9a936772b639e714a234ee79751b53ae.jpg', 'postedImage/30dc42709d7f5088d871046aafa3bc6c.jpg', 'postedImage/7f186a86f98aed5ac10e791f246f4f2b.jpg', '', ''),
(2, 1, '豪华双床房 ', 767, 750, 766, 745, 1, 1, '全优 ', '2', 120, '3米宽', 2, 8, '到店送果盘哦', 0, 'postedImage/d668731025cb755d55099fba08e43a44.jpg', 'postedImage/7958869bef6891df019c1f5741130c7b.jpg', 'postedImage/1ed004821082593f22269c6c1df3fe0b.jpg', '', ''),
(3, 1, '行政大床房 ', 1134, 1010, 1123, 1000, 1, 0, '全优 ', '1', 130, '3米宽', 2, 8, '果盘赠送', 0, 'postedImage/d054746f046e1a4a69a5f4c34c65709a.jpg', '', '', '', ''),
(4, 2, '凯悦客房 ', 1725, 1308, 1590, 1300, 1, 1, '全优 ', '3', 120, '3米宽', 2, 12, '无', 12, 'postedImage/6810c5fe04d8be64af56aac0139de29e.jpg', '', '', '', ''),
(5, 3, '高级标准房 ', 385, 379, 381, 360, 1, 1, '全优 ', '1', 80, '3米宽', 2, 12, '果盘赠送', 11, 'postedImage/c06b5ddac656451c0b160e42c9253282.jpg', 'postedImage/45476863a1c1ef89f3f31972ee08ffd3.jpg', 'postedImage/a939d3b73ea19dcae25ff571857f9fc3.jpg', '', ''),
(6, 4, '高级双床房', 359, 363, 399, 350, 1, 1, '全优 ', '6', 100, '3米宽', 2, 4, '无', 1, 'postedImage/5a599da64c12e10f6711489b4d8a3d2e.jpg', '', '', '', ''),
(7, 4, '亲子房 ', 499, 499, 529, 482, 1, 1, '全优 ', '6', 100, '3米宽', 2, 4, '无', 4, 'postedImage/9d776a335bf2384593d079c06f397f4e.jpg', 'postedImage/6c8e59409a99a83c15011000ec817016.jpg', 'postedImage/d9bd30b03217abfe22f4fe51deac7845.jpg', '', ''),
(8, 5, '总统套房 ', 58888, 58888, 58888, 58888, 1, 1, '优秀 ', '4', 300, '5米宽', 2, 10, '送水果盘', 10, 'postedImage/9d4add05db2cb379b6c4b970ea1ce66f.jpg', 'postedImage/47ec929c969c5743793baf0b8b7e1658.jpg', 'postedImage/7ecd3d952a26ffa65327a6f02ac71b31.jpg', 'postedImage/1c4f646bf853b2dd15349d3e2af00110.jpg', ''),
(9, 6, '君亭家庭房 ', 478, 469, 460, 455, 1, 1, '全优 ', '2', 80, '3米宽', 2, 2, '无', 0, 'postedImage/4cd182201714ca0d9f0f1b647a2961c1.jpg', '', '', '', ''),
(10, 7, '广场俱乐部商务房 ', 1268, 1208, 1238, 1200, 1, 1, '全优 ', '4', 120, '4米宽', 2, 12, '无', 12, 'postedImage/e913ec88af2282e971234c9a8048f82f.jpg', '', '', '', ''),
(11, 8, '特价房 ', 498, 480, 480, 450, 1, 1, '优秀 ', '1', 120, '3米宽', 2, 6, '无', 6, 'postedImage/8d23294fe90f424c0a09ea9a75f27371.jpg', 'postedImage/8d50f607fba1647f81276dca9fde2058.jpg', '', '', ''),
(12, 9, '君亭概念房 ', 829, 828, 850, 840, 1, 1, '良好 ', '2', 120, '3米宽', 2, 8, '无', 8, 'postedImage/9ba9230bf9e2e88916535f8d3be0f509.jpg', 'postedImage/eb3551b26e064c39f988b003de8b6457.jpg', '', '', ''),
(13, 9, '君亭套房', 1145, 1130, 1145, 1120, 1, 1, '良好 ', '3、4、8层', 45, '双人床2米', 2, 6, '无', 6, 'postedImage/08c340f4258e06d6e47ff9fa01208d53.jpg', '', '', '', ''),
(14, 11, '君亭套房', 1145, 1130, 1145, 1120, 1, 0, '良好 ', '3、4、8层', 45, '双人床2米', 2, 6, '红木高级大床房', 5, 'postedImage/e05894491f053d22ada95436428585b6.jpg', '', '', '', ''),
(15, 9, '豪华大床房 ', 523, 520, 520, 500, 0, 1, '良好 ', '2-10层', 25, '双人床1.8米', 2, 28, '不可加床', 28, 'postedImage/16abae03fe993b38ae34e5993b55430a.jpg', 'postedImage/07c50e1499c13f740ba02f2a229ecce6.jpg', 'postedImage/1ba1b8545ce7353f909a19a4d8a1f8fb.jpg', '', ''),
(16, 16, '天宫系列房', 999, 980, 980, 970, 1, 1, '全优 ', '8', 50, '3米宽', 2, 28, '到店送餐券', 28, 'postedImage/ef1635aa98be875051b9726ace819d7a.jpg', 'postedImage/baee4ad8dba7f45e7de1e5642b97ab7b.jpg', 'postedImage/8edfd78bb845d2c2b24da7546257e770.jpg', 'postedImage/00ef157b95893b566d474eda842783ba.jpg', 'postedImage/ad6b6001a0b357cb3113b313456906cc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(5) NOT NULL COMMENT '主题id',
  `subject` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主题名称',
  `description` varchar(100) NOT NULL COMMENT '主题介绍',
  `image` varchar(50) NOT NULL COMMENT '主题图片'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject`, `description`, `image`) VALUES
(1, '精品民宿', '一个故事，一种格调', 'subject/JPMS.jpg'),
(2, '茶园野趣', '道狭草木长，夕露沾我衣', 'subject/CYYQ.jpg'),
(3, '景点周边', '方便到达附近好玩的地方', 'subject/JDZB.jpg'),
(4, '城市周边', '游山玩水，不亦乐乎', 'subject/CSZB.jpg'),
(5, '公园之畔', '门庭柳碧翠，阶前草芬芳', 'subject/GYZP.jpg'),
(6, '温泉酒店', '把身体交给惬意温泉', 'subject/WQJD.jpg'),
(7, '背包客栈', '适合背包族的号客栈', 'subject/BBKZ.jpg'),
(8, '轻奢', '高品质的细节追求', 'subject/QS.jpg'),
(9, '新开酒店', '一切都是全新的', 'subject/XKJD.jpg'),
(10, '高端酒店', '最棒的硬件最好的享受', 'subject/GDJD.jpg'),
(11, '度假酒店', '最适合假期前往下榻', 'subject/DJJD.jpg'),
(12, '亲子酒店', '在这里给孩子爱与陪伴', 'subject/QZJD.jpg'),
(13, '情侣酒店', '与爱人共度好时光', 'subject/QLJD.jpg'),
(14, '山水酒店', '住在诗意山水间', 'subject/SSJD.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL COMMENT 'id',
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '昵称、手机号',
  `gender` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `birthday` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '生日',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `avator` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '头像',
  `account` int(20) NOT NULL DEFAULT '0' COMMENT '账户余额',
  `nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '昵称'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `telephone`, `gender`, `birthday`, `password`, `avator`, `account`, `nickname`) VALUES
(1, '15757118174', '男', '1995-02-20', '123456', '', 0, '大忙人'),
(2, '15757118111', '男', '2009-3-24', '123456', 'avator/7e5443fff29b245a0e6f127ea51c9cb1.jpg', 0, '陈独秀'),
(3, '15757118133', '', '', '123456', '', 0, '胡德全');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderList`
--
ALTER TABLE `orderList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评价id';
--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '酒店id',AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `orderList`
--
ALTER TABLE `orderList`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单id';
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主题id',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=4;