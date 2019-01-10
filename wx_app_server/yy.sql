SET NAMES UTF8;

CREATE DATABASE youyi CHARSET=UTF8;
USE youyi;


  #鲜花
CREATE TABLE yy(
  id  INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  banner VARCHAR(255),
  fname VARCHAR(255),
  flolang VARCHAR(255),
  present VARCHAR(255),  #介绍
  frange VARCHAR(255),  #盛产地
  fenviroment VARCHAR(255), #生长环境
  star  INT,
  kind INT
  );
INSERT INTO yy VALUES(null,
'http://127.0.0.1:3003/img/flowers/wuwangwo_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/ww1.png&http://127.0.0.1:3003/img/detailImg/ww2.png',
'勿忘我',
'请不要忘记我真诚的爱”以及“请想念我，忠贞的希望一切都还没有晚，我会再次归来 给你幸福。勿忘我代表着永恒的爱，当别人送你一束勿忘我，这是他在对你说，愿得一人心，白手不相离的承诺。',
'勿忘草（学名：Myosotis silvatica Ehrh. ex Hoffm.）又名勿忘我，为管状花目、紫草科、勿忘草属植物。多年生草本，茎直立，高20-45厘米，基生叶和茎下部叶有柄，狭倒披针形、长圆状披针形或线状披针形，花序在花期短，花后伸长，花冠蓝色，小坚果卵形，暗褐色，平滑，有光泽。',
'勿忘草产于我国大部分地区，欧洲以及伊朗、苏联、巴基斯坦、印度和克什米尔地区也有分布，常生于山地林缘或林下、山坡或山谷草地等处。',
'勿忘草适应力强，喜干燥、凉爽的气候，忌湿热，喜光，耐旱，生长适温20-25℃，适合在疏松、肥沃、排水良好的微碱性土壤中生长。',55,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/blue_xiuqiu_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/lsxq1.png&http://127.0.0.1:3003/img/detailImg/lsxq2.png',
'蓝色绣球',
'蓝色是一个极富有感情色彩的颜色，比较忧郁。高冷。所以蓝色绣球花才有这背叛，见异思迁的花语涵义。因此蓝绣球不适合送人。',
'绣球花，又名八仙花、紫阳花、七变花、粉团花、洋绣球等，原产于中国四川一带及日本。为虎耳草科绣球属（学名：Hydrangea macrophylla）落叶灌木，株高0.5-1米。叶椭圆形或倒卵形，边缘具钝齿。伞房花序顶生，球状。花几乎全为无性花，所谓的“花”只是萼片而已。',
'生于山谷溪旁或山顶疏林中，海拔380-1700米。产中国山东、江苏、安徽、浙江、福建、河南、湖北、湖南、广东及其沿海岛屿、广西、四川、贵州、云南等省区。日本、朝鲜有分布。',
'喜温暖、湿润和半阴环境。绣球的生长适温为18-28℃，冬季温度不低于5℃。花芽分化需5-7℃条件下6-8周，20℃温度可促进开花，见花后维持16℃，能延长观花期。但高温使花朵褪色快。',65,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/xiangrikui1_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/xrg1.png&http://127.0.0.1:3003/img/detailImg/xrg2.png',
'向日葵',
'向日葵的花语是爱慕，太阳，沉默的爱。它始终绕着太阳转动，不管太阳去哪，它都一路跟随着，寓意着内心有坚定信念的人，不怕困难，勇往直前。在爱情上还代表着不离不弃。',
'向日葵（学名：Helianthus annuus）别名太阳花，是菊科向日葵属的植物。一年生草本，高1～3.5米。茎直立，圆形多棱角，质硬被白色粗硬毛。广卵形的叶片通常互生，先端锐突或渐尖，有基出3脉，边缘具粗锯齿，两面粗糙，被毛，有长柄。头状花序，直径11～30厘米，单生于茎顶或枝端。总苞片多层，叶质，覆瓦状排列，被长硬毛，夏季开花，花序边缘生中性的黄色舌状花，不结实。花序中部为两性管状花，棕色或紫色，能结实。矩卵形瘦果，果皮木质化，灰色或黑色，称葵花籽。',
'向日葵原产地据信为北美洲。是俄罗斯、乌克兰、葡萄牙、秘鲁、玻利维亚的国花，日本北九州市的市花。',
'向日葵的种植四季皆可，重要以夏、冬两季为主。对温度的适应性较强，是喜温又耐寒的作物。',75,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/white_rose_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/bmg1.png&http://127.0.0.1:3003/img/detailImg/bmg2.png',
'白玫瑰',
'纯洁，浪漫，求爱之花，以及我足以与你相配。',
'白玫瑰，被子植物门，玫瑰中的一种。玫瑰花有紫、白两种，形似蔷薇和月季。玫瑰在植物分类学上是指蔷薇科蔷薇属灌木（Rosa rugosa）。玫瑰在日常生活中是蔷薇属一系列花大艳丽的栽培品种的统称，这些栽培品种在植物分类学上应称做白花杂交茶香月季或白蔷薇。',
'英国',
'白玫瑰性喜阳光，较耐寒，耐旱，喜通风凉爽气候，适宜生长温度为15-25度。玫瑰适应性较强，对土壤要求不严，在肥沃的中性或微酸性轻壤土中生长良好，开花多。植物学的白玫瑰比白月季更耐寒。',85,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/kangnaixi_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/knx1.png&http://127.0.0.1:3003/img/detailImg/knx2.png',
'康乃馨',
'热情、魅力、使人柔弱的爱、真情、母亲我爱你、温馨的祝福、热爱着你、慈祥、不求代价的母爱、宽容、母亲之花、浓郁的亲情、亲情思念、清纯的爱慕之情、热恋、热心、伤心与懊悔、伟大、神圣，慰问、心灵的相通、真挚、走运、思念。',
'康乃馨，原名：香石竹，又名：狮头石竹、麝香石竹、大花石竹，石竹科、石竹属多年生草本，高40-70厘米，全株无毛，粉绿色。茎丛生，直立，基部木质化，上部稀疏分枝。叶片线状披针形，顶端长渐尖，基部稍成短鞘，中脉明显，上面下凹，下面稍凸起。花常单生枝端有香气，粉红、紫红或白色；花梗短于花萼；宽卵形，顶端短凸尖，花萼圆筒形，萼齿披针形，边缘膜质；瓣片倒卵形，顶缘具不整齐齿；雄蕊长达喉部；花柱伸出花外。蒴果卵球形，稍短于宿存萼。花期5-8月，果期8-9月。',
'康乃馨主要分布于欧洲温带以及中国大陆的福建、湖北等地，原产于地中海地区。',
'康乃馨属中日照植物，喜阳光充足;喜凉爽，不耐炎热，可忍受一定程度的低温;喜保肥、通气和排水性能良好的土壤，其中以重壤土为好。',95,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/mantianxing_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/mtx1.png&http://127.0.0.1:3003/img/detailImg/mtx2.png',
'满天星',
'思念、清纯、梦境、真心喜欢、配角，但不可缺。',
'满天星（石竹科石头花属植物）一般指圆锥石头花，是石竹科，石头花属的多年生草本植物，根粗壮。茎单生，直立，多分枝。叶片披针形或线状披针形，顶端渐尖，中脉明显。圆锥状聚伞花序多分枝，花小而多；花梗纤细，苞片三角形，花萼宽钟形，花瓣白色或淡红色，匙形。蒴果球形，种子小，圆形。花期6-8月，果期8-9月。',
'分布于中国（疆阿尔泰山区、塔什库尔干）、哈萨克斯坦、俄罗斯（西伯利亚）、蒙古（西部）、欧洲（西部、中部和东部）、北美洲。',
'生于海拔1100-1500米河滩、草地、固定沙丘、石质山坡及农田中。该种的生命力极强，生根快。宜在向阳环境和疏松肥沃、排水良好的微碱性砂壤土生长，土壤要求疏松，富含有机质，含水量适中，pH值7左右。',80,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/zisejigeng_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/zsjg1.png&http://127.0.0.1:3003/img/detailImg/zsjg2.png',
'紫色桔梗',
'真诚不变的爱,充满感动,赋予感情。紫桔梗有着细致脆弱的花瓣，花色纯白，紫色，还有白色周围镶有紫色，蓝色花边的。于是开始送人桔梗，适合送情人也适合送永不在相见的对象，因为它既是永恒，也是无望，或是永恒无望的爱。',
'桔梗（Platycodon gradiflorus）又名苦根菜、梗草、铃铛花、包袱花，属桔梗科桔梗属多年生草本植物。',
'四川、云南、贵州。多野生于山坡草丛之中',
'野生，生命力顽强',75,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/baihe_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/bh1.png&http://127.0.0.1:3003/img/detailImg/bh2.png',
'百合',
'百年好合、美好家庭、伟大的爱，深深祝福。',
'百合科百合属植物,多年生草本，株高70~150厘米。鳞茎球形，淡白色，先端常开放如莲座状，由多数肉质肥厚、卵匙形的鳞片聚合而成。',
'原产于中国，主要分布在亚洲东部、欧洲、北美洲等北半球温带地区',
'喜凉爽，较耐寒。高温地区生长不良。喜干燥，怕水涝。土壤湿度过高则引起鳞茎腐烂死亡。',70,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/baixueshan_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/bxs1.png&http://127.0.0.1:3003/img/detailImg/bxs2.png',
'白雪山',
'雪山玫瑰是一种可爱型玫瑰，未全开放的雪山玫瑰，花瓣紧凑在一起，层层包容很有内涵。绿白色的花瓣，纯洁、高贵、天真的象征，淡绿色调在话语中又有钟情于你及青春常驻之寓意。',
'白玫瑰中的一种，花色为有淡绿与白之间，雪山玫瑰是白玫瑰中的高档品种，也是较新的品种，英文名字叫做Avalanche。',
'我国云南和台湾有生产',
'温和',60,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/jingzhiyuye_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/jzyy1.png&http://127.0.0.1:3003/img/detailImg/jzyy2.png',
'金枝玉叶',
'高贵，幸福；永结同心，血脉相连。',
'学名马齿苋树（拉丁：Portulacaria afra），即：金枝玉叶，为马齿苋科马齿苋属多年生常绿肉质灌木，茎肉质，紫褐色至浅褐色，分枝近水平，新枝在阳光充足的条件下呈紫红色，若光照不足，则为绿色。',
'原产南非',
'喜温暖、干燥和阳光充足的环境，耐干旱和半阴，不耐涝。在荫蔽处虽然也能生长，但茎节之间的距离会变长，叶片大而薄，且无光泽，影响观赏。夏季高温时可适当遮光，以防烈日曝晒，并注意通风。',85,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/ziluolan1_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/zll1.png&http://127.0.0.1:3003/img/detailImg/zll2.png',
'紫罗兰',
'永恒的美与爱，质朴、美德、盛夏的清凉。',
'紫罗兰（学名：Matthiola incana (L.) R. Br.）是十字花科、紫罗兰属二年生或多年生草本。全株密被灰白色具柄的分枝柔毛。茎直立，多分枝，基部稍木质化。叶片长圆形至倒披针形或匙形。',
'地中海沿岸',
'喜冷凉的气候，忌燥热。喜通风良好的环境，冬季喜温和气候，不耐阴，怕渍水，它适生于位置较高。',90,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/red_xinagrikui_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/rxrk1.png&http://127.0.0.1:3003/img/detailImg/rxrk2.png',
'红色向日葵',
'向日葵具有向光性，人们称它为太阳花，随太阳回绕的花。在古代的印加帝国，向日葵是太阳神的象徵。因此向日葵的花语是太阳。',
'菊科向日葵属植物，向日葵的一种',
'原产地于北美洲',
'向日葵的种植四季皆可，重要以夏、冬两季为主。',80,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/yujingxiang_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/yjx1.png&http://127.0.0.1:3003/img/detailImg/yjx2.png',
'郁金香',
'永远的爱,铭记于心,初恋, 喜欢你那灿烂的笑容。',
'百合科郁金香植物,叶3-5枚，条状披针形至卵状披针状，花单朵顶生，大型而艳丽，花被片红色或杂有白色和黄色，有时为白色或黄色，长5-7厘米，宽2-4厘米，6枚雄蕊等长，花丝无毛，无花柱，柱头增大呈鸡冠状，花期4-5月。',
'原产地中海沿岸及中亚细亚、和土耳其等地。本种为广泛栽培的花卉，因历史悠久，品种很多。',
'郁金香属长日照花卉，性喜向阳、避风，冬季温暖湿润，夏季凉爽干燥的气候。8℃以上即可正常生长，一般可耐-14℃低温。耐寒性很强，在严寒地区如有厚雪覆盖，鳞茎就可在露地越冬，但怕酷暑，如果夏天来的早，盛夏又很炎热，则鳞茎休眠后难于度夏。',85,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/xunyicao_220x240.jpg',
'http://127.0.0.1:3003/img/detailImg/xyc1.png&http://127.0.0.1:3003/img/detailImg/xyc2.png',
'薰衣草',
'浓情厚谊，爱的宣言，永远的回忆。',
'唇形科薰衣草属植物,约28种，为一年生或多年生草本或灌木，我国仅栽培2种。薰衣草的花期一般为6月至8月。薰衣草是一种重要香料经济植物,植株四季常青且带有芳香气味，花通常呈紫色、蓝色、粉红、白色等颜色，具有很高的观赏价值，是布置花坛、花被、营造花海等园林景观的植物材料，同时还兼具良好的药用、保健、化工等实用价值。',
'分布于大西洋群岛及地中海地区至索马里，巴基斯坦及印度；我国仅栽培2种。',
'薰衣草耐寒、耐旱、喜光、怕涝。为长日照植物，以全年日照时数在2000h以上为宜。对土壤要求不严，石砾土、微酸性土、偏碱性土均能生长。宜选择地势高燥、排水良好、冬季比较温暖湿润、夏季比较凉爽干燥的地区栽培。',85,1);


#消息列表
CREATE TABLE yy_message(
  id  INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  ctime DATE,
  img_url  VARCHAR(255),
  desc1 VARCHAR(255),
  content VARCHAR(2000)
  );

INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner01.png','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner1.png','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner2.png','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner04.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner06.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner07.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner08.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner09.png','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner10.png','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner11.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner12.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner13.png','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner14.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner15.jpg','哈哈哈','买花卖花麦花');
INSERT INTO yy_message VALUES(null,'大甩卖','2018-2-19','http://127.0.0.1:3003/img/banner/banner17.jpg','哈哈哈','买花卖花麦花');