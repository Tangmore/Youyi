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
  star  INT
);
INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/wuwangwo_220x240.jpg','勿忘我','永恒的爱，浓情厚谊，永不变的心，永远的回忆。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',55);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/blue_xiuqiu_220x240.jpg','蓝色绣球','浪漫,美满。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',65);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/xiangrikui1_220x240.jpg','向日葵','沉默的爱，爱慕，忠诚。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/white_rose_220x240.jpg','白玫瑰','天真、纯洁。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/kangnaixi_220x240.jpg','康乃馨','爱，魅力，尊敬之情。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',95);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/mantianxing_220x240.jpg','满天星','思念、清纯、梦境、真心喜欢、配角，但不可缺。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/zisejigeng_220x240.jpg','紫色桔梗','真诚不变的爱,充满感动,赋予感情。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',75);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/baihe_220x240.jpg','百合','百年好合、美好家庭、伟大的爱，深深祝福。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',70);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/baixueshan_220x240.jpg','白雪山','纯纯的爱，甘心为你付出所有，高贵，智慧。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',60);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/jingzhiyuye_220x240.jpg','金枝玉叶','高贵，幸福；永结同心，血脉相连。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/ziluolan1_220x240.jpg','紫罗兰','永恒的美与爱，质朴、美德、盛夏的清凉。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',90);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/red_xinagrikui_220x240.jpg','红色向日葵',':爱慕、光辉、忠诚、沉默的爱。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',80);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/red_rose_220x240.jpg','粉红玫瑰','永远的爱,铭记于心,初恋, 喜欢你那灿烂的笑容。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85);

INSERT INTO yy VALUES(null,'http://127.0.0.1:3003/img/flowers/much_rose_220x240.jpg','多色玫瑰','浓情厚谊，爱的宣言，永远的回忆。','免费精美贺卡，代写祝福','本地区各市县、乡镇、街道（市区内免费配送）',85);
