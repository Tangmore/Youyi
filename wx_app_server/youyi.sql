-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-01-12 13:08:30
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youyi`
--
set names utf8;
drop database if EXISTS youyi;
CREATE database youyi CHARSET=utf8;
use youyi;
-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`id`, `img_url`) VALUES
(1, 'http://127.0.0.1:3003/img/banner/banner01.png'),
(2, 'http://127.0.0.1:3003/img/banner/banner02.png'),
(3, 'http://127.0.0.1:3003/img/banner/banner03.png'),
(4, 'http://127.0.0.1:3003/img/banner/banner04.png'),
(5, 'http://127.0.0.1:3003/img/banner/banner05.png'),
(6, 'http://127.0.0.1:3003/img/banner/banner06.png');

-- --------------------------------------------------------

--
-- 表的结构 `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gallery`
--

INSERT INTO `gallery` (`id`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3003/img/gallery/5.jpg', '动画、忧郁、心情、女生'),
(2, 'http://127.0.0.1:3003/img/gallery/2.jpg', '人物、明星、易烊千玺、熊'),
(3, 'http://127.0.0.1:3003/img/gallery/3.gif', '哆啦A梦、动图'),
(4, 'http://127.0.0.1:3003/img/gallery/3.png', '海贼王'),
(5, 'http://127.0.0.1:3003/img/gallery/4.jpg', '人物、明星、易烊千玺'),
(6, 'http://127.0.0.1:3003/img/gallery/1.jpg', '人物、明星、易烊千玺'),
(7, 'http://127.0.0.1:3003/img/gallery/6.jpg', '人物、动画、情侣头像'),
(8, 'http://127.0.0.1:3003/img/gallery/7.jpg', '人物、明星、郑爽'),
(9, 'http://127.0.0.1:3003/img/gallery/8.gif', '动图、下雨天'),
(10, 'http://127.0.0.1:3003/img/gallery/9.gif', '拥抱、初恋、温暖、动图、动画'),
(11, 'http://127.0.0.1:3003/img/gallery/9.jpg', '搞笑、幽默'),
(12, 'http://127.0.0.1:3003/img/gallery/10.gif', '动图、动画、兔子、幽默、搞笑'),
(13, 'http://127.0.0.1:3003/img/gallery/10.jpg', '文字、幽默、搞笑'),
(14, 'http://127.0.0.1:3003/img/gallery/11.jpg', '人物、明星、张艺兴、动画、幽默、文字'),
(15, 'http://127.0.0.1:3003/img/gallery/12.jpg', '明星、动画、文字、幽默'),
(16, 'http://127.0.0.1:3003/img/gallery/13.gif', '动图、动画、可爱、幽默、搞笑'),
(17, 'http://127.0.0.1:3003/img/gallery/13.jpg', '花、唯美、简单'),
(18, 'http://127.0.0.1:3003/img/gallery/14.gif', '动图、动画、可爱、幽默、搞笑'),
(19, 'http://127.0.0.1:3003/img/gallery/14.jpg', '动画、可爱、萌系、奶狗、动物、心情、男生'),
(20, 'http://127.0.0.1:3003/img/gallery/15.gif', '动图、动画、可爱、幽默、搞笑'),
(21, 'http://127.0.0.1:3003/img/gallery/15.jpg', '唯美、简单、心情'),
(22, 'http://127.0.0.1:3003/img/gallery/22.jpg', '花、唯美、热烈、粉红、美好'),
(23, 'http://127.0.0.1:3003/img/gallery/16.jpg', '动画、哆啦A梦、幽默、风趣'),
(24, 'http://127.0.0.1:3003/img/gallery/17.jpg', '花、简单、唯美、心情'),
(25, 'http://127.0.0.1:3003/img/gallery/18.jpg', '绿色、简单、唯美、可口、手'),
(26, 'http://127.0.0.1:3003/img/gallery/19.jpg', '酷、美丽、girl、蓝色、心情、女生'),
(27, 'http://127.0.0.1:3003/img/gallery/20.jpg', '哆啦A梦、蓝猫、动画、感动'),
(28, 'http://127.0.0.1:3003/img/gallery/21.jpg', '简单、心情、爱你、心、幽默'),
(29, 'http://127.0.0.1:3003/img/gallery/23.jpg', '动画、女生、可爱、甜美、温暖'),
(30, 'http://127.0.0.1:3003/img/gallery/24.jpg', '动画、忧郁、心情、女生'),
(31, 'http://127.0.0.1:3003/img/gallery/25.jpg', '阳光、风景、海、美好、岸'),
(32, 'http://127.0.0.1:3003/img/gallery/26.jpg', '动画、可爱、小、动物、温暖、美好'),
(33, 'http://127.0.0.1:3003/img/gallery/27.jpg', '古风、简单、树叶'),
(34, 'http://127.0.0.1:3003/img/gallery/28.jpg', '女生、酷、心情、黑白'),
(35, 'http://127.0.0.1:3003/img/gallery/29.jpg', '动画、可爱、萌、心情、女生'),
(36, 'http://127.0.0.1:3003/img/gallery/30.jpg', '简单、树叶、唯美'),
(37, 'http://127.0.0.1:3003/img/gallery/31.jpg', '动画、忧郁、心情、女生'),
(38, 'http://127.0.0.1:3003/img/gallery/32.jpg', '女生、动画、粉色、温暖、萌'),
(39, 'http://127.0.0.1:3003/img/gallery/33.jpg', '动画、忧郁、心情、女生'),
(40, 'http://127.0.0.1:3003/img/gallery/34.jpg', '简单、绿色、树叶'),
(41, 'http://127.0.0.1:3003/img/gallery/35.jpg', '女生、情侣、黑白、简单'),
(42, 'http://127.0.0.1:3003/img/gallery/36.jpg', '可爱、友情、温暖、简单'),
(43, 'http://127.0.0.1:3003/img/gallery/37.jpg', '男生、情侣、黑白、简单'),
(44, 'http://127.0.0.1:3003/img/gallery/38.jpg', '心情、幽默、文字、动画'),
(45, 'http://127.0.0.1:3003/img/gallery/39.jpg', '五颜六色、简单、唯美'),
(46, 'http://127.0.0.1:3003/img/gallery/44.jpg', '动物、猫、花、可爱、幽默'),
(47, 'http://127.0.0.1:3003/img/gallery/45.jpg', '简单、花'),
(48, 'http://127.0.0.1:3003/img/gallery/46.jpg', '动画、搞笑、幽默、情侣'),
(49, 'http://127.0.0.1:3003/img/gallery/47.jpg', '简单、唯美、植物、绿色'),
(50, 'http://127.0.0.1:3003/img/gallery/48.jpg', '女生、情侣、酷、girl'),
(51, 'http://127.0.0.1:3003/img/gallery/49.jpg', '动画、钢炼金术师、黑暗颜色'),
(52, 'http://127.0.0.1:3003/img/gallery/50.jpg', '动画、钢炼金术师、黑暗颜色'),
(53, 'http://127.0.0.1:3003/img/gallery/51.jpg', '呆萌、狗、幽默、可爱、萌'),
(54, 'http://127.0.0.1:3003/img/gallery/52.jpg', '情侣、温暖、圣诞'),
(55, 'http://127.0.0.1:3003/img/gallery/53.jpg', '情侣、温暖、有爱、初恋'),
(56, 'http://127.0.0.1:3003/img/gallery/54.jpg', '男生、动画、奶狗、温暖、微笑\r\n'),
(57, 'http://127.0.0.1:3003/img/gallery/55.jpg', '女生、情侣、粉色、动画、唯美\r\n'),
(58, 'http://127.0.0.1:3003/img/gallery/56.jpg', '人物、男生、酷'),
(59, 'http://127.0.0.1:3003/img/gallery/57.jpg', '动画、宝宝、古风、唯美'),
(60, 'http://127.0.0.1:3003/img/gallery/59.jpg', '女生、动画、可爱、温暖、初恋'),
(61, 'http://127.0.0.1:3003/img/gallery/1.jpg', '女生、情侣、粉色、动画、唯美'),
(62, 'http://127.0.0.1:3003/img/gallery/60.jpg', '动画、古风、猫系、唯美、道长'),
(63, 'http://127.0.0.1:3003/img/gallery/62.jpg', '动画、古风、唯美、道长'),
(64, 'http://127.0.0.1:3003/img/gallery/63.jpg', '女生、酷、girl、心情、忧郁、简单'),
(65, 'http://127.0.0.1:3003/img/gallery/64.jpg', '背影、女生、简单'),
(66, 'http://127.0.0.1:3003/img/gallery/65.jpg', '幽默、搞笑、动物、动画、单身狗'),
(67, 'http://127.0.0.1:3003/img/gallery/66.jpg', '猫、情侣、幽默、可爱、心情'),
(68, 'http://127.0.0.1:3003/img/gallery/67.jpg', '简单、文字、可爱、幽默\r\n'),
(69, 'http://127.0.0.1:3003/img/gallery/68.jpg', '绿色、养眼、手、简单、唯美'),
(70, 'http://127.0.0.1:3003/img/gallery/69.jpg', '心情、绿色、简单'),
(71, 'http://127.0.0.1:3003/img/gallery/70.jpg', '猫、情侣、幽默、可爱、心情'),
(72, 'http://127.0.0.1:3003/img/gallery/71.jpg', '女生、背影、酷、个性'),
(73, 'http://127.0.0.1:3003/img/gallery/72.jpg', '古风、美、动画、男生'),
(74, 'http://127.0.0.1:3003/img/gallery/73.jpg', '可爱、动画、萌、萝莉'),
(75, 'http://127.0.0.1:3003/img/gallery/74.jpg', '情侣、动画、唯美、女生'),
(76, 'http://127.0.0.1:3003/img/gallery/75.jpg', '猫、可爱、幽默、文字'),
(77, 'http://127.0.0.1:3003/img/gallery/76.jpg', '小孩、可爱、温暖、萌娃、可爱'),
(78, 'http://127.0.0.1:3003/img/gallery/77.jpg', '粉色、心情、忧郁、女生'),
(79, 'http://127.0.0.1:3003/img/gallery/78.jpg', '动物、猫、可爱、幽默、温暖'),
(80, 'http://127.0.0.1:3003/img/gallery/80.jpg', '动物、可爱、萌、幽默'),
(81, 'http://127.0.0.1:3003/img/gallery/81.jpg', '动画、幽默、情侣、粉色'),
(82, 'http://127.0.0.1:3003/img/gallery/82.jpg', '男生、情侣、初恋'),
(83, 'http://127.0.0.1:3003/img/gallery/83.jpg', '女生、情侣、心情、紫色'),
(84, 'http://127.0.0.1:3003/img/gallery/84.jpg', '女生、人物、酷、心情、girl'),
(85, 'http://127.0.0.1:3003/img/gallery/86.jpg', '雪、温暖、白色'),
(86, 'http://127.0.0.1:3003/img/gallery/85.jpg', '情侣、温暖、雪、初恋'),
(87, 'http://127.0.0.1:3003/img/gallery/87.jpg', '温暖、雪、女生'),
(88, 'http://127.0.0.1:3003/img/gallery/88.jpg', '男生、温暖、酷、美好'),
(89, 'http://127.0.0.1:3003/img/gallery/89.jpg', '绿色、养眼、阳光、树叶、唯美'),
(90, 'http://127.0.0.1:3003/img/gallery/90.jpg', '动物、可爱、幽默\r\n'),
(91, 'http://127.0.0.1:3003/img/gallery/91.jpg', '情侣、女生、初恋'),
(92, 'http://127.0.0.1:3003/img/gallery/92.jpg', '男生、情侣、温暖、初恋、可爱'),
(93, 'http://127.0.0.1:3003/img/gallery/93.jpg', '动画、可爱、幽默、简单、黑白'),
(94, 'http://127.0.0.1:3003/img/gallery/94.jpg', '猫、幽默、萌系'),
(95, 'http://127.0.0.1:3003/img/gallery/95.jpg', '动画、可爱、熊'),
(96, 'http://127.0.0.1:3003/img/gallery/96.jpg', '可爱、女生、萌、温暖、粉色'),
(97, 'http://127.0.0.1:3003/img/gallery/97.gif', '动图、熊、可爱、萌系'),
(98, 'http://127.0.0.1:3003/img/gallery/98.jpg', '猫、可爱、心情'),
(99, 'http://127.0.0.1:3003/img/gallery/99.jpg', '可爱、文字、风趣、幽默、简单'),
(100, 'http://127.0.0.1:3003/img/gallery/100.jpg', '情侣、初恋、温暖');

-- --------------------------------------------------------

--
-- 表的结构 `yy`
--

CREATE TABLE `yy` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `flolang` varchar(255) DEFAULT NULL,
  `present` varchar(255) DEFAULT NULL,
  `frange` varchar(255) DEFAULT NULL,
  `fenviroment` varchar(255) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yy`
--

INSERT INTO `yy` (`id`, `img_url`, `banner`, `fname`, `flolang`, `present`, `frange`, `fenviroment`, `star`, `kind`) VALUES
(1, 'http://127.0.0.1:3003/img/flowers/wuwangwo_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/ww1.png&http://127.0.0.1:3003/img/detailImg/ww2.png', '勿忘我', '请不要忘记我真诚的爱”以及“请想念我，忠贞的希望一切都还没有晚，\n我会再次归来 给你幸福。勿忘我代表着永恒的爱，当别人送你一束勿忘我，\n这是他在对你说，愿得一人心，白手不相离的承诺。', '勿忘草（学名：Myosotis silvatica Ehrh. ex Hoffm.）又名勿忘我，为管状花目、\n紫草科、勿忘草属植物。多年生草本，茎直立，高20-45厘米，\n基生叶和茎下部叶有柄，狭倒披针形、长圆状披针形或线状披针形，花序在花期短，\n花后伸长，花冠蓝色，小坚果卵形，暗褐色，平滑，有光泽。', '勿忘草产于我国大部分地区，欧洲以及伊朗、苏联、巴基斯坦、\n印度和克什米尔地区也有分布，常生于山地林缘或林下、山坡或山谷草地等处。', '勿忘草适应力强，喜干燥、凉爽的气候，忌湿热，喜光，耐旱，生长适温20-25℃，\n适合在疏松、肥沃、排水良好的微碱性土壤中生长。', 55, 1),
(2, 'http://127.0.0.1:3003/img/flowers/blue_xiuqiu_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/lsxq1.png&http://127.0.0.1:3003/img/detailImg/lsxq2.png', '蓝色绣球', '蓝色是一个极富有感情色彩的颜色，比较忧郁。高冷。\n所以蓝色绣球花才有这背叛，见异思迁的花语涵义。因此蓝绣球不适合送人。', '绣球花，又名八仙花、紫阳花、七变花、粉团花、洋绣球等，原产于中国四川一带及日本。\n为虎耳草科绣球属（学名：Hydrangea macrophylla）落叶灌木，\n株高0.5-1米。叶椭圆形或倒卵形，边缘具钝齿。伞房花序顶生，球状。花几乎全为无性花，\n所谓的“花”只是萼片而已。', '生于山谷溪旁或山顶疏林中，海拔380-1700米。产中国山东、\n江苏、安徽、浙江、福建、河南、湖北、湖南、广东及其沿海岛屿、\n广西、四川、贵州、云南等省区。日本、朝鲜有分布。', '喜温暖、湿润和半阴环境。绣球的生长适温为18-28℃，冬季温度不低于5℃。\n花芽分化需5-7℃条件下6-8周，20℃温度可促进开花，见花后维持16℃，\n能延长观花期。但高温使花朵褪色快。', 65, 1),
(3, 'http://127.0.0.1:3003/img/flowers/xiangrikui1_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/xrg1.png&http://127.0.0.1:3003/img/detailImg/xrg2.png', '向日葵', '向日葵的花语是爱慕，太阳，沉默的爱。它始终绕着太阳转动，\n不管太阳去哪，它都一路跟随着，寓意着内心有坚定信念的人，\n不怕困难，勇往直前。在爱情上还代表着不离不弃。', '向日葵（学名：Helianthus annuus）别名太阳花，\n是菊科向日葵属的植物。一年生草本，高1～3.5米。茎直立，\n圆形多棱角，质硬被白色粗硬毛。广卵形的叶片通常互生，先端锐突或渐尖\n，有基出3脉，边缘具粗锯齿，两面粗糙，被毛，有长柄。头状花序，\n直径11～30厘米，单生于茎顶或枝端。总苞片多层，叶质，覆瓦状排列，被长硬毛，夏季开花，\n花序边缘生中性的黄色舌状花，不结实。花序中部为两性管状花，\n棕色或紫色，能结实。矩卵形瘦果，果皮木质化，灰色或黑色，称葵花籽。', '向日葵原产地据信为北美洲。是俄罗斯、乌克兰、葡萄牙、秘鲁、\n玻利维亚的国花，日本北九州市的市花。', '向日葵的种植四季皆可，重要以夏、冬两季为主。\n对温度的适应性较强，是喜温又耐寒的作物。', 75, 1),
(4, 'http://127.0.0.1:3003/img/flowers/white_rose_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/bmg1.png&http://127.0.0.1:3003/img/detailImg/bmg2.png', '白玫瑰', '纯洁，浪漫，求爱之花，以及我足以与你相配。', '白玫瑰，被子植物门，玫瑰中的一种。玫瑰花有紫、白两种，\n形似蔷薇和月季。玫瑰在植物分类学上是指蔷薇科蔷薇属灌木（Rosa rugosa）。\n玫瑰在日常生活中是蔷薇属一系列花大艳丽的栽培品种的统称，\n这些栽培品种在植物分类学上应称做白花杂交茶香月季或白蔷薇。', '英国', '白玫瑰性喜阳光，较耐寒，耐旱，喜通风凉爽气候，适宜生长温度为15-25度。玫瑰适应性较强，\n对土壤要求不严，在肥沃的中性或微酸性轻壤土中生长良好，开花多。\n植物学的白玫瑰比白月季更耐寒。', 85, 1),
(5, 'http://127.0.0.1:3003/img/flowers/kangnaixi_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/knx1.png&http://127.0.0.1:3003/img/detailImg/knx2.png', '康乃馨', '爱，魅力，尊敬之情。', '康乃馨，原名：香石竹，又名：狮头石竹、麝香石竹、大花石竹，\n石竹科、石竹属多年生草本，\n高40-70厘米，全株无毛，粉绿色。茎丛生，直立，基部木质化，\n上部稀疏分枝。叶片线状披针形，顶端长渐尖，基部稍成短鞘，\n中脉明显，上面下凹，下面稍凸起。花常单生枝端有香气，粉红、\n紫红或白色；花梗短于花萼；宽卵形，顶端短凸尖，花萼圆筒形，\n萼齿披针形，边缘膜质；\n瓣片倒卵形，顶缘具不整齐齿；雄蕊长达喉部；花柱伸出花外。\n蒴果卵球形，稍短于宿存萼。花期5-8月，果期8-9月。', '康乃馨主要分布于欧洲温带以及中国大陆的福建、\n湖北等地，原产于地中海地区。', '康乃馨属中日照植物，喜阳光充足;喜凉爽，不耐炎热，可忍受一定程度的低温;\n喜保肥、通气和排水性能良好的土壤，其中以重壤土为好。', 95, 1),
(6, 'http://127.0.0.1:3003/img/flowers/mantianxing_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/mtx1.png&http://127.0.0.1:3003/img/detailImg/mtx2.png', '满天星', '思念、清纯、梦境、真心喜欢、配角，但不可缺。', '满天星（石竹科石头花属植物）一般指圆锥石头花，是石竹科，\n石头花属的多年生草本植物，根粗壮。茎单生，直立，多分枝。\n叶片披针形或线状披针形，顶端渐尖，中脉明显。圆锥状聚伞花序多分枝，花小而多；\n花梗纤细，苞片三角形，花萼宽钟形，花瓣白色或淡红色，匙形。蒴果球形，\n种子小，圆形。花期6-8月，果期8-9月。', '分布于中国（疆阿尔泰山区、塔什库尔干）、哈萨克斯坦、\n俄罗斯（西伯利亚）、蒙古（西部）、欧洲（西部、中部和东部）、\n北美洲。', '生于海拔1100-1500米河滩、草地、固定沙丘、石质山坡及农田中。该种的生命力极强，\n生根快。宜在向阳环境和疏松肥沃、排水良好的微碱性砂壤土生长，土壤要求疏松，\n富含有机质，含水量适中，pH值7左右。', 80, 1),
(7, 'http://127.0.0.1:3003/img/flowers/zisejigeng_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/zsjg1.png&http://127.0.0.1:3003/img/detailImg/zsjg1.png', '紫色桔梗', '真诚不变的爱,充满感动,赋予感情。紫桔梗有着细致脆弱的花瓣，\n花色纯白，紫色，还有白色周围镶有紫色，蓝色花边的。\n于是开始送人桔梗，适合送情人也适合送永不在相见的对象，\n因为它既是永恒，也是无望，或是永恒无望的爱。', '桔梗（Platycodon gradiflorus）又名苦根菜、梗草、\n铃铛花、包袱花，属桔梗科桔梗属多年生草本植物。', '四川、云南、贵州。多野生于山坡草丛之中', '野生，生命力顽强', 75, 1),
(8, 'http://127.0.0.1:3003/img/flowers/baihe_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/bh1.png&http://127.0.0.1:3003/img/detailImg/bh2.png', '百合', '百年好合、美好家庭、伟大的爱，深深祝福。', '百合科百合属植物,多年生草本，株高70~150厘米。\n鳞茎球形，淡白色，先端常开放如莲座状，由多数肉质肥厚、卵匙形的鳞片聚合而成。', '原产于中国，主要分布在亚洲东部、欧洲、北美洲等北半球温带地区', '喜凉爽，较耐寒。高温地区生长不良。喜干燥，怕水涝。\n 土壤湿度过高则引起鳞茎腐烂死亡。', 70, 1),
(9, 'http://127.0.0.1:3003/img/flowers/baixueshan_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/bxs1.png&http://127.0.0.1:3003/img/detailImg/bxs2.png', '白雪山', '雪山玫瑰是一种可爱型玫瑰，未全开放的雪山玫瑰，花瓣紧凑在一起，\n层层包容很有内涵。绿白色的花瓣，纯洁、高贵、天真的象征，\n淡绿色调在话语中又有钟情于你及青春常驻之寓意。', '白玫瑰中的一种，花色为有淡绿与白之间，雪山玫瑰是白玫瑰中的高档品种，\n也是较新的品种，英文名字叫做Avalanche。', '我国云南和台湾有生产', '温和', 60, 1),
(10, 'http://127.0.0.1:3003/img/flowers/jingzhiyuye_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/jzyy1.png&http://127.0.0.1:3003/img/detailImg/jzyy2.png', '金枝玉叶', '高贵，幸福；永结同心，血脉相连。', '学名马齿苋树（拉丁：Portulacaria afra），即：金枝玉叶，\n为马齿苋科马齿苋属多年生常绿肉质灌木，茎肉质，紫褐色至浅褐色，\n分枝近水平，新枝在阳光充足的条件下呈紫红色，若光照不足，则为绿色。', '原产南非', '喜温暖、干燥和阳光充足的环境，耐干旱和半阴，不耐涝。\n在荫蔽处虽然也能生长，但茎节之间的距离会变长\n，叶片大而薄，且无光泽，影响观赏。夏季高温时可适当遮光，\n以防烈日曝晒，并注意通风。', 85, 1),
(11, 'http://127.0.0.1:3003/img/flowers/ziluolan1_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/zll1.png&http://127.0.0.1:3003/img/detailImg/zll2.png', '紫罗兰', '永恒的美与爱，质朴、美德、盛夏的清凉。', '紫罗兰（学名：Matthiola incana (L.) R. Br.）\n是十字花科、紫罗兰属二年生或多年生草本。\n全株密被灰白色具柄的分枝柔毛。茎直立，多分枝，\n基部稍木质化。叶片长圆形至倒披针形或匙形。', '地中海沿岸', '喜冷凉的气候，忌燥热。喜通风良好的环境，冬季喜温和气候，\n不耐阴，怕渍水，它适生于位置较高。', 90, 1),
(12, 'http://127.0.0.1:3003/img/flowers/red_xinagrikui_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/rxrk1.png&http://127.0.0.1:3003/img/detailImg/rxrk2.png', '红色向日葵', '向日葵具有向光性，人们称它为太阳花，随太阳回绕的花。\n在古代的印加帝国，向日葵是太阳神的象徵。因此向日葵的花语是太阳。', '菊科向日葵属植物，向日葵的一种', '原产地于北美洲', '向日葵的种植四季皆可，重要以夏、冬两季为主。', 80, 1),
(13, 'http://127.0.0.1:3003/img/flowers/yujingxiang_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/yjx1.png&http://127.0.0.1:3003/img/detailImg/yjx2.png', '郁金香', '永远的爱,铭记于心,初恋, 喜欢你那灿烂的笑容。', '百合科郁金香植物,叶3-5枚，条状披针形至卵状披针状，花单朵顶生，\n大型而艳丽，花被片红色或杂有白色和黄色，\n有时为白色或黄色，长5-7厘米，宽2-4厘米，6枚雄蕊等长，花丝无毛，\n无花柱，柱头增大呈鸡冠状，花期4-5月。', '原产地中海沿岸及中亚细亚、和土耳其等地。\n本种为广泛栽培的花卉，因历史悠久，品种很多。', '郁金香属长日照花卉，性喜向阳、避风，冬季温暖湿润，夏季凉爽干燥的气候。\n8℃以上即可正常生长，一般可耐-14℃低温。耐寒性很强，\n在严寒地区如有厚雪覆盖，鳞茎就可在露地越冬，但怕酷暑，如果夏天来的早，\n盛夏又很炎热，则鳞茎休眠后难于度夏。', 85, 1),
(14, 'http://127.0.0.1:3003/img/flowers/xunyicao_220x240.jpg', 'http://127.0.0.1:3003/img/detailImg/xyc1.png&http://127.0.0.1:3003/img/detailImg/xyc2.png', '薰衣草', '浓情厚谊，爱的宣言，永远的回忆。', '唇形科薰衣草属植物,约28种，为一年生或多年生草本或灌木，我国仅栽培2种。\n薰衣草的花期一般为6月至8月。薰衣草是一种重要香料经济植物,植株四季常青且\n带有芳香气味，花通常呈紫色、蓝色、粉红、白色等颜色，\n具有很高的观赏价值，是布置花坛、花被、营造花海等园林景观的植物材料，\n同时还兼具良好的药用、保健、化工等实用价值。', '分布于大西洋群岛及地中海地区至索马里，巴基斯坦及印度；我国仅栽培2种。', '薰衣草耐寒、耐旱、喜光、怕涝。为长日照植物，以全年日照时数在2000h以上为宜。\n对土壤要求不严，石砾土、\n微酸性土、偏碱性土均能生长。宜选择地势高燥、排水良好、冬季比较温暖湿润、\n夏季比较凉爽干燥的地区栽培。', 85, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yy_message`
--

CREATE TABLE `yy_message` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ctime` date DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `desc1` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yy_message`
--

INSERT INTO `yy_message` (`id`, `title`, `ctime`, `img_url`, `desc1`, `content`) VALUES
(1, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner01.png', '哈哈哈', '买花卖花麦花'),
(2, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner1.png', '哈哈哈', '买花卖花麦花'),
(3, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner2.png', '哈哈哈', '买花卖花麦花'),
(4, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner04.jpg', '哈哈哈', '买花卖花麦花'),
(5, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner06.jpg', '哈哈哈', '买花卖花麦花'),
(6, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner07.jpg', '哈哈哈', '买花卖花麦花'),
(7, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner08.jpg', '哈哈哈', '买花卖花麦花'),
(8, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner09.png', '哈哈哈', '买花卖花麦花'),
(9, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner10.png', '哈哈哈', '买花卖花麦花'),
(10, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner11.jpg', '哈哈哈', '买花卖花麦花'),
(11, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner12.jpg', '哈哈哈', '买花卖花麦花'),
(12, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner13.png', '哈哈哈', '买花卖花麦花'),
(13, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner14.jpg', '哈哈哈', '买花卖花麦花'),
(14, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner15.jpg', '哈哈哈', '买花卖花麦花'),
(15, '大甩卖', '2018-02-19', 'http://127.0.0.1:3003/img/banner/banner17.jpg', '哈哈哈', '买花卖花麦花');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yy`
--
ALTER TABLE `yy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yy_message`
--
ALTER TABLE `yy_message`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `yy`
--
ALTER TABLE `yy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `yy_message`
--
ALTER TABLE `yy_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
