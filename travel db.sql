/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : travel db
Target Host     : localhost:3306
Target Database : travel db
Date: 2020-06-29 01:45:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sc_comment
-- ----------------------------
DROP TABLE IF EXISTS `sc_comment`;
CREATE TABLE `sc_comment` (
  `sc_user` varchar(255) NOT NULL,
  `sc_videoname` varchar(255) NOT NULL,
  `sc_time` datetime NOT NULL,
  `sc_content` varchar(255) NOT NULL,
  `sc_likecount` int(255) NOT NULL COMMENT '喜欢这个评论的数量',
  `sc_url` varchar(255) DEFAULT NULL COMMENT '头像url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_comment
-- ----------------------------
INSERT INTO `sc_comment` VALUES ('船长', '20200526110837.mp4', '2020-05-29 09:30:55', '美！', '255', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('船长', '20200526110837.mp4', '2020-05-29 09:27:11', '美！！！！！！！！！！！！！', '2', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('路人甲', '20200526110837.mp4', '2020-05-29 07:55:22', '不会有人真这么漂亮，不会吧不会吧。', '1024', 'uploadfiles/icons/girl.jpg');
INSERT INTO `sc_comment` VALUES ('船长', '20200529141403.mp4', '2020-06-08 07:04:33', '吼美！！！', '66', 'uploadfiles/icons/D10D11B0E24A47BCD0C3C4554B98576C.png');
INSERT INTO `sc_comment` VALUES ('船长2', '20200529141403.mp4', '2020-06-06 07:05:58', '早', '1024', 'uploadfiles/icons/下载.jpg');
INSERT INTO `sc_comment` VALUES ('船长', '20200526110837.mp4', '2010-02-06 00:00:00', '给我出道！', '0', 'uploadfiles/icons/下载.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200526110837.mp4', '2020-06-09 00:00:00', 'love', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200526110837.mp4', '2020-06-09 00:00:00', 'keai', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', '你很棒', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200526110837.mp4', '2020-06-09 00:00:00', '嘿嘿', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-09 00:00:00', '嘿嘿', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-09 00:00:00', '节日快乐', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-09 00:00:00', 'keai', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-09 00:00:00', '111', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-09 00:00:00', 'qaq', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-09 00:00:00', '今天太阳真好', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', '666', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', '再来一个', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', 'qaq', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', '，', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', 'test', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', 'test2', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-09 00:00:00', 'test2', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200529141403.mp4', '2020-06-09 00:00:00', '111', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200529141403.mp4', '2020-06-09 00:00:00', '1112', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200526110837.mp4', '2020-06-09 00:00:00', '白白', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-10 00:00:00', '在干嘛', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-10 00:00:00', '在干嘛', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200526110837.mp4', '2020-06-10 00:00:00', '在干嘛', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-10 00:00:00', 'test', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('船长', '20200526110837.mp4', '2010-02-06 00:00:00', '晴天', '0', 'uploadfiles/icons/下载.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200529141403.mp4', '2020-06-16 00:00:00', '!!!!', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-17 00:00:00', '厉害', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200608223720.mp4', '2020-06-21 00:00:00', 'test3', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `sc_comment` VALUES ('admin', '20200609035256.mp4', '2020-06-23 00:00:00', 'test4', '0', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');

-- ----------------------------
-- Table structure for sc_topic
-- ----------------------------
DROP TABLE IF EXISTS `sc_topic`;
CREATE TABLE `sc_topic` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_author` varchar(255) DEFAULT NULL COMMENT '用户名',
  `sc_url` varchar(255) DEFAULT NULL COMMENT '头像图片url',
  `sc_image_url` varchar(255) DEFAULT NULL COMMENT '用户分享图片\r\n',
  `sc_content` varchar(255) DEFAULT NULL,
  `sc_userLikecount` int(255) DEFAULT NULL,
  `sc_userdisLikecount` int(255) DEFAULT NULL,
  `sc_usertalkcount` int(255) DEFAULT NULL,
  `sc_usermark` varchar(255) DEFAULT NULL COMMENT '#原创小说等等',
  `sc_sharecount` int(255) DEFAULT NULL COMMENT '分享数量',
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_topic
-- ----------------------------
INSERT INTO `sc_topic` VALUES ('1', '功夫熊猫', 'uploadfiles/icons/下载.jpg', null, '一个小伙子到女友家玩，临走时下起倾盆大雨，女友劝他留下过夜，然后她去准备被褥。等她准备就绪走出来时，男友却不见了。一个多小时后，全身被淋得像只落汤鸡似的小伙子回来了，他的女友吃惊地问：\"你到哪里去了？\"小伙子说：\"我回家拿睡衣！\"', '99', '2', '4', '#南京', '1');
INSERT INTO `sc_topic` VALUES ('2', '诸葛思慧', 'uploadfiles/icons/下载.jpg', null, '老婆买了几个桃子蛮甜的，晚上吃了两个，半夜肚子疼的受不了，到早上一共去了五趟厕所，腿都软了，还好上午缓过来了，软绵绵的躺在沙发上，转头扫见墙角的电子秤……果断又去厨房洗了个桃子，女人真是个可怕的生物！', '77', '15', '7', '#幽默搞笑', '12');
INSERT INTO `sc_topic` VALUES ('3', '小明', 'uploadfiles/icons/下载.jpg', null, '正躺在月亮下和媳妇闲聊，此时，突然，萌生出一个问题，于是问媳妇：“你喜欢我？还是喜欢很多的钱？”媳妇想都没想，笑嘻嘻的告诉我：“我喜欢你挣很多的钱。”明明是一道选择题，硬是被她变成了填空题。', '465', '22', '8', '#幽默搞笑', '11');
INSERT INTO `sc_topic` VALUES ('4', '我爱西红柿炒鸡蛋', 'uploadfiles/icons/下载.jpg', null, '手机丢了，借朋友的手机打了过去，一个人接了。我说：\"您好，请问您不是不是捡到了一个手机?\"对方态度强硬：\"什么捡的，我刚偷的!\"', '77', '32', '7', '#说的好有道理', '16');
INSERT INTO `sc_topic` VALUES ('19', 'admin', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg', '/uploadfiles/background/IMG_20200614_22041394.jpg', '小鹿', null, null, null, '#2020轻松时刻', null);
INSERT INTO `sc_topic` VALUES ('20', 'admin', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg', '/uploadfiles/background/Screenshot_20200621_194151_com.soft507.travelsuggest.jpg', 'test', null, null, null, '#2020轻松时刻', null);
INSERT INTO `sc_topic` VALUES ('21', 'admin', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg', '/uploadfiles/background/Screenshot_20200621_194025_com.soft507.travelsuggest.jpg', 'test', null, null, null, '#2020轻松时刻', null);
INSERT INTO `sc_topic` VALUES ('22', 'admin', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg', '/uploadfiles/background/IMG_20200620_161918.jpg', 'QAQ', null, null, null, '#2020轻松时刻', null);

-- ----------------------------
-- Table structure for sc_videos
-- ----------------------------
DROP TABLE IF EXISTS `sc_videos`;
CREATE TABLE `sc_videos` (
  `sc_videoname` varchar(255) NOT NULL,
  `sc_videocount` int(255) DEFAULT NULL COMMENT '点赞数',
  `sc_videoresponse` int(255) DEFAULT NULL COMMENT '转发数',
  `sc_videotalkcount` int(255) DEFAULT NULL COMMENT '评论数',
  `sc_author` varchar(255) NOT NULL COMMENT '作者',
  `sc_content` varchar(255) DEFAULT NULL COMMENT '文案',
  `sc_url` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`sc_videoname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_videos
-- ----------------------------
INSERT INTO `sc_videos` VALUES ('20200526110837.mp4', '14396', '6321', '1232', '商陆', '你精致到老 眼里长着太阳 笑里全是坦荡', 'uploadfiles/icons/233650FC9796D626BEDFBA161B6CF8A7.png');
INSERT INTO `sc_videos` VALUES ('20200529141403.mp4', '2052', '11', '96', '商陆', '毕竟我不像饮料那样 贴着草莓味或柠檬味的标签 所以要尝一口才知道', 'uploadfiles/icons/233650FC9796D626BEDFBA161B6CF8A7.png');
INSERT INTO `sc_videos` VALUES ('20200608223720.mp4', '3690', '130', '56', '商陆', '希望心情像汽水伴着冰块 咕噜咕噜冒着泡泡 轻快明亮 慢慢上升', 'uploadfiles/icons/233650FC9796D626BEDFBA161B6CF8A7.png');
INSERT INTO `sc_videos` VALUES ('20200609035256.mp4', '567', '277', '12', '罗鑫颖', '凡人之躯，比肩神明', 'uploadfiles/icons/FB3E19CF8D08FB1D6C84FFDC657B647C.png');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `_id` int(255) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `_username` varchar(255) NOT NULL COMMENT '用户名',
  `_password` varchar(255) NOT NULL COMMENT '密码',
  `_userkey` varchar(255) NOT NULL COMMENT '一种身份',
  `_phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `_email` varchar(255) NOT NULL COMMENT '邮箱',
  `_sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `_city` varchar(255) DEFAULT NULL COMMENT '城市',
  `_speak` varchar(255) DEFAULT NULL COMMENT '名言',
  `_url` varchar(255) DEFAULT NULL COMMENT '头像url',
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'admin', '123456', 'j2M9oBVCtcogkxV', '13182500278', '3190461349@qq.com', '男', '江苏盐城', '我希望明天会更好', 'uploadfiles/icons/u=3904965285,2413393538&fm=11&gp=0.jpg');
INSERT INTO `userinfo` VALUES ('3', '张三', '123456', 'aV4BDEDoiA6f8NK', '13182500278', '3190461349@qq.com', null, null, null, null);
INSERT INTO `userinfo` VALUES ('4', '李四', '123456', 'qrHwH8Stfe7oPfr', '13182500278', '3190461349@qq.com', null, null, null, null);
INSERT INTO `userinfo` VALUES ('5', '高锋', '123456', 'gUHFV0tFVrQD3KL', '13182500278', '3190461349@qq.com', null, null, null, null);
INSERT INTO `userinfo` VALUES ('6', '陈学东', '123456', 'xbnfN42vexYJKkd', '13182500278', '3190461349@qq.com', null, null, null, null);
INSERT INTO `userinfo` VALUES ('7', 'user', 'user', 'O5b5Y6Sv31uW6aC', '17315095502', '761921281@qq.com', null, null, null, null);
INSERT INTO `userinfo` VALUES ('8', 'girl', '123456', 'Y0O5JvGQr1KBkpm', '17315095502', '761921281@qq.com', '女', '江苏常州', null, 'uploadfiles/icons/girl.jpg');
INSERT INTO `userinfo` VALUES ('9', 'soft507', '123456', 'SEtlxlQxPhme1Ld', '13182500278', 'test@qq.com', null, null, null, null);
INSERT INTO `userinfo` VALUES ('10', '507soft2', '123456', '0umWKv1Ejh4qvXm', '13182500278', 'test@qq.com', null, null, null, null);
INSERT INTO `userinfo` VALUES ('11', 'test123', '123456', 'vg449N7tQ1ADnA7', '13182500278', '3190461349@qq.com', null, null, null, null);

-- ----------------------------
-- Table structure for userlike
-- ----------------------------
DROP TABLE IF EXISTS `userlike`;
CREATE TABLE `userlike` (
  `id` int(11) NOT NULL COMMENT '用户id',
  `videocode` varchar(255) NOT NULL COMMENT '用户喜欢的视频编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlike
-- ----------------------------
INSERT INTO `userlike` VALUES ('2', '20200526110837.mp4');
INSERT INTO `userlike` VALUES ('2', '20200529141403.mp4');
INSERT INTO `userlike` VALUES ('1', '20200529141403.mp4');
