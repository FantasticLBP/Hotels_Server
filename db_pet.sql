-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 27, 2016 at 04:20 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_pet`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) NOT NULL COMMENT '用户类型，1-课题组及实验委托方，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` int(22) NOT NULL COMMENT '联系电话',
  `mobilephone` int(22) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`) VALUES
('admin', 'YWRtaW4=', '2469312186@qq.com', 1, '管理者', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `applyer`
--

CREATE TABLE `applyer` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `usertype` varchar(4) NOT NULL,
  `projectername` varchar(30) NOT NULL,
  `phone` int(22) NOT NULL,
  `applyer` varchar(30) NOT NULL,
  `QQ` int(22) NOT NULL,
  `mobilephone` int(22) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applyer`
--

INSERT INTO `applyer` (`username`, `password`, `usertype`, `projectername`, `phone`, `applyer`, `QQ`, `mobilephone`, `email`) VALUES
('2', '3', '2', '4', 4, '要', 2, 2, '2@11.com'),
('222', '222', '1', '杨春雷', 123, '杨春雷', 12, 12, '1@11.com');

-- --------------------------------------------------------

--
-- Table structure for table `cage`
--

CREATE TABLE `cage` (
  `cageid` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A0',
  `animalsum` int(4) NOT NULL DEFAULT '0' COMMENT '动物总数',
  `operationsum` int(4) NOT NULL DEFAULT '0' COMMENT '指令总数',
  `newanimal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新生小动物',
  `pic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新生小动物配图',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `formerid` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `assert` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cage`
--

INSERT INTO `cage` (`cageid`, `username`, `number`, `animalsum`, `operationsum`, `newanimal`, `pic`, `time`, `formerid`, `assert`) VALUES
('02010AA1', '111', '1', 2, 0, NULL, NULL, '2015-12-08 17:18:07', '201509140003', 1),
('02010AA2', '111', '2', 0, 0, NULL, NULL, '2015-11-23 02:22:24', '201509130012', 1),
('02010AA3', '111', '3', 1, 0, NULL, NULL, '2015-11-23 02:22:26', '201509070000', 1),
('02010AA4', '111', '4', 0, 0, NULL, NULL, '2015-11-23 02:22:27', '201509140004', 1),
('02010AA5', '111', '5', 2, 0, NULL, NULL, '2015-11-23 02:22:28', '201509140001', 1),
('02010AA6', '111', '6', 0, 0, NULL, NULL, '2015-11-23 06:50:35', '201511230000', 0),
('02010AA9', '111', '9', 2, 0, NULL, NULL, '2015-11-23 02:22:30', '201509140002', 1),
('02010AB1', '111', '10', 2, 0, NULL, NULL, '2015-11-23 02:22:31', '201511090001', 1),
('02010AB4', '111', '13', 1, 0, NULL, NULL, '2015-11-23 02:22:33', '201509140000', 1),
('02010AB9', '111', '18', 1, 0, NULL, NULL, '2015-12-08 17:25:57', '201512090000', 1),
('02010AC3', '111', '21', 1, 0, NULL, NULL, '2015-11-23 02:22:34', '201509130002', 1),
('02020AA9', '111', '9', 1, 0, NULL, NULL, '2015-12-08 17:28:46', '201512090001', 1),
('02020BA4', '111', '4', 1, 0, NULL, NULL, '2015-11-23 02:22:35', '201508310000', 1),
('02020BB7', '111', '16', 3, 0, NULL, NULL, '2015-11-23 02:22:37', '201508310001', 1),
('02020CA1', 'baby', '1', 1, 0, NULL, NULL, '2016-04-27 00:48:33', '201604270000', 0),
('02030AA1', '111', '1', 5, 0, NULL, NULL, '2015-12-09 08:16:27', '201509140008', 1),
('02030AA3', '111', '3', 2, 0, NULL, NULL, '2015-11-23 02:22:38', '201509070002', 1),
('02030AA4', '111', '4', 5, 0, NULL, NULL, '2015-11-23 02:22:39', '201508130001', 1),
('02030AA5', '111', '5', 4, 0, NULL, NULL, '2015-11-23 02:22:41', '201508180003', 1),
('02030AB6', '111', '15', 1, 0, NULL, NULL, '2015-11-23 02:22:44', '201508190001', 1),
('02030AB9', '111', '18', 2, 0, NULL, NULL, '2015-12-08 16:26:52', '201512080000', 0),
('02030AH9', '321', '72', 1, 0, NULL, NULL, '2015-11-23 02:22:50', '201511090000', 1),
('02030BA2', '111', '2', 1, 0, NULL, NULL, '2016-04-26 06:54:37', '201511250000', 0),
('02040AA2', '111', '2', 0, 0, NULL, NULL, '2015-11-23 05:33:29', '201509140006', 0),
('02040AC1', '111', '19', 0, 0, NULL, NULL, '2015-11-23 05:34:55', '201509140005', 0),
('02050AA3', 'wind', '3', 4, 0, NULL, NULL, '2015-12-09 02:11:26', '201512090002', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cageapply`
--

CREATE TABLE `cageapply` (
  `cageid` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(4) NOT NULL DEFAULT '0',
  `ispost` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `message` varchar(200) COLLATE utf8_unicode_ci DEFAULT '无',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cageapply`
--

INSERT INTO `cageapply` (`cageid`, `username`, `number`, `ispost`, `status`, `message`, `time`) VALUES
('201508130103', '222', 0, 1, 0, '无', '2015-11-23 06:46:42'),
('201508180002', '111', 1, 1, 2, 'dsadasdas', '2015-08-18 06:36:09'),
('201508180003', '111', 4, 1, 1, '无', '2015-09-14 06:52:54'),
('201508310000', '111', 1, 1, 1, '无', '2015-08-31 06:42:49'),
('201508310001', '111', 3, 1, 1, '无', '2015-08-31 07:21:13'),
('201509070000', '111', 4, 1, 0, '无', '2016-04-26 06:54:53'),
('201509070002', '111', 5, 1, 1, '无', '2015-12-09 08:20:50'),
('201509130000', '111', 1, 1, 3, '无', '2015-09-13 07:55:42'),
('201509130001', '111', 0, 1, 3, '无', '2015-09-13 07:57:15'),
('201509130002', '111', 5, 1, 1, '无', '2015-09-13 12:38:32'),
('201509130003', '111', 1, 1, 1, '无', '2015-09-13 13:15:20'),
('201509130007', '111', 1, 1, 1, '无', '2015-09-13 13:21:01'),
('201509130011', '111', 0, 1, 3, '无', '2015-09-14 04:35:07'),
('201509130012', '111', 1, 1, 1, '无', '2015-09-14 02:11:38'),
('201509130013', '111', 1, 1, 3, '无', '2015-09-14 06:57:50'),
('201509140000', '111', 1, 1, 1, '无', '2015-09-14 04:31:48'),
('201509140001', '111', 2, 1, 1, '无', '2015-09-14 04:31:32'),
('201509140002', '111', 4, 1, 1, '无', '2015-09-14 04:34:29'),
('201509140003', '111', 2, 1, 1, '无', '2015-11-23 06:37:01'),
('201509140004', '111', 0, 1, 1, '无', '2015-09-14 06:53:36'),
('201509140005', '111', 0, 1, 1, '无', '2015-11-23 05:34:55'),
('201509140006', '111', 0, 1, 1, '无', '2015-11-23 05:33:29'),
('201509140007', '111', 0, 1, 1, '无', '2015-11-23 05:33:53'),
('201509140008', '111', 9, 1, 1, '无', '2016-04-27 01:52:50'),
('201511090000', '321', 1, 1, 1, '无', '2015-11-09 03:35:05'),
('201511090001', '111', 2, 1, 1, '无', '2015-11-09 07:06:57'),
('201511230000', '111', 0, 1, 1, '无', '2015-11-23 06:50:35'),
('201511250000', '111', 1, 1, 1, '无', '2016-04-26 06:54:37'),
('201512080000', '111', 2, 1, 1, '无', '2015-12-08 05:59:21'),
('201512090000', '111', 1, 1, 1, '无', '2015-12-08 17:25:15'),
('201512090001', '111', 1, 1, 1, '无', '2015-12-08 17:28:17'),
('201512090002', 'wind', 5, 1, 1, '无', '2015-12-09 02:16:04'),
('201512090003', 'wind', 1, 1, 2, '点撒打算', '2015-12-09 02:04:50'),
('201512090004', '111', 5, 0, 0, '无', '2015-12-09 08:31:34'),
('201601140000', '111', 0, 0, 0, '无', '2016-01-14 03:46:31'),
('201603120000', '111', 1, 0, 0, '无', '2016-03-12 04:06:46'),
('201604270000', 'baby', 1, 1, 1, '无', '2016-04-27 00:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `cagelocation`
--

CREATE TABLE `cagelocation` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL COMMENT '笼盒拥有者',
  `ordernumber` int(11) NOT NULL COMMENT '编号',
  `animalname` varchar(50) NOT NULL COMMENT '动物名称',
  `breed` varchar(50) NOT NULL COMMENT '动物品种',
  `gene` varchar(50) NOT NULL COMMENT '基因类别',
  `furcolor` tinyint(1) NOT NULL COMMENT '状态,1-黑色,2-白色,3-无毛,4-棕色,5-其它,',
  `status` tinyint(1) NOT NULL COMMENT '状态,0-兽医审核未通过,2-审核通过',
  `position` varchar(50) NOT NULL COMMENT '笼盒位置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) NOT NULL COMMENT '用户类型，1-课题组及实验委托方，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  `mobilephone` varchar(11) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`) VALUES
('doctor', 'ZG9jdG9y', '43667@qq.com', 1, '2', '外星人', '外星人', '13919621233', '13919621233', 325243543),
('doctor123', 'ZG9jdG9yMTIz', 'doctor123@qq.com', 0, '2', '兽医', '兽医', '2147483647', '2147483647', 704568245);

-- --------------------------------------------------------

--
-- Table structure for table `instruction`
--

CREATE TABLE `instruction` (
  `insid` varchar(20) NOT NULL,
  `mouseid` varchar(16) NOT NULL,
  `txt` varchar(200) NOT NULL,
  `ispost` int(2) NOT NULL DEFAULT '0',
  `state` int(2) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instruction`
--

INSERT INTO `instruction` (`insid`, `mouseid`, `txt`, `ispost`, `state`, `time`) VALUES
('2015081300000010000', '201508130000001', '除尾', 1, 4, '2015-11-09 07:20:26'),
('2015081300000010001', '201508130000001', '剪去为把', 1, 4, '2015-12-09 02:38:49'),
('2015081300000010002', '201508130000001', '多萨达', 1, 1, '2015-11-09 07:28:56'),
('2015081300000010003', '201508130000001', 'wuli涛涛', 1, 0, '2015-12-08 05:32:59'),
('2015081300000020000', '201508130000002', '撒打算打', 1, 2, '2015-11-09 07:28:59'),
('2015081300010050000', '201508130001005', 'everybody哈拉', 1, 0, '2015-12-08 04:31:20'),
('2015083100000010000', '201508310000001', '打算打算打', 1, 4, '2015-09-02 02:48:28'),
('2015083100000010001', '201508310000001', '1221221', 1, 2, '2015-09-02 02:54:36'),
('2015083100000010002', '201508310000001', 'dasdadsa打打撒旦', 1, 2, '2015-09-02 02:53:41'),
('2015083100000010003', '201508310000001', '是大三大四的', 1, 4, '2015-09-07 02:11:46'),
('2015083100010010000', '201508310001001', '点撒打算', 1, 4, '2015-09-09 07:12:33'),
('2015083100010020000', '201508310001002', '的dadsad', 1, 4, '2015-09-14 08:00:21'),
('2015083100010020001', '201508310001002', '杨春雷', 1, 1, '2015-09-13 07:17:36'),
('2015083100010030000', '201508310001003', '的撒打算的', 1, 1, '2015-09-09 06:34:08'),
('2015083100010030001', '201508310001003', '1', 1, 2, '2015-09-14 06:54:30'),
('2015083100010030003', '201508310001003', '3', 1, 4, '2015-09-14 06:55:49'),
('2015083100010030004', '201508310001003', '4', 1, 1, '2015-09-09 06:34:11'),
('2015083100010030005', '201508310001003', '5杨春雷', 1, 4, '2015-09-02 02:50:10'),
('2015083100010030006', '201508310001003', '7大师', 1, 2, '2015-11-23 06:55:56'),
('2015090700000010000', '201509070000001', '点撒打算', 1, 0, '2015-12-06 06:23:00'),
('2015090700000010001', '201509070000001', '点撒打算', 1, 0, '2015-12-06 06:23:05'),
('2015090700000020000', '201509070000002', 'd大撒旦撒', 1, 0, '2015-12-06 06:33:01'),
('2015090700000020001', '201509070000002', '的撒打算打算11232dsad', 1, 0, '2015-12-06 06:33:48'),
('2015090700000030000', '201509070000003', '撒打算打', 1, 0, '2015-12-08 04:24:31'),
('2015090700000040000', '201509070000004', '啦啦啦啦123', 1, 0, '2015-12-08 04:25:05'),
('2015090700020010000', '201509070002001', '除尾', 1, 4, '2015-11-23 06:57:59'),
('2015090700020010001', '201509070002001', '消毒', 1, 4, '2015-11-23 06:58:01'),
('2015090700020010002', '201509070002001', '除尾', 1, 1, '2015-12-09 08:12:39'),
('2015090700020020000', '201509070002002', '的撒打算打算', 1, 0, '2015-12-08 04:18:11'),
('2015090700020020001', '201509070002002', 'lv啦啦', 1, 0, '2015-12-08 04:20:57'),
('2015091400020010000', '201509140002001', '除尾', 1, 1, '2015-09-14 06:54:29'),
('201509140008001', '201509140008001', 'clean its fur', 1, 0, '2016-04-25 16:40:43'),
('2015091400080010000', '201509140008001', 'kill ', 1, 0, '2016-04-25 16:39:37'),
('201509140008002', '201509140008002', 'kill it', 1, 0, '2016-04-26 01:30:39'),
('2015091400080020000', '201509140008002', 'wash it', 1, 0, '2016-04-26 02:12:55'),
('2015091400080030000', '201509140008003', 'happy', 1, 0, '2016-04-27 01:14:16'),
('2015091400080040000', '201509140008004', 'bite', 1, 0, '2016-04-27 00:44:05'),
('2015110900010010000', '201511090001001', '傻呵呵', 1, 0, '2015-12-08 05:34:18'),
('2015120800000010000', '201512080000001', '打扫打扫打扫', 1, 0, '2015-12-08 05:58:27'),
('2015120900020010000', '201512090002001', '切尾', 1, 4, '2015-12-09 02:14:46'),
('2015120900020020000', '201512090002002', '除毛', 1, 4, '2015-12-09 02:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `mouseapply`
--

CREATE TABLE `mouseapply` (
  `mouseid` varchar(16) NOT NULL,
  `cageid` varchar(12) NOT NULL,
  `id` varchar(12) NOT NULL DEFAULT '1',
  `erbiao` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `gene` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `furcolor` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mouseapply`
--

INSERT INTO `mouseapply` (`mouseid`, `cageid`, `id`, `erbiao`, `name`, `breed`, `gene`, `furcolor`, `time`) VALUES
('201508130000001', '201508130001', '1', 'er', 'n', 'b', 'g', '黑色', '2015-08-27 09:03:03'),
('201508130000002', '201508130001', '2', '323', '323', '323', '32', '黑色', '2015-08-13 09:02:14'),
('201508130000003', '201508130001', '3', '3', '3', '3', '3', '无毛', '2015-08-13 09:02:19'),
('201508130001004', '201508130001', '4', '32', '32', '44123', '32', '棕色', '2015-08-13 09:02:24'),
('201508130001005', '201508130001', '5', 'das', 'dsa', 'dsa', 'ds', '黑色', '2015-08-13 09:02:28'),
('201508180001001', '201508180001', '1', '1', '1', '1', '', '无毛', '2015-08-18 06:33:45'),
('201508180002001', '201508180002', '1', '001', '饥饿者优秀', 'C57BL/6', '杂合', '棕色', '2016-04-14 02:37:06'),
('201508180002002', '201508180002', '2', '002', 'www', '法', '方法', '黑色', '2016-04-14 07:12:57'),
('201508180002003', '201508180002', '3', '003', '仔', 'BALB/c', '纯合', '黑色', '2016-04-14 07:12:40'),
('201508180003001', '201508180003', '11', '1', '1', '1', '1', '无毛', '2015-08-18 07:19:19'),
('201508180003002', '201508180003', '33', '33', '33', '33', '33', '无毛', '2015-08-19 06:20:21'),
('201508180003003', '201508180003', '33', '1', '1', '1', '1', '无毛', '2015-08-18 07:26:31'),
('201508180003004', '201508180003', '33', '2', '2', '2', '', '无毛', '2015-08-18 07:37:54'),
('201508190001001', '201508190001', '1', '1', '1', '1', '1', '无毛', '2015-08-19 08:02:13'),
('201508210001001', '201508210001', '1', '1', '其味无穷', '1', '1', '无毛', '2015-08-21 05:47:09'),
('201508210001002', '201508210001', '2', '未完全俄', 'q', '2', '2', '棕色', '2015-08-21 05:47:25'),
('201508240001001', '201508240001', '33', '33', '33', '33', '33', '黑色', '2015-08-24 04:24:48'),
('201508270001001', '201508270001', '1', 'ewe', 'ewew', 'ewe', 'ewe', '无毛', '2015-08-27 08:17:41'),
('201508310000001', '201508310000', '1', '1', '1', '1', '1', '黑色', '2015-08-31 06:42:13'),
('201508310001001', '201508310001', '1', '俄文', '我', '1', '1', '黑色', '2015-08-31 07:19:56'),
('201508310001002', '201508310001', '2', '2', '33', '23', '3', '黑色', '2015-08-31 07:20:18'),
('201508310001003', '201508310001', '31', '3', '3', '3', '3', '黑色', '2015-08-31 07:20:32'),
('201509070000001', '201509070000', '1', '1111', '111', '1', '11', '黑色', '2015-09-07 01:47:14'),
('201509070000002', '201509070000', '22', '33', '44', '55', '66', '黑色', '2015-09-13 09:38:38'),
('201509070000003', '201509070000', '333', '33', '44', '55', '66', '无毛', '2015-09-13 09:40:15'),
('201509070000004', '201509070000', '4', '22', '33', '44', '55', '无毛', '2015-09-13 09:50:50'),
('201509070002001', '201509070002', '1', '大大松', '倒萨', '恶趣味', '倒萨', '无毛', '2015-09-07 08:57:03'),
('201509070002002', '201509070002', '2', '大师', '2', '2', '2', '黑色', '2015-09-07 08:57:14'),
('201509130002002', '201509130002', '2', '3', '4', '5', '6', '无毛', '2015-09-13 09:54:00'),
('201509130002003', '201509130002', '2', '33', '33', '33', '33', '无毛', '2015-09-13 11:43:00'),
('201509130002004', '201509130002', '1', '2', '3', '4', '5', '无毛', '2015-09-13 12:38:01'),
('201509130002005', '201509130002', '4', '3', '2', '1', '0', '棕色', '2015-09-13 12:38:32'),
('201509130003001', '201509130003', '1', '1', '2', '2', '2', '无毛', '2015-09-13 08:10:56'),
('201509130007001', '201509130007', '', '', '', '', '', '黑色', '2015-09-13 13:19:18'),
('201509130012001', '201509130012', '1', '大苏打', '大师', '倒萨', '倒萨', '无毛', '2015-09-14 02:11:38'),
('201509130013001', '201509130013', '1', '耳标', 'A', 'BC', 'C', '无毛', '2015-09-14 06:57:22'),
('201509140000001', '201509140000', '2', '3', '4', '5', '6', '黑色', '2015-09-14 01:59:46'),
('201509140001001', '201509140001', '1', '2', '3', '4', '5', '无毛', '2015-09-14 04:30:35'),
('201509140001002', '201509140001', '2', '1', '1', '1', '1', '棕色', '2015-09-14 04:31:04'),
('201509140002001', '201509140002', '1', '1', '1', '1', '1', '黑色', '2015-09-14 04:32:37'),
('201509140002002', '201509140002', '2', '44444', '1', '1', '1', '棕色', '2015-09-14 04:32:47'),
('201509140002003', '201509140002', '3', '1', '1', '1', '1', '无毛', '2015-09-14 04:34:03'),
('201509140002004', '201509140002', '4', '1', '1', '1', '132131231', '棕色', '2015-09-14 04:34:29'),
('201509140005001', '201509140005', '1', '0001', '金刚狼', 'ICR', '杂合', '棕色', '2016-04-14 02:34:11'),
('201509140008001', '201509140008', '1', '1', 'noname', '裸鼠', '纯合', '白色', '2016-04-13 05:14:03'),
('201509140008002', '201509140008', '2', '2', '小黑', 'C57BL/6', '黑色', '黑色', '2016-04-13 02:40:48'),
('201509140008003', '201509140008', '3', '3', '黑金刚', '裸鼠', '野生型', '黑色', '2016-04-14 01:26:49'),
('201509140008004', '201509140008', '4', '4', '小黑', 'ICR', '纯合', '黑色', '2016-04-13 02:41:24'),
('201509140008005', '201509140008', '5', '5', '小棕', 'BALB/c', '野生型', '棕色', '2016-04-13 02:41:39'),
('201511090000001', '201511090000', '1', '1', '1', '1', '1', '无毛', '2015-11-09 03:34:16'),
('201511090001001', '201511090001', '1', '', 'sdas', 'xx', 'cx', '无毛', '2015-11-09 07:05:28'),
('201511090001002', '201511090001', '2', '', 'dsad', 'dsd', 'dsd', '无毛', '2015-11-09 07:05:48'),
('201511250000001', '201511250000', '1', '1', '是啊', 'ICR', 'ICR', '黑色', '2016-04-25 15:26:10'),
('201604200000001', '201604200000', '1', '001', '测试', 'ICR', '纯合', '黑色', '2016-04-20 11:03:03'),
('201604230000001', '201604230000', '1', 'a1', '阿凡达', 'ICR', '纯合', '黑色', '2016-04-23 06:10:45'),
('201604240000001', '201604240000', '1', '010', '战斗机', 'ICR', '杂合', '黑色', '2016-04-24 09:15:42'),
('201604250000001', '201604250000', '1', '1', '蘑菇', 'ICR', '纯合', '黑色', '2016-04-25 13:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `projector`
--

CREATE TABLE `projector` (
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户类型，1-科研人员，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` varchar(22) NOT NULL COMMENT '联系电话',
  `mobilephone` varchar(11) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projector`
--

INSERT INTO `projector` (`username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`) VALUES
('111', 'MTEx', '12345678@qq.com', 1, '1', 'lbp666lbp', '刘斌鹏', '561375', '15757118174', 704568245),
('applyer5555', 'aHh3MTIzNDU2', '1611274445@qq.com', 0, '1', '胡夏雯', '胡夏雯', '110110', '15757111324', 1455779204),
('baby', 'MTIzNDU2', 'liubinpeng@zd0806.com', 0, '1', '刘斌鹏', '刘斌鹏', '2147483647', '15757118174', 704568245),
('baby2', 'MTIzNDU2', 'liubinpeng@zd0806.com', 0, '1', '刘斌鹏', '刘斌鹏', '2147483647', '15757118174', 704568245),
('baby3', 'MTIzNDU2', 'liubinpeng@zd0806.com', 0, '1', '刘斌鹏', '刘斌鹏', '2147483647', '15757118174', 704568245),
('baby4', 'YmFieTQ=', 'liubinpeng@zd0806.com', 0, '1', '刘斌鹏', '刘斌鹏', '2147483647', '15757118174', 704568245),
('projecter2', 'MTExMTEx', '704568245@qq.com', 0, '1', 'lbp', '刘斌鹏', '561375', '15757118174', 704568245),
('projecter3', 'MTExMTEx', '563245@qq.com', 0, '1', '呼哈三', '呼哈三', '1575718174', '1575718174', 24325),
('projecter4', 'MTExMTEx', '704568245@qq.com', 0, '1', 'lbp', '刘斌鹏', '561375', '15757118174', 704568245),
('projecter5', 'cHJvamVjdGVyNQ==', '704568245@qq.com', 0, '1', 'lbp', '刘斌鹏', '561375', '15757118174', 704568245);

-- --------------------------------------------------------

--
-- Table structure for table `sessionTab`
--

CREATE TABLE `sessionTab` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessionTab`
--

INSERT INTO `sessionTab` (`username`) VALUES
('1112');

-- --------------------------------------------------------

--
-- Table structure for table `sessionTab1`
--

CREATE TABLE `sessionTab1` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessionTab1`
--

INSERT INTO `sessionTab1` (`username`) VALUES
('work1');

-- --------------------------------------------------------

--
-- Table structure for table `sessionTab2`
--

CREATE TABLE `sessionTab2` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessionTab2`
--

INSERT INTO `sessionTab2` (`username`) VALUES
('doctor111');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) NOT NULL COMMENT '用户类型，1-课题组及实验委托方，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  `mobilephone` varchar(11) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`) VALUES
('worker', 'd29ya2Vy', 'work101@qq.com', 0, '3', '孟楠', '孟楠', '13924623412', '13919612483', 43647),
('worker333', 'd29ya2Vy', 'worker@qq.com', 1, '3', '金刚狼', '工人', '2147483647', '134636454', 704568222);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `applyer`
--
ALTER TABLE `applyer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cage`
--
ALTER TABLE `cage`
  ADD PRIMARY KEY (`cageid`);

--
-- Indexes for table `cageapply`
--
ALTER TABLE `cageapply`
  ADD PRIMARY KEY (`cageid`);

--
-- Indexes for table `cagelocation`
--
ALTER TABLE `cagelocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `instruction`
--
ALTER TABLE `instruction`
  ADD PRIMARY KEY (`insid`);

--
-- Indexes for table `mouseapply`
--
ALTER TABLE `mouseapply`
  ADD PRIMARY KEY (`mouseid`);

--
-- Indexes for table `projector`
--
ALTER TABLE `projector`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cagelocation`
--
ALTER TABLE `cagelocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;