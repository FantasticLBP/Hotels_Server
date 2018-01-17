-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 26, 2017 at 12:37 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_cro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL COMMENT 'id',
  `username` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `operation` int(10) NOT NULL COMMENT '权限，1-全部权限，2-查询权限，3-修改权限，删除权限，查询权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `operation`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1611274445@qq.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base`
--

CREATE TABLE `base` (
  `id` int(2) NOT NULL COMMENT '记录编号',
  `webtitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站名称',
  `companyIntroduce` text COLLATE utf8_unicode_ci NOT NULL COMMENT '公司介绍',
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司地址',
  `administratorTel` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '行政综合部电话',
  `enzymeTel` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '酶事业部电话',
  `plateTel` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '平皿事业部电话',
  `fax` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '传真',
  `adminiatratorEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '行政部邮箱',
  `MarketDepartmentEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '市场部邮箱',
  `webLogo` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站logo图片路径',
  `wechatBarcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '微信二维码图片路径',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base`
--

INSERT INTO `base` (`id`, `webtitle`, `companyIntroduce`, `address`, `administratorTel`, `enzymeTel`, `plateTel`, `fax`, `adminiatratorEmail`, `MarketDepartmentEmail`, `webLogo`, `wechatBarcode`, `time`) VALUES
(1, '杭州北望生物技术有限公司', '杭州北望生物技术有限公司坐落在人间天堂—杭州，建立了中药、化学药研究开发团队，为药物研究开发提供了全面的技术服务平台。', '杭州市拱墅区祥园路39-2号5幢5楼501室-18', '0571-858375', '0571-882578', '0571-858375', ' 0571-85837527', 'office@lionbiotech.com', ' sales@lionbiotech.com', 'style/images/8bd66b26c95216f1c25c999e4df70c16.png', 'style/images/63d772c53e0e044126e01790095265dd.png', '2017年07月12日');

-- --------------------------------------------------------

--
-- Table structure for table `bigKind`
--

CREATE TABLE `bigKind` (
  `id` int(10) NOT NULL COMMENT '种类id',
  `kindName` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '种类名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bigKind`
--

INSERT INTO `bigKind` (`id`, `kindName`) VALUES
(1, '药检试剂'),
(2, '生化酶'),
(3, '检测试剂'),
(4, '消毒用试剂'),
(5, '细胞因子'),
(6, '其他产品'),
(7, '检测试纸卡'),
(8, '速测盒'),
(9, '检测仪器');

-- --------------------------------------------------------

--
-- Table structure for table `birthday`
--

CREATE TABLE `birthday` (
  `id` int(5) NOT NULL COMMENT '生日福利编号',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '生日福利内容',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间',
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `birthday`
--

INSERT INTO `birthday` (`id`, `content`, `time`, `image`) VALUES
(0, '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2016年，是值得纪念的一年，初生牛犊的我，有幸进入了我们这个朝气蓬勃的公司，对未来充满着憧憬以及彷徨。从刚加入公司到现在已经过去了大半年时间，我从中了解到了我以前没有接触过的东西，并从中学到了很多，这其中免不了有公司的领导和公司的同事对我的帮助以及关心。在10月份我生日之际，公司给我送来了一份生日蛋糕券，让我感觉到了如同回家一般的温暖，切实体现了公司对员工的重视和以人为本的文化理念，感谢公司对员工的关爱，相信我会用实际行动证明，公司的努力以及对我的培养没有白费。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">感谢公司在我生日这个特别的时候送来了温暖，我从内心深处感受到了公司对我的关爱，我用语言难以表达对公司的感激之情，只有在今后的工作中，将这种感激化成对工作的热情，将这份温暖传递下去。</p><p style=\"margin-bottom: 20px; margin-left: 720.375px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">徐建嘉</p><p style=\"margin-bottom: 20px; margin-left: 720.375px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2016年10月29日</p>', '2017年06月14日', 'style/images/birthday_xjj.png');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL COMMENT '评论id',
  `username` varchar(48) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `commentTopic` varchar(48) COLLATE utf8_unicode_ci NOT NULL COMMENT '评价主题',
  `properLevel` int(5) NOT NULL COMMENT '宝贝与描述符合度',
  `content` varchar(10000) COLLATE utf8_unicode_ci NOT NULL COMMENT '评论内容',
  `productId` int(10) NOT NULL COMMENT '商品id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companyIntr`
--

CREATE TABLE `companyIntr` (
  `id` int(10) NOT NULL COMMENT 'id',
  `description1` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '杭州北望生物技术有限公司成立于2007年12月，是一家集新药研究技术服务、药品相关试剂销售为一体的高科技公司。公司致力于生物试剂、医药中间体和药用辅料的研究开发、制造与贸易，同时提供与药品开发相关的技术服务，如化药、中药临床前研究（包括处方筛选、工艺优化、质量研究、稳定性考察等）。' COMMENT '公司介绍文字段落1',
  `description2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '我公司拥有的生物试剂有青霉素酶（β-lactamase I）、头孢菌素酶（β-lactamase II）、溶葡球菌酶（lysostaphin）、重组尿酸氧化酶（URICASE）、重组人角质细胞生长因子-2（KGF-2）、 重组人骨形态发生蛋白2（BMP-2）、重组牛肠激酶（EK）等生化试剂产品，以及食品安全检测试剂盒（条）、农药残留快速检测试剂盒等产品。公司目前申请发明专利6项（已授权3项），企业标准7项。' COMMENT '公司介绍文字段落2',
  `image1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司介绍图片1',
  `image2` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司介绍图片2',
  `image3` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司介绍图片3',
  `image4` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司介绍图片4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companyIntr`
--

INSERT INTO `companyIntr` (`id`, `description1`, `description2`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, '杭州北望生物技术有限公司成立于2007年12月，是一家集新药研究技术服务、药品相关试剂销售为一体的高科技公司。公司致力于生物试剂、医药中间体和药用辅料的研究开发、制造与贸易，同时提供与药品开发相关的技术服务，如化药、中药临床前研究（包括处方筛选、工艺优化、质量研究、稳定性考察等）。', '我公司拥有的生物试剂有青霉素酶（β-lactamase I）、头孢菌素酶（β-lactamase II）、溶葡球菌酶（lysostaphin）、重组尿酸氧化酶（URICASE）、重组人角质细胞生长因子-2（KGF-2）、 重组人骨形态发生蛋白2（BMP-2）、重组牛肠激酶（EK）等生化试剂产品，以及食品安全检测试剂盒（条）、农药残留快速检测试剂盒等产品。公司目前申请发明专利6项（已授权3项），企业标准7项。', 'style/images/55ab51e105fee007445d7d4e45d53231.jpg', 'style/images/a14618a41f37fa834f78489b28bbb2c7.jpg', 'style/images/01d3011194804f667c557af410c5e221.jpg', 'style/images/dd24933154686386f2f63b3978ab6e55.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `companyPhilosophy`
--

CREATE TABLE `companyPhilosophy` (
  `id` int(3) NOT NULL COMMENT '公司理念id',
  `philosophy` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '不求效益最大，但求问心无愧；不求品种很多，但求产品精益；药品质量关系患者健康，产品质量关系企业名誉。品牌的核心：品质。' COMMENT '经营理念',
  `goal` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '杭州北望生物技术有限公司致力于创新和发展，立志在制药、食品安全检测、生物研究用试剂等高科技领域为客户提供优质服务，引导客户迈向成功。' COMMENT '企业愿景'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companyPhilosophy`
--

INSERT INTO `companyPhilosophy` (`id`, `philosophy`, `goal`) VALUES
(3, '不求效益最大，但求问心无愧；不求品种很多，但求产品精益；药品质量关系患者健康，产品质量关系企业名誉。品牌的核心：品质。', '杭州北望生物技术有限公司致力于创新和发展，立志在制药、食品安全检测、生物研究用试剂等高科技领域为客户提供优质服务，引导客户迈向成功。'),
(4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contratcs`
--

CREATE TABLE `contratcs` (
  `id` int(5) NOT NULL COMMENT '合同服务序号',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '合同服务标题',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '合同服务内容',
  `image1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片1路径',
  `image2` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片2路径',
  `image3` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片3路径',
  `time` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `author` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者',
  `pageview` int(10) NOT NULL DEFAULT '1' COMMENT '浏览数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contratcs`
--

INSERT INTO `contratcs` (`id`, `title`, `content`, `image1`, `image2`, `image3`, `time`, `author`, `pageview`) VALUES
(1, '关于生物仿制药（Biosimilar products）药学研究问题的思考', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">审评五部生物制品室 常卫红</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">与小分子的化学药品不同，生物制品的分子量较大且结构复杂，产品质量尤其是生物学活性易受各种因素影响且不太稳定，再加之目前可行的分析方法有限，因此难以通过有限的比较研究来完全确认不同企业产品之间的一致性。基于生物制品的上述特性，目前国内外药品监管部门均认为，对传统的仿制药品（generic drug）的评价理念和标准并不适用于仿制性的生物制品，不同企业生产的同名的生物制品只能达到相似而非一致，因此对于仿制性的生物制品一般不称为generic drug，而称作Biosimilar products或Follow-on Biologics，而且在进行此类生物制品的研发时需进行非常广泛的比较性研究，包括质量、非临床以及临床试验等，以充分确认其安全性和有效性。鉴于目前国内对于此类生物制品尚无法定而统一的称谓，因此为简化起见，本文暂称之为生物仿制药。以下笔者将就此类生物制品药学研究的意义以及国内外相关技术要求等进行简要回顾，并在此基础上提出一些对于生物仿制药药学研究问题的个人观点和看法。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">一、关于生物仿制药药学研究的总体考虑</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">药学研究（包括生产和质量研究等）是药物研发的基础性工作。对于生物仿制药来讲，药学研究不但是为了达到产品质量可控的目的，而且通过对生物仿制药与已上市药物质量的比较，可以对仿制品的安全有效性进行初步的判断，并据此确定后续研发阶段的研究内容，可以说药学研究结果在相当大的程度上决定了对于后续非临床和临床试验研究的技术要求。因此，任何企业如果进行生物仿制药的研发并期望减少耗资巨大的非临床和临床试验，则应高度重视药学研究工作，并以之作为整体研发工作的重要基础。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">二、国内外生物仿制药药学申报资料要求简介</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">就药学方面的技术资料要求来讲，生物仿制药的研究内容与其他生物产品包括创新性产品并无很大不同，只是更加强调与已上市产品的比较性研究。在这一点上国内外的相关法规和技术指南是基本一致的。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">国内现行《药品注册管理办法》附件三中对于各类生物制品的申报资料项目和内容有明确的要求。根据该要求，对于各类仿制性生物药物均需提供全面的药学研究资料，包括药学研究综述、生产用原材料研究资料、原液或原料生产工艺的研究资料、制剂处方及工艺的研究资料、质量研究资料、试制品的制造和检定记录、制造及检定规程及起草说明、稳定性研究资料等。在质量研究方面，尚需提供与国内外已上市销售的同类产品比较的资料。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">欧盟于2006年发布了关于生物仿制药质量研究的技术指南。该指南主要涉及生物仿制药物的生产过程和质量比较研究中的问题，具体包括参比品（reference product）的选择、分析方法、理化特性、生物活性、纯度和质量标准等内容，其主要技术观点和原则要求包括：</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">1、生物仿制药需与参比品（已上市同产品）进行广泛的比较性研究，以证实二者在质量及安全有效性方面的相似性。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2、通常认为进行生物仿制药开发的生产商不可能获得所有关于参比品的必要技术信息，因此不可能与参比品进行完全彻底的比较。但是，所进行的比较研究工作一定要能支持其所做出的结论。根据分析方法的敏感性和质量比较的全面性可以考虑适当减少对于非临床和临床试验数据的要求，从而不必按照新药的要求进行所需的全部试验。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">3、对于生物仿制药，注册申请人需要提供符合现行法规要求的全部的质量研究资料，另外尚需单独提供一份与被仿制品的比较研究资料。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">4、生物仿制药物的质量在一定程度上取决于企业自己特定的生产工艺，因此企业需不断优化自身的生产工艺，并保持工艺的稳定性。同样，成品的制剂研究也很重要，即使采用了与被仿制药相同的处方，也需进行产品稳定性、与辅料和包装材料的相容性以及活性物质的完整性等研究。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">5、虽然质量研究属于基础性工作，但在开展此方面研究时需联系到产品的安全有效性问题进行考虑。仿制品可能与被仿制品不完全相同，如存在翻译后修饰的不同，产品杂质成分不完全相同等，但应鉴定其差异，并结合非临床和临床试验结果对产品的安全有效性进行综合评价。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">在参比品的选择方面，需选用已在欧盟上市的产品，并需在质量研究、非临床和临床试验中使用同样的参比品。原则上仿制品与被仿制品的剂型、规格和给药途径需一致。除了进行成品的质量比较外，一般还需同时进行活性物质的质量比较，为此申请人可能需要先采用适当的方法将参比品中的活性物质分离出来。公用的标准物质（如欧盟药典标准、WHO标准品等）虽然在产品研发过程中有着非常重要的作用，但不适合作为比较性研究的参比品，因为这些标准物质的安全有效性并未得到确认。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">在质量相似性研究方面，需首先考虑分析方法的适用性。应选用灵敏的方法以检测出质量方面的微小差异，并需对方法进行验证。质量比较性研究一般包括理化性质、生物活性、纯度及杂质分析等。指南中强调，需采用现行的多种技术方法进行产品纯度和产品相关杂质的比较分析，包括通过加速稳定性试验比较其降解产物的相似性等。而对于工艺相关杂质，因为不同工艺过程残留的杂质种类很可能不同，因此不一定进行此项比较，但应进行充分的研究并通过临床试验等确认这些杂质对于安全有效性的影响。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">6、生物仿制药的质量标准需依据企业自己的研究结果制定。标准中各相关指标的检测限度需依据非临床和临床试验用样品的检测结果、多批试制品的检测数据、稳定性试验结果以及比较性研究数据等制定。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">三、对于国内生物仿制药药学研究问题的几点思考</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">我国的生物仿制药已有多年的研发历史，并且在实践中积累了丰富的经验，但是在产品质量研究和标准完善方面尚有很大的提高空间。目前国际上已发布的一些技术指南和对相关技术问题的探讨，为我们改进自身的工作提供了非常有价值的参考。笔者通过学习国外的相关指南和文献，并结合自己在审评工作中的体会，认为有以下几方面的问题值得思考：</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">1、关于生物仿制药的药学资料要求</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">以往国内有些生物制品的研究者和评价者可能存在这样的认识，那就是由于生物仿制药的注册类别低所以对其各项申报资料的要求均较低，可以少做或者免做部分研究工作。其实，这样的考虑并不适用于药学研究工作，即使对于非临床和临床方面的技术要求可适当降低，那也是以充分、扎实的药学研究作为基础的。从前述国内外相关技术要求可见，对于生物仿制药的药学资料要求不但不比创新药少，而且还需要另外进行与上市品的比较性研究，至少从内容上的要求是更多了。另外，从研究的阶段性考虑，创新药因为需进行全面的临床前药效和毒理试验，临床试验的风险性主要依据非临床试验结果和临床试验方案进行控制，因此有些质量研究工作（如部分结构确认工作）可后移至临床试验阶段完成；而由于生物仿制药不必进行所有的药效和毒理研究而且临床试验方案也相对简单，因此需在临床前进行更充分的药学研究，以便为产品进入临床试验提供更多的支持。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">当然，对于生物仿制药的药学研究工作来讲，由于很多研究方法和标准均有可参考资料，因而研究和评价的技术难度可能会低些。但是在引用这些方法时应慎重，其可用性必须以其合法性和可靠性作为前提。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2、关于参比品问题</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">目前欧盟的技术指南非常强调生物仿制药与参比品进行比较的重要性，并对参比品的选择提出了明确的要求。如参比品必须在所在地区上市，并具有完整的符合现行法规技术要求的试验资料，其安全有效性已经过确认；比较性研究内容需全面、分析方法需灵敏以充分反映仿制品与被仿制品的微小差异等。这样的技术要求对于欧盟属地的企业无疑具有其科学上的合理性和现实中的可操作性，但是对于国内来讲，上述原则却不一定完全适用，主要是在参比品的来源方面存在一定问题。其一，国内的原创生物药物极少，目前已上市的生物药物大多是仿制国外上市产品。而由于各种原因，国内早期上市的很多生物仿制药物（如IFNα、IL-2、G-CSF、GM-CSF、EPO等）的产品质量参差不齐，与国外原发产品未经过全面比较且有些产品的给药剂量已发生改变，临床安全有效性未经充分研究和确认，因此这些已上市品很多并不具备可以作为参比的基础；其二，很多国外已上市产品并未在中国上市，因此这些原发产品的可获得性较差，即使已有国外产品进口，由于目前国内的技术水平有限，也难以通过有效的分离方法从参比品中获取足量的活性物质进行比较。因此如何选用参比品、在何种程度上进行比较是国内生物仿制药研发中面临的首要问题。笔者对此尚难以提出具有建设性的意见，仅有以下几点初步看法：1）比较性研究对于生物仿制药的研制非常重要，其比较结果的意义和价值在很大程度上取决于参比品的合理选用。应尽可能选用经过充分安全有效性确认的已上市产品，如国外原发产品或国内经过充分的质量研究和临床试验的已上市产品。2）如果缺乏可供选用的适宜参比品，与文献数据或一些公认数据库的数据进行比较仍具有一定的参考价值。比如，所仿制的生物药物系人体内源性物质，则与已公布的天然物质的相关数据进行比较，其结果也应具有一定的提示意义。3）在缺乏适宜参比品或比较性研究数据有限的情况下，可考虑进行更充分的非临床和临床试验，以证实生物仿制药的安全有效性。4）此方面的技术要求宜适时推进，既不能忽视其重要意义，也不能因为一时找不到合适的参比品而完全否定某些已上市药物可作为生物仿制药研制的基础，相关的技术要求可考虑分类制定。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">3、关于生物仿制药的质量标准建立</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">目前国内大多的生物仿制药均是以药典标准作为药学研究的基础和依据，认为只要符合药典的一般要求即已基本达标，较少进行更广泛、更深入的产品质量分析。比如，在产品纯度方面，目前国外非常强调尽可能采用多种方法全面分析产品的纯度，对产品相关物质、产品相关杂质和工艺相关杂质等进行分析。不同厂家生产出的产品中的杂质很可能不同，而这些杂质又是与产品的安全有效性密切相关的。如重组人生长激素和胰岛素的免疫原性被认为与产品中的杂质水平相关；重组人干扰素在某些条件下容易聚合，而这些聚合体可诱发较强的免疫反应；重组人红细胞生成素的糖基化修饰受生产过程影响，而不同的糖基化水平可影响其在体内的半衰期和生物学作用等。这些都说明了活性产物异质性分析和相关杂质分析的重要性。另外，目前国内生物技术药物的成品标准相对简单，与国际上的通行标准和国外企业标准相比，缺少了含量和纯度方面的指标，这也非常不利于对于产品质量的综合控制。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">因此，在进行全面质量分析的基础上，进一步提高生物仿制药的质量标准，尤其是提高产品纯度和成品质量控制水平，是非常必要和十分迫切的。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">四、结语</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">在国外，由于生物药物专利保护的限制，以往较少企业进行生物仿制药的研发，亦缺少关于此方面技术问题的讨论。近些年，由于一些专利产品在欧美已纷纷到期，如何进行生物仿制药的研发和注册就逐渐成为很多西方制药企业和药品管理当局关注的焦点问题之一。欧盟已出台一系列关于生物仿制药（Biosimilar products）的技术指南，美国FDA的相关注册要求也在酝酿之中。不过由于生物制品所特有的复杂性以及生物仿制药涉及巨大的市场利益，因此在欧美国家的原研企业、仿制企业和注册管理部门之间一直存在争论，尚难以形成完全一致的意见。虽然我国在生物仿制药领域已有了多年的实践经验，但由于研究者和评价者在初始阶段的认识水平有限，又经历了后续的不断发展变化的过程，因此也一直尚未形成非常成熟且明确的具体技术要求。本文尝试在对国内外已出台的相关注册要求进行回顾的基础上，结合目前国内研发现状提出一些不成熟的个人观点，旨在抛砖引玉，引发大家对此方面问题的关注和探讨。不妥之处，敬请各位业界同仁指正。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">来源:CDE电子刊物</p>', 'style/images/c5bfa9ad572a0e7b8af0ac5b5a995529.jpg', 'style/images/82770dd713dee8725da684dad0d3632b.jpg', 'style/images/afcbeedba20f518733965ad0e9c4ab2e.jpg', '2017年06月07日', 'admin', 577),
(2, '聚乙二醇修饰干扰素研发中需注意的药学问题', '作者:白玉普通干扰素自80年代上市以来，在抗病毒、调节免疫中的疗效已得到肯定。但是其存在半衰期较短，需要隔日注射的问题，给患者用药带来了不便。并且其发热、流感样症状、骨髓抑制、精神神经系统等副反应也是常见的，并且还会因多次、长期用药产生抗干扰素抗体而使其疗效降低。聚乙二醇( polyethylene,PEG)共价修饰蛋白质药物，因PEG具有空间位阻，可以作为屏障挡住蛋白质分子表面的抗原决定簇，从而减少免疫原性，减少体内清除率, PEG的屏障作用还可以保护蛋白质不易被蛋白酶水解，PEG化的这些特点均有利于延长蛋白药物的半衰期。正是基于此，科学家们希望通过对干扰素进行聚乙二醇化修饰，延长半衰期，减少其免疫原性，从而提高疗效和患者的顺应性。虽然这类药品的药学研究思路、研究方法和内容与其它生物制品基本一致。但是，由于这类药物是在比较成熟的干扰素制品基础上进行的PEG修饰，在进行药学研究时还应注意以下问题：1.PEG原材料的选择和质量控制由于修饰的基团不同，需要使用不同的PEG活化产品，比如对巯基修饰需要采用PEG-马来酰亚胺、N端的α-氨基修饰需要采用PEG-醛基衍生物。此外，还要考虑PEG的分子量、PEG本身的形状（如直链或分枝状）对于干扰素空间结构，以致对体内代谢的影响问题。之前研发的产品多采用国外公司的PEG产品。但据多家药物研究机构反映，目前国外公司PEG产品的可获得性有一定难度。因此，企业研发此类产品时需考虑PEG原料供应的持续性，确保研究和将来规模生产时原材料的一致性，以避免今后上市时原材料变更带来的问题。对于PEG的质量控制，首先关注其分子量范围，应尽可能采用分散度控制高的产品，目前建议采用分散度至少控制在±10％以内。其次，还应注意PEG修饰剂批间分子量的一致性，有时候分子量的批间差异对产品性能的影响甚至是要大于分散度对产品性能的影响。第三，还要考虑与修饰干扰素发生偶合反应的活性和选择性，以及修饰后形成的化学键的稳定性。第四，也要关注PEG本身的稳定性。因为在贮存、分装和生产过程中，高温、氧化和潮解都可能使其活化基团失活,从而导致修饰效率大大降低。最后，作为基本药用标准，PEG修饰剂的端基取代率和纯度都应达到90％以上。2.PEG修饰位点的选择和工艺优化对于修饰反应，建议首先考虑单一位点修饰；其次，如果待修饰物的序列和结构特征决定其不能避免有多个潜在修饰位点，应考虑选择修饰反应可控的位点，例如通过反应条件的控制能够进行明确位点的选择性修饰。同样重要的是，应注意PEG修饰后对干扰素空间结构的改变情况，是否会产生新的抗原表位，如有此种情况应该避免；另外，还要注意修饰的位置应避免在干扰素的关键活性区域，比如在活性中起关键作用的二硫键等位置。如果不能进行单一位点修饰，而是多位点修饰，就要注意研究这些不同修饰干扰素的性质，其对干扰素活性、免疫原性、体内代谢等的影响。然后，根据该研究结果优化PEG与干扰素偶合反应的条件（比如：控制PEG化反应溶液的pH值可相对有效的控制PEG偶合反应的方向性），并对后续偶合产物进行有针对性地纯化，尽可能得到预期的组分较单一的产品。这也是工艺优化要考虑的重点。如果位置异构体完全分离确实比较困难，至少也应该将主要位置异构体的性质和比例研究清楚，并确保不同批次间各组分比例的一致性。3.质量研究的考虑对PEG修饰位点的结构确证是重点。要搞清楚是单一位点修饰还是多位点修饰，还要确认是在干扰素序列中哪个氨基酸的基团上进行的修饰，必要时进行空间结构影响的确证。目前，国内在这方面的研究方法也日渐成熟，如果研究企业技术力量有限，建议提前考虑与专长的科研院所进行合作研究。此外，在对产品纯度的分析中，要注意采用不同分离原理的检测方法。还要对寡聚体、游离干扰素和游离PEG进行检测，并纳入产品的质量标准中。4.稳定性研究的考虑既往，对普通干扰素的稳定性研究比较关注其活性在不同条件下放置的变化。PEG修饰的干扰素，活性也是稳定性研究的考察重点，不仅要关注其下降与否，如果活性增强，就有可能提示PEG修饰键的稳定性较差，造成PEG与普通干扰素的分离，是干扰素的比例高了，从而活性提高（因为有研究提示，PEG修饰的干扰素体外活性要比普通干扰素低2个数量级）。因此，对于PEG干扰素，除了关注活性之外，还要注意考察纯度，包括游离干扰素含量的变化。国内PEG化干扰素的跟踪研究，主要借鉴了一些国外公司研发的peg修饰干扰素成功上市的先例。基于国外制品经临床试验证明了其可延长半衰期、减少用药针次、提高患者抗病毒应答率等特点，并于2002年前后在我国获得进口注册，目前临床上已大量应用于慢性丙肝和/或乙肝治疗的现实，国内多家企业先后申报了类似的制品，目前已有数个产品进入临床试验阶段，还有一些正在筹划或者开展临床前研究，拟申报临床试验。考虑到PEG修饰控制技术的复杂性和难度，建议在研发过程中特别关注PEG的选择和质控问题，并慎重考虑这类仿制研究可能面临的失败风险。来源:CDE电子刊物', 'style/images/98aec54e0c2d81445d645316d29c1d9a.jpg', 'style/images/f4e078f9dae7f27819011fdc8ff5ec14.jpg', 'style/images/236bf358bf0ea637e24acd18e4814fd1.jpg', '2011年01月18日', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(5) NOT NULL COMMENT '人才招聘信息编号',
  `job` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '工作',
  `place` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '工作地点',
  `vacancy` int(10) NOT NULL COMMENT '招聘人数',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间',
  `basecondition` text COLLATE utf8_unicode_ci NOT NULL COMMENT '任职要求'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `job`, `place`, `vacancy`, `time`, `basecondition`) VALUES
(1, '销售区域经理', '浙江,杭州市', 5, '2017年06月13日', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">1、大专以上学历，营销专业、医药及生物相关专业优先；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2、热忱敬业、主动负责、诚实可信；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">3、热爱销售工作,能适应经常出差，拥有一定的市场开拓能力；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">4、有药厂营销客户及业务经验者优先；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">5、销售员年薪10-15万；</p>'),
(2, '销售', '浙江,杭州市', 10, '2017年06月13日', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">1、大专以上学历，营销专业、医药及生物相关专业优先；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2、热忱敬业、主动负责、诚实可信；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">3、热爱销售工作,能适应经常出差，拥有一定的市场开拓能力；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">4、有药厂营销客户及业务经验者优先；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">5、销售员年薪8-10万</p>');

-- --------------------------------------------------------

--
-- Table structure for table `encouragement`
--

CREATE TABLE `encouragement` (
  `id` int(5) NOT NULL COMMENT '激励保障记录编号',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '激励保障内容',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间',
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `encouragement`
--

INSERT INTO `encouragement` (`id`, `content`, `time`, `image`) VALUES
(2, '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">薪酬分配原则</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">1、薪酬分配贯彻按劳分配、效率优先兼顾公平的基本原则，综合考虑社会物价水平、公司支付能力以及员工所在岗位价值、员工贡献大小等因素。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2、薪资体系采用职位薪资体系为核心，遵循薪资定位与价值相结合、内部激励与外部竞争相结合的原则。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">3、根据公司经营状况及部门、个人绩效成果来分配绩效奖金。</p>', '2017年06月13日', 'style/images/encouragement.png');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) NOT NULL COMMENT '问题编号',
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '留言者',
  `kind` int(1) NOT NULL COMMENT '问题种类',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '留言者邮箱',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '留言内容',
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `username`, `kind`, `email`, `content`, `time`) VALUES
(1, '胡一刀', 1, '704568245@qq.com', '很好啊，我来测试一下子', '2017年06月15日');

-- --------------------------------------------------------

--
-- Table structure for table `faqquestion`
--

CREATE TABLE `faqquestion` (
  `id` int(10) NOT NULL COMMENT 'FAQ问题编号',
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布者',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '问题标题',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '问题回答',
  `time` int(30) NOT NULL COMMENT '插入时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqquestion`
--

INSERT INTO `faqquestion` (`id`, `author`, `title`, `content`, `time`) VALUES
(2, 'admin', '付款方式', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">A、预存款</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">B、直接汇款</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; text-indent: 2em;\">我们在收到汇款后，立即将相应金额加入到您的“预存款”中。汇款时请说明你会员名称，汇款后请及时联系我们。汇款方式有以下几种：</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">一、银行汇款</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">1. 招商银行 [推荐]</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">开户行：招商银行杭州分行湖墅支行</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">户 名：杭州北望生物技术有限公司</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">卡 号：**********</p>', 2017),
(3, 'admin', '购物流程', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(250, 250, 250);\">购物流程模块建设中...</span>', 2017),
(4, 'admin', '送货方式', '<ol style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\"><li>货到付款：<p style=\"margin-bottom: 20px;\">配送范围：*****</p><p style=\"margin-bottom: 20px;\">配送时间：*****</p><p style=\"margin-bottom: 20px;\">配送费用：*****</p></li><li>城市快递：<p style=\"margin-bottom: 20px;\">配送范围：*****</p><p style=\"margin-bottom: 20px;\">配送时间：*****</p><p style=\"margin-bottom: 20px;\">配送费用：*****</p></li><li>邮政EMS：</li><li>邮政平邮：</li></ol>', 2017),
(5, 'admin', '运输说明', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(250, 250, 250);\">运输说明模块建设中...</span>', 2017),
(6, 'admin', '注册条约', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(250, 250, 250);\">注册前请仔细阅读，您只有无条件接受以下所有服务条款，才能继续申请：</span>', 2017),
(7, 'admin', '交易条款', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(250, 250, 250);\">交易条款资料整理中……</span>', 2017),
(8, 'admin', '售前售后', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(250, 250, 250);\">售前售后资料整理中……</span>', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `honor`
--

CREATE TABLE `honor` (
  `id` int(3) NOT NULL COMMENT '编号',
  `image1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片1',
  `image2` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片2',
  `image3` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片3',
  `image4` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片4',
  `image5` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片5',
  `image6` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片6',
  `image7` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片7',
  `image8` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片8',
  `image9` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司荣誉图片9'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `honor`
--

INSERT INTO `honor` (`id`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`) VALUES
(1, 'style/images/0dd90fa41ddc72779522af0961a74547.jpg', 'style/images/9ebb045a7fa4372ad062e6b4a5e279dc.jpg', 'style/images/60711d9c248ad408d9145404abf35b99.jpg', 'style/images/20d1ffa01d9a34c521294403f9d6820d.jpg', 'style/images/8c8a62b9b0fe792486b3ca70162b3a13.jpg', 'style/images/14032857d8886ed65d1b733193fe77ba.jpg', 'style/images/highTechEnterprise.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `id` int(5) NOT NULL COMMENT '代加工服务编号',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '代加工服务标题',
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT '代加工服务内容',
  `requirement` varchar(600) COLLATE utf8_unicode_ci NOT NULL COMMENT '条件',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacture`
--

INSERT INTO `manufacture` (`id`, `title`, `content`, `requirement`, `time`) VALUES
(1, '药品代加工服务', '只要您提供idea我们为您做好最棒的产品。', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">1、对产品已经有了idea；</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">2、有配方,只需要我们加工；</p>', '2017年06月02日'),
(2, '代加工', '我们会为您提供最好的冻干产品', '棒棒的', '2017年06月02日');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL COMMENT '留言编号',
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '留言者名字',
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '留言者电话号码',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '留言者邮箱',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '留言内容',
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `username`, `phone`, `email`, `content`, `time`) VALUES
(1, '测试', '15757118712', '704568245@qq.com', '我好饿啊，外卖你快来吧，我超级饿', '2017年06月15日'),
(2, '刘斌鹏', '15757118712', '704568245@qq.com', '我怕方法我怕方法我怕方法我怕方法我怕方法我怕方法', '2017年06月15日'),
(3, '测试', '15757118712', '704568245@qq.com', '我我我我我我我我我我我我我我我我我我我我我我我我', '2017年06月15日');

-- --------------------------------------------------------

--
-- Table structure for table `milestone`
--

CREATE TABLE `milestone` (
  `id` int(3) NOT NULL COMMENT '里程碑id',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'style/images/blog-1.jpg' COMMENT '里程碑列表封面图片',
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT '里程碑介绍',
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin' COMMENT '信息发布者'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `milestone`
--

INSERT INTO `milestone` (`id`, `image`, `content`, `time`, `publisher`) VALUES
(1, 'style/images/blog-1.jpg', '成立杭州北望生物技术有限公司.以研发为主', '2007年12月21', 'admin'),
(2, 'style/images/blog-1.jpg', '2008年之后公司进入发展期，开始以研发为主，生物制药、销售为主的发展模式。', '2008年4月10日', 'admin'),
(3, 'style/images/blog-1.jpg', '在广东珠海成立了珠海北望生物科技有限公司的子公司。', '2015年7月21日', 'admin'),
(4, 'style/images/blog-1.jpg', '在广东珠海成立了珠海北望生物科技有限公司的子公司。', '2015年7月22日', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(7) NOT NULL COMMENT '新闻编号',
  `kindtype` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '新闻类型：1：公司新闻；2:行业新闻',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '新闻标题',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '新闻内容',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `pageview` int(10) NOT NULL COMMENT '阅读量',
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `kindtype`, `title`, `content`, `time`, `pageview`, `author`) VALUES
(1, '1', '生物合成技术引领润滑油可持续发展', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">来源：环球塑化网 日期: 2014年07月24日</p><p style=\"text-align: justify; margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">赢创集团近日在LLC(以下简称BT)生物合成技术中投入资金。BT总部设在美国加州尔湾，BT已经研发和制造出一种名为estolides的新型生物合成油，主要用在乘用车用机油以及工业润滑油领域，现场试验表明该生物合成油性能相当优异并能减少引擎中的烟灰，有助于降低油耗。除了赢创，BP也作为当前一轮融资的第二战略投资者不断致力于经济增长，它和孟山都公司在先前的融资中也参与投资。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">赢创董事长Dr. Bernhard Mohr,说：“生物合成技术引领着润滑油走向高品质可持续发展之路，考虑到大多数汽车市场和燃油趋向经济性和可持续性，这一市场迎合了赢创石油添加剂业务的增长。”</p>', '2014-08-12 11:10', 224, 'admin'),
(2, '1', 'Nature：揭示DNA修复的后备系统', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">来源：环球塑化网 日期: 2014年07月24日</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">赢创集团近日在LLC(以下简称BT)生物合成技术中投入资金。BT总部设在美国加州尔湾，BT已经研发和制造出一种名为estolides的新型生物合成油，主要用在乘用车用机油以及工业润滑油领域，现场试验表明该生物合成油性能相当优异并能减少引擎中的烟灰，有助于降低油耗。除了赢创，BP也作为当前一轮融资的第二战略投资者不断致力于经济增长，它和孟山都公司在先前的融资中也参与投资。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">赢创董事长Dr. Bernhard Mohr,说：“生物合成技术引领着润滑油走向高品质可持续发展之路，考虑到大多数汽车市场和燃油趋向经济性和可持续性，这一市场迎合了赢创石油添加剂业务的增长。”</p>', '2014-06-04', 0, 'admin'),
(3, '2', '生物合成技术引领润滑油可持续发展', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">来源：环球塑化网 日期: 2014年07月24日</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">赢创集团近日在LLC(以下简称BT)生物合成技术中投入资金。BT总部设在美国加州尔湾，BT已经研发和制造出一种名为estolides的新型生物合成油，主要用在乘用车用机油以及工业润滑油领域，现场试验表明该生物合成油性能相当优异并能减少引擎中的烟灰，有助于降低油耗。除了赢创，BP也作为当前一轮融资的第二战略投资者不断致力于经济增长，它和孟山都公司在先前的融资中也参与投资。</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">赢创董事长Dr. Bernhard Mohr,说：“生物合成技术引领着润滑油走向高品质可持续发展之路，考虑到大多数汽车市场和燃油趋向经济性和可持续性，这一市场迎合了赢创石油添加剂业务的增长。”</p>', '2014-08-12', 0, 'admin'),
(7, '2', 'Nature：揭示DNA修复的后备系统', '<span style=\"color: rgb(34, 34, 34); font-family: Menlo, monospace; font-size: 12px; white-space: pre-wrap;\"> 来自纽约大学Langone医学中心的科学家们在一项新研究中证实，两种酶Srs2和Exo1联合作用...</span>', '', 0, 'admin'),
(8, '2', 'Nature：实验动物与细胞也要“性别平等”', '<span style=\"color: rgb(34, 34, 34); font-family: Menlo, monospace; font-size: 12px; white-space: pre-wrap;\">二十多年前，美国国家卫生研究院（National Institutes of Health，NIH）宣布...</span>', '2017-07-21 15:10', 0, 'admin'),
(9, '2', '你知道自己衰老的速度如何么？', '<span style=\"color: rgb(34, 34, 34); font-family: Menlo, monospace; font-size: 12px; white-space: pre-wrap;\"> 先别忙着去偷看网上“生物年龄”计算器的答案，它们也未必可靠。因为这些计算器...</span>', '2017-07-06 10:30', 0, 'admin'),
(10, '2', 'Science：猴动物试验证明基因靶向编辑技术是可行的', '<span style=\"color: rgb(34, 34, 34); font-family: Menlo, monospace; font-size: 12px; white-space: pre-wrap;\">Science：猴动物试验证明基因靶向编辑技术是可行性鲜活的证据...</span>', '2017-07-15 11:35', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) NOT NULL COMMENT '订单id',
  `productid` int(10) NOT NULL COMMENT '产品id',
  `userid` int(10) NOT NULL COMMENT '用户id',
  `linkman` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人',
  `price` int(10) NOT NULL COMMENT '订单金额',
  `status` int(1) NOT NULL COMMENT '订单状态：0、待支付 1、待发货 2、待评价 3、完成',
  `orderTime` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '下单时间',
  `orderID` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '订单号',
  `payMethod` int(1) NOT NULL COMMENT '付款方式',
  `productName` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `productid`, `userid`, `linkman`, `price`, `status`, `orderTime`, `orderID`, `payMethod`, `productName`) VALUES
(1, 1, 1, '胡一刀', 2132, 1, '2017-02-12', 'a72727d222', 1, '氨基酸');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(1) NOT NULL COMMENT '编号',
  `structureImage` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '组织机构图'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `structureImage`) VALUES
(1, 'style/images/598e64ddffc21700970da7bcb45350ee.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL COMMENT '商品id',
  `productName` varchar(48) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名称',
  `productBigKind` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品大类别',
  `productSmallKind` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品小类别',
  `productLevel` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品等级：1－普通商品，2-推荐商品，3-特价商品',
  `productDescription` varchar(2000) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品简介',
  `price` int(10) NOT NULL COMMENT '商品价格',
  `storage` int(10) NOT NULL COMMENT '商品库存',
  `discountPrice` int(10) NOT NULL COMMENT '折扣价',
  `listingDate` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '上市日期',
  `starLevel` int(5) NOT NULL COMMENT '商品星级',
  `watchTimes` int(10) NOT NULL COMMENT '浏览次数',
  `availableScope` varchar(3000) COLLATE utf8_unicode_ci NOT NULL COMMENT '适应范围',
  `image1` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品图片1',
  `image2` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品图片2',
  `image3` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品图片3',
  `image4` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品图片4',
  `image5` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品图片5',
  `unit` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品单位',
  `expiration` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '有效期',
  `productFeature` varchar(3000) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品性状',
  `useage` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT '使用方法',
  `condition` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT '保存条件',
  `operativenorm` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT '执行标准'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productName`, `productBigKind`, `productSmallKind`, `productLevel`, `productDescription`, `price`, `storage`, `discountPrice`, `listingDate`, `starLevel`, `watchTimes`, `availableScope`, `image1`, `image2`, `image3`, `image4`, `image5`, `unit`, `expiration`, `productFeature`, `useage`, `condition`, `operativenorm`) VALUES
(1, '青霉素酶冻干粉', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 89, 100, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(4, '青霉素酶冻干粉推荐2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 99, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(5, '青霉素酶冻干粉普通1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(6, '青霉素酶冻干粉普通2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 82, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(7, '青霉素酶冻干粉普通3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 85, 80, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(8, '青霉素酶冻干粉普通4', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 78, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(9, '青霉素酶冻干粉推荐3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\n\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 98, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(10, '青霉素酶冻干粉特价1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 76, 67, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(11, '青霉素酶冻干粉特价2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 86, 87, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(12, '青霉素酶冻干粉普通', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 90, 69, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(13, '青霉素酶冻干粉', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 89, 100, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(14, '青霉素酶冻干粉推荐2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 99, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(15, '青霉素酶冻干粉普通1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(16, '青霉素酶冻干粉普通2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 82, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(17, '青霉素酶冻干粉普通3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 85, 80, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(18, '青霉素酶冻干粉普通4', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 78, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(19, '青霉素酶冻干粉推荐3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\n\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 98, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(20, '青霉素酶冻干粉特价1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 76, 67, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(21, '青霉素酶冻干粉特价2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 86, 87, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(22, '青霉素酶冻干粉普通', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 90, 69, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(23, '青霉素酶冻干粉', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 89, 100, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(24, '青霉素酶冻干粉推荐2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 99, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(25, '青霉素酶冻干粉普通1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(26, '青霉素酶冻干粉普通2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 82, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(27, '青霉素酶冻干粉普通3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 85, 80, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(28, '青霉素酶冻干粉普通4', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 78, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(29, '青霉素酶冻干粉推荐3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\n\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 98, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(30, '青霉素酶冻干粉特价1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 76, 67, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(31, '青霉素酶冻干粉特价2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 86, 87, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(32, '青霉素酶冻干粉普通', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 90, 69, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(33, '青霉素酶冻干粉', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 89, 100, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(34, '青霉素酶冻干粉推荐2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 99, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(35, '青霉素酶冻干粉普通1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(36, '青霉素酶冻干粉普通2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 82, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(37, '青霉素酶冻干粉普通3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 85, 80, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(38, '青霉素酶冻干粉普通4', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 78, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(39, '青霉素酶冻干粉推荐3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\n\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 98, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(40, '青霉素酶冻干粉特价1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 76, 67, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(41, '青霉素酶冻干粉特价2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 86, 87, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(42, '青霉素酶冻干粉普通', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 90, 69, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(43, '青霉素酶冻干粉', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 89, 100, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(44, '青霉素酶冻干粉推荐2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 99, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(45, '青霉素酶冻干粉普通1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(46, '青霉素酶冻干粉普通2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 84, 82, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(47, '青霉素酶冻干粉普通3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 85, 80, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(48, '青霉素酶冻干粉普通4', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 83, 78, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(49, '青霉素酶冻干粉推荐3', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '推荐商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\n\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 98, 89, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(50, '青霉素酶冻干粉特价1', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 76, 67, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(51, '青霉素酶冻干粉特价2', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '特价商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 86, 87, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016'),
(52, '青霉素酶冻干粉普通', '药检试剂', 'β-内酰胺酶Ⅰ(青霉素酶)', '普通商品', '青霉素酶又称β-内酰胺酶Ⅰ（β-lactamase，EC 3.5.2.6），可水解β-内酰胺类抗生素。本公司采用生物技术，通过色谱层析技术分离纯化，获得了高效的β－内酰酶。其具有纯度高、活性高、专一性强等特点。 我们采用反相高效液相色谱法（RP-HPLC）、分子筛高效液相色谱法（SEC-HPLC）及还原和非还原电泳法（reducing and non-reducing SDS-PAGE）等三种方法对其纯度进行分析，其结果均达到90%以上。\r\n\r\n对本品的活性测定采用了《中国药典》（2015版第四部）收载的“青霉素酶活力测定法”。该法灵敏度好，精密度高，重复性强，能够有效的控制本品质量。', 90, 69, 80, '2017-03-03 03:10', 4, 0, '1、 可以有效的水解β-内酰胺类抗生素，包括：\r\n\r\n①青霉素G；\r\n\r\n②氨基青霉素类，如氨苄西林、阿莫西林、匹氨西林等；\r\n\r\n③羧基青霉素类，如羧苄西林、替卡西林等；\r\n\r\n④脲基青霉素类，如呋苄西林、美洛西林等；\r\n\r\n⑤头孢一代及部分头孢二代。\r\n\r\n2、 可用于注射用β-内酰胺类抗生素药品检验中的无菌检测。\r\n\r\n3、 可用于口服及其它β-内酰胺类抗生素药品检验中的微生物限度检测。', 'productPics/601qmsdg.jpg', 'productPics/601qmsdg.jpg', '', '', '', '≥1000万单位/支 8支/盒', '24个月', '冻干', '详见《中国药典》（2015版二部）。', '2～8℃保存。', 'Q/HLB 0001-2016');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(6) NOT NULL COMMENT '简历编号',
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '简历投递者姓名',
  `gender` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '简历投递者性别',
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '意向工作',
  `birthday` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '出生日期',
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '手机号码',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `experience` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT '工作经验',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `username`, `gender`, `job`, `birthday`, `phone`, `email`, `experience`, `time`) VALUES
(1, '杭城小刘', '男', '销售区域经理', '19950220', '15757118712', '704568245@qq.com', '经验丰富', '2017年06月15日'),
(2, '成吉思汗', '男', '销售', '13050212', '11012011991', '704568245@qq.com', '能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕能文能武，弯弓射大雕', '2017年06月15日');

-- --------------------------------------------------------

--
-- Table structure for table `smallKind`
--

CREATE TABLE `smallKind` (
  `id` int(10) NOT NULL COMMENT '小种类id',
  `kindName` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '小种类名',
  `ofBigKind` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '隶属于大种类'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `smallKind`
--

INSERT INTO `smallKind` (`id`, `kindName`, `ofBigKind`) VALUES
(1, 'β-内酰胺酶Ⅱ（头孢菌素酶）', '1'),
(2, 'β-内酰胺酶Ⅰ(青霉素酶)', '1'),
(3, '金属β-内酰胺酶', '1'),
(4, '溶葡球菌酶', '2'),
(5, '牛肠激酶', '2'),
(6, '链霉素残留快速检测试纸', '3'),
(7, '抗生素残留检测试剂', '3'),
(8, '溶菌酶', '4'),
(9, '人角质细胞生长因子-2（KGF-2）', '5'),
(10, '人骨形态发生蛋白-2（BMP-2）', '5'),
(11, '口腔清洁剂', '6'),
(12, '消毒剂', '6'),
(13, '食品安全检测试纸卡', '7'),
(14, '动物疾病检测试纸卡', '7'),
(15, '医学检验试纸卡', '7'),
(16, '食品检测速测盒', '8'),
(17, '农药残留速测盒', '8'),
(18, '环境检测速测盒', '8'),
(19, '其他检测', '8'),
(20, '其他检测仪器', '9');

-- --------------------------------------------------------

--
-- Table structure for table `speech`
--

CREATE TABLE `speech` (
  `id` int(2) NOT NULL COMMENT '领导致辞纪录id',
  `paragraph1` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT '领导致辞段落1',
  `paragraph2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT '领导致辞段落2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `speech`
--

INSERT INTO `speech` (`id`, `paragraph1`, `paragraph2`) VALUES
(3, '杭州北望生物技术有限公司致力于创新和发展，立志在制药、食品安全检测、生物研究用试剂等高科技领域为客户提供优质服务，引导客户迈向成功。', '在未来，北望将继续顺应潮流、抓住机遇、转变观念、开拓创新，以优秀的文化孕育人，以成熟的管理塑造人，以优势的薪酬激励人，与全体北望同仁一道，共同推动北望的更大发展，开创北望事业发展新的辉煌。');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(3) NOT NULL COMMENT '员工培养记录编号',
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '员工培养标语',
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布者',
  `time` int(30) NOT NULL COMMENT '发布时间',
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '照片路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `tag`, `author`, `time`, `image`) VALUES
(1, '新员工培训', 'admin', 2017, 'style/images/IMG_20160412_162256.jpg'),
(2, '新员工培训', 'admin', 2017, 'style/images/IMG_20160412_162301.jpg'),
(3, '员工拓展', 'admin', 2017, 'style/images/experInAnji.JPG'),
(4, '年中总结', 'admin', 2017, 'style/images/middleYear.JPG'),
(5, '新员工培训', 'admin', 2017, 'style/images/IMG_20160412_162314.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `talents`
--

CREATE TABLE `talents` (
  `id` int(5) NOT NULL COMMENT '人才理念id',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '人才理念标语',
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT '人才理念描述',
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布者',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '插入时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `talents`
--

INSERT INTO `talents` (`id`, `title`, `content`, `author`, `time`) VALUES
(1, '健全福利吸引人', '公司设有集体宿舍、带薪休假、健康体检、高温补贴等多种福利，关爱员工。', 'admin', '2017年06月13日'),
(2, '竞争薪酬激励人才', '公司倡导能者多劳、能者多得，设置各类奖项激发员工潜力、争做岗位能手。', 'admin', '2017年06月13日'),
(3, '系统培训培养人才', '公司通过内外训结合、大讲堂助力，促进员工提升自我，实现个人职业发展。', 'admin', '2017年06月13日'),
(4, '和谐文化留住人才', '公司党、工、团定期组织团体活动，帮助员工健康体魄、发展兴趣、丰富生活。', 'admin', '2017年06月13日');

-- --------------------------------------------------------

--
-- Table structure for table `techKinds`
--

CREATE TABLE `techKinds` (
  `id` int(2) NOT NULL COMMENT '科技服务模块编号',
  `moduleName` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '科技服务模块名称',
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布者',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techKinds`
--

INSERT INTO `techKinds` (`id`, `moduleName`, `author`, `time`) VALUES
(1, 'β-内酰胺酶专栏', 'admin', '2017年05月14日'),
(2, '药用辅料专栏', 'admin', '2017年05月30日'),
(3, '其它服务支持', 'admin', '2017年05月30日');

-- --------------------------------------------------------

--
-- Table structure for table `techServices`
--

CREATE TABLE `techServices` (
  `id` int(5) NOT NULL COMMENT '服务编号',
  `moduleId` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT '模块id',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '服务标题',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '服务内容',
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `pageview` int(10) NOT NULL COMMENT '浏览量',
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发布者'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techServices`
--

INSERT INTO `techServices` (`id`, `moduleId`, `title`, `content`, `time`, `pageview`, `author`) VALUES
(1, '1', '牛奶中抗生素残留及其检测方法研究', '                                                牛奶中抗生素残留及其检测方法研究                                                　　随着抗生素在乳畜饲养业中的广泛应用，牛奶中抗生素残留问题日趋受到国际社会的重视。对此，检测技术也迅速发展，以寻求简便、快速、准确、敏感性高的检测方法满足日趋严格的残留限量的要求，保障人们饮用牛奶的卫生和安全。                                                　　1牛奶中抗生素残留的来源及其危害                                                　　1．1牛奶中抗生素残留的来源                                                　　一般认为，对泌乳牛用药不当或不注意安全时间是牛乳中抗生素残留的重要因素，尤其是使用乳房灌注法治疗乳腺炎时，易造成牛乳中抗生素残留。随着畜牧业的发展，在牛饲料中添加饲料添加剂已十分广泛，其中含有一定比例的抗生素，主要作用是预防疾病的发生，这也是牛乳抗生素残留重要原因。此外，在高温季节，一些不法交奶户为防止乳的酸败，往往向牛乳中掺杂各种抗生素，这也是乳中抗生素残留的一个来源。1983年，Egan调查表明，重用经抗生素治疗的乳牛用过的挤乳器给正常乳中挤乳，可使正常牛的乳中残留抗生素，于是他指出：挤乳是乳中抗生素浅留的另一个来源。                                                　　1．2牛奶中抗生素残留的危害                                                　　牛奶是老少皆宜的营养品，牛奶中若含有抗生素，对长期饮用者来说无疑是等于长期服用小剂量的抗生素，对抗生素有过敏体质的人服用残留抗生素的乳后会发生过敏反应。即使是正常饮用者，体内的某些条件性致病菌易产生耐药性，一旦患者再用同种抗生素治疗很难奏效。抗生素是奶牛场治疗乳房炎的常规药物。由于长期大量使用抗生素，使耐药菌株增加，一些乳房炎病例变得难以用常规方法治愈。这又促使临诊兽医在治疗过程中加大抗生素的用量。此外，牛奶中抗生素残留会影响奶制品的品质，如果用含抗生素的奶做酸奶或乳酪等，则残留在其中的抗生素会抑制细菌的发酵，使产量和质量降低。因此市场不允许出售抗生素残留过量的牛奶，这样也造成牛奶生产者的经济损失。                                                　　2牛奶中的抗生素残留检测方法研究进展                                                　　2．1微生物检测法                                                　　微生物检测法是应用较广泛的方法，如纸片法、TTC法等等，因其测定原理基于抗生素对微生物的生理机能、代谢的抑制作用，因而与临床应用的要求一致，但其测定时间长且结果误差较大。目前趋向灵敏、准确、简便、快速的微生物检测方法研究，如酶标抗体检测法等。                                                　　2．1．l纸片法                                                　　纸片法，即PD法（Paper Disc）。将一吸满受检乳样的滤纸圆片放入一接种枯草杆菌的琼脂平皿上，并放入一含有标准抗生素的阳性对照圆片。将陪替氏培养皿在 32℃下培养17－ 24h，然后观察有无抑菌圈，若要判定结果是否为真阳性，则需将乳样在82℃下加热2－3min，冷却，再重复试验。该方法对奶样中青霉素残留的检测限可达0．0l IU／ml。岗田雪南（1986）应用PD法调查日本岛根县540份生乳，阳性55份（l0．2％）；并指出乳中的一些抗菌物质如溶菌酶、乳胆铁质等等影响试验结果。而嗜热脂肪杆菌纸片检测法仅用于检测奶样中β-内酰胺类抗生素，并能暗示是否还存在其它抑菌物质，检测限可达0．008IU／ml以下。一般在4h内即可获得有关乳中是否还存在β-内酰胺抗生素残留的结果。                                                　　2．1．2 TTC法                                                　　TTC，即氯化三苯基四氮唑（ tripheye tetrazolium chloride），这是目前我国食品卫生标准中规定的检查牛乳中抗生素残留的检测方法（GB5409—85）。如果牛乳中有抗生素存在，当乳中加入菌种（嗜热链球菌）经培养后，菌种不增殖，此时加入的TTC指示剂不发生还原反应，所以仍呈无色状态；如果没有抗生素存在，则加入菌种即行增殖，TTC还原变成红色，使样品染成红色。周树南采用TTC法调查了江苏省8市10个牧场生奶、消毒牛奶和奶粉中抗生素残留情况，生奶阳性率3.6％，消毒牛奶11．4％，奶粉39．58％。1991年，李权超用TTC法检测长春市鲜牛奶中抗生素残留情况，结果阳性率3.3％，可疑率18.3％。                                                　　此外，王春奕等用圆盘法对西宁市消毒鲜牛奶中抗生素残留调查。实验结果表明检测的5批25份市售消毒鲜牛奶中抗生素残留质量分数在1.5×10-9以上，超过了世界卫生组织（WHO）和联合国粮农组织（FAO）规定的奶中青霉素含量为0的标准。并认为这可能与饲料中添加的抗生素过量和兽医临床上大剂量、长期使用抗生素有关。                                                　　2.2理化检测法                                                　　理化检测方法是利用抗生素分子中的基团所具有的特殊反应或性质来测定其含量，如高效液相色谱法、气相色谱法、比色法、荧光分光光度法等等，能进行定性、定量和药物鉴定，敏感性较高，但有的检测程序较复杂，有的检测费用较高。                                                　　2．2．l高效液相色谱                                                　　高效液相色谱是目前广泛应用的一种理化检测方法，它引入了气相色谱理论，在技术上采用了高压泵，高效固定相和高灵敏度检测器，实现了分离速度快、效率高和操作自动化。高效液相色谱法测定牛奶中的药物残留都要经历样品处理（包括样品的提取、脱蛋白、离心、层析柱净化、衍生化等步骤）、残留药物的分离和残留药物的检测。样品的提取一般使用水和酸化有机溶剂，两者可以同时达到脱蛋白和萃取残留的目的。加拿大HAL使用钨酸钠、硫酸和水从组织中提取青霉素并脱掉蛋白质。这种方法对牛奶中的青霉素效果非常好。样品经提取后要进行蛋白质沉淀。脱蛋白的常用有机溶剂有甲醇、乙腈和2一丙醇；无机酸有硫酸和钨酸钠、酸化乙腈（pH4.0－4.4），以及超滤法等。Bioson等通过把青霉素萃取入水相中，在硫酸和钨酸钠的存在下，已能减少几种非极性化合物的污染，得到比较干净的水提取液。为了从生物体液和动物组织中提取青霉素残留，Barker等提出了基体固相分散技术（MSPD），即把样品基体与固相填料（如C18填料）混合搅拌均匀，然后把搅拌均匀的物质填充到层析柱中，用适当的溶剂淋洗上层分析物。                                                　　通常，得到的水提取液或有机提取液中，目标分析物浓度都很低，还含有许多共萃物，如果这些物质在最终的溶液中存在，不仅会损害色谱仪器，也会增加检测的噪音，无法测定痕量浓度的目标分析物。为了降低背景化合物的干扰，通常需要对目标分析物进行净化与浓缩。常用的净化和浓缩方法有离子交换（IE）、固相萃取（SPE）和免疫亲合色谱法（IAC）。Moats等在分析青霉素残留时，首次尝试把自动在线痕量富集的方法用于样品净化。这种半自动化技术使用馏分收集器收集色谱淋洗液中预先确定的馏分。把收集到的馏分浓缩后，再进行液相色谱测定。此法已用于测定牛奶中的羟氨苄青霉素，邻氯青霉素和苯氧甲基青霉素。氨苄青霉素和羟氨苄青霉素。                                                　　残留组分的分离方式包括正相、反相和离子交换等几种分离手段。近几年来大都改用反相色谱法，最常用的分析柱填料为ODS－C18。反相HPLC具有高效、短时，并在含水系统中完成分析等特点。某些含有立体异构体的药物，如氨苄青霉素、苯氧乙基青霉素以及羧苄青霉素等，也可用离子对反相（RP）HPLC来改善其分离效果。但对强极性的青霉素类药物，如头孢三嗪，分离效果不甚理想。在流动相中加入离子对试剂，以改善其分离的选择性。                                                　　青霉素药物被分离后，最常用的检测方式为浓度型的紫外检测器和荧光检测器。彭莉等报道了用高效液相色谱法（HPLC）检测牛奶中氯霉素的残留量，采用乙酸乙酯提取牛奶中残留的氯霉素，用正烷一氯仿（1+1， V／V）溶解残渣，以乙腈一0.005mol／l磷酸氢二铵（l＋ 82， V／V）作为流动相，用高效液相色谱仪紫外检测器在278nm检测。平均加收率94.8%，变异系数＜12.0%。样品前处理简单、回收率高、实用性强、检疫灵敏度高、重视性好、检测数据准确可靠，可作为牛奶中氯霉素残留检测的确证方法。由于奶样中药物残留量少，背景干扰往往很严重，因此一般都使用柱前或柱后衍生技术，通过柱前衍生反应可以有效地提高紫外检测器检测残留的灵敏度。目前，随着接口技术的显著改进，质谱作为一种质量流速型检测器，正广泛应用于残留分析的检测中。电化学检测器也已用于检测邻氯青霉素、头孢菌素和青霉素。                                                　　由于其固有的高灵敏度，荧光检测法在多数LC分析中要优于紫外检测法。Terada利用氨苄青霉素在甲醛和三氯乙酸溶液中形成能产生荧光的衍生产物的原理，用荧光检测器，测定牛奶中氨苄青霉素残留量。这不仅提高了方法的选择性，而且灵敏度可达1μg／l。此外还有用 dansylaziridine、9一芴基甲基氯甲酸酯和4一溴甲基一7甲氧香豆素为衍生化试剂的报道，但由于受到多种因素的限制，应用并不多。尽管测定原理不同，但样品的前处理步骤并没有多大区别，都要经历样品的提取、脱蛋白、离心、层析柱净化、衍生化等步骤，而所选用色谱柱均为反相柱，流动相为有机溶剂和磷酸盐缓冲液。总之，液相色谱法测定牛奶中药物残留的方法正逐渐成熟起来。 2．2．2色／质联用法色／质联用法由于实现了高效层析分离和检测联机，可用微电脑控制层析条件、程序和数据处理，其特异性、灵敏度和重复性均好，并可一次同时完成同一样本中多种药物及其代谢物检测。对分析牛奶中青霉素类抗生素，质谱作为一种专一检测器已获得广泛应用。其分析方式有直接探头分析法、直接液体导入法、GC／MS、LC／MS联用法等。使用电子轰击离子化、化学电离、快速原子轰击、热喷雾电离、等离子体喷雾、粒子束电离、大气压化学电离（APCI）和电喷雾电离（ESI）技术对不同MS离子源条件下青霉素类药物分子碎片类型的特征已经作了大量的工作。另外离子阱质谱技术（MS／MS）也已用于鉴别青霉素类药物。                                                　　1991年，Tyczkowska等曾用热喷质谱技术鉴别了牛奶中的青霉素G。该方法使用苯氧甲基青霉素作内标，牛奶样品用钨酸钠沉淀蛋白后，上清液用Bond Elut C18SPE固相柱净化，用乙腈一0.0125mol／l醋酸胺（60＋ 40）洗脱青霉素。洗脱液直接用 TSP／MS测定。测定低限为0．005mg／kg。Bioson使用TSP／LC／MS对牛奶和动物组织中残留的青霉素进行测定和确证。后来又使用连接紫外检测器的LC／TSP／MS确证了牛奶中的青霉素G。                                                　　随着电喷雾接口技术的成熟，LC／ESI／MS技术已广泛用于测定牛奶中的青霉素类抗生素。由于采用选择离子检测方式，故不仅提高了该测定方法的灵敏度，同时也使得方法的选择性得到很大改善。Straub等使用LC／ES／MS测定了牛奶中的几种青霉素残留。青霉素、邻氯青霉素与苄青霉素的最低测定限为3－5μg／kg，氨苄青霉素与羟氨青霉素的最低测定限为20－30μg／ml。                                                　　随着离子阱技术中色／质联用法中的应用，Heller等使用电喷雾离子化串联离子阱质谱技术测定了牛奶中7种青霉素类抗生素残留。该法可检测牛奶中低至5μg／l（苄青霉素）与10μg／l（头孢噻呋、头孢匹林、头孢哇啉、氨苄青霉素、羟氯青霉素和邻氯青霉素）水平的7种青霉素类抗生素残留。这种检测技术尽管灵敏度很高，得到的结构信息也比较多。由于影响因素比较复杂，结果的重现性并不理想，再加上离子阱的空间较少，更易受到样品基体的干扰，所以这种技术用于牛奶中抗生素残留的检测还需做深入的研究工作。此外，张素霞等报道了用MSPD－HPLC－UV分析法检测牛奶中四环素类药物残留。样品平均回收率为78．7％－90．2％，变异系数在2．4％－18．8％之间，方法检测限为0．02－0.05μg／ml。Kihak等以 NCl方式的 LC／PB／MS技术成功对牛奶中OTC、TC与CTC残留进行确证。Fenneell等使用反相HPLC／PDA测定了牛奶中及肉制品中的庆大霉素组分，检测限为0.5μg／ml。                                                　　2．2．3其它理化检测方法                                                　　宋华宾等依据抗生素的一些特殊呈色反应检测牛乳中的氯霉素、四环素、土霉素、链霉素、红霉素和庆大霉素，方法简便、快速，并且能半定量。另外，利用抗生素对牛乳变酸的抑制作用进行抗生素残留检测，当酸牛乳培养物加入后，用溴甲酚紫指示剂检测其酸性变化，并据此作出判断，此法检出量：青霉素0． 0000lIU／ml，链霉素 5mg／kg。                                                　　2．3免疫法                                                　　目前药物残留免疫分析技术主要分为两大类：一为相对独立的分析方法，即免疫测定法（immunoassays，IAs），如 RIA、ELISA、固相免疫传感器（soindphas immunosensor）等；二是将免疫分析技术与常规理化分析技术联用，如利用免疫分析的高选择性作为理化测定技术中的净化手段，典型的方式为免疫亲合色谱（immunoaffinity chromatopphy，IAC）。                                                　　抗生素残留监测中的免疫测定法只能作为筛选方法，其定量效果还有待进一步研究。如 Watanabe等制备了卡那霉素结合抗原，并筛选单克隆抗体，用直接竞争ELISA法测定牛奶样品，检测限为4ng／ml。此外，还设计了测定试纸：载体为硝酸纤维薄膜，标记物为卡那霉素一HRP，底物为5一溴一4－4氯一3吲哚磷酸二钠，检测限达50ng／ml。Schnappinger等建立了牛奶中链霉素和双氢链霉素的直接竞争ELIS，样品经离心脱脂（4 000g， 20min）和 PBS稀释后直接测定，检测限分别为0.6ng／ml和0．4ng／ml。Haasnoot等报道了牛奶中链霉素、双氢链霉素、庆大霉素和新霉素直接竞争ELISA测定法，检测限达10－15ng／ml。                                                　　1966年，Hamburser首次制备发现抗氯霉素抗体。1984年，Arnold等建立了氯霉素的放射免疫测定法（RIA），并与GC／ECD进行了比较，检测限为0.6ng／kg。                                                　　Van de Water等报道了牛奶中氯霉素的免疫亲合色谱（IAC）净化法，样品经离心、过滤和稀释（固体样品首先用水提取）后用IAC柱净化，HPLC／UVD测定，回收率70％－99％。牛奶样品的检测限最低可达20ng／l（由于IAC的高度选择性方法检测限将主要决定于取样量地通过柱切系统，Haagsma等还进一步建立了牛奶中氯霉素的在线亲和色谱／HPLC／UVD测定法，能直接分析液体样品或提取液。                                                　　Huth用荧光免疫法测定牛奶中的6种β一内酰胺类抗生素，检测分析系统组成：一个内含4个毛细管的测定管、一个带有4个用来干燥试剂的凹面的试剂盘和一个毛细管反应器。反应在毛细管反应器内进行，并通过毛细管反应器识别荧光显示结果，然后输出测定结果。牛奶中β一内酰胺类抗生素的最低检测限为：青霉素G，3.2μg／kg、氨苄青霉素，2．9μg／kg、羟氨苄青霉素，3．6μg／kg、邻氯青霉素，7．4μg／kg、头孢匹林，16．3μg／kg、头孢噻呋33．7μg／kg。                                                　　综上所述，鉴于牛奶中抗生素残留是涉及人类健康的公共卫生问题，应重视和加强检测工作，并且努力研究一些简便、快速、敏感、准确的检测方法，保证消费者的健康。                                            ', '2010年08月02日', 782, 'admin'),
(2, '1', '金属β-内酰胺酶', '                                                金属β-内酰胺酶   属Bush分类3群，Ambler分类B类，该群酶最大特点是可以水解碳青霉烯类等抗生素，而对哌拉西林和氨曲南影响较小，其活性不被克拉维酸等β-内酰胺酶抑制剂所抑制，但可被乙二胺四乙酸（EDTA）所抑制。酶活性中心需金属锌离子的参与，故称为金属β-内酰胺酶。金属β-内酰胺酶可由染色体和质粒介导，可在铜绿假单胞菌、嗜麦芽窄食单胞菌、粘质沙雷菌、肠杆菌属菌、肺炎克雷伯菌、嗜水气单胞菌和不动杆菌等细菌中检出此类酶。我们平时所讲的β-内酰胺酶是一个大概念，包括所有β-内酰胺酶，如葡萄球菌等产生的青霉素酶、革兰阴性杆菌等产生的广谱β-内酰胺酶、AmpC酶、超广谱β-内酰胺酶等，金属β-内酰胺酶也属于β-内酰胺酶分类中的一个种类。                                                一、金属酶的发现和分布                                                第一个报道的金属酶是从蜡样芽孢杆菌( Bacill us cereus) 中发现的,该酶为锌依赖酶。20 世纪80 年代初期日本从嗜麦芽窄食单胞菌中鉴定出第二种锌依赖青霉素酶L1 型酶,随后又从嗜水气单胞菌和脆弱拟杆菌中鉴定出多种能水解亚胺培南的金属酶。这些酶都由染色体基因编码。该类金属酶分布在蜡样芽孢杆菌、嗜麦芽窄食单胞菌、脆弱拟杆菌、气单胞菌属和戈氏军团菌中,除嗜麦芽窄食单胞菌外,在临床上都极为罕见,而且都是单株散发的。                                                1991 年日本学者在铜绿假单胞菌中发现了第一种质粒介导的金属酶( IMP21)  ,不久又从脆弱拟杆菌中发现了一种可转移金属酶,这两个酶的发现意味着金属酶已经从单株散发向随机分布过渡。现在已报道了10多种可转移金属酶: IMP21～8 和VIM21～3,分布在铜绿假单胞菌、不动杆菌和肠杆菌科细菌中,地域分布上已经不再局限于日本,现已分布至亚洲、欧洲和美洲的多个国家。                                                二、金属酶的生化分类和生化性质                                                1995 年Bush 等将金属酶全部归入功能类型3群,主要分类依据为:能被金属螯合剂螯合,不被β-内酰胺酶抑制剂克拉维酸、舒巴坦和三唑巴坦抑制。当时没有再作进一步分类。随着金属酶报道的增多,1997 年Rasmussen 和Bush 将金属酶按功能分成三个亚群:3a 、3b 和3c 。                                                (1) 3a 亚群　绝大多数金属酶属于3a 亚群。其特点是底物谱宽,水解青霉素的速度与水解亚胺培南的速度相近或更快,还能有效水解头孢菌素,因此,3a亚群金属酶是β2内酰胺酶中最危险的单一酶种。许多3a 亚群酶需添加Zn2 + 才能达到最大活性或被激活,提示该亚群与Zn2 + 的亲和力低。                                                (2) 3b 亚群　分布于气单胞菌中,包括亲水气单胞、杀蛙气单胞、温和气单胞和简达气单胞菌。特点是底物特异性高, 优先水解碳青霉烯, 弱水解青霉素(A2h 除外) 和头孢菌素,不水解nitrocefin ,因此不能用nitrocefin 纸片法检出。等电聚焦电泳和凝胶柱层析时必须用亚胺培南作底物才能检测到。能被EDTA抑制,加EDTA 后,再加Zn2 + 又可恢复酶活性。高浓度Zn2 + 可增加酶活性而在低浓度时酶活性受抑制。当Zn2 + 在15μmol 或更低时,至少有3 种3b 酶的活性受抑制。                                                (3) 3c 亚群　只有一种,来源于戈氏军团菌,至今尚未命名。能高效水解头孢菌素和碳青霉烯。这三群金属酶不水解氨曲南,不被克拉维酸、舒巴坦和三唑巴坦抑制,水解较新的碳青霉烯的能力比水解亚胺培南弱(3a 亚群的Bacill us cereus Ⅱ和3b 亚群的AsbM1除外) 。                                                三、检测方法，可根据该酶被EDTA和其它的抑制剂所抑制的特性来对其进行检测，具体检测方法参见有关文献。                                            ', '2010年08月02日', 805, 'admin'),
(3, '1', '企业标准备案', '2008年4月10日，我公司完成企业标准备案及公司新产品“β-内酰胺酶Ⅱ”的产品标准备案。企业标准备案号为：Q330111C27606-2008产品标准号为：Q/HLB0001-2008                                            ', '2008年04月24日', 845, 'admin'),
(4, '2', '江省药用辅料使用管理暂行规定', '                                                为加强药用辅料的管理，我局根据《药品管理法》、《药品生产质量管理规范》、以及国家食品药品监督管理局“关于药用辅料质量标准问题的复函”（食药监注函[2003]4号）等相关法律法规制定我省药用辅料使用管理暂行规定。                                                一、药用辅料的执行标准：                                                1、国家药用标准                                                2、地方药用标准                                                3、企业标准。                                                本“暂行规定”所指的企业标准系指药品生产企业所用的药用辅料,无国家或地方药用标准,但有药用历史的辅料，企业依据国外药典标准、食品标准、化工标准等制定的质量标准。药品生产企业制订药用辅料企业标准，应将该质量标准草案、标准起草依据和起草说明，连同三批样品一并报送省药检所复核。企业标准应能全面科学的评价和控制辅料的质量符合药用要求。其中药品注册时所附的相关辅料标准，已随药品注册经审评、批准的，可作为企业标准，直接执行。                                                二、药用辅料的使用要求                                                1、药品生产企业应使用经国家或省食品药品监督管理部门批准，持有药用辅料批准文号的辅料，并对药品生产中使用的辅料质量负责。                                                2、已有国家或地方批准文号的药用辅料，药品生产企业必须采购有批准文号的药用辅料用于药品生产。如有批准文号的药用辅料市场上确无供应，企业采购未取得药用辅料批准文号的辅料，首批使用前应送市级(含)以上药品检验所按国家或地方药用标准检验，检验合格后方可用于药品生产。                                                3、采购没有国家或地方药用标准，执行企业标准的药用辅料，首批使用前应送市级（含）以上药检所检验合格后，方可用于药品生产。                                                4、无批准文号、无药用标准又没有药用历史的辅料以及我国未生产过的药用辅料，按新辅料有关规定申报，待国家局注册批准后方可用于药品生产。                                                5、变更辅料按药品注册管理办法的有关规定，上报国家局批准后方可进行相应的变更。                                                三、供应商审计                                                1、药品生产企业应制订对辅料供应商审计的管理制度、审计标准和操作程序。由质量管理部门会同有关部门对辅料供应商进行定期审计，以确保符合要求。                                                不直接从生产厂家购入的辅料，应对生产厂家及供应商家分别审计。                                                2、药品生产企业应根据产品风险程度、使用数量等实际情况，确定企业的主要辅料目录。                                                3、对辅料供应商的审计至少应包括：供应商的有关资质证明，厂房、设施、设备条件，质量保证体系，产品标准和质量，供应能力，企业信誉等方面。对主要辅料供应商审计必须进行生产现场考核，对其生产质量保证体系作出评估。                                                4、应保证药用辅料供应商相对固定，以确保药品质量稳定。                                                变更辅料供应商，应严格按企业变更供应商的相关制度和程序进行。供应商变更后的药用辅料若是未取得药用辅料批准文号的，首批使用前应送市级（含）以上药检所按药用标准、经复核的企业标准进行检验，检验合格后方可用于药品生产。                                                四、药用辅料的使用管理                                                1、药品生产企业应建立药用辅料购入、储存、发放、使用的管理制度，以保证使用辅料的质量和在生产过程中的可追溯性。                                                2、药品生产企业购入辅料应要求辅料生产企业提供质量符合要求的证明性文件。进口辅料同时应提供口岸所检验报告单。                                                3、药用辅料使用前必须按标准按批次进行全检。药品生产企业应配备与所使用药用辅料相适应的检验仪器。个别检验项目仪器配备有困难的，可委托药品检验所或有资质的单位检验，并报省局备案。                                                4、药用辅料应在规定的条件下贮存。                                                5、药用辅料应在规定的有效期内使用。超过有效期的，不得使用。                                                未制定有效期的辅料，企业应根据辅料的稳定性试验数据制定贮存期限。临近贮存期限应进行复检，复验合格的可重新确定贮存期限，但该贮存期限不得大于原贮存期限。确定贮存期的方法和数据应科学、充分。                                                有效期、储存期内如有特殊情况应及时复验以确定是否可继续使用。                                                6、进入青霉素类、头孢类、激素类、肿瘤类等药物生产车间的辅料，退库后不得再用于其他类别药物的生产。                                            ', '2010年08月04日', 644, 'admin'),
(5, '3', '化妆品注册申报的相关问题', '                                                化妆品注册申报的相关问题                                                发布人：admin 发布时间：2011年1月21日 已被浏览 631 次                                                一、进口化妆品必须在国家食品药品监督管理局报批？                                                所有进口化妆品都必须向国家食品药品监督管理局（以下简称药监局，即SFDA）报批。                                                二、药监局报批（审批） 的流程是怎样的？                                                1、检验、                                                2.整理材料                                                3.申请，产品受理                                                4.专家评审                                                5.行政审核                                                6.制证                                                三、化妆品注册申报时的分类：                                                我国有关化妆品按照《化妆品卫生监督条例》中的类别加以说明，具体如下：                                                进口非特殊类（普通类）：                                                1、发用品 2、护肤品                                                3、彩妆品 4、指(趾）甲用品                                                5、芳香品                                                进口特殊用途类:                                                1、育发类* 2、健美类*                                                3、美乳类* 4、染发类                                                5、烫发类* 6、防晒类*                                                7、除臭类* 8、祛斑类*                                                9、脱毛类*                                                四．化妆品申报注册需要多长时间                                                答：进口普通类化妆品一般在4.5个月左右取得报批凭证，进口特殊类化妆品一般在6到7个月左右取得批文。进口化妆品报批时间主要体现在以下几个方面：                                                1、检验时间：                                                进口普通类化妆品检验周期，一般在40—60天内完成。特殊用途化妆品的各项试验的检测周期，一般在80天内完成。防晒类产品如果加做SPF值、斑贴试验及PA试验，时间需要适当延长。育发类、健美类、美乳类产品需要做人体试用试验安全性评价，整个周期约为150天。                                                2、评审时间：                                                药监局特殊用途化妆品的评审会议为每月的最后一周                                                五、化妆品许可评审依据？                                                答：化妆品卫生许可审批工作按《药监局化妆品卫生行政许可报批受理规定》和《化妆品卫生规范（2007年版）》规定和技术要求进行。                                                六、化妆品申报注册一般需要多少费用？                                                答：费用主要是化妆品的检验费用，目前评审免费                                                目前SFDA共认定14家机构具有化妆品检验资格。其中上海北京的收费略高，但质量和效率也相对高。因此建议大家选择北京上海的检验机构。                                                检验收费标准会根据产品的类别有所不同：普通化妆品一般在4800-7800元，多数都是5800元/个，特殊类化妆品因会增加人体试验而稍高，大多在10000元以上，但一般不超过3.5万。                                                七、化妆品的检验需要进行哪些检测项目？                                                答：进口普通类化妆品一般要进行微生物检验、卫生化学检验、毒理学安全性实验。进口特殊类化妆品一般要进行微生物检验、卫生化学检验、pH值测定、毒理学安全性实验、人体安全及功能试验。                                                八、化妆品申报注册涉及的机构有哪些？                                                答主要涉及到四个机构：1、检测机构；2、受理办公室；3、评审委员会；4、行政审批部门。                                                1、检测机构：如前述                                                2、受理办公室：负责对企业的报批材料进行初步审核，材料符合要求则受理并负责安排参加评审会。机构为国家食品药品监督管理局受理中心，地址在北京西直门。                                                3、评审委员会：负责对报批的产品进行技术评审。机构为在国家中药品种保护审评委员会办公室，地址在北京南四环西路188号11区15号楼(100070)                                                4、卫生行政部门：对通过了评审委员会技术评审的产品进行进一步审核，如符合有关法规的规定，则予以上报或批准，经批准的产品发给化妆品批准文号。                                                九、如果进口产品在国外已经进行了实验，是否在报批的时候还需要重新检验？                                                答：一般情况下，进口产品必须在中国进行微生物，卫生化学和毒理学检验，但防晒化妆品在国外已经做了SPF和PA检测，可以直接提交国外的检验报告，在提交检验报告的同时需要同时提供国外实验室资质条件资料。对于提交国外SPF检验报告的，如报批名称与检验报告上名称不一致时，生产厂家需出具书面证明，证明所报批产品与检验报告标示产品一致。外文报告应翻译为中文。                                                十、化妆品申报注册需提交哪此材料？                                                答：按照2009年12月25日国家药监局颁发的新版的化妆品行政许可报批受理规定的要求，进口普通类需要提供如下材料：                                                （一）进口非特殊用途化妆品行政许可申请表；                                                （二）产品中文名称命名依据；                                                （三）产品配方；                                                （四）产品质量安全控制要求；                                                （五）产品原包装（含产品标签、产品说明书）；拟专为中国市场设计包装的，需同时提交 产品设计包装（含产品标签、产品说明书）；                                                （六）经国家食品药品监督管理局认定的许可检验机构出具的检验报告及相关资料；                                                （七）产品中可能存在安全性风险物质的有关安全性评估料；                                                （八）已经报批的行政许可在华报批责任单位授权书复印件及行政许可在华报批责任单位营业执照复印件并加盖公章；                                                （九）化妆品使用原料及原料来源符合疯牛病疫区高风险物质禁限用要求的承诺书；                                                （十）产品在生产国（地区）或原产国（地区）生产和销售的证明文件；                                                （十一）可能有助于报批的其他资料。                                                另附许可检验机构封样并未启封的市售样品1件。                                                十一、需要提供的证明性材料有哪些？                                                答：主要为以下三种：                                                1、自由销售证明原件，非中文，需要进行翻译公证。                                                2、授权书                                                第一种如为外文的需要进行翻译公证，后一种需要就委托方和被委托方的法人签字和盖章分别在各自的所在国进行真实性公证，经过双方公证后的授权书如果非中文，需要翻译公证。                                             ', '2011年01月21日', 630, 'admin'),
(6, '3', '《兽药注册办法》', '                                                中华人民共和国农业部令                                                第44号                                                《兽药注册办法》已于2004年11月15日经农业部第33次常务会议审议通过，现予以发布，自2005年1月1日起施行。                                                部长杜青林                                                二○○四年十一月二十四日                                                兽药注册办法                                                第一章  总则                                                第一条  为保证兽药安全、有效和质量可控，规范兽药注册行为，根据《兽药管理条例》，制定本办法。                                                第二条  在中华人民共和国境内从事新兽药注册和进口兽药注册，应当遵守本办法。                                                第三条  农业部负责全国兽药注册工作。                                                农业部兽药审评委员会负责新兽药和进口兽药注册资料的评审工作。                                                中国兽医药品监察所和农业部指定的其他兽药检验机构承担兽药注册的复核检验工作。                                                第二章  新兽药注册                                                第四条  新兽药注册申请人应当在完成临床试验后，向农业部提出申请，并按《兽药注册资料要求》提交相关资料。                                                第五条  联合研制的新兽药，可以由其中一个单位申请注册或联合申请注册，但不得重复申请注册；联合申请注册的，应当共同署名作为该新兽药的申请人。                                                第六条  申请新兽药注册所报送的资料应当完整、规范，数据必须真实、可靠。引用文献资料应当注明著作名称、刊物名称及卷、期、页等；未公开发表的文献资料应当提供资料所有者许可使用的证明文件；外文资料应当按照要求提供中文译本。                                                申请新兽药注册时，申请人应当提交保证书，承诺对他人的知识产权不构成侵权并对可能的侵权后果负责，保证自行取得的试验数据的真实性。                                                申报资料含有境外兽药试验研究资料的，应当附具境外研究机构提供的资料项目、页码情况说明和该机构经公证的合法登记证明文件。                                                第七条  有下列情形之一的新兽药注册申请，不予受理：                                                （一）农业部已公告在监测期，申请人不能证明数据为自己取得的兽药；                                                （二）经基因工程技术获得，未通过生物安全评价的灭活疫苗、诊断制品之外的兽药；                                                （三）申请材料不符合要求，在规定期间内未补正的；                                                （四）不予受理的其他情形。                                                第八条  农业部自收到申请之日起10个工作日内，将决定受理的新兽药注册申请资料送农业部兽药审评委员会进行技术评审，并通知申请人提交复核检验所需的连续3个生产批号的样品和有关资料，送指定的兽药检验机构进行复核检验。                                                申请的新兽药属于生物制品的，必要时，应对有关种毒进行检验。                                                第九条  农业部兽药审评委员会应当自收到资料之日起120个工作日内提出评审意见，报送农业部。                                                评审中需要补充资料的，申请人应当自收到通知之日起6个月内补齐有关数据；逾期未补正的，视为自动撤回注册申请。                                                第十条  兽药检验机构应当在规定时间内完成复核检验，并将检验报告书和复核意见送达申请人，同时报农业部和农业部兽药审评委员会。                                                初次样品检验不合格的，申请人可以再送样复核检验一次。                                                第十一条  农业部自收到技术评审和复核检验结论之日起60个工作日内完成审查；必要时，可派员进行现场核查。审查合格的，发给《新兽药注册证书》，并予以公告，同时发布该新兽药的标准、标签和说明书。不合格的，书面通知申请人。                                                第十二条  新兽药注册审批期间，新兽药的技术要求由于相同品种在境外获准上市而发生变化的，按原技术要求审批。                                                第三章  进口兽药注册                                                第十三条  首次向中国出口兽药，应当由出口方驻中国境内的办事机构或由其委托的中国境内代理机构向农业部提出申请，填写《兽药注册申请表》，并按《兽药注册资料要求》提交相关资料。                                                申请向中国出口兽用生物制品的，还应当提供菌(毒、虫)种、细胞等有关材料和资料。                                                第十四条  申请兽药制剂进口注册，必须提供用于生产该制剂的原料药和辅料、直接接触兽药的包装材料和容器合法来源的证明文件。原料药尚未取得农业部批准的，须同时申请原料药注册，并应当报送有关的生产工艺、质量指标和检验方法等研究资料。                                                第十五条  申请进口兽药注册所报送的资料应当完整、规范，数据必须真实、可靠。引用文献资料应当注明著作名称、刊物名称及卷、期、页等；外文资料应当按照要求提供中文译本。                                                第十六条  农业部自收到申请之日起10个工作日内组织初步审查，经初步审查合格的，予以受理，书面通知申请人。                                                予以受理的，农业部将进口兽药注册申请资料送农业部兽药审评委员会进行技术评审，并通知申请人提交复核检验所需的连续3个生产批号的样品和有关资料，送指定的兽药检验机构进行复核检验。                                                第十七条  有下列情形之一的进口兽药注册申请，不予受理：                                                （一）农业部已公告在监测期，申请人不能证明数据为自己取得的兽药；                                                （二）经基因工程技术获得，未通过生物安全评价的灭活疫苗、诊断制品之外的兽药；                                                （三）我国规定的一类疫病以及国内未发生疫病的活疫苗；                                                （四）来自疫区可能造成疫病在中国境内传播的兽用生物制品；                                                （五）申请资料不符合要求，在规定期间内未补正的；                                                （六）不予受理的其他情形。                                                第十八条  进口兽药注册的评审和检验程序适用本办法第九条和第十条的规定。                                                第十九条  申请进口注册的兽用化学药品，应当在中华人民共和国境内指定的机构进行相关临床试验和残留检测方法验证；必要时，农业部可以要求进行残留消除试验，以确定休药期。                                                申请进口注册的兽药属于生物制品的，农业部可以要求在中华人民共和国境内指定的机构进行安全性和有效性试验。                                                第二十条  农业部自收到技术评审和复核检验结论之日起60个工作日内完成审查；必要时，可派员进行现场核查。审查合格的，发给《进口兽药注册证书》，并予以公告；中国香港、澳门和台湾地区的生产企业申请注册的兽药，发给《兽药注册证书》。审查不合格的，书面通知申请人。                                                农业部在批准进口兽药注册的同时，发布经核准的进口兽药标准和产品标签、说明书。                                                第二十一条  农业部对申请进口注册的兽药进行风险分析，经风险分析存在安全风险的，不予注册。                                                第四章  兽药变更注册                                                第二十二条  已经注册的兽药拟改变原批准事项的，应当向农业部申请兽药变更注册。                                                第二十三条  申请人申请变更注册时，应当填写《兽药变更注册申请表》，报送有关资料和说明。涉及兽药产品权属变化的，应当提供有效证明文件。                                                进口兽药的变更注册，申请人还应当提交生产企业所在国家（地区）兽药管理机构批准变更的文件。                                                第二十四条  农业部对决定受理的不需进行技术审评的兽药变更注册申请，自收到申请之日起30个工作日内完成审查。审查合格的，批准变更注册。                                                需要进行技术审评的兽药变更注册申请，农业部将受理的材料送农业部兽药审评委员会评审，并通知申请人提交复核检验所需的连续3个生产批号的样品和有关资料，送指定的兽药检验机构进行复核检验。                                                第二十五条  兽药变更注册申请的评审、检验的程序、时限和要求适用本办法新兽药注册和进口兽药注册的规定。                                                申请修改兽药标准变更注册的，兽药检验机构应当进行标准复核。                                                第二十六条  农业部自收到技术评审和复核检验结论之日起30个工作日内完成审查，审查合格的，批准变更注册。审查不合格的，书面告知申请人。                                                第五章  进口兽药再注册                                                第二十七条  《进口兽药注册证书》和《兽药注册证书》的有效期为5年。有效期届满需要继续进口的，申请人应当在有效期届满6个月前向农业部提出再注册申请。                                                第二十八条  申请进口兽药再注册时，应当填写《兽药再注册申请表》，并按《兽药注册资料要求》提交相关资料。                                                第二十九条  农业部在受理进口兽药再注册申请后，应当在20个工作日内完成审查。符合规定的，予以再注册。不符合规定的，书面通知申请人。                                                第三十条  有下列情形之一的，不予再注册：                                                （一）未在有效期届满6个月前提出再注册申请的；                                                （二）未按规定提交兽药不良反应监测报告的；                                                （三）经农业部安全再评价被列为禁止使用品种的；                                                （四）经考查生产条件不符合规定的；                                                （五）经风险分析存在安全风险的；                                                （六）我国规定的一类疫病以及国内未发生疫病的活疫苗；                                                （七）来自疫区可能造成疫病在中国境内传播的兽用生物制品；                                                （八）其他依法不予再注册的。                                                第三十一条  不予再注册的，由农业部注销其《进口兽药注册证书》或《兽药注册证书》，并予以公告。                                                第六章  兽药复核检验                                                第三十二条  申请兽药注册应当进行兽药复核检验，包括样品检验和兽药质量标准复核。                                                第三十三条  从事兽药复核检验的兽药检验机构，应当符合兽药检验质量管理规范。                                                第三十四条  申请人应当向兽药检验机构提供兽药复核检验所需要的有关资料和样品，提供检验用标准物质和必需材料。                                                申请兽药注册所需的3批样品，应当在取得《兽药GMP证书》的车间生产。每批的样品应为拟上市销售的3个最小包装，并为检验用量的3～5倍。                                                第三十五条  兽药检验机构进行兽药质量标准复核时，除进行样品检验外，还应当根据该兽药的研究数据、国内外同类产品的兽药质量标准和国家有关要求，对该兽药的兽药质量标准、检验项目和方法等提出复核意见。                                                第三十六条  兽药检验机构在接到检验通知和样品后，应当在90个工作日内完成样品检验，出具检验报告书；需用特殊方法检验的兽药应当在120个工作日内完成。                                                需要进行样品检验和兽药质量标准复核的，兽药检验机构应当在120个工作日内完成；需用特殊方法检验的兽药应当在150个工作日内完成。                                                第三十七条  中国兽医药品监察所负责标定和供应国家兽药标准物质。                                                中国兽医药品监察所可以组织相关的省、自治区、直辖市兽药监察所、兽药研究机构或兽药生产企业协作标定国家兽药标准物质。                                                第三十八条  申请人在申请新兽药注册和进口兽药注册时，应当向中国兽医药品监察所提供制备该兽药标准物质的原料，并报送有关标准物质的研究资料。                                                第三十九条  中国兽医药品监察所对兽药标准物质的原料选择、制备方法、标定方法、标定结果、定值准确性、量值溯源、稳定性及分装与包装条件等资料进行全面技术审核；必要时，进行标定或组织进行标定，并做出可否作为国家兽药质量标准物质的推荐结论，报国家兽药典委员会审查。                                                第四十条  农业部根据国家兽药典委员会的审查意见批准国家兽药质量标准物质，并发布兽药标准物质清单及质量标准。                                                第八章  罚则                                                第四十一条  申请人提供虚假的资料、样品或者采取其他欺骗手段申请注册的，农业部对该申请不予批准，对申请人给予警告，申请人在一年内不得再次申请该兽药的注册。                                                申请人提供虚假的资料、样品或者采取其他欺骗手段取得兽药注册证明文件的，按《兽药管理条例》第五十七条的规定给予处罚，申请人在三年内不得再次申请该兽药的注册。                                                第四十二条  其它违反本办法规定的行为，依照《兽药管理条例》的有关规定进行处罚。                                                第九章  附则                                                第四十三条  属于兽用****药品、兽用精神药品、兽医医疗用毒性药品、放射性药品的新兽药和进口兽药注册申请，除按照本办法办理外，还应当符合国家其他有关规定。                                                第四十四条  根据动物防疫需要，农业部对国家兽医参考实验室推荐的强制免疫用疫苗生产所用菌（毒）种的变更实行备案制，不需进行变更注册。                                                第四十五条  本办法自2005年1月1日起施行。                                            ', '2010年08月02日', 719, 'admin'),
(7, '3', '我国兽用生物制品技术的发展与展望', '                                                我国兽用生物制品技术的发展与展望                                                兽用生物制品可以分为以下四类；1、疾病预防用生物制品，包括细菌、病毒、寄生虫疫苗和类毒素等；2、疾病治疗用生物制品，包括高免血清、高免蛋黄抗体、抗毒素及干扰素等；3、诊断检测用生物制品，包括抗原、抗体等；4、免疫调节类生物制品，包括免疫凋节剂和微生态制剂等。作为畜禽疾病预防控制的有力武器，兽用生物制品在畜牧业的发展中发挥着越来越重要的作用，畜牧业的发展带动了兽用生物制品的技术进步，后者的进步反过来又促进了畜牧业的繁荣。二十世纪，特别是中华人民共和国成立后的五十多年内，随着科学技术的飞速发展，兽用生物制品发生了翻天覆地的变化，新技术、新方法的出现和广泛推广应用，为我国兽用生物制品的技术进步提供了原动力。                                                一、我国兽用生物制品技术发展的历程回顾                                                我国兽用生物制品研究和生产，始于19l8年的青岛商品检验局血清所和19l9年的北平中央防疫处，继于1932年前农业部建立了上海血清制造所，1936年再建中央农业实验所畜牧兽医系，先后20年中生产的兽用生物制品有：抗牛瘟血清、抗猪瘟血清、猪肺疫、牛出败、禽霍乱抗血清等；牛瘟脏器苗、炭疽芽孢苗、狂犬病疫苗、牛肺疫疫苗、猪肺疫疫苗以及马鼻疽菌素、牛结核菌素、炭疽沉降素等。在这个时期内的产量不大，没有统一的产品质量标准，而且主要以发病动物脏器为抗原制成灭活疫苗，生产技术也较原始。                                                1938年后进入抗日战争和解放战争年代，使得正在兴起的生物制品业受到了影响，发展缓慢。但由于畜禽疫病流行较为严重。仅以牛瘟流行情况为例，每三、五年就大流行一次，以1938~1941年年间的初步统计记载，在川、康、青、藏、甘等部分地区死牛100万头以上；鸡的死亡更多，病死率高达60%以上。因而即是在抗日战争紧张年代，兽医生物制品的研究与生产也没有停止。如原中央农业实验所兽医系迁至四川荣昌恢复生产，解放军兽医部门在贵州扎佐成立军马防治所，生产军马所需生物制品。1941年成立农林部中央畜牧实验所，设立荣昌血清厂，生产的品种有牛瘟脏器苗、猪瘟疫苗、抗猪瘟血清、抗出败血清、抗猪丹毒血清、鸡新城疫疫苗及猪出败疫苗。                                                1945年抗日战争结束前后，为了控制畜禽疾病流行，相继成立了西南、东南、华北、华西、西北五个兽疫防治处，负责生产各辖区内及陕、甘、宁、青、内蒙古和绥远等区的兽医防治所需生物制品。虽然在一定范围内扩大了产品种类和生产量，引进了一些外国技术，但因设备简陋，物资缺乏，又没有统一的质量标准，从事研究与生产的技术人员缺少，仍然停留在较低技术水平上，防疫效果不显著。其后撤处并厂，建立了较完整的七个兽医生物药品厂。                                                1949年新中国建立后，党和政府十分重视兽医防制工作，积极培训技术人员，加强生产技术的交流，并展新产品研究，改进生产工艺，在1952年邀请前苏联专家帮助，通过调查研究，举办生物制品人员讲习班，在我国已有产品水平上，制订出了我国第一部《兽医生物药品制造与检验规程》和生物药品监察制度。制订出36个产品的生产与检验规程，初步统一了我国生物制品的质量标准，虽仍是一般传统方法，但终究有章可依，不经检验合格的产品不得出厂，保证了产品使用的安全。生产的生物制品产量达到1.2亿毫升，较建国前两年增加了3倍以上。进入50年代，除进一步充实、调整、改善了原有的兰州、江西、广西、南京、开封、成都、哈尔滨七个兽医生物药品厂外，在大跃进摧动下，又筹建了新疆、西藏、内蒙及各省市、区新的兽医生物药品制造厂，总数达28个。在此期间，我国组成生物制品专家赴前苏联和民主德国考察兽医生物药品制造技术。学习先进经验，首次按国际标准，制订了我国的鼻疽菌素、结核菌素和布氏杆菌病诊断抗原检验标准，同时各制药厂和一些兽医研究单位，也逐步提高了研制技术，并创造性的用牛瘟兔化弱毒就地制苗，用此疫苗开展普遍预防接种，于1956年在全国消灭了牛瘟。继而研制成功的猪瘟兔化弱毒疫苗，在制药厂成批生产乳兔组织苗和试生产冷冻干燥疫苗，大力推广使用春秋两季全面注射免疫，控制了猪瘟的流行。口蹄疫的乳兔苗也开始大批量生产，这些以通过异种不敏感动物传代减毒，使致弱毒株保持了良好免疫原性，再用乳兔组织制苗并推广应用，较快控制与消灭疫病的方法，在当时是处在国际领先技术水平的。                                                在通过异种不敏感动物获得免疫原性良好制苗菌（毒）株的同时，微生物诱变技术，从多方面开展了研究，并选育成功一批良好的制苗用弱毒株。如用加锥黄素培养基培养，结合动物诱变方法选育出了猪丹毒GC42和G4TI0弱毒株；用加化学药剂，如醋酸铊等或以逐步提高培养温度方法，选育成功了仔猪副伤寒C500弱毒菌株和羊，猪链球菌弱毒株；以鸡痘毒通过鹌鹑制弱毒苗，将猪肺类支原体强毒株经乳兔交替传代减毒，培育成猪喘气病弱毒组织苗。口蹄疫O型乳兔组织苗及口蹄疫A型鸡胚化弱毒苗；以及多株禽霍乱弱毒株，猪肺疫E0630弱毒株等。在大量活疫苗研制成功的同时，冷冻真空干燥技术和设备也得到改造。60年代末，在大瓶通气培养生产菌苗的基础上，用大发酵罐培养，进一步提高了工艺，细菌产品的质量和数量成倍增长，基本上满足了防疫的需要。20世纪70年代开始，进一步调整了兽医生物制品生产结构，诊断制品主要由成都和吉林制药厂生产供应，抗血清主要由成都与兰州厂生产，至1972年产品种类达到85种，产量38亿余毫升。另外，还有一批试制产品12种。一些新技术相继用于多种菌疫苗的研究与生产，如用通气培养生产炭疽芽孢苗，研究成功了马传染性贫血诊断抗原。用驴白细胞减毒制成马传染性贫血弱毒活疫苗，又一次在同类产品中领先国际水平。由此，以制苗为目的微生物诱变技术，由动物水平提高到了细胞水平，并用细胞培养技术，选育成功了鸭瘟、羊痘等制苗弱毒株。生产工艺采用鸡胚成纤维细胞，猪肾、牛睾丸原代细胞生产猪瘟弱毒苗、鸡新城疫弱毒苗以及牛环形泰勒虫白细胞疫苗等。结合这一时期冻干技术和冻干产品的稳定剂成功应用，生产出了多种质量良好的冻干疫苗。猪丹毒、猪肺疫二联苗、猪瘟、猪丹毒、猪肺疫三联苗等多联疫苗的投入生产使用，一针防多病，推进了全面防疫工作。同时灭活疫苗的佐剂由初期使用明胶，改进用氢氧化铝胶，进而成功使用油乳剂为佐剂，提高了生物制品免疫力和延长了免疫期，把生产技术提高到一个新的阶段。                                                诊断方法和试剂方面，逐步完善了传统的血清学诊断方法和诊断试剂，如凝集反应试验、沉淀反应试验、补体结合试验和中和试验，它们作为抗原或抗体的检测手段，主要应用于传染病的诊断和血清定型等方面。70年代后期，由于免疫荧光技术、酶联免疫吸附试验等方法的出现，把反应的敏感性又提高了一大步。                                                根据以上所述的简况，我们认为我国生物制品的研究与生产，从50年代以通过异种动物或加化学药剂培养方法，选育出了多种制苗弱毒株，但生产工艺基本上末脱离手工操作，并以生产灭活苗为主，后期则活疫苗和诊断制品大量增加。70年代后期，开展了细胞培养技术，改进大发酵罐培养技术，无论是产品种类和数量都有很大提高。1985年统计，经批准生产的生物制品品种达124种，其中达到国际水平的约占21%，活疫苗占疫苗总数的62%，诊断制品占30%。                                                二、目前我国兽用生物制品技术的研究进展和推广应用状况，在世界上所处的水平、存在的问题及与发达国家的差距                                                （一）研究进展和应用推广                                                近二十年来，由于畜牧业的飞速发展，对兽用生物制品无论是从品种数量，还是从质量上都提出了新的要求。随着现代生物技术的进步和推广应用，生产企业管理水平的提高以及国际间信息交流的增多，特别是国家的重视和投入增加，我国的兽用生物制品事业发生前所未有的变化，具体表现在以下几个方面：                                                1．生物技术在诊断试剂和诊断方法的应用方面：主要包括单克隆抗体，核酸探针和聚合酶链反应（PCR）等技术的建立和应用。                                                （1）单克隆抗体。                                                在疾病诊断、病原分类与鉴别、血清分型、疫苗毒株与野毒株的区分上，单克隆抗体发挥着巨大的作用。这些年国内已研究出大量的单克隆抗体，据不完全统计，我国已有二十多个单位分别建立了针对哺乳动物的12种病毒、禽类的9种病毒、各种动物的12种病原细菌、10种寄生虫及一些微生物毒素和其他可能用于疫病诊断的数百个杂交瘤细胞株，单抗的种类己覆盖了大多数传染病。                                                在这些单抗中，一些已在推广应用之中，这些包括：抗马传染性贫血病毒的单抗，可用于免疫马和自然发病马的鉴别诊断、鉴别强弱毒的鸡新城疫病毒单抗和猪瘟单抗、用于疫苗鉴别的马立克氏病病毒单抗、传染性囊病病毒单抗等。                                                （2）核酸探针：该技术是80年代初期发展起来的一种基因诊断技术，与传统病原分离和血清学方法相比，它具有简便、快速、高度特异的优点。特别是一些难于分离培养的病原微生物如结核分枝杆菌、支原体、立克次氏体、密螺旋体等，使用核酸探针，通过原位杂交等认定组织中是否存在病原微生物的特殊区域段基因，就可以确定被检测动物是否被感染。                                                （3）PCR：多聚酶链反应（PCR）技术是诞生于80年代的一项体外酶促扩增DNA新技术，具有特异性强、敏感性高、操作简便、节省时间等优点，现已用生物学科的各个领域，它可以将被检样品中单考贝基因序列扩增到毫克水平。各种临床样品，如血液、组织细胞、粘液、固定保存的病理样本都可用PCR进行检测。PCR以及更为敏感的套式PCR，检测多个目的基因的复合PCR技术结合核酸探针、基因序列分析等技术，在疫病的诊断中发挥着巨大作用。该方法已在国内逐步推广使用。                                                2．基因工程疫苗                                                由于自然变异和新病原的不断出现，常规疫苗在安全和效力方面的局限性愈来愈明显，特别是一些难以人工培养，免疫原性差或毒力偏强的微生物或疫苗，利用生物技术手段开发新型疫苗以取代现用的常规疫苗是必然趋势。由中国军事医学科学院等单位将猪致病性大肠杆菌的k88、k99柔毛质粒导入非致病性大肠杆菌，成功地制备成双价大肠杆菌疫苗。该疫苗已广泛应用于全国各地，有效地预防了猪大肠杆菌病的流行，取得了明显的经济效益。此外，扬州大学农学院构建了马立克氏病毒的基因的重组禽痘病毒，哈尔滨兽医研究所已构建了表达传染性法氏囊病毒VP2基因和传染性喉气管炎病毒gB基因的重组禽痘病毒。试验证明，重组病毒能诱导SPF鸡产生免疫保护作用。同时还成功地将马立克氏病病毒gB基因插入到火鸡疱疹病毒中，构建表达了马立克氏病病毒gB基因的重组火鸡疱疹病毒。这种重组疫苗免疫接种SPF鸡的免疫保护率高于单一的火鸡疱疹病毒疫苗和Ⅰ系马立克氏病疫苗。哈尔滨兽医研究所利用杆状病毒表达的禽流感病毒、Hs亚型血凝素（HA）和神经氨酸酶（NA）基因的亚单位疫苗及以脂质体传染技术构建的H7亚型禽流感病毒、血凝性基因重组的鸡痘病毒，均能使鸡产生良好的免疫保护作用。H5和H7亚型HA基因重组禽痘病毒载体疫苗也即将获得成功。据悉，上海大学复旦大学合成的口蹄疫多肽疫苗已进入中试生产阶段。                                                3．在常规兽用生物制品方面，无论是量还是质上都有明显的进步据1997年的统计资料：仅作为兽用生物制品主要来源的我国28家生物药品厂，生产的畜禽及人畜共患病疫苗共为七大类44个品种，总量为403亿头（羽）份；诊断液6个品种15万毫升。大专院校和科研单位的中试车间的年产量估计达150亿头（羽）份。另外一块是进口疫苗，大概为50亿羽（头）份。在所有疫苗中，禽用疫苗占95%以上。而在1990年，全国的兽用疫苗总产量才为77亿头（羽）份，发展速度之快令人难以想象。但诊断液当时为34个生产品种，163万毫升，明显高于1997年，这是因为诊断液需求量不稳定、成本高、经济效益不大，厂家不愿意生产所致。                                                在技术进步方面，主要表现在疫苗品种的明显增加，使一些新的疾病能得到及时控制，另外，这些年在活疫苗的冷冻真空干燥工艺、灭活疫苗的生产乳化工艺方面及疫苗的质量控制系统的完善方面，都有明显的进步。                                                （二）存在的主要问题和与国外的差距                                                目前，就我国兽用生物制品在国际上所处的位置而言，在疫苗品种方面，有部分产品我国居国际领先水平，如猪瘟活疫苗、马传染性贫血活疫苗、布氏杆菌猪二号活疫苗和猪喘气病活疫苗等，而更多的是达到或接近国际水平，部分产品水平低下；在诊断液方面，大部分产品达到国际水平，但由于经济效益的问题，现在突出的是品种不配套，研究出的成果没有充分利用；就产品特别是活病毒疫苗产品的质量标准而言，我国与国外还存在一些差距，具体表现在外源病原的检测上。尽管我国已制定出部分外源病原污染检测方法并积极推广，但尚未得到有效的贯彻执行，而发达国家的法规则明确要求，对活病毒疫苗作外源病原污染检测，以保证疫苗的纯净性；而在基因工程技术和产品方面，我们则存在明显的差距。就总的技术状况而言，我们还处在发展阶段，以全国28个兽用生物药厂的情况看，存在的主要问题表现在以下几个方面：                                                1．就冻干活疫苗而言，我们目前在技术上存在的主要问题是冻干保护剂的问题还没有完全解决。我们目前使用的牛奶蔗糖或明胶蔗糖对解决在冷冻真空干燥过程中保持抗原的存活性和良好物理性状等方面的问题是可行的，价格低廉，工艺也成熟，但用这种冻干保护剂制成的冻干产品只能在-15℃以下的条件保存才能达到l年以上的保存期，这给疫苗的运输及保存带来很多困难，也增加了疫苗因保存条件不当失效而导致免疫失效的问题，特别是在农村基层兽医单位及经济不发达地区。而在国外，特别是一些发达国家，已普遍使用耐热冻干保护剂，使疫苗在4~10℃的条件下保存期活性稳定在2年以上，这就不但解决了疫苗在冻干过程中的活性问题，而且有效的解决了疫苗在保存期间因温度升高而使疫苗失活的问题，既降低了保存条件，减少了费用，又避免了因疫苗保存失效而导致的免疫失败问题。                                                2．在灭活疫苗方面，经过中国兽药监察所的大量研究工作，为灭活苗大面积推广应用创造了一个良好的前提，它较好的解决了疫苗的保存问题及在体内的缓释问题，大大提高了疫苗的免疫效力和免疫持续时间。但随着研究工作的进一步深入，我们发现我国目前普遍使用型号的矿物油存在着明显的安全问题。因为这种工业用液体石蜡油里所含与致癌有关的稠环芳烃明显高于医用石蜡油。另外，试验表明该疫苗对大日龄成年鸡注射后有时会引起严重的副反应，对猪等大动物也不安全。另外，我国的油佐剂灭活苗的制造工艺也不过关，有的在短期内就破乳分层，有的稠度太大给注射带来麻烦，特别是在抗原浓缩方面的技术还没有很好的解决，给多联苗的大批量生产带来困难，导致用量太大而出现不安全。                                                3．在制苗用原材料使用标准的控制方面，我们还存在着很大的问题，其中最主要的问题是禽用活病毒制苗用鸡胚的标准上。这些年来，我国禽用疫苗已占到所有疫苗产量的95%以上，然而，在多数兽用生物药厂还普遍使用普通鸡胚制苗，用这种普通鸡胚制造疫苗存在两大问题：一是外源病原的污染问题，这种污染既有细菌、支原体，也有病毒，细菌主要是沙门氏菌。这种细菌可以经感染鸡垂直传播给鸡蛋，用这种鸡蛋制造疫苗势必造成疫苗的污染；支原体污染是非常严重的问题，调查表明：我国鸡群中50~80%的鸡都为支原体感染阳性，这种病原体同样可以经蛋垂直传播。90年对全国各厂家生产的100多批疫苗的支原体分离结果显示，用普通鸡胚或鸡胚成纤维细胞制造的疫苗，60%以上都污染了支原体。还有一些病毒如鸡传染性支气管炎病毒、鸡淋巴白血病病毒、传染性贫血因子、网状内皮增生症病毒、呼肠弧病毒、鸡传染性法氏囊病病毒等都可经污染胚造成疫苗的污染。由此可见，用普通胚制苗可造成疫苗中外源病原的污染，并由此而传染疾病。二是鸡胚中的母源抗体可干扰接种疫苗病毒的繁殖，直接影响疫苗的质量。其中表现得最明显的是鸡新城疫和传染性法氏囊病毒，如果在种鸡接种过新城疫和传染性法氏囊油佐剂疫苗，那么在其所产的鸡蛋中就有高水平的母源抗体，这两种母源抗体对同种病毒可产生中和作用，使病毒失活。那么用这种胚制造疫苗，肯定就会导致对接种的疫苗种毒产生中和作用，影响到种毒的繁殖，从而影响到疫苗的质量。现在解决这种问题的有效办法是使用无特定病原（SPF）鸡蛋，而发达国家早已普遍使用这种蛋制造疫苗。                                                4．在生产检验环境的技术控制方面：我国的28家兽用生物制品厂大都兴建于50~60年代，由于在计划条件下，一切由行政计划部门说了算，厂家过的是安稳的日子，几十年一贯制，直到现在为止，还有部分厂家吃着那时的老本，生产环境己远远落后于时代的要求。近10年来，农业部已相继出台了一系列管理政策和技术措施，对兽用生物药厂提出了按GMP管理的要求，并规定2005年所有生产企业必须达到GMP标准，在这种形势下，大多数厂家对生产接种、收获、冻干前分装的核心部分按GMP的要求进行了局部改造，少数厂已经或正在新建GMP生产车间，生产环境总的来说已有较大改善，特别GMP概念已深入本领域。另外，农业部对大专院校、科研院所新建的生物制品车间作出规定：凡是列入计划筹建的兽用生物制品车间，设计方案以GMP标准制定，组建以GMP标准监控，验收以GMP标准考查，达不到GMP标准的一律不予审批和验收。目前已有8个兽用生物制品车间通过验收。但目前仍存在严重的管理问题，生物药厂如此，科研单位的生物制品车间也是如此，真正的GMP既要靠硬件，更重要的是得靠软件，仅有一个GMP车间是远远不够的。特别是大多数生物制品厂，在目前这种非GMP生产环境下生产，很难保证疫苗产品质量。                                                三、十一世纪兽用生物制品技术发展趋势和对生产将可能产生的作用二十一世纪，随着生物技术的快速发展，兽用生物制品将会朝着更安全、更有效、更便捷的方向发展。具体表现在以下几个方面：                                                （一）改善和提高现有传统疫苗的质量，改进品种结构                                                1．由于超强毒和变异毒株的出现，目前的鸡马立克氏病、鸡传染性法氏囊病、传染性支气管炎等传统疫苗预防接种难以起到很好的免疫保护作用，常常造成免疫失败。因此，根据疾病流行特点，研制新一代更有效的多血清型或亚型的疫苗将是发展的方向。另一方面是针对一些毒力偏强的疫苗，如鸡传染性喉气管炎鸡胚源减毒活疫苗、传染性脑脊髓活疫苗等，接种鸡后易引起副反应，需要研制出新的毒力更弱、更为安全稳定的疫苗。                                                2．由于新的致病因素的不断出现，疫苗品种越来越多，多针剂、大剂量、多品种的疫苗免疫接种将明显增加，畜禽的应激反应，过敏反应，影响动物的生产性能；同时，多次接种会增加劳动力，加大生产成本。迫切需要研究开发多联多价疫苗。灭活疫苗关键技术是提高生产过程中的抗原浓度（包括提高抗原产量或解决抗原浓缩技术）和提高疫苗的免疫效力，活疫苗寄希望于通过活载体重组予以突破。                                                3．新型的细菌、寄生虫疫苗及调节体内正常菌群及免疫机能的微生态制剂的研制开发将成为新的热点。由于原发或继发感染，以及耐药性菌株的出现，目前鸡的大肠杆菌、沙门氏杆菌。支原体等细菌性疾病和以球虫为主的寄生虫病给养鸡业造成的危害是非常严重的。药物治疗效果越来越不尽人意，市场上追切需要安全有效的疫苗用于预防接种。另外，为了减少耐药菌株的产生、药物残留及药物治疗对细菌性活疫苗免疫效力的影响，应尽量减少化学药物和抗生素药物的使用，研制能适当调整恢复动物肠道正常菌群，提高抗病力的微生态制剂也势在必行。                                                （二）新疫病疫苗的研究与开发是当务之急                                                近些年来，一些严重危害养殖业的传染病，如禽流感、鸡传染性贫血、鸡淋巴细胞白血病（特别是以侵害肉鸡为主的J型白血病）、腺胃型传染性支气管炎、猪生殖－呼吸系统综合症、传染性脑脊髓炎、伪狂犬、猪细小病毒病以及断奶仔猪多系统衰竭综合症等相继传入我国，根据各种疾病的流行特点研制出安全有效的疫苗，将成为二十一世纪初叶的主要研究任务之一。                                                （三）以分子生物学技术的基本方法研究开发兽用新型疫苗是二＋一世纪的主导方向随着生物技术的进步，分子生物学、分子免疫学、分子遗传学的研究取得进展与基因工程技术的应用，疫苗研究将会发生革命性的变化。21世纪将是生物技术发展的黄金时代，以分子生物学为基础的新一代兽用疫苗将会大范围投放市场，这些疫苗以基因工程疫苗为主体，包括亚单位疫苗、合成肽苗、抗独特型抗体疫苗、基因缺失疫苗、活载体疫苗以及核酸疫苗。                                             …', '2010年08月02日', 817, 'admin'),
(8, '3', '《新兽药研制管理办法》', '                                                中华人民共和国农业部令                                                第55号                                                　　《新兽药研制管理办法》已于2005年7月27日经农业部第17次常务会议审议通过，现予以发布，自2005年11月1日起施行。                                                　　  部 长 　杜青林                                                　　  二○○五年八月三十一日                                                　　附件：                                                　　新兽药研制管理办法                                                第一章　总　则                                                　　第一条  为了保证兽药的安全、有效和质量，规范兽药研制活动，根据《兽药管理条例》和《病原微生物实验室生物安全管理条例》，制定本办法。                                                　　第二条  在中华人民共和国境内从事新兽药临床前研究、临床试验和监督管理，应当遵守本办法。                                                　　第三条  农业部负责全国新兽药研制管理工作，对研制新兽药使用一类病原微生物（含国内尚未发现的新病原微生物）、属于生物制品的新兽药临床试验进行审批。                                                　　省级人民政府兽医行政管理部门负责对其他新兽药临床试验审批。                                                　　县级以上地方人民政府兽医行政管理部门负责本辖区新兽药研制活动的监督管理工作。                                                　　第二章  临床前研究管理                                                　　第四条  新兽药临床前研究包括药学、药理学和毒理学研究，具体研究项目如下：                                                　　生物制品（包括疫苗、血清制品、诊断制品、微生态制品等）：菌毒种、细胞株、生物组织等起始材料的系统鉴定、保存条件、遗传稳定性、实验室安全和效力试验及免疫学研究等；                                                　　其它兽药（化学药品、抗生素、消毒剂、生化药品、放射性药品、外用杀虫剂）：生产工艺、结构确证、理化性质及纯度，剂型选择、处方筛选，检验方法、质量指标，稳定性，药理学、毒理学等；                                                　　中药制剂（中药材、中成药）：除具备其它兽药的研究项目外，还应当包括原药材的来源、加工及炮制等。                                                　　第五条  研制新兽药，应当进行安全性评价。新兽药的安全性评价系指在临床前研究阶段，通过毒理学研究等对一类新化学药品和抗生素对靶动物和人的健康影响进行风险评估的过程，包括急性毒性、亚慢性毒性、致突变、生殖毒性（含致畸）、慢性毒性（含致癌）试验以及用于食用动物时日允许摄入量（ADI）和最高残留限量（MRL）的确定。                                                　　承担新兽药安全性评价的单位应当具有农业部认定的资格，执行《兽药非临床研究质量管理规范》，并参照农业部发布的有关技术指导原则进行试验。采用指导原则以外的其他方法和技术进行试验的，应当提交能证明其科学性的资料。                                                　　第六条  研制新兽药需要使用一类病原微生物的，应当按照《病原微生物实验室生物安全管理条例》和《高致病性动物病原微生物实验室生物安全管理审批办法》等有关规定，在实验室阶段前取得实验活动批准文件，并在取得《高致病性动物病原微生物实验室资格证书》的实验室进行试验。                                                　　申请使用一类病原微生物时，除提交《高致病性动物病原微生物实验室生物安全管理审批办法》要求的申请资料外，还应当提交研制单位基本情况、研究目的和方案、生物安全防范措施等书面资料。必要时，农业部指定参考试验室对病原微生物菌（毒）种进行风险评估和适用性评价。                                                　　第七条  临床前药理学与毒理学研究所用化学药品、抗生素，应当经过结构确证确认为所需要的化合物，并经质量检验符合拟定质量标准。                                                　　第三章  临床试验审批                                                　　第八条  申请人进行临床试验，应当在试验前提出申请，并提交下列资料：                                                　　（一）《新兽药临床试验申请表》一份；                                                　　（二）申请报告一份，内容包括研制单位基本情况；新兽药名称、来源和特性；                                                　　（三）临床试验方案原件一份；                                                　　（四）委托试验合同书正本一份；                                                　　（五）试验承担单位资质证明复印件一份；                                                　　（六）本办法第四条规定的有关资料一份；                                                　　（七）试制产品生产工艺、质量标准（草案）、试制研究总结报告及检验报告；                                                　　（八）试制单位《兽药GMP证书》和《兽药生产许可证》复印件；                                                　　（九）使用一类病原微生物的，还应当提交农业部的批准文件复印件。                                                　　属于生物制品的新兽药临床试验，还应当提供生物安全防范基本条件、菌（毒、虫）种名称、来源和特性方面的资料。                                                　　属于其他新兽药临床试验，还应当提供农业部认定的兽药安全评价实验室出具的安全性评价试验报告原件一份，或者提供国内外相关药理学和毒理学文献资料。                                                　　第九条  属于生物制品的新兽药临床试验，应当向农业部提出申请；其他新兽药临床试验，应当向所在地省级人民政府兽医行政管理部门提出申请。                                                　　农业部或者省级人民政府兽医行政管理部门收到新兽药临床试验申请后，应当对临床前研究结果的真实性和完整性，以及临床试验方案进行审查。必要时，可以派至少2人对申请人临床前研究阶段的原始记录、试验条件、生产工艺以及试制情况进行现场核查，并形成书面核查报告。                                                　　第十条  农业部或者省级人民政府兽医行政管理部门应当自受理申请之日起60个工作日内做出是否批准的决定，确定试验区域和试验期限，并书面通知申请人。省级人民政府兽医行政管理部门做出批准决定后，应当及时报农业部备案。                                                　　第四章  监督管理                                                　　第十一条  临床试验批准后应当在2年内实施完毕。逾期未完成的，可以延期一年，但应当经原批准机关批准。                                                　　临床试验批准后变更申请人的，应当重新申请。                                                　　第十二条  承担兽药临床试验的单位应当具有农业部认定的相应试验资格。                                                　　兽药临床试验应当执行《兽药临床试验质量管理规范》。                                                　　第十三条  兽药临床试验应当参照农业部发布的兽药临床试验技术指导原则进行。采用指导原则以外的其他方法和技术进行试验的，应当提交能证明其科学性的资料。                                                　　第十四条  临床试验用兽药应当在取得《兽药GMP证书》的企业制备，制备过程应当执行《兽药生产质量管理规范》。                                                　　根据需要，农业部或者省级人民政府兽医行政管理部门可以对制备现场进行考察。                                                　　第十五条  申请人对临床试验用兽药和对照用兽药的质量负责。临床试验用兽药和对照用兽药应当经中国兽医药品监察所或者农业部认定的其他兽药检验机构进行检验，检验合格的方可用于试验。                                                　　临床试验用兽药标签应当注明批准机关的批准文件号，兽药名称、含量、规格、试制日期、有效期、试制批号、试制企业名称等，并注明“供临床试验用”字样。                                                　　第十六条  临床试验用兽药仅供临床试验使用，不得销售，不得在未批准区域使用，不得超过批准期限使用。                                                　　第十七条  临床试验需要使用放射元素标记药物的，试验单位应当有严密的防辐射措施，使用放射元素标记药物的动物处理应当符合环保要求。                                                　　因试验死亡的临床试验用食用动物及其产品不得作为动物性食品供人消费，应当作无害化处理；临床试验用食用动物及其产品供人消费的，应当提供农业部认定的兽药安全性评价实验室出具的对人安全并超过休药期的证明。                                                　　第十八条  临床试验应当根据批准的临床试验方案进行。如需变更批准内容的，申请人应向原批准机关报告变更后的试验方案，并说明依据和理由。                                                　　第十九条  临床试验的受试动物数量应当根据临床试验的目的，符合农业部规定的最低临床试验病例数要求或相关统计学的要求。                                                　　第二十条  因新兽药质量或其它原因导致临床试验过程中试验动物发生重大动物疫病的，试验单位和申请人应当立即停止试验，并按照国家有关动物疫情处理规定处理。                                                　　第二十一条  承担临床试验的单位和试验者应当密切注意临床试验用兽药不良反应事件的发生，并及时记录在案。                                                　　临床试验过程中发生严重不良反应事件的，试验者应当在24小时内报告所在地省级人民政府兽医行政管理部门和申请人，并报农业部。                                                　　第二十二条  临床试验期间发生下列情形之一的，原批准机关可以责令申请人修改试验方案、暂停或终止试验：                                                　　（一）未按照规定时限报告严重不良反应事件的；                                                　　（二）已有证据证明试验用兽药无效的；                                                　　（三）试验用兽药出现质量问题的；                                                　　（四）试验中出现大范围、非预期的不良反应或严重不良反应事件的；                                                　　（五）试验中弄虚作假的；                                                　　（六）违反《兽药临床试验质量管理规范》其他情形的。                                                　　第二十三条  对批准机关做出责令修改试验方案、暂停或终止试验的决定有异议的，申请人可以在5个工作日内向原批准机关提出书面意见并说明理由。原批准机关应当在10个工作日内做出最后决定，并书面通知申请人。                                                　　临床试验完成后，申请人应当向原批准机关提交批准的临床试验方案、试验结果及统计分析报告，并附原始记录复印件。                                                　　第五章  罚 则                                                　　第二十四条  违反本办法第十五条第一款规定，临床试验用兽药和对照用兽药未经检验，或者检验不合格用于试验的，试验结果不予认可。                                                　　第二十五条  违反本办法第十七条第二款规定，依照《兽药管理条例》第六十三条的规定予以处罚。                                                　　第二十六条  申请人申请新兽药临床试验时，提供虚假资料和样品的，批准机关不予受理或者对申报的新兽药临床试验不予批准，并对申请人给予警告，一年内不受理该申请人提出的该新兽药临床试验申请；已批准进行临床试验的，撤销该新兽药临床试验批准文件，终止试验，并处5万元以上10万元以下罚款，三年内不受理该申请人提出的该新兽药临床试验申请。                                                　　农业部对提供虚假资料和样品的申请人建立不良行为记录，并予以公布。                                                　　第二十七条  兽药安全性评价单位、临床试验单位未按照《兽药非临床研究质量管理规范》或《兽药临床试验质量管理规范》规定实施兽药研究试验的，依照《兽药管理条例》第五十九条的规定予以处罚。                                                　　农业部对提供虚假试验结果和对试验结果弄虚作假的试验单位和责任人，建立不良行为记录，予以公布，并撤销相应试验的资格。                                                　　第二十八条  违反本办法的其他行为，依照《兽药管理条例》和其他行政法规予以处罚。                                                　　第六章  附  则                                                　　第二十九条  境外企业不得在中国境内进行新兽药研制所需的临床试验和其他动物试验。                                                　　根据进口兽药注册审评的要求，需要进行临床试验的，由农业部指定的单位承担，并将临床试验方案和与受委托单位签订的试验合同报农业部备案。                                                　　第三十条  本办法自2005年11月1日起施行。                                            ', '2010年08月02日', 746, 'admin');
INSERT INTO `techServices` (`id`, `moduleId`, `title`, `content`, `time`, `pageview`, `author`) VALUES
(9, '3', '《兽药产品批准文号管理办法》', '                                                中华人民共和国农业部令                                                第45号                                                《兽药产品批准文号管理办法》已于2004年11月15日经农业部第33次常务会议审议通过，现予以发布，自2005年1月1日起施行。                                                部长杜青林                                                二○○四年十一月二十四日                                                兽药产品批准文号管理办法                                                第一章  总  则                                                第一条  为加强兽药产品批准文号的管理，根据《兽药管理条例》，制定本办法。                                                第二条  兽药产品批准文号的申请、核发和监督管理适用本办法。                                                第三条  兽药生产企业生产兽药，应当取得农业部核发的产品批准文号。                                                兽药产品批准文号是农业部根据兽药国家标准、生产工艺和生产条件批准特定兽药生产企业生产特定兽药产品时核发的兽药批准证明文件。                                                第四条  农业部负责全国兽药产品批准文号的核发和监督管理工作。                                                县级以上地方人民政府兽医行政管理部门负责本行政区域内的兽药产品批准文号的监督管理工作。                                                第二章  兽药产品批准文号的申请和核发                                                第五条  申请除生物制品以外的已有兽药国家标准的兽药产品批准文号的，申请人应当向所在地省级人民政府兽医行政管理部门提交自己生产的连续三个批次的样品和下列资料：                                                （一）《兽药产品批准文号申请表》一式二份；                                                （二）《兽药生产许可证》复印件一式二份；                                                （三）《兽药GMP证书》复印件一式二份；                                                （四）标签和说明书样本一式二份；                                                （五）所提交样品的自检报告一式二份。                                                省级人民政府兽医行政管理部门应当自受理之日起5个工作日内将样品送兽药检验机构进行检验，并自收到检验结论之日起15个工作日内完成审查，将审查意见和检验机构的检验报告及全部申报材料一式一份报送农业部。                                                农业部自收到省级人民政府兽医行政管理部门审查意见之日起20个工作日内完成审查。审查合格的，核发产品批准文号，公布标签和说明书；不合格的，书面通知申请人，并说明理由。                                                第六条  申请已有兽药国家标准的生物制品的产品批准文号的，申请人应当向农业部提交自己生产的连续三个批次的样品和下列资料：                                                （一）《兽药产品批准文号申请表》一式一份；                                                （二）《兽药生产许可证》复印件一式一份；                                                （三）《兽药GMP证书》复印件一式一份；                                                （四）标签和说明书样本一式一份；                                                （五）所提交样品的自检报告一式二份。                                                农业部自受理之日起5个工作日内将样品送兽药检验机构进行检验，并自收到检验结论之日起15个工作日内完成审查。审查合格的，核发产品批准文号，公布标签和说明书；不合格的，书面通知申请人，并说明理由。                                                第七条  申请自己研制的已获得《新兽药注册证书》的兽药产品批准文号，且该产品样品系申请人自己生产的，申请人应当向农业部提交下列资料：                                                （一）《兽药产品批准文号申请表》一式一份；                                                （二）《兽药生产许可证》复印件一式一份；                                                （三）《兽药GMP证书》复印件一式一份；                                                （四）《新兽药注册证书》复印件一式一份；                                                （五）标签和说明书样本一式一份。                                                农业部自受理之日起20个工作日内完成审查。审查合格的，核发产品批准文号，公布标签和说明书；不合格的，书面通知申请人，并说明理由。                                                申请自己研制的已获得《新兽药注册证书》的兽药产品批准文号，但该产品样品并非申请人自己生产的，按照本办法第八条的规定办理。                                                第八条  申请他人转让的已获得《新兽药注册证书》的兽药产品批准文号的，申请人应当向农业部提交自己生产的连续三个批次的样品和下列资料：                                                （一）《兽药产品批准文号申请表》一式一份；                                                （二）《兽药生产许可证》复印件一式一份；                                                （三）《兽药GMP证书》复印件一式一份；                                                （四）《新兽药注册证书》复印件一式一份；                                                （五）标签和说明书样本一式一份；                                                （六）所提交样品的自检报告一式二份；                                                （七）转让合同书原件一份。                                                农业部自受理之日起5个工作日内将样品送兽药检验机构进行检验，并自收到检验结论之日起15个工作日内完成审查。审查合格的，核发产品批准文号，公布标签和说明书；不合格的，书面通知申请人，并说明理由。                                                第九条  中外合资企业申请外方已获得《进口兽药注册证书》的兽药产品批准文号的，应当向农业部提交自己生产的连续三个批次的样品和下列资料：                                                （一）《兽药产品批准文号申请表》一式一份；                                                （二）《兽药生产许可证》复印件一式一份；                                                （三）《兽药GMP证书》复印件一式一份；                                                （四）《进口兽药注册证书》复印件一式一份；                                                （五）标签和说明书样本一式一份；                                                （六）所提交样品的自检报告一式二份；                                                （七）境外企业同意生产的授权书。                                                农业部自受理之日起5个工作日内将样品送兽药检验机构进行检验，并自收到检验结论之日起15个工作日内完成审查。审查合格的，核发产品批准文号，公布标签和说明书；不合格的，书面通知申请人，并说明理由。                                                第十条  申请产品批准文号时，申请人提交的样品数量应当保证检验工作的需要。初次提交的样品经检验不合格的，可以再送样复检一次。复检仍不合格的，不核发产品批准文号，在一年内不得再次提出申请。                                                第十一条  兽药检验机构应当在收到样品之日起90个工作日内完成检验，对样品应当根据规定留样观察。                                                送检样品属于生物制品的，检验期限不得超过120个工作日。                                                第十二条  农业部在核发新兽药的产品批准文号时，可以确定不超过5年的监测期。在监测期内，不批准其他企业生产或者进口该新兽药。                                                兽药监测期结束后，其他兽药生产企业可根据本办法第五、六条的规定申请产品批准文号，有知识产权保护的兽药在申请时还应提交转让合同书。                                                第十三条  兽药产品批准文号有效期届满后，需继续生产的，兽药生产企业应当在有效期届满6个月前按原批准程序向原审批机关提出产品批准文号的换发申请。申请换发生物制品批准文号的，可不再提供样品。                                                对已结束监测期的除生物制品以外的兽药，兽药生产企业可根据本办法第五条的规定申请换发产品批准文号。                                                第三章  监督检查                                                第十四条  县级以上地方人民政府兽医行政管理部门应当对辖区内兽药生产企业进行现场检查，但不应妨碍企业的正常生产活动，不得索取、收受财物或牟取其他利益。                                                现场检查中，发现兽药生产企业有下列情形之一的，县级以上地方人民政府兽医行政管理部门应当依法作出处理决定或者提出处理意见，向上级人民政府兽医行政管理部门报告：                                                （一）        生产条件发生重大变化的；                                                （二）        没有按照《兽药生产质量管理规范》的要求组织生产的；                                                （三）        产品质量存在隐患的；                                                （四）        其他违反《兽药管理条例》及本办法规定情形的。                                                第十五条  县级以上地方人民政府兽医行政管理部门应当对上市兽药产品进行监督检查，发现有违反兽药产品批准文号管理规定情形的，应当及时依法作出处理决定或者提出处理意见，向上级人民政府兽医行政管理部门报告。                                                第十六条  兽药生产企业异地新建车间、改变生产场地生产兽药的，应当另行申请兽药产品批准文号。                                                第十七条  买卖、出租、出借兽药产品批准文号的，按照《兽药管理条例》第五十八条的规定处罚。                                                第十八条  有下列情形之一的，农业部收回、注销兽药产品批准文号，并予以公告：                                                （一）兽药产品批准文号有效期届满未申请延续的；                                                （二）兽药生产许可证有效期届满未申请延续或者申请后未获得批准的；                                                （三）企业情况发生变化不再具备相应生产条件的；                                                （四）兽药生产企业破产的；                                                （五）自行更改产品批准文号的；                                                （六）应当注销的其他情形。                                                第十九条  违反兽药产品批准文号规定，农业部依法作出撤销兽药产品批准文号决定的，予以公告。                                                第二十条  申请人隐瞒有关情况或者提供虚假材料、样品申请兽药产品批准文号的，农业部不予受理或者不予核发兽药产品批准文号，并给予警告；申请人在1年内不得再次申请该兽药产品批准文号。                                                第二十一条  申请人提供虚假资料、样品或者采取其他欺骗手段取得兽药产品批准文号的，根据《兽药管理条例》第五十七条的规定予以处罚，申请人在3年内不得再次申请该产品批准文号。                                                第四章  附  则                                                第二十二条  兽药产品批准文号的编制格式为：兽药类别简称＋年号＋企业所在地省份（自治区、直辖市）序号＋企业序号＋兽药品种编号。                                                格式如下：                                                （一）兽药类别简称。药物添加剂的类别简称为“兽药添字”；血清制品、疫苗、诊断制品、微生态制品等的类别简称为“兽药生字”；中药材、中成药、化学药品、抗生素、生化药品、放射性药品、外用杀虫剂和消毒剂等的类别简称为“兽药字”。                                                （二）年号用四位数字表示，即核发产品批准文号时的年份。                                                （三）企业所在地省份序号用2位阿拉伯数字表示，由农业部规定并公告。                                                （四）企业序号按省排序，用3位阿拉伯数字表示，由农业部公告。                                                （五）兽药品种编号用4位阿拉伯数字表示，由农业部规定并公告。                                                第二十三条  《兽药产品批准文号申请表》可以到所在地省级人民政府兽医行政管理部门免费领取或者从中国兽药信息网（网址：http://www.ivdc.gov.cn）下载。                                                第二十四条  本办法自2005年1月1日起施行，农业部1998年3月10日发布的《兽药批准文号管理规定》（农牧发[1998]4号）同时废止。                                            ', '2010年08月02日', 946, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(5) NOT NULL COMMENT '公司福利编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`kind`, `author`, `time`, `image`, `id`) VALUES
('公司聚餐', 'admin', '2017年06月14日', 'style/images/trvael1.jpg', 1),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael2.jpg', 2),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael3.jpg', 3),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael4.jpg', 4),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael5.jpg', 5),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael6.jpg', 6),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael7.jpg', 7),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael8.jpg', 8),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael9.jpg', 9),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael10.jpg', 10),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael11.jpg', 11),
('公司旅游', 'admin', '2017年06月14日', 'style/images/trvael12.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL COMMENT '用户id',
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `telephone` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '手机号码',
  `birthday` date NOT NULL COMMENT '出生日期',
  `gender` tinyint(1) NOT NULL COMMENT '性别',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `token` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '	帐号激活码',
  `token_exptime` int(10) NOT NULL COMMENT '激活码有效期',
  `status` tinyint(1) NOT NULL COMMENT '状态,0-未激活,1-已激活',
  `regtime` int(10) NOT NULL COMMENT '注册时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bigKind`
--
ALTER TABLE `bigKind`
  ADD PRIMARY KEY (`id`,`kindName`);

--
-- Indexes for table `birthday`
--
ALTER TABLE `birthday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyIntr`
--
ALTER TABLE `companyIntr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyPhilosophy`
--
ALTER TABLE `companyPhilosophy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contratcs`
--
ALTER TABLE `contratcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encouragement`
--
ALTER TABLE `encouragement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqquestion`
--
ALTER TABLE `faqquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestone`
--
ALTER TABLE `milestone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `productName` (`productName`),
  ADD KEY `productName_2` (`productName`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smallKind`
--
ALTER TABLE `smallKind`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speech`
--
ALTER TABLE `speech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talents`
--
ALTER TABLE `talents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `techKinds`
--
ALTER TABLE `techKinds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `techServices`
--
ALTER TABLE `techServices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `base`
--
ALTER TABLE `base`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '记录编号', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bigKind`
--
ALTER TABLE `bigKind`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '种类id', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论id';
--
-- AUTO_INCREMENT for table `companyIntr`
--
ALTER TABLE `companyIntr`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `companyPhilosophy`
--
ALTER TABLE `companyPhilosophy`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '公司理念id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contratcs`
--
ALTER TABLE `contratcs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '合同服务序号', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '人才招聘信息编号', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `encouragement`
--
ALTER TABLE `encouragement`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '激励保障记录编号', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '问题编号', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `faqquestion`
--
ALTER TABLE `faqquestion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'FAQ问题编号', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `honor`
--
ALTER TABLE `honor`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `manufacture`
--
ALTER TABLE `manufacture`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '代加工服务编号', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '留言编号', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `milestone`
--
ALTER TABLE `milestone`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '里程碑id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT COMMENT '新闻编号', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT '简历编号', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `smallKind`
--
ALTER TABLE `smallKind`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '小种类id', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `speech`
--
ALTER TABLE `speech`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '领导致辞纪录id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '员工培养记录编号', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `talents`
--
ALTER TABLE `talents`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '人才理念id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `techKinds`
--
ALTER TABLE `techKinds`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '科技服务模块编号', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `techServices`
--
ALTER TABLE `techServices`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '服务编号', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '公司福利编号', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id';