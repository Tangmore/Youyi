SET NAMES UTF8;
DROP DATABASE IF EXISTS youyi;
CREATE DATABASE youyi CHARSET=UTF8;
USE youyi;

CREATE TABLE yy(
  id  INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  fname VARCHAR(255),
  flolang VARCHAR(255),
  present VARCHAR(255),
  frange VARCHAR(255),
  star  INT,
  kind INT
  );
  #鲜花
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/wuwangwo_220x240.jpg','勿忘我','永恒的爱，浓情厚谊，永不变的心，永远的回忆。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',55,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/blue_xiuqiu_220x240.jpg','蓝色绣球','浪漫,美满。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',65,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/xiangrikui1_220x240.jpg','向日葵','沉默的爱，爱慕，忠诚。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/white_rose_220x240.jpg','白玫瑰','天真、纯洁。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/kangnaixi_220x240.jpg','康乃馨','爱，魅力，尊敬之情。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',95,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/mantianxing_220x240.jpg','满天星','思念、清纯、梦境、真心喜欢、配角，但不可缺。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/zisejigeng_220x240.jpg','紫色桔梗','真诚不变的爱,充满感动,赋予感情。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/baihe_220x240.jpg','百合','百年好合、美好家庭、伟大的爱，深深祝福。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',70,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/baixueshan_220x240.jpg','白雪山','纯纯的爱，甘心为你付出所有，高贵，智慧。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',60,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/jingzhiyuye_220x240.jpg','金枝玉叶','高贵，幸福；永结同心，血脉相连。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/ziluolan1_220x240.jpg','紫罗兰','永恒的美与爱，质朴、美德、盛夏的清凉。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',90,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/red_xinagrikui_220x240.jpg','红色向日葵',':爱慕、光辉、忠诚、沉默的爱。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/red_rose_220x240.jpg','粉红玫瑰','永远的爱,铭记于心,初恋, 喜欢你那灿烂的笑容。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/much_rose_220x240.jpg','多色玫瑰','浓情厚谊，爱的宣言，永远的回忆。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,1);
 
 #绿植
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/baizhang.jpg','白掌一帆风顺','美好、高洁、贤德、热烈、友谊、自信、自傲。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',55,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/diaolan.jpg','金边吊兰小盆栽','无奈而又给人希望。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',65,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/dishuiguanyin.jpg','滴水观音','志同道合、诚意、内蕴清秀。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/facaishu.jpg','发财树','要发财、招财。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/fuguita.jpg','富贵塔-小盆栽','花开富贵、竹报平安、大吉大利、富贵一生。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',95,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hongyundangtou.jpg','鸿运当头','完美 ,美好，不可或缺。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hongzhang.jpg','红掌小盆栽','大展宏图、热情、热血。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/white_hudielan.jpg','白蝴蝶兰','幸福美满，心想事成，事业发达，生意兴隆，快乐天使等。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',70,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hudielan.jpg','蝴蝶兰','幸福美满，和谐。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',60,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/jingqianshu.jpg','金钱树','招财进宝、荣华富贵。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/longxushu.jpg','龙须树','延年益寿,保佑子孙。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',90,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/lvluo.jpg','绿萝','坚韧善良和守望幸福。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/xingfushu.jpg','幸福树','幸福平安。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/yajiaomu.jpg','鸭脚木','浓 自然、和谐 。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);


#礼品
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/baizhang.jpg','白掌一帆风顺','美好、高洁、贤德、热烈、友谊、自信、自傲。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',55,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/diaolan.jpg','金边吊兰小盆栽','无奈而又给人希望。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',65,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/dishuiguanyin.jpg','滴水观音','志同道合、诚意、内蕴清秀。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/facaishu.jpg','发财树','要发财、招财。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/fuguita.jpg','富贵塔-小盆栽','花开富贵、竹报平安、大吉大利、富贵一生。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',95,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hongyundangtou.jpg','鸿运当头','完美 ,美好，不可或缺。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hongzhang.jpg','红掌小盆栽','大展宏图、热情、热血。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/white_hudielan.jpg','白蝴蝶兰','幸福美满，心想事成，事业发达，生意兴隆，快乐天使等。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',70,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hudielan.jpg','蝴蝶兰','幸福美满，和谐。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',60,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/jingqianshu.jpg','金钱树','招财进宝、荣华富贵。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/longxushu.jpg','龙须树','延年益寿,保佑子孙。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',90,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/lvluo.jpg','绿萝','坚韧善良和守望幸福。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/xingfushu.jpg','幸福树','幸福平安。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/yajiaomu.jpg','鸭脚木','浓 自然、和谐 。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/red_rose_220x240.jpg','粉红玫瑰','永远的爱,铭记于心,初恋, 喜欢你那灿烂的笑容。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,1);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/much_rose_220x240.jpg','多色玫瑰','浓情厚谊，爱的宣言，永远的回忆。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,1);
 
 #绿植
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/baizhang.jpg','白掌一帆风顺','美好、高洁、贤德、热烈、友谊、自信、自傲。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',55,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/diaolan.jpg','金边吊兰小盆栽','无奈而又给人希望。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',65,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/dishuiguanyin.jpg','滴水观音','志同道合、诚意、内蕴清秀。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/facaishu.jpg','发财树','要发财、招财。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/fuguita.jpg','富贵塔-小盆栽','花开富贵、竹报平安、大吉大利、富贵一生。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',95,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hongyundangtou.jpg','鸿运当头','完美 ,美好，不可或缺。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hongzhang.jpg','红掌小盆栽','大展宏图、热情、热血。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/white_hudielan.jpg','白蝴蝶兰','幸福美满，心想事成，事业发达，生意兴隆，快乐天使等。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',70,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/hudielan.jpg','蝴蝶兰','幸福美满，和谐。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',60,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/jingqianshu.jpg','金钱树','招财进宝、荣华富贵。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/longxushu.jpg','龙须树','延年益寿,保佑子孙。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',90,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/lvluo.jpg','绿萝','坚韧善良和守望幸福。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/xingfushu.jpg','幸福树','幸福平安。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/plant/yajiaomu.jpg','鸭脚木','浓 自然、和谐 。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85,2);


#礼品
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/shuijingqiu_220x240.jpg','LED灯水晶球音乐盒','曲目《平安夜》。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/metal_meigui_220x240.jpg','999纯金箔玫瑰','不凋谢的玫瑰。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/huazhuangdeng_220x240.jpg','萌宠化妆镜灯','补妆神器，照亮你的美。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/18_chocolate_220x240.jpg','德国进口松露夹心巧克力','原产地德国进口。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/ear_220x240.jpg','Glam Ever玫瑰金耳钉','孙俪都在戴平价潮牌。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);



INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/dog_220x240.jpg','哈士奇正版doge公仔','特惠款。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/16_chocolate_220x240.jpg','圣诞巧克力礼盒16粒装','璀璨夺目，五彩纷呈。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);



INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/hellokitty_220x240.jpg','Hello Kitty水晶化妆镜','转运水晶化妆镜，方便携带。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);



INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/flesh_220x240.jpg','手作景观多肉盆栽','璀璨夺目，五彩纷呈。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/toy_flower_220x240.jpg','公仔创意花束','送儿童、小孩定制款。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/paino_220x240.jpg','五十音木制钢琴','音质纯正，演奏经典。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/music_light_220x240.jpg','智能音响灯','不凋谢的玫瑰。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/ear2_220x240.jpg','流星烟花耳环','欧美小清新淑女友气质长款星星耳环。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);



INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/pencial_220x240.jpg','创意手工巧克力','不凋谢的玫瑰。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/dog_chocolate_220x240.jpg','卡通动物巧克力（小狗）','来自二次元的美味问候。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/flower_vase_220x240.jpg','简约蓝调花瓶','不凋谢的玫瑰。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/vase_chocolate_220x240.jpg','七夕巧克力小食瓶','混合巧克力。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',55,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/pencial_220x240.jpg','创意手工巧克力','不凋谢的玫瑰。','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/gift/dried_flower_220x240.jpg','干花','一抹花香，带给你幸运。那一月，我转过所有经轮，不为超度，只为触摸你的指尖','下单填写留言，即免费赠送精美贺卡！','顺丰陆运快递深圳发货, 全国可达, 包邮!',65,3);