-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 07 月 29 日 04:38
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- 数据库: `db_pet`
--
CREATE DATABASE IF NOT EXISTS `db_pet` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_pet`;

-- --------------------------------------------------------

--
-- 表的结构 `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) NOT NULL COMMENT '用户类型，1-课题组及实验委托方，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` int(22) NOT NULL COMMENT '联系电话',
  `mobilephone` int(22) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `administrator`
--

INSERT INTO `administrator` (`id`, `username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`) VALUES
(1, 'admin', 'YWRtaW4=', 'liubinpeng@jilvinfo.com', 1, '0', '0', '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cage`
--

CREATE TABLE IF NOT EXISTS `cage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animalsum` int(11) NOT NULL COMMENT '动物总数',
  `operationsum` int(11) NOT NULL COMMENT '指令总数',
  `newanimal` varchar(50) NOT NULL COMMENT '新生小动物',
  `pic` varchar(50) NOT NULL COMMENT '新生小动物配图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cageapply`
--

CREATE TABLE IF NOT EXISTS `cageapply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `erbiao` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '耳标',
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '笼盒申请者',
  `animalName` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT '动物名称',
  `breed` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '动物品种',
  `gene` int(10) NOT NULL COMMENT '基因',
  `furcolor` int(5) NOT NULL DEFAULT '0' COMMENT '''状态,1-黑色,2-白色,3-无毛,4-棕色,5-其它''',
  `ispost` int(5) NOT NULL DEFAULT '0' COMMENT '''状态,0-未提交,1-已提交''',
  `status` int(5) NOT NULL DEFAULT '0' COMMENT '''状态,0-未激活,1-已激活''',
  `grouptag` int(10) NOT NULL COMMENT '随机数相同则代表同一组',
  `message` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '驳回理由',
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '申请时间',
  `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '分配笼位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `cageapply`
--

INSERT INTO `cageapply` (`id`, `erbiao`, `username`, `animalName`, `breed`, `gene`, `furcolor`, `ispost`, `status`, `grouptag`, `message`, `time`, `location`) VALUES
(1, '001', 'haha', '测试', 'ICR', 3, 5, 0, 0, 0, '', '2015-07-29 03:09:50.927653', '');

-- --------------------------------------------------------

--
-- 表的结构 `cagelocation`
--

CREATE TABLE IF NOT EXISTS `cagelocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '笼盒拥有者',
  `ordernumber` int(11) NOT NULL COMMENT '编号',
  `animalname` varchar(50) NOT NULL COMMENT '动物名称',
  `breed` varchar(50) NOT NULL COMMENT '动物品种',
  `gene` varchar(50) NOT NULL COMMENT '基因类别',
  `furcolor` tinyint(1) NOT NULL COMMENT '状态,1-黑色,2-白色,3-无毛,4-棕色,5-其它,',
  `status` tinyint(1) NOT NULL COMMENT '状态,0-兽医审核未通过,2-审核通过',
  `position` varchar(50) NOT NULL COMMENT '笼盒位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) NOT NULL COMMENT '用户类型，1-课题组及实验委托方，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` int(22) NOT NULL COMMENT '联系电话',
  `mobilephone` int(22) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `doctor`
--

INSERT INTO `doctor` (`id`, `username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`) VALUES
(5, 'doctor', 'ZG9jdG9y', '704568245@qq.com', 1, '兽医', '兽医', '兽医', 2147483647, 2147483647, 704568245);

-- --------------------------------------------------------

--
-- 表的结构 `operation`
--

CREATE TABLE IF NOT EXISTS `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '编号',
  `erbiao` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '耳标',
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '指令时间',
  `operation` varchar(200) NOT NULL COMMENT '指令内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未执行,1-已执行',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `projector`
--

CREATE TABLE IF NOT EXISTS `projector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户类型，1-科研人员，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` int(22) NOT NULL COMMENT '联系电话',
  `mobilephone` varchar(11) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ',
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `projector`
--

INSERT INTO `projector` (`id`, `username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`, `regtime`) VALUES
(1, 'haha', 'cHJvamVjdGVy', '70456824@qq.com', 1, '1', '火大', '水', 567823, '15989923212', 564654656, '2015-07-29 04:16:15'),
(2, 'bibi', 'cHJvamVjdGVy', 'liubinpeng@jilvinfo.com', 0, '2', '兽医', '兽医', 2147483647, '15757118174', 704568245, '2015-07-23 07:46:45'),
(3, 'baby', 'cHJvamVjdGVy', 'liubinpeng@jilvinfo.com', 0, '1', 'haha', '刘斌鹏', 2147483647, '15757118174', 704568245, '2015-07-23 07:46:54'),
(4, 'home', 'cHJvamVjdGVy', 'liubinpeng@jilvinfo.com', 0, '1', '兽医', '兽医', 2147483647, '15757118174', 704568245, '2015-07-23 07:47:03'),
(5, 'he', 'cHJvamVjdGVy', 'liubinpeng@jilvinfo.com', 0, '1', '兽医', '兽医', 2147483647, '15757112321', 704568245, '2015-07-23 07:47:11'),
(6, 'she', 'cHJvamVjdGVy', 'liubinpeng@jilvinfo.com', 0, '1', 'haha', '刘斌鹏', 2147483647, '15757118174', 704568245, '2015-07-23 07:47:18'),
(7, 'lyh', 'cHJvamVjdGVy', 'liubinpeng@jilvinfo.com', 0, '1', '兽医', '兽医', 2147483647, '15757118174', 704568245, '2015-07-23 07:47:32'),
(8, 'zhouran', 'cHJvamVjdGVy', 'liubinpeng@jilvinfo.com', 0, '1', 'haha', '刘斌鹏', 2147483647, '15757118174', 704568245, '2015-07-23 07:47:41'),
(9, 'ceshi', 'MTIzNDU2', '704568245@qq.com', 0, '1', '测试', '测试', 561289, '15757118110', 7453461, '2015-07-29 04:18:54');

-- --------------------------------------------------------

--
-- 表的结构 `worker`
--

CREATE TABLE IF NOT EXISTS `worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0-未激活,1-已激活',
  `usertype` varchar(30) NOT NULL COMMENT '用户类型，1-课题组及实验委托方，2-兽医，3-工作人员，4-管理者',
  `projectername` varchar(30) NOT NULL COMMENT '课题组负责人姓名',
  `applyer` varchar(30) NOT NULL COMMENT '申请人姓名',
  `phone` int(22) NOT NULL COMMENT '联系电话',
  `mobilephone` int(22) NOT NULL COMMENT '联系手机',
  `QQ` int(22) NOT NULL COMMENT 'QQ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `worker`
--

INSERT INTO `worker` (`id`, `username`, `password`, `email`, `status`, `usertype`, `projectername`, `applyer`, `phone`, `mobilephone`, `QQ`) VALUES
(8, 'worker', 'd29ya2Vy', '704568245@qq.ocm', 1, '工作人员', '打工者', '刘斌鹏', 2147483647, 2147483647, 704568245);
