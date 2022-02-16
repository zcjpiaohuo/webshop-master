/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : web_shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-01-13 11:27:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('1', 'admin', '63814a82384f9faca8bcca0f08d86eb9');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `buy_count` int(11) DEFAULT NULL,
  `is_pay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `counts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('555', '555', 'http://localhost:3000/uploads/upload_bb4a65134ebf4a8de2a7e810faed8709.jpg', '555', '1', '0', '14', '555');
INSERT INTO `cart` VALUES ('11111', '1111', 'http://localhost:3000/uploads/upload_df43f5a23c1fe9b6c7c72b2d1bf14210.jpg', '1111', '1', '0', '14', '1111');
INSERT INTO `cart` VALUES ('11', '11', 'http://localhost:3000/uploads/upload_779da2ad65e94a538af1c8f9ecf0a499.png', '11', '1', '0', '14', '11');
INSERT INTO `cart` VALUES ('11', '11', 'http://localhost:3000/uploads/upload_779da2ad65e94a538af1c8f9ecf0a499.png', '11', '1', '0', '13', '11');
INSERT INTO `cart` VALUES ('22', '22', 'http://localhost:3000/uploads/upload_677f693c6f3f30a920ccb350e387e7a6.png', '22', '1', '0', '13', '22');
INSERT INTO `cart` VALUES ('33', '33', 'http://localhost:3000/uploads/upload_d1798166ebd0048e4be6561184a719b0.png', '33', '1', '0', '13', '33');
INSERT INTO `cart` VALUES ('22222', '22222', 'http://localhost:3000/uploads/upload_534508a76bfc8c003034449944f1b815.jpg', '2222', '4', '0', '14', '2221');
INSERT INTO `cart` VALUES ('11', '龙珠', 'http://localhost:3000/uploads/upload_636f741711ff5cba40add061e4b302fd.png', '50', '1', '0', '18', '25');
INSERT INTO `cart` VALUES ('12', '进击的巨人', 'http://localhost:3000/uploads/upload_44c7486d3562770f6208c71d3865eb7d.png', '45', '1', '0', '18', '15');
INSERT INTO `cart` VALUES ('13', '海贼王', 'http://localhost:3000/uploads/upload_f83c57406d957f173a4d429f4d1c3e46.png', '50', '1', '0', '20', '20');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_counts` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '热血', 'el-icon-reading', '46');
INSERT INTO `category` VALUES ('2', '悬疑', 'el-icon-box', '20');
INSERT INTO `category` VALUES ('3', '搞笑', 'el-icon-present', '20');
INSERT INTO `category` VALUES ('4', '玄幻', 'el-icon-mobile-phone', '20');
INSERT INTO `category` VALUES ('5', '校园', 'el-icon-ice-cream', '15');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `comment_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_rating` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '136590526', 'good', '5', '5');
INSERT INTO `comments` VALUES ('16', '136590526', 'nice', '5', '5');
INSERT INTO `comments` VALUES ('22', '6225284', '不好用', '2', '5');
INSERT INTO `comments` VALUES ('23', '6225284', '还可以', '4', '5');
INSERT INTO `comments` VALUES ('25', '621723438', '强烈推荐', '5', '5');
INSERT INTO `comments` VALUES ('28', '11', '必须好评！！！！', '5', '14');
INSERT INTO `comments` VALUES ('31', '111', '感觉不错', '4', '18');
INSERT INTO `comments` VALUES ('32', '1', '值得一看', '4', '18');
INSERT INTO `comments` VALUES ('33', '1', '非常推荐', '4', '18');
INSERT INTO `comments` VALUES ('34', '44', '还可以', '3', '18');
INSERT INTO `comments` VALUES ('35', '11', '非常精彩', '5', '18');
INSERT INTO `comments` VALUES ('36', '12', '值得推荐', '4', '18');
INSERT INTO `comments` VALUES ('37', '12', '还可以', '4', '18');
INSERT INTO `comments` VALUES ('38', '21', '好看', '5', '18');
INSERT INTO `comments` VALUES ('39', '41', '感觉一般', '3', '18');
INSERT INTO `comments` VALUES ('40', '13', '非常好看', '4', '18');
INSERT INTO `comments` VALUES ('41', '11', '不错', '4', '18');
INSERT INTO `comments` VALUES ('42', '11', '好', '4', '18');
INSERT INTO `comments` VALUES ('43', '13', '好', '4', '20');

-- ----------------------------
-- Table structure for homecasual
-- ----------------------------
DROP TABLE IF EXISTS `homecasual`;
CREATE TABLE `homecasual` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of homecasual
-- ----------------------------
INSERT INTO `homecasual` VALUES ('1', 'http://localhost:3000/images/home/s1.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES ('2', 'http://localhost:3000/images/home/s2.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=228');
INSERT INTO `homecasual` VALUES ('3', 'http://localhost:3000/images/home/s3.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6242');
INSERT INTO `homecasual` VALUES ('4', 'http://localhost:3000/images/home/s4.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES ('5', 'http://localhost:3000/images/home/s5.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6230');
INSERT INTO `homecasual` VALUES ('6', 'http://localhost:3000/images/home/s6.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=190');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `goods_id` bigint(20) NOT NULL,
  `goods_name` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hd_thumb_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `normal_price` int(11) DEFAULT NULL,
  `market_price` int(11) DEFAULT NULL,
  `sales_tip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `comments_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('12', '进击的巨人', '进击的巨人', 'http://localhost:3000/uploads/upload_44c7486d3562770f6208c71d3865eb7d.png', 'http://localhost:3000/uploads/upload_44c7486d3562770f6208c71d3865eb7d.png', 'http://localhost:3000/uploads/upload_44c7486d3562770f6208c71d3865eb7d.png', '45', '45300', '45500', '进击的巨人', '1', '15', '2');
INSERT INTO `recommend` VALUES ('13', '海贼王', '海贼王', 'http://localhost:3000/uploads/upload_f83c57406d957f173a4d429f4d1c3e46.png', 'http://localhost:3000/uploads/upload_f83c57406d957f173a4d429f4d1c3e46.png', 'http://localhost:3000/uploads/upload_f83c57406d957f173a4d429f4d1c3e46.png', '50', '50300', '50500', '海贼王', '1', '20', '2');
INSERT INTO `recommend` VALUES ('14', '火影忍者', '火影忍者', 'http://localhost:3000/uploads/upload_28da3521e0edfd30165598925f519793.png', 'http://localhost:3000/uploads/upload_28da3521e0edfd30165598925f519793.png', 'http://localhost:3000/uploads/upload_28da3521e0edfd30165598925f519793.png', '45', '45300', '45500', '火影忍者', '1', '20', '0');
INSERT INTO `recommend` VALUES ('15', '一拳超人', '一拳超人', 'http://localhost:3000/uploads/upload_be0cc4fade20460caece3ef3c745ccbb.png', 'http://localhost:3000/uploads/upload_be0cc4fade20460caece3ef3c745ccbb.png', 'http://localhost:3000/uploads/upload_be0cc4fade20460caece3ef3c745ccbb.png', '35', '35300', '35500', '一拳超人', '1', '20', '0');
INSERT INTO `recommend` VALUES ('16', '灌篮高手', '灌篮高手', 'http://localhost:3000/uploads/upload_7cfa3605fbdba70b0414c035b07902aa.png', 'http://localhost:3000/uploads/upload_7cfa3605fbdba70b0414c035b07902aa.png', 'http://localhost:3000/uploads/upload_7cfa3605fbdba70b0414c035b07902aa.png', '40', '40300', '40500', '灌篮高手', '1', '115', '0');
INSERT INTO `recommend` VALUES ('17', '死神', '死神', 'http://localhost:3000/uploads/upload_748eb79571e35ca97dccfc2d7bbf1e02.png', 'http://localhost:3000/uploads/upload_748eb79571e35ca97dccfc2d7bbf1e02.png', 'http://localhost:3000/uploads/upload_748eb79571e35ca97dccfc2d7bbf1e02.png', '45', '45300', '45500', '死神', '1', '21', '0');
INSERT INTO `recommend` VALUES ('18', '鬼灯的冷彻', '鬼灯的冷彻', 'http://localhost:3000/uploads/upload_dbadfe826543704798f4776847a707f2.png', 'http://localhost:3000/uploads/upload_dbadfe826543704798f4776847a707f2.png', 'http://localhost:3000/uploads/upload_dbadfe826543704798f4776847a707f2.png', '45', '45300', '45500', '鬼灯的冷彻', '1', '25', '0');
INSERT INTO `recommend` VALUES ('19', '咒术回战', '咒术回战', 'http://localhost:3000/uploads/upload_1bedcba2808dd11484d6427197852dc5.png', 'http://localhost:3000/uploads/upload_1bedcba2808dd11484d6427197852dc5.png', 'http://localhost:3000/uploads/upload_1bedcba2808dd11484d6427197852dc5.png', '45', '45300', '45500', '咒术回战', '1', '25', '0');
INSERT INTO `recommend` VALUES ('21', '名侦探柯南', '名侦探柯南', 'http://localhost:3000/uploads/upload_48e8806debff2b20201b5b168892c2fc.png', 'http://localhost:3000/uploads/upload_48e8806debff2b20201b5b168892c2fc.png', 'http://localhost:3000/uploads/upload_48e8806debff2b20201b5b168892c2fc.png', '45', '45300', '45500', '名侦探柯南', '2', '20', '1');
INSERT INTO `recommend` VALUES ('22', '死亡笔记', '死亡笔记', 'http://localhost:3000/uploads/upload_120b3a41e1dfe1cd186379628ba6abd7.png', 'http://localhost:3000/uploads/upload_120b3a41e1dfe1cd186379628ba6abd7.png', 'http://localhost:3000/uploads/upload_120b3a41e1dfe1cd186379628ba6abd7.png', '50', '50300', '50500', '死亡笔记', '2', '30', '0');
INSERT INTO `recommend` VALUES ('23', '命运石之门', '命运石之门', 'http://localhost:3000/uploads/upload_60c222ae243ed9d55555e45387f9b745.png', 'http://localhost:3000/uploads/upload_60c222ae243ed9d55555e45387f9b745.png', 'http://localhost:3000/uploads/upload_60c222ae243ed9d55555e45387f9b745.png', '40', '40300', '40500', '命运石之门', '2', '20', '0');
INSERT INTO `recommend` VALUES ('24', '心理测量者', '心理测量者', 'http://localhost:3000/uploads/upload_170825a6724aa09d1a1f3cb6192cf972.png', 'http://localhost:3000/uploads/upload_170825a6724aa09d1a1f3cb6192cf972.png', 'http://localhost:3000/uploads/upload_170825a6724aa09d1a1f3cb6192cf972.png', '40', '40300', '40500', '心理测量者', '2', '30', '0');
INSERT INTO `recommend` VALUES ('25', '未来日记', '未来日记', 'http://localhost:3000/uploads/upload_fc94f77dd21206b43b210fbf956b3eda.png', 'http://localhost:3000/uploads/upload_fc94f77dd21206b43b210fbf956b3eda.png', 'http://localhost:3000/uploads/upload_fc94f77dd21206b43b210fbf956b3eda.png', '40', '40300', '40500', '未来日记', '2', '10', '0');
INSERT INTO `recommend` VALUES ('26', '寒蝉鸣泣之时', '寒蝉鸣泣之时', 'http://localhost:3000/uploads/upload_2aa6b2a269674e024837629e990d287a.png', 'http://localhost:3000/uploads/upload_2aa6b2a269674e024837629e990d287a.png', 'http://localhost:3000/uploads/upload_2aa6b2a269674e024837629e990d287a.png', '40', '40300', '40500', '寒蝉鸣泣之时', '2', '20', '0');
INSERT INTO `recommend` VALUES ('27', '反叛的鲁鲁修', '反叛的鲁鲁修', 'http://localhost:3000/uploads/upload_da227948cb5bf81e5a62a72a8fec160f.png', 'http://localhost:3000/uploads/upload_da227948cb5bf81e5a62a72a8fec160f.png', 'http://localhost:3000/uploads/upload_da227948cb5bf81e5a62a72a8fec160f.png', '40', '40300', '40500', '反叛的鲁鲁修', '2', '20', '0');
INSERT INTO `recommend` VALUES ('28', 'another', 'another', 'http://localhost:3000/uploads/upload_11bd30d4ac41d7c6edfc9e9391358a53.png', 'http://localhost:3000/uploads/upload_11bd30d4ac41d7c6edfc9e9391358a53.png', 'http://localhost:3000/uploads/upload_11bd30d4ac41d7c6edfc9e9391358a53.png', '40', '40300', '40500', 'another', '2', '20', '0');
INSERT INTO `recommend` VALUES ('29', '尸鬼', '尸鬼', 'http://localhost:3000/uploads/upload_09e7400cd62ad846ba7c64ec1202fb1c.png', 'http://localhost:3000/uploads/upload_09e7400cd62ad846ba7c64ec1202fb1c.png', 'http://localhost:3000/uploads/upload_09e7400cd62ad846ba7c64ec1202fb1c.png', '35', '35300', '35500', '尸鬼', '2', '20', '0');
INSERT INTO `recommend` VALUES ('31', '十万个冷笑话', '十万个冷笑话', 'http://localhost:3000/uploads/upload_e2b38186dc4fb5e55a28da84b07dc660.png', 'http://localhost:3000/uploads/upload_e2b38186dc4fb5e55a28da84b07dc660.png', 'http://localhost:3000/uploads/upload_e2b38186dc4fb5e55a28da84b07dc660.png', '40', '40300', '40500', '十万个冷笑话', '3', '20', '0');
INSERT INTO `recommend` VALUES ('32', '干物妹！小埋', '干物妹！小埋', 'http://localhost:3000/uploads/upload_c3984e1ee1bdaca1f9e42d4062596ab9.png', 'http://localhost:3000/uploads/upload_c3984e1ee1bdaca1f9e42d4062596ab9.png', 'http://localhost:3000/uploads/upload_c3984e1ee1bdaca1f9e42d4062596ab9.png', '35', '35300', '35500', '干物妹！小埋', '3', '20', '0');
INSERT INTO `recommend` VALUES ('33', '阿u', '阿u', 'http://localhost:3000/uploads/upload_95ef60f06b5b1a590dfaeffa51c08700.png', 'http://localhost:3000/uploads/upload_95ef60f06b5b1a590dfaeffa51c08700.png', 'http://localhost:3000/uploads/upload_95ef60f06b5b1a590dfaeffa51c08700.png', '50', '50300', '50500', '阿u', '3', '40', '0');
INSERT INTO `recommend` VALUES ('34', '蜡笔小新', '蜡笔小新', 'http://localhost:3000/uploads/upload_cdbd0beeb92f8795f281d9606fe90f3e.png', 'http://localhost:3000/uploads/upload_cdbd0beeb92f8795f281d9606fe90f3e.png', 'http://localhost:3000/uploads/upload_cdbd0beeb92f8795f281d9606fe90f3e.png', '43', '43300', '43500', '蜡笔小新', '3', '20', '0');
INSERT INTO `recommend` VALUES ('35', '妄想学生会', '妄想学生会', 'http://localhost:3000/uploads/upload_b68d348a3d0eb2ebad300a5ebfe64eb9.png', 'http://localhost:3000/uploads/upload_b68d348a3d0eb2ebad300a5ebfe64eb9.png', 'http://localhost:3000/uploads/upload_b68d348a3d0eb2ebad300a5ebfe64eb9.png', '36', '36300', '36500', '妄想学生会', '3', '20', '0');
INSERT INTO `recommend` VALUES ('36', '埃罗芒阿老师', '埃罗芒阿老师', 'http://localhost:3000/uploads/upload_f8da7799eb695c89f9f30d1dda699f62.png', 'http://localhost:3000/uploads/upload_f8da7799eb695c89f9f30d1dda699f62.png', 'http://localhost:3000/uploads/upload_f8da7799eb695c89f9f30d1dda699f62.png', '35', '35300', '35500', '埃罗芒阿老师', '3', '10', '0');
INSERT INTO `recommend` VALUES ('37', '鬼灯的冷彻', '鬼灯的冷彻', 'http://localhost:3000/uploads/upload_4440b38365f7a8a603728d6e0aeddf04.png', 'http://localhost:3000/uploads/upload_4440b38365f7a8a603728d6e0aeddf04.png', 'http://localhost:3000/uploads/upload_4440b38365f7a8a603728d6e0aeddf04.png', '10', '10300', '10500', '鬼灯的冷彻', '3', '20', '0');
INSERT INTO `recommend` VALUES ('38', '阿松', '阿松', 'http://localhost:3000/uploads/upload_b1e6c576a249c793c650de49d6138287.png', 'http://localhost:3000/uploads/upload_b1e6c576a249c793c650de49d6138287.png', 'http://localhost:3000/uploads/upload_b1e6c576a249c793c650de49d6138287.png', '50', '50300', '50500', '阿松', '3', '10', '0');
INSERT INTO `recommend` VALUES ('39', '银魂', '银魂', 'http://localhost:3000/uploads/upload_89cf2dbcbcf6dfe23c201633ebf2812f.png', 'http://localhost:3000/uploads/upload_89cf2dbcbcf6dfe23c201633ebf2812f.png', 'http://localhost:3000/uploads/upload_89cf2dbcbcf6dfe23c201633ebf2812f.png', '35', '35300', '35500', '银魂', '3', '100', '0');
INSERT INTO `recommend` VALUES ('41', '斗罗大陆', '斗罗大陆', 'http://localhost:3000/uploads/upload_ba4fb9d6bb52c1a50004eab0e5e2fd05.png', 'http://localhost:3000/uploads/upload_ba4fb9d6bb52c1a50004eab0e5e2fd05.png', 'http://localhost:3000/uploads/upload_ba4fb9d6bb52c1a50004eab0e5e2fd05.png', '42', '42300', '42500', '斗罗大陆', '4', '25', '1');
INSERT INTO `recommend` VALUES ('42', '斗破苍穹', '斗破苍穹', 'http://localhost:3000/uploads/upload_d90b3cacd460aa55c639a909086c9638.png', 'http://localhost:3000/uploads/upload_d90b3cacd460aa55c639a909086c9638.png', 'http://localhost:3000/uploads/upload_d90b3cacd460aa55c639a909086c9638.png', '45', '45300', '45500', '斗破苍穹', '4', '10', '0');
INSERT INTO `recommend` VALUES ('43', '魔道祖师', '魔道祖师', 'http://localhost:3000/uploads/upload_fb15087b23b30f1cbc5a85e6998dd2eb.png', 'http://localhost:3000/uploads/upload_fb15087b23b30f1cbc5a85e6998dd2eb.png', 'http://localhost:3000/uploads/upload_fb15087b23b30f1cbc5a85e6998dd2eb.png', '45', '45300', '45500', '魔道祖师', '4', '20', '0');
INSERT INTO `recommend` VALUES ('44', '一人之下', '一人之下', 'http://localhost:3000/uploads/upload_0803f2102f3e88a14ce23b92ee901924.png', 'http://localhost:3000/uploads/upload_0803f2102f3e88a14ce23b92ee901924.png', 'http://localhost:3000/uploads/upload_0803f2102f3e88a14ce23b92ee901924.png', '35', '35300', '35500', '一人之下', '4', '20', '0');
INSERT INTO `recommend` VALUES ('45', '狐妖小红娘', '狐妖小红娘', 'http://localhost:3000/uploads/upload_1bbee27bd72bbd5280ea39f03d8cc54c.png', 'http://localhost:3000/uploads/upload_1bbee27bd72bbd5280ea39f03d8cc54c.png', 'http://localhost:3000/uploads/upload_1bbee27bd72bbd5280ea39f03d8cc54c.png', '45', '45300', '45500', '魔道祖师', '4', '20', '0');
INSERT INTO `recommend` VALUES ('46', '神座王印', '神座王印', 'http://localhost:3000/uploads/upload_38a9f4839e208f4b76a832310be98de2.png', 'http://localhost:3000/uploads/upload_38a9f4839e208f4b76a832310be98de2.png', 'http://localhost:3000/uploads/upload_38a9f4839e208f4b76a832310be98de2.png', '45', '45300', '45500', '神座王印', '4', '10', '0');
INSERT INTO `recommend` VALUES ('47', '诛仙', '诛仙', 'http://localhost:3000/uploads/upload_2985a0258cfcf73bd2b7ddd08d1e7e3a.png', 'http://localhost:3000/uploads/upload_2985a0258cfcf73bd2b7ddd08d1e7e3a.png', 'http://localhost:3000/uploads/upload_2985a0258cfcf73bd2b7ddd08d1e7e3a.png', '35', '35300', '35500', '诛仙', '4', '20', '0');
INSERT INTO `recommend` VALUES ('48', '元尊', '元尊', 'http://localhost:3000/uploads/upload_c9cf0550e1c1323eeda682e248403732.png', 'http://localhost:3000/uploads/upload_c9cf0550e1c1323eeda682e248403732.png', 'http://localhost:3000/uploads/upload_c9cf0550e1c1323eeda682e248403732.png', '40', '40300', '40500', '元尊', '4', '20', '0');
INSERT INTO `recommend` VALUES ('49', '遮天', '遮天', 'http://localhost:3000/uploads/upload_f6c6658f635e897e19c95bec60d35232.png', 'http://localhost:3000/uploads/upload_f6c6658f635e897e19c95bec60d35232.png', 'http://localhost:3000/uploads/upload_f6c6658f635e897e19c95bec60d35232.png', '35', '35300', '35500', '遮天', '4', '30', '0');
INSERT INTO `recommend` VALUES ('51', '家庭教师', '家庭教师', 'http://localhost:3000/uploads/upload_9b0e6a3d54d351b39c0f3c2cc6827894.png', 'http://localhost:3000/uploads/upload_9b0e6a3d54d351b39c0f3c2cc6827894.png', 'http://localhost:3000/uploads/upload_9b0e6a3d54d351b39c0f3c2cc6827894.png', '45', '45300', '45500', '家庭教师', '5', '20', '0');
INSERT INTO `recommend` VALUES ('52', 'clannad', 'clannad', 'http://localhost:3000/uploads/upload_c9c9cb6268737ce63273ed8941894767.png', 'http://localhost:3000/uploads/upload_c9c9cb6268737ce63273ed8941894767.png', 'http://localhost:3000/uploads/upload_c9c9cb6268737ce63273ed8941894767.png', '50', '50300', '50500', 'clannad', '5', '23', '0');
INSERT INTO `recommend` VALUES ('53', '轻音少女', '轻音少女', 'http://localhost:3000/uploads/upload_e56fcf76394ee6f045989392bb317fd0.png', 'http://localhost:3000/uploads/upload_e56fcf76394ee6f045989392bb317fd0.png', 'http://localhost:3000/uploads/upload_e56fcf76394ee6f045989392bb317fd0.png', '32', '32300', '32500', '轻音少女', '5', '18', '0');
INSERT INTO `recommend` VALUES ('54', 'angelbeat', 'angelbeat', 'http://localhost:3000/uploads/upload_fbae4dfe56b8706695085a09681ef75a.png', 'http://localhost:3000/uploads/upload_fbae4dfe56b8706695085a09681ef75a.png', 'http://localhost:3000/uploads/upload_fbae4dfe56b8706695085a09681ef75a.png', '35', '35300', '35500', 'angelbeat', '5', '20', '0');
INSERT INTO `recommend` VALUES ('55', '妄想学生会', '妄想学生会', 'http://localhost:3000/uploads/upload_de2ddccc1b97f1f023520c01ac6ef979.png', 'http://localhost:3000/uploads/upload_de2ddccc1b97f1f023520c01ac6ef979.png', 'http://localhost:3000/uploads/upload_de2ddccc1b97f1f023520c01ac6ef979.png', '40', '40300', '40500', '妄想学生会', '5', '35', '0');
INSERT INTO `recommend` VALUES ('57', '月刊少女野崎君', '月刊少女野崎君', 'http://localhost:3000/uploads/upload_21172876c02af26f5e2507208493f3eb.png', 'http://localhost:3000/uploads/upload_21172876c02af26f5e2507208493f3eb.png', 'http://localhost:3000/uploads/upload_21172876c02af26f5e2507208493f3eb.png', '25', '25300', '25500', '月刊少女野崎君', '5', '40', '0');
INSERT INTO `recommend` VALUES ('58', '辉夜大小姐想让我告白', '辉夜大小姐想让我告白', 'http://localhost:3000/uploads/upload_64606f1e86e108a1b179ce864430a1dc.png', 'http://localhost:3000/uploads/upload_64606f1e86e108a1b179ce864430a1dc.png', 'http://localhost:3000/uploads/upload_64606f1e86e108a1b179ce864430a1dc.png', '35', '35300', '35500', '辉夜大小姐想让我告白', '5', '15', '0');
INSERT INTO `recommend` VALUES ('59', '在下坂本有何贵干', '在下坂本有何贵干', 'http://localhost:3000/uploads/upload_9c3a1995e875ea051e1adbdc08944dc7.png', 'http://localhost:3000/uploads/upload_9c3a1995e875ea051e1adbdc08944dc7.png', 'http://localhost:3000/uploads/upload_9c3a1995e875ea051e1adbdc08944dc7.png', '45', '45300', '45500', '在下坂本有何贵干', '5', '15', '0');
INSERT INTO `recommend` VALUES ('110', '镇魂街', '镇魂街', 'http://localhost:3000/uploads/upload_5b984f6b3028e273a6e42b92b37984c3.png', 'http://localhost:3000/uploads/upload_5b984f6b3028e273a6e42b92b37984c3.png', 'http://localhost:3000/uploads/upload_5b984f6b3028e273a6e42b92b37984c3.png', '35', '35300', '35500', '镇魂街', '1', '15', '0');
INSERT INTO `recommend` VALUES ('111', '新世纪福音战士', '新世纪福音战士', 'http://localhost:3000/uploads/upload_e3a0835f6a8045d07042a4ccb64a3df4.png', 'http://localhost:3000/uploads/upload_e3a0835f6a8045d07042a4ccb64a3df4.png', 'http://localhost:3000/uploads/upload_e3a0835f6a8045d07042a4ccb64a3df4.png', '55', '55300', '55500', '新世纪福音战士', '1', '15', '0');
INSERT INTO `recommend` VALUES ('112', '皇教国立骑士团', '皇教国立骑士团', 'http://localhost:3000/uploads/upload_dd6a05f8267d4b12dc697a70dde28d2e.png', 'http://localhost:3000/uploads/upload_dd6a05f8267d4b12dc697a70dde28d2e.png', 'http://localhost:3000/uploads/upload_dd6a05f8267d4b12dc697a70dde28d2e.png', '35', '35300', '35500', '皇教国立骑士团', '1', '10', '0');
INSERT INTO `recommend` VALUES ('113', '浪客剑心', '浪客剑心', 'http://localhost:3000/uploads/upload_a94b1ee1cfefc24e54ce52accbd00430.png', 'http://localhost:3000/uploads/upload_a94b1ee1cfefc24e54ce52accbd00430.png', 'http://localhost:3000/uploads/upload_a94b1ee1cfefc24e54ce52accbd00430.png', '35', '35300', '35500', '浪客剑心', '1', '10', '0');
INSERT INTO `recommend` VALUES ('114', 'JOJO的奇幻冒险', 'JOJO的奇幻冒险', 'http://localhost:3000/uploads/upload_c8b4a1504ac054b39dc798577ae440e1.png', 'http://localhost:3000/uploads/upload_c8b4a1504ac054b39dc798577ae440e1.png', 'http://localhost:3000/uploads/upload_c8b4a1504ac054b39dc798577ae440e1.png', '45', '45300', '45500', 'JOJO的奇幻冒险', '1', '10', '0');
INSERT INTO `recommend` VALUES ('115', '钢之炼金术师', '钢之炼金术师', 'http://localhost:3000/uploads/upload_cfab18136d304e1fabd3f85d6f7ad272.png', 'http://localhost:3000/uploads/upload_cfab18136d304e1fabd3f85d6f7ad272.png', 'http://localhost:3000/uploads/upload_cfab18136d304e1fabd3f85d6f7ad272.png', '45', '45300', '45500', '钢之炼金术师', '1', '10', '0');
INSERT INTO `recommend` VALUES ('116', '死亡笔记', '死亡笔记', 'http://localhost:3000/uploads/upload_a793b7d7de071c3c58b3c19c7e84dcf4.png', 'http://localhost:3000/uploads/upload_a793b7d7de071c3c58b3c19c7e84dcf4.png', 'http://localhost:3000/uploads/upload_a793b7d7de071c3c58b3c19c7e84dcf4.png', '45', '45300', '45500', '死亡笔记', '1', '15', '0');
INSERT INTO `recommend` VALUES ('117', '斗破苍穹', '斗破苍穹', 'http://localhost:3000/uploads/upload_d9242f796f56efe84c201a9f532de6d0.png', 'http://localhost:3000/uploads/upload_d9242f796f56efe84c201a9f532de6d0.png', 'http://localhost:3000/uploads/upload_d9242f796f56efe84c201a9f532de6d0.png', '65', '65300', '65500', '斗破苍穹', '1', '20', '0');
INSERT INTO `recommend` VALUES ('118', '家庭教师', '家庭教师', 'http://localhost:3000/uploads/upload_69a91cd3947e3079a7fc4b08b0c6319d.png', 'http://localhost:3000/uploads/upload_69a91cd3947e3079a7fc4b08b0c6319d.png', 'http://localhost:3000/uploads/upload_69a91cd3947e3079a7fc4b08b0c6319d.png', '58', '58300', '58500', '家庭教师', '1', '25', '0');
INSERT INTO `recommend` VALUES ('119', '遮天', '遮天', 'http://localhost:3000/uploads/upload_8827f8e2f7d0a187f8873414a4ed27f2.png', 'http://localhost:3000/uploads/upload_8827f8e2f7d0a187f8873414a4ed27f2.png', 'http://localhost:3000/uploads/upload_8827f8e2f7d0a187f8873414a4ed27f2.png', '45', '45300', '45500', '遮天', '1', '20', '0');
INSERT INTO `recommend` VALUES ('120', '斗罗大陆', '斗罗大陆', 'http://localhost:3000/uploads/upload_d62f0ba1f6bd8b59eb88584559335ae8.png', 'http://localhost:3000/uploads/upload_d62f0ba1f6bd8b59eb88584559335ae8.png', 'http://localhost:3000/uploads/upload_d62f0ba1f6bd8b59eb88584559335ae8.png', '50', '50300', '50500', '斗罗大陆', '1', '20', '0');
INSERT INTO `recommend` VALUES ('121', '排球少年', '排球少年', 'http://localhost:3000/uploads/upload_8d05e3bf89cb985d46829ed5b50043be.png', 'http://localhost:3000/uploads/upload_8d05e3bf89cb985d46829ed5b50043be.png', 'http://localhost:3000/uploads/upload_8d05e3bf89cb985d46829ed5b50043be.png', '55', '55300', '55500', '排球少年', '1', '15', '0');
INSERT INTO `recommend` VALUES ('122', '神印王座', '神印王座', 'http://localhost:3000/uploads/upload_e7f05f717681c72fc5d5c9c6d2f406e2.png', 'http://localhost:3000/uploads/upload_e7f05f717681c72fc5d5c9c6d2f406e2.png', 'http://localhost:3000/uploads/upload_e7f05f717681c72fc5d5c9c6d2f406e2.png', '55', '55300', '55500', '神印王座', '1', '15', '0');
INSERT INTO `recommend` VALUES ('123', '元尊', '元尊', 'http://localhost:3000/uploads/upload_c38643ae93fe5959f6075e34cf45dfbc.png', 'http://localhost:3000/uploads/upload_c38643ae93fe5959f6075e34cf45dfbc.png', 'http://localhost:3000/uploads/upload_c38643ae93fe5959f6075e34cf45dfbc.png', '50', '50300', '50500', '元尊', '1', '25', '0');
INSERT INTO `recommend` VALUES ('124', '亚人', '亚人', 'http://localhost:3000/uploads/upload_7a8d3c3541c00dc5764e408c0e6e2c7b.png', 'http://localhost:3000/uploads/upload_7a8d3c3541c00dc5764e408c0e6e2c7b.png', 'http://localhost:3000/uploads/upload_7a8d3c3541c00dc5764e408c0e6e2c7b.png', '25', '25300', '25500', '亚人', '1', '20', '0');
INSERT INTO `recommend` VALUES ('125', '大王饶命', '大王饶命', 'http://localhost:3000/uploads/upload_388afbfb1d1e6c6838e44e131ec381e5.png', 'http://localhost:3000/uploads/upload_388afbfb1d1e6c6838e44e131ec381e5.png', 'http://localhost:3000/uploads/upload_388afbfb1d1e6c6838e44e131ec381e5.png', '40', '40300', '40500', '大王饶命', '1', '20', '0');
INSERT INTO `recommend` VALUES ('126', '完美世界', '完美世界', 'http://localhost:3000/uploads/upload_5df4e7fe42c5f8ed61f523eae5f639e1.png', 'http://localhost:3000/uploads/upload_5df4e7fe42c5f8ed61f523eae5f639e1.png', 'http://localhost:3000/uploads/upload_5df4e7fe42c5f8ed61f523eae5f639e1.png', '45', '45300', '45500', '完美世界', '1', '25', '0');
INSERT INTO `recommend` VALUES ('127', '刃牙', '刃牙', 'http://localhost:3000/uploads/upload_c94c82ecec977bfa20b739bd6dcf5948.png', 'http://localhost:3000/uploads/upload_c94c82ecec977bfa20b739bd6dcf5948.png', 'http://localhost:3000/uploads/upload_c94c82ecec977bfa20b739bd6dcf5948.png', '55', '55300', '55500', '刃牙', '1', '30', '0');
INSERT INTO `recommend` VALUES ('128', '明日之丈', '明日之丈', 'http://localhost:3000/uploads/upload_ca89effc51b84512b13e5596e166e26a.png', 'http://localhost:3000/uploads/upload_ca89effc51b84512b13e5596e166e26a.png', 'http://localhost:3000/uploads/upload_ca89effc51b84512b13e5596e166e26a.png', '45', '45300', '45500', '明日之丈', '1', '25', '0');
INSERT INTO `recommend` VALUES ('129', '全职猎人', '全职猎人', 'http://localhost:3000/uploads/upload_9571f055fba1a0c71ecdbcb678353597.png', 'http://localhost:3000/uploads/upload_9571f055fba1a0c71ecdbcb678353597.png', 'http://localhost:3000/uploads/upload_9571f055fba1a0c71ecdbcb678353597.png', '45', '45300', '45500', '全职猎人', '1', '20', '0');
INSERT INTO `recommend` VALUES ('130', '黑执事', '黑执事', 'http://localhost:3000/uploads/upload_0a739cfe54d354f81377974febf3f61f.png', 'http://localhost:3000/uploads/upload_0a739cfe54d354f81377974febf3f61f.png', 'http://localhost:3000/uploads/upload_0a739cfe54d354f81377974febf3f61f.png', '40', '40300', '40500', '黑执事', '1', '25', '0');
INSERT INTO `recommend` VALUES ('131', '网球王子', '网球王子', 'http://localhost:3000/uploads/upload_aee8dccd96ebfbf7423c35501dbd45d9.png', 'http://localhost:3000/uploads/upload_aee8dccd96ebfbf7423c35501dbd45d9.png', 'http://localhost:3000/uploads/upload_aee8dccd96ebfbf7423c35501dbd45d9.png', '45', '45300', '45500', '网球王子', '1', '15', '0');
INSERT INTO `recommend` VALUES ('133', '鬼灭之刃', '鬼灭之刃', 'http://localhost:3000/uploads/upload_8a4b7a2f7aa376ba2fb894273265df98.png', 'http://localhost:3000/uploads/upload_8a4b7a2f7aa376ba2fb894273265df98.png', 'http://localhost:3000/uploads/upload_8a4b7a2f7aa376ba2fb894273265df98.png', '45', '45300', '45500', '鬼灭之刃', '1', '20', '0');
INSERT INTO `recommend` VALUES ('134', '终末的女武神', '终末的女武神', 'http://localhost:3000/uploads/upload_9aab15d765b1812cb470afc38b23537e.png', 'http://localhost:3000/uploads/upload_9aab15d765b1812cb470afc38b23537e.png', 'http://localhost:3000/uploads/upload_9aab15d765b1812cb470afc38b23537e.png', '40', '40300', '40500', '终末的女武神', '1', '10', '0');
INSERT INTO `recommend` VALUES ('135', '变形金刚', '变形金刚', 'http://localhost:3000/uploads/upload_a53a49c03b99327f67ea35af7b71b9e7.png', 'http://localhost:3000/uploads/upload_a53a49c03b99327f67ea35af7b71b9e7.png', 'http://localhost:3000/uploads/upload_a53a49c03b99327f67ea35af7b71b9e7.png', '43', '43300', '43500', '变形金刚', '1', '12', '0');
INSERT INTO `recommend` VALUES ('136', '斩服少女', '斩服少女', 'http://localhost:3000/uploads/upload_f5514a146626fe5602f838ab0f04b2da.png', 'http://localhost:3000/uploads/upload_f5514a146626fe5602f838ab0f04b2da.png', 'http://localhost:3000/uploads/upload_f5514a146626fe5602f838ab0f04b2da.png', '45', '45300', '45500', '斩服少女', '1', '10', '0');
INSERT INTO `recommend` VALUES ('137', '圣斗士星矢', '圣斗士星矢', 'http://localhost:3000/uploads/upload_aca6f9ee709070edb37df45322d84719.png', 'http://localhost:3000/uploads/upload_aca6f9ee709070edb37df45322d84719.png', 'http://localhost:3000/uploads/upload_aca6f9ee709070edb37df45322d84719.png', '45', '45300', '45500', '圣斗士星矢', '1', '10', '0');
INSERT INTO `recommend` VALUES ('138', '全职高手', '全职高手', 'http://localhost:3000/uploads/upload_27a612be1a8b35b8e23a710c2aeacd73.png', 'http://localhost:3000/uploads/upload_27a612be1a8b35b8e23a710c2aeacd73.png', 'http://localhost:3000/uploads/upload_27a612be1a8b35b8e23a710c2aeacd73.png', '35', '35300', '35500', '全职高手', '1', '12', '0');
INSERT INTO `recommend` VALUES ('210', '只有我不在的街道', '只有我不在的街道', 'http://localhost:3000/uploads/upload_0e39028667f8b71235db06ce6ee38e2a.png', 'http://localhost:3000/uploads/upload_0e39028667f8b71235db06ce6ee38e2a.png', 'http://localhost:3000/uploads/upload_0e39028667f8b71235db06ce6ee38e2a.png', '35', '35300', '35500', '只有我不在的街道', '2', '20', '0');
INSERT INTO `recommend` VALUES ('211', '冰菓', '冰菓', 'http://localhost:3000/uploads/upload_fc1b9151e8ed00844abab1daa2f17f5d.png', 'http://localhost:3000/uploads/upload_fc1b9151e8ed00844abab1daa2f17f5d.png', 'http://localhost:3000/uploads/upload_fc1b9151e8ed00844abab1daa2f17f5d.png', '45', '45300', '45500', '冰菓', '2', '10', '0');
INSERT INTO `recommend` VALUES ('212', '红辣椒', '红辣椒', 'http://localhost:3000/uploads/upload_d99a2a5c41d079e8e20c95dea82987c9.png', 'http://localhost:3000/uploads/upload_d99a2a5c41d079e8e20c95dea82987c9.png', 'http://localhost:3000/uploads/upload_d99a2a5c41d079e8e20c95dea82987c9.png', '40', '40300', '40500', '红辣椒', '2', '10', '0');
INSERT INTO `recommend` VALUES ('213', '黑执事', '黑执事', 'http://localhost:3000/uploads/upload_19d5666042b4d5628bf26794f0167624.png', 'http://localhost:3000/uploads/upload_19d5666042b4d5628bf26794f0167624.png', 'http://localhost:3000/uploads/upload_19d5666042b4d5628bf26794f0167624.png', '40', '40300', '40500', '黑执事', '2', '30', '0');
INSERT INTO `recommend` VALUES ('214', '亚人', '亚人', 'http://localhost:3000/uploads/upload_744be25c631ad1ab703e4fdf4539f30a.png', 'http://localhost:3000/uploads/upload_744be25c631ad1ab703e4fdf4539f30a.png', 'http://localhost:3000/uploads/upload_744be25c631ad1ab703e4fdf4539f30a.png', '50', '50300', '50500', '亚人', '2', '24', '0');
INSERT INTO `recommend` VALUES ('215', '夏洛特', '夏洛特', 'http://localhost:3000/uploads/upload_91c4f1125e5df61274203613a8cc086c.png', 'http://localhost:3000/uploads/upload_91c4f1125e5df61274203613a8cc086c.png', 'http://localhost:3000/uploads/upload_91c4f1125e5df61274203613a8cc086c.png', '20', '20300', '20500', '夏洛特', '2', '10', '0');
INSERT INTO `recommend` VALUES ('216', '怪化猫', '怪化猫', 'http://localhost:3000/uploads/upload_854800a6a27bfe0441ebd645b4c44d52.png', 'http://localhost:3000/uploads/upload_854800a6a27bfe0441ebd645b4c44d52.png', 'http://localhost:3000/uploads/upload_854800a6a27bfe0441ebd645b4c44d52.png', '20', '20300', '20500', '怪化猫', '2', '30', '0');
INSERT INTO `recommend` VALUES ('217', '虫师', '虫师', 'http://localhost:3000/uploads/upload_271763e03babf9382441803a2f3cea02.png', 'http://localhost:3000/uploads/upload_271763e03babf9382441803a2f3cea02.png', 'http://localhost:3000/uploads/upload_271763e03babf9382441803a2f3cea02.png', '35', '35300', '35500', '虫师', '2', '20', '0');
INSERT INTO `recommend` VALUES ('218', '灵能百分百', '灵能百分百', 'http://localhost:3000/uploads/upload_19b84e9d887050f510f282dc9c03c605.png', 'http://localhost:3000/uploads/upload_19b84e9d887050f510f282dc9c03c605.png', 'http://localhost:3000/uploads/upload_19b84e9d887050f510f282dc9c03c605.png', '40', '40300', '40500', '灵能百分百', '2', '20', '0');
INSERT INTO `recommend` VALUES ('219', '地狱少女', '地狱少女', 'http://localhost:3000/uploads/upload_ad97b973ed77164f06305bc82e1e546e.png', 'http://localhost:3000/uploads/upload_ad97b973ed77164f06305bc82e1e546e.png', 'http://localhost:3000/uploads/upload_ad97b973ed77164f06305bc82e1e546e.png', '40', '40300', '40500', '地狱少女', '2', '10', '0');
INSERT INTO `recommend` VALUES ('220', '约定的梦幻岛', '约定的梦幻岛', 'http://localhost:3000/uploads/upload_0ffef2424891f0e266c3aa5224e2348e.png', 'http://localhost:3000/uploads/upload_0ffef2424891f0e266c3aa5224e2348e.png', 'http://localhost:3000/uploads/upload_0ffef2424891f0e266c3aa5224e2348e.png', '45', '45300', '45500', '约定的梦幻岛', '2', '20', '0');
INSERT INTO `recommend` VALUES ('310', '快把我哥带走', '快把我哥带走', 'http://localhost:3000/uploads/upload_9dd3326c76cd06cb3a364d7839fc4c8e.png', 'http://localhost:3000/uploads/upload_9dd3326c76cd06cb3a364d7839fc4c8e.png', 'http://localhost:3000/uploads/upload_9dd3326c76cd06cb3a364d7839fc4c8e.png', '52', '52300', '52500', '快把我哥带走', '3', '20', '0');
INSERT INTO `recommend` VALUES ('311', '男子高中生的日常', '男子高中生的日常', 'http://localhost:3000/uploads/upload_716e08786a4431e71bb8731ad5ceb6fe.png', 'http://localhost:3000/uploads/upload_716e08786a4431e71bb8731ad5ceb6fe.png', 'http://localhost:3000/uploads/upload_716e08786a4431e71bb8731ad5ceb6fe.png', '20', '20300', '20500', '男子高中生的日常', '3', '10', '0');
INSERT INTO `recommend` VALUES ('312', '我家大师兄脑子有坑', '我家大师兄脑子有坑', 'http://localhost:3000/uploads/upload_6155fc9a4bcfa56371d36c0588634628.png', 'http://localhost:3000/uploads/upload_6155fc9a4bcfa56371d36c0588634628.png', 'http://localhost:3000/uploads/upload_6155fc9a4bcfa56371d36c0588634628.png', '35', '35300', '35500', '我家大师兄脑子有坑', '3', '20', '0');
INSERT INTO `recommend` VALUES ('313', '在下坂本有何贵干', '在下坂本有何贵干', 'http://localhost:3000/uploads/upload_14aa9567b3b03e5176cb7b61bf988f5d.png', 'http://localhost:3000/uploads/upload_14aa9567b3b03e5176cb7b61bf988f5d.png', 'http://localhost:3000/uploads/upload_14aa9567b3b03e5176cb7b61bf988f5d.png', '45', '45300', '45500', '在下坂本有何贵干', '3', '20', '0');
INSERT INTO `recommend` VALUES ('314', '一人之下', '一人之下', 'http://localhost:3000/uploads/upload_8a489af11185548ecabae3cb9ab4ed53.png', 'http://localhost:3000/uploads/upload_8a489af11185548ecabae3cb9ab4ed53.png', 'http://localhost:3000/uploads/upload_8a489af11185548ecabae3cb9ab4ed53.png', '35', '35300', '35500', '一人之下', '3', '20', '0');
INSERT INTO `recommend` VALUES ('315', '我是大哥大', '我是大哥大', 'http://localhost:3000/uploads/upload_b768818939c9d694386bd45b53df96c9.png', 'http://localhost:3000/uploads/upload_b768818939c9d694386bd45b53df96c9.png', 'http://localhost:3000/uploads/upload_b768818939c9d694386bd45b53df96c9.png', '35', '35300', '35500', '我是大哥大', '3', '10', '0');
INSERT INTO `recommend` VALUES ('316', '月刊少女野崎君', '月刊少女野崎君', 'http://localhost:3000/uploads/upload_21ccb604e04523ee711075d03ceafa66.png', 'http://localhost:3000/uploads/upload_21ccb604e04523ee711075d03ceafa66.png', 'http://localhost:3000/uploads/upload_21ccb604e04523ee711075d03ceafa66.png', '20', '20300', '20500', '月刊少女野崎君', '3', '10', '0');
INSERT INTO `recommend` VALUES ('317', '高校奇面组', '高校奇面组', 'http://localhost:3000/uploads/upload_ae6798ebe8131247cd66cdbec5d15472.png', 'http://localhost:3000/uploads/upload_ae6798ebe8131247cd66cdbec5d15472.png', 'http://localhost:3000/uploads/upload_ae6798ebe8131247cd66cdbec5d15472.png', '50', '50300', '50500', '高校奇面组', '3', '20', '0');
INSERT INTO `recommend` VALUES ('319', '打工吧魔王大人', '打工吧魔王大人', 'http://localhost:3000/uploads/upload_172465592a2a2e44170e0edf20dbe64a.png', 'http://localhost:3000/uploads/upload_172465592a2a2e44170e0edf20dbe64a.png', 'http://localhost:3000/uploads/upload_172465592a2a2e44170e0edf20dbe64a.png', '35', '35300', '35500', '打工吧魔王大人', '3', '20', '0');
INSERT INTO `recommend` VALUES ('410', '妖神记', '妖神记', 'http://localhost:3000/uploads/upload_46d28d6389fa03773d6b5377d3d9b2c2.png', 'http://localhost:3000/uploads/upload_46d28d6389fa03773d6b5377d3d9b2c2.png', 'http://localhost:3000/uploads/upload_46d28d6389fa03773d6b5377d3d9b2c2.png', '50', '50300', '50500', '妖神记', '4', '10', '0');
INSERT INTO `recommend` VALUES ('411', '大王饶命', '大王饶命', 'http://localhost:3000/uploads/upload_d5e8687449900fc863b56dc01bf8cea9.png', 'http://localhost:3000/uploads/upload_d5e8687449900fc863b56dc01bf8cea9.png', 'http://localhost:3000/uploads/upload_d5e8687449900fc863b56dc01bf8cea9.png', '40', '40300', '40500', '大王饶命', '4', '20', '0');
INSERT INTO `recommend` VALUES ('412', '完美世界', '完美世界', 'http://localhost:3000/uploads/upload_ad1351d2710945f374862152ab938971.png', 'http://localhost:3000/uploads/upload_ad1351d2710945f374862152ab938971.png', 'http://localhost:3000/uploads/upload_ad1351d2710945f374862152ab938971.png', '40', '40300', '40500', '完美世界', '4', '20', '0');
INSERT INTO `recommend` VALUES ('413', '完美世界', '修真聊天群', 'http://localhost:3000/uploads/upload_e60452e42b923c2d9e479207f7010deb.png', 'http://localhost:3000/uploads/upload_e60452e42b923c2d9e479207f7010deb.png', 'http://localhost:3000/uploads/upload_e60452e42b923c2d9e479207f7010deb.png', '35', '35300', '35500', '完美世界', '4', '20', '0');
INSERT INTO `recommend` VALUES ('510', '地狱少女', '地狱少女', 'http://localhost:3000/uploads/upload_432518cd23a6bf09ecc0521a92b685e2.png', 'http://localhost:3000/uploads/upload_432518cd23a6bf09ecc0521a92b685e2.png', 'http://localhost:3000/uploads/upload_432518cd23a6bf09ecc0521a92b685e2.png', '25', '25300', '25500', '地狱少女', '5', '13', '0');
INSERT INTO `recommend` VALUES ('511', '会长大人', '会长大人', 'http://localhost:3000/uploads/upload_ab7327d8b24d36d73590c18c474e415f.png', 'http://localhost:3000/uploads/upload_ab7327d8b24d36d73590c18c474e415f.png', 'http://localhost:3000/uploads/upload_ab7327d8b24d36d73590c18c474e415f.png', '30', '30300', '30500', '会长大人', '5', '10', '0');
INSERT INTO `recommend` VALUES ('512', '四月是你的谎言', '四月是你的谎言', 'http://localhost:3000/uploads/upload_6b17143c87588700ad4ebedded0ae9bb.png', 'http://localhost:3000/uploads/upload_6b17143c87588700ad4ebedded0ae9bb.png', 'http://localhost:3000/uploads/upload_6b17143c87588700ad4ebedded0ae9bb.png', '60', '60300', '60500', '四月是你的谎言', '5', '20', '0');
INSERT INTO `recommend` VALUES ('513', '男子高中生的日常', '男子高中生的日常', 'http://localhost:3000/uploads/upload_9a1252f7a4d6874f1a2d0efc1d8dc1ce.png', 'http://localhost:3000/uploads/upload_9a1252f7a4d6874f1a2d0efc1d8dc1ce.png', 'http://localhost:3000/uploads/upload_9a1252f7a4d6874f1a2d0efc1d8dc1ce.png', '50', '50300', '50500', '男子高中生的日常', '5', '10', '0');
INSERT INTO `recommend` VALUES ('514', '樱兰高校男公关部', '樱兰高校男公关部', 'http://localhost:3000/uploads/upload_d688fac4d99f70515c71bdc6b4a00312.png', 'http://localhost:3000/uploads/upload_d688fac4d99f70515c71bdc6b4a00312.png', 'http://localhost:3000/uploads/upload_d688fac4d99f70515c71bdc6b4a00312.png', '35', '35300', '35500', '樱兰高校男公关部', '5', '16', '0');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_sign` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('5', '13666666666', null, '13666666666', '女', '福州', '2000-01-01', '564154', '', 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('8', '15666666666', null, '15666666666', '女', '江苏昆山', '', '', '15661', 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('9', 'lzj', 'a163a36c731d1ac664841b6d196a05e3', '18666666666', '男', '北京', '', '', 'HS', 'http://localhost:3000/avatar_uploads/upload_5a67435fbb680332a6a3aa62014f5aa2.jpg');
INSERT INTO `user_info` VALUES ('12', '13111111111', 'd43533b0994949040511bb6076624b42', null, null, '南京', null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('13', 'admin', '63814a82384f9faca8bcca0f08d86eb9', null, null, '上海', null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('14', '13111111111', null, '13111111111', null, '北京朝阳区', null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('15', '13222222222', '032cee82df5b7be8073d3be42ea48a12', null, null, '山西省太谷县', null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('16', '15034085470', null, '15034085470', null, '浙江省杭州市', null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('17', '15034085470', null, '15034085470', null, '广州', null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('18', 'piaohuo', '54e3f97cba3b17ae7c0ca7c3738f104c', '15034085470', '男', '山西太原', '2000-10-12', '买买买', '飘火', 'http://localhost:3000/avatar_uploads/upload_52bcc18e8d66ba01b832c5346ecc7a4c.jpg');
INSERT INTO `user_info` VALUES ('19', 'zcj', '2478eff0d5c60de68cca6246716769cd', null, null, '苏州', null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('20', 'yuanyuan', 'd1c935942a8ccffaebafe30dc68dbe1e', null, null, null, null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
