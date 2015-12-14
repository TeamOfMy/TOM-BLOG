/*
Navicat MySQL Data Transfer

Source Server         : 10.1.10.145
Source Server Version : 50622
Source Host           : localhost:3366
Source Database       : mf

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2015-12-14 16:32:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cates
-- ----------------------------
DROP TABLE IF EXISTS `cates`;
CREATE TABLE `cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_node` smallint(6) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `topic_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `nodes_name_index` (`name`),
  KEY `nodes_slug_index` (`slug`),
  KEY `nodes_parent_node_index` (`parent_node`),
  KEY `nodes_topic_count_index` (`topic_count`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cates
-- ----------------------------
INSERT INTO `cates` VALUES ('1', 'PHP', null, null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('2', 'Web 开发', null, null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('3', 'Mobile', null, null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('4', 'Languages', null, null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('5', '社区', null, null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('6', '分享', null, null, null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('7', 'php', 'php', '1', 'PHP（PHP: Hypertext Preprocessor的缩写，中文名：“PHP：超文本预处理器”）是一种通用开源脚本语言。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('8', 'Laravel', 'laravel', '1', 'Laravel是一套简洁、优雅的PHP Web开发框架(PHP Web Framework)。它可以让你从面条一样杂乱的代码中解脱出来；它可以帮你构建一个完美的网络APP，而且每行代码都可以简洁、富于表达力。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('9', 'Composer & Packagist', 'composer-and-packagist', '1', 'Composer[1]是PHP中用来管理依赖（dependency）关系的工具。你可以在自己的项目中声明所依赖的外部工具库（libraries），Composer会帮你安装这些依赖的库文件。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('10', '重构', 'refactoring', '1', '由于软件发展本身不可能是完美的，因此改进的过程是持续且必然的，重构的方式将作为改善软件设计的一种手段和方式，更加地拥有现实意义。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('11', '设计模式', 'design-pattern', '1', '设计模式（Design pattern）是一套被反复使用、多数人知晓的、经过分类编目的、代码设计经验的总结。使用设计模式是为了可重用代码、让代码更容易被他人理解、保证代码可靠性。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('12', 'Testing', 'testing', '1', '软件测试（英语：software testing），描述一种用来促进鉴定软件的正确性、完整性、安全性和质量的过程。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('13', '部署', 'deployment', '1', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('14', '开源项目', 'opensource-project', '1', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('15', 'MySQL', 'mysql', '2', 'MySQL是一个关系型数据库管理系统，由瑞典MySQL AB公司开发，目前属于Oracle公司。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('16', 'Database', 'database', '2', '数据库（Database）是按照数据结构来组织、存储和管理数据的仓库', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('17', 'Git', 'git', '2', 'Git是一个开源的分布式版本控制系统，用以有效、高速的处理从很小到非常大的项目版本管理。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('18', 'Linux', 'linux', '2', 'Linux是一种自由和开放源码的类Unix操作系统，存在着许多不同的Linux版本，但它们都使用了Linux内核。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('19', 'WebServer', 'web-server', '2', 'WEB服务器也称为WWW(WORLD WIDE WEB)服务器，主要功能是提供网上信息浏览服务。常见的有 Nginx, Apache..', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('20', '算法', 'algrithm', '2', '算法（Algorithm）是指解题方案的准确而完整的描述，是一系列解决问题的清晰指令，算法代表着用系统的方法描述解决问题的策略机制。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('21', '运维', 'operations', '2', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('22', '安全', 'security', '2', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('23', '云服务', 'cloud-service', '2', '云服务开发这一概念包含几种不同的开发类型 - 软件即服务(SaaS), 平台即服务(PaaS), Web服务, 按需(on—demand)计算', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('24', 'iPhone', 'iphone-development', '3', 'iPhone 开发', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('25', 'Android', 'android-development', '3', 'Android 开发', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('26', 'JavaScript', 'javascript', '4', 'JavaScript是一种基于对象和事件驱动并具有相对安全性的客户端脚本语言。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('27', 'Ruby', 'ruby', '4', 'Ruby，一种为简单快捷的面向对象编程（面向对象程序设计）而创的脚本语言', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('28', 'Python', 'python', '4', 'Python, 是一种面向对象、直译式计算机程序设计语言', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('29', 'GoLang', 'golang', '4', 'Go语言是谷歌推出的一种全新的编程语言，可以在不损失应用程序性能的情况下降低代码的复杂性。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('30', 'Erlang', 'erlang', '4', 'Erlang是一种通用的面向并发的编程语言，它由瑞典电信设备制造商爱立信所辖的CS-Lab开发，目的是创造一种可以应对大规模并发活动的编程语言和运行环境。', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('31', '公告', 'announcement', '5', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('32', '反馈', 'feedback', '5', '对于社区的优化或者 bug report , 可以在此节点下提', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('33', '社区开发', 'community-development', '5', '构建此社区软件的开发讨论节点', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('34', '线下聚会', 'gathering', '5', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('35', '健康', 'health', '6', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('36', '工具', 'toolings', '6', '使用工具, 是人类文明的标志', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('37', '其他', 'other-share', '6', '抱歉, 如果你分享的话题不属于其他节点的话, 只能选择这里咯. ', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('38', '书籍', 'book-share', '6', '书籍是知识载体, 让我们一起站在巨人的肩膀上. ', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('39', '求职', 'request-a-job', '6', '介绍下你自己, 让大家帮你找到一份好的工作', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('40', '招聘', 'hire', '6', '这里有高质量的 PHPer, 记得认真填写你的需求, 薪资待遇是必须写的哦.', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('41', '创业', 'start-up', '6', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cates` VALUES ('42', '移民', 'immigration', '6', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for meu_albummeta
-- ----------------------------
DROP TABLE IF EXISTS `meu_albummeta`;
CREATE TABLE `meu_albummeta` (
  `ameta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`ameta_id`),
  KEY `album_id` (`album_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_albummeta
-- ----------------------------

-- ----------------------------
-- Table structure for meu_albums
-- ----------------------------
DROP TABLE IF EXISTS `meu_albums`;
CREATE TABLE `meu_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `cate_id` bigint(4) unsigned NOT NULL DEFAULT '0',
  `cover_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cover_ext` varchar(20) DEFAULT NULL,
  `comments_num` int(11) unsigned NOT NULL DEFAULT '0',
  `photos_num` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `up_time` int(11) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) DEFAULT NULL,
  `priv_type` tinyint(1) NOT NULL DEFAULT '0',
  `priv_pass` varchar(100) DEFAULT NULL,
  `priv_question` varchar(255) DEFAULT NULL,
  `priv_answer` varchar(255) DEFAULT NULL,
  `desc` longtext,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `enable_comment` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cover_id` (`cover_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_albums
-- ----------------------------
INSERT INTO `meu_albums` VALUES ('1', 'me', '1', '1', null, '0', '1', '1433759793', '1433759951', '', '0', '', '', '', '一次个人证件照', '0', '1');

-- ----------------------------
-- Table structure for meu_cate
-- ----------------------------
DROP TABLE IF EXISTS `meu_cate`;
CREATE TABLE `meu_cate` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `par_id` int(4) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `cate_path` varchar(255) DEFAULT NULL,
  `sort` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `par_id` (`par_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_cate
-- ----------------------------
INSERT INTO `meu_cate` VALUES ('1', '0', '人物', ',1,', '100');

-- ----------------------------
-- Table structure for meu_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `meu_commentmeta`;
CREATE TABLE `meu_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for meu_comments
-- ----------------------------
DROP TABLE IF EXISTS `meu_comments`;
CREATE TABLE `meu_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `ref_id` bigint(20) unsigned NOT NULL,
  `quote_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `reply_author` varchar(100) DEFAULT NULL,
  `author_ip` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ref_id` (`ref_id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_comments
-- ----------------------------
INSERT INTO `meu_comments` VALUES ('1', '2', '1', '0', 'lwl@outlook.com', 'admin', null, '192.168.236.1', 'sfsdfsdf', '0', '1435075404', '1');
INSERT INTO `meu_comments` VALUES ('2', '2', '1', '0', 'lwl@outlook.com', 'admin', null, '192.168.236.1', '&lt;script&gt;alert(22)&lt;/script&gt;', '0', '1435075421', '1');
INSERT INTO `meu_comments` VALUES ('3', '2', '1', '0', 'lwl@outlook.com', 'admin', 'admin', '192.168.236.1', 'sssssssssss', '2', '1435075429', '1');
INSERT INTO `meu_comments` VALUES ('4', '2', '1', '0', 'lwl@outlook.com', 'admin', 'admin', '192.168.236.1', 'ssssssssssssss', '2', '1435075434', '1');
INSERT INTO `meu_comments` VALUES ('5', '2', '1', '0', 'lwl@outlook.com', 'admin', 'admin', '192.168.236.1', 'ssssssssssss', '2', '1435075439', '1');

-- ----------------------------
-- Table structure for meu_nav
-- ----------------------------
DROP TABLE IF EXISTS `meu_nav`;
CREATE TABLE `meu_nav` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `sort` smallint(4) NOT NULL DEFAULT '100',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_nav
-- ----------------------------
INSERT INTO `meu_nav` VALUES ('1', '0', '首页', 'default', '100', '1');
INSERT INTO `meu_nav` VALUES ('2', '0', '标签', 'tags', '100', '1');
INSERT INTO `meu_nav` VALUES ('3', '0', '分类', 'category', '100', '1');

-- ----------------------------
-- Table structure for meu_photometa
-- ----------------------------
DROP TABLE IF EXISTS `meu_photometa`;
CREATE TABLE `meu_photometa` (
  `pmeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`pmeta_id`),
  KEY `photo_id` (`photo_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_photometa
-- ----------------------------

-- ----------------------------
-- Table structure for meu_photos
-- ----------------------------
DROP TABLE IF EXISTS `meu_photos`;
CREATE TABLE `meu_photos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `hits` bigint(20) NOT NULL DEFAULT '0',
  `comments_num` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `taken_time` int(11) NOT NULL DEFAULT '0',
  `taken_y` smallint(4) NOT NULL DEFAULT '0',
  `taken_m` tinyint(2) NOT NULL DEFAULT '0',
  `taken_d` tinyint(2) NOT NULL DEFAULT '0',
  `create_y` smallint(4) NOT NULL DEFAULT '0',
  `create_m` tinyint(2) NOT NULL DEFAULT '0',
  `create_d` tinyint(2) NOT NULL DEFAULT '0',
  `desc` longtext,
  `exif` longtext,
  `tags` varchar(255) DEFAULT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_photos
-- ----------------------------
INSERT INTO `meu_photos` VALUES ('1', '1', '1', 'DSC_0351', 'data/t/0000/01/14337599329608.jpg', 'data/0000/01/14337599329608.jpg', '3872', '2592', '7', '5', '1433759951', '0', '0', '0', '0', '2015', '6', '8', null, null, null, '1', '0', '0');

-- ----------------------------
-- Table structure for meu_plugins
-- ----------------------------
DROP TABLE IF EXISTS `meu_plugins`;
CREATE TABLE `meu_plugins` (
  `plugin_id` varchar(32) NOT NULL,
  `plugin_name` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `plugin_config` longtext,
  `local_ver` varchar(20) NOT NULL,
  `remote_ver` varchar(20) DEFAULT NULL,
  `available` enum('true','false') NOT NULL DEFAULT 'false',
  `author_name` varchar(100) DEFAULT NULL,
  `author_url` varchar(100) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`plugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_plugins
-- ----------------------------
INSERT INTO `meu_plugins` VALUES ('copyimg', '拷贝图片地址', '一键拷贝图片地址，支持批量复制！', 'a:2:{s:3:\"tpl\";s:49:\"<div align=\"center\"><img src=\"{imgpath}\" /></div>\";s:5:\"split\";s:6:\"<br />\";}', '1.1', null, 'true', 'Meiu Studio', 'http://www.meiu.cn', 'lingter@gmail.com');

-- ----------------------------
-- Table structure for meu_setting
-- ----------------------------
DROP TABLE IF EXISTS `meu_setting`;
CREATE TABLE `meu_setting` (
  `name` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_setting
-- ----------------------------
INSERT INTO `meu_setting` VALUES ('system', 'a:11:{s:13:\"current_theme\";s:5:\"sense\";s:14:\"enable_comment\";b:1;s:7:\"version\";s:5:\"2.2.0\";s:14:\"installed_time\";i:1433759330;s:12:\"gravatar_url\";s:63:\"http://www.gravatar.com/avatar/{idstring}?rating=G&size=48&d=mm\";s:18:\"enable_auto_update\";b:1;s:17:\"show_process_info\";b:0;s:8:\"language\";s:5:\"zh_cn\";s:8:\"timezone\";i:8;s:22:\"enable_comment_captcha\";b:1;s:13:\"comment_audit\";i:0;}');
INSERT INTO `meu_setting` VALUES ('site', 'a:8:{s:5:\"title\";s:12:\"我的相册\";s:8:\"keywords\";s:33:\"相册,我的相册,分享,快乐\";s:11:\"description\";s:90:\"我的相册是使用美优相册管理系统架设的网络相册！相册开源免费！\";s:3:\"url\";s:21:\"http://pic.local.com/\";s:5:\"email\";s:15:\"lwl@outlook.com\";s:6:\"footer\";s:0:\"\";s:4:\"logo\";s:0:\"\";s:11:\"share_title\";s:31:\"分享张很赞的照片:{name}\";}');
INSERT INTO `meu_setting` VALUES ('upload', 'a:12:{s:17:\"enable_pre_resize\";b:0;s:10:\"allow_size\";s:2:\"2M\";s:12:\"resize_width\";s:4:\"1600\";s:13:\"resize_height\";s:4:\"1200\";s:14:\"resize_quality\";s:3:\"100\";s:18:\"enable_cut_big_pic\";b:0;s:9:\"max_width\";i:1600;s:10:\"max_height\";i:1200;s:16:\"enable_thumb_cut\";b:0;s:11:\"thumb_width\";i:180;s:12:\"thumb_height\";i:180;s:15:\"use_old_imgname\";b:0;}');
INSERT INTO `meu_setting` VALUES ('watermark', 'a:9:{s:4:\"type\";s:1:\"0\";s:16:\"water_mark_image\";s:0:\"\";s:18:\"water_mark_opacity\";s:1:\"0\";s:14:\"water_mark_pos\";s:1:\"5\";s:17:\"water_mark_string\";s:0:\"\";s:19:\"water_mark_fontsize\";s:2:\"14\";s:16:\"water_mark_color\";s:7:\"#999999\";s:15:\"water_mark_font\";s:0:\"\";s:16:\"water_mark_angle\";s:1:\"0\";}');
INSERT INTO `meu_setting` VALUES ('theme_default', 'a:19:{s:5:\"style\";s:4:\"blue\";s:6:\"bodybg\";s:7:\"#F4F4F4\";s:10:\"link_color\";s:7:\"#1d64ad\";s:16:\"link_hover_color\";s:7:\"#ffffff\";s:9:\"header_bg\";s:7:\"#003366\";s:9:\"header_h1\";s:7:\"#ffcc00\";s:12:\"headerbottom\";s:7:\"#F4F4F4\";s:10:\"settingtxt\";s:7:\"#ffffff\";s:9:\"tablinkbg\";s:7:\"#1A4F85\";s:7:\"tablink\";s:7:\"#ffffff\";s:14:\"tablinkcurrent\";s:7:\"#009900\";s:12:\"tablinkhover\";s:7:\"#ffffff\";s:14:\"tablinkhoverbg\";s:7:\"#1D64AD\";s:11:\"tablinkfrom\";s:7:\"#FEFEFE\";s:9:\"tablinkto\";s:7:\"#F4F4F4\";s:10:\"alertcolor\";s:7:\"#ffb2b2\";s:7:\"titlebg\";s:7:\"#edf3fe\";s:10:\"titlelabel\";s:7:\"#003366\";s:9:\"boxborder\";s:7:\"#003366\";}');
INSERT INTO `meu_setting` VALUES ('theme_sense', 'a:5:{s:16:\"showindexcomment\";s:1:\"0\";s:12:\"showlistbtns\";s:1:\"1\";s:15:\"showalbumsearch\";s:1:\"1\";s:15:\"showphotosearch\";s:1:\"1\";s:11:\"showjiathis\";s:1:\"1\";}');
INSERT INTO `meu_setting` VALUES ('display', 'a:4:{s:13:\"album_pageset\";i:12;s:13:\"photo_pageset\";i:12;s:18:\"album_sort_default\";s:7:\"ct_desc\";s:18:\"photo_sort_default\";s:7:\"tu_desc\";}');

-- ----------------------------
-- Table structure for meu_tag_rel
-- ----------------------------
DROP TABLE IF EXISTS `meu_tag_rel`;
CREATE TABLE `meu_tag_rel` (
  `tag_id` bigint(20) unsigned NOT NULL,
  `rel_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`tag_id`,`rel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_tag_rel
-- ----------------------------

-- ----------------------------
-- Table structure for meu_tags
-- ----------------------------
DROP TABLE IF EXISTS `meu_tags`;
CREATE TABLE `meu_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(100) NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`name`),
  KEY `taglist` (`type`,`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_tags
-- ----------------------------

-- ----------------------------
-- Table structure for meu_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `meu_usermeta`;
CREATE TABLE `meu_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `userid` (`userid`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meu_usermeta
-- ----------------------------
INSERT INTO `meu_usermeta` VALUES ('1', '1', 'email', 'lwl@outlook.com');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `is_excellent` tinyint(1) NOT NULL DEFAULT '0',
  `is_wiki` tinyint(1) NOT NULL DEFAULT '0',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `favorite_count` int(11) NOT NULL DEFAULT '0',
  `vote_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_user_id` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order` int(11) NOT NULL DEFAULT '0',
  `body_original` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `topics_title_index` (`title`),
  KEY `topics_user_id_index` (`user_id`),
  KEY `topics_node_id_index` (`cate_id`),
  KEY `topics_is_excellent_index` (`is_excellent`),
  KEY `topics_is_wiki_index` (`is_wiki`),
  KEY `topics_is_blocked_index` (`is_blocked`),
  KEY `topics_reply_count_index` (`reply_count`),
  KEY `topics_view_count_index` (`view_count`),
  KEY `topics_favorite_count_index` (`favorite_count`),
  KEY `topics_vote_count_index` (`vote_count`),
  KEY `topics_last_reply_user_id_index` (`last_reply_user_id`),
  KEY `topics_order_index` (`order`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'Totam laboriOSam labore aut modi ea nobis enim.', 'Vel ullam quibusdam quis quas. Necessitatibus necessitatibus sunt enim omnis. Incidunt neque rerum perferendis numquam occaecati cum impedit. Eveniet nobis voluptas enim asperiores illo laudantium.', '12', '36', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('2', 'Perspiciatis consequuntur iure et id.', 'At aperiam laudantium ipsa enim ut nam ipsam. Tempore et quod accusamus eligendi corporis esse.', '24', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('3', 'Qui sit nam explicabo alias repellat laudantium iste.', 'Voluptas unde consectetur suscipit quisquam. Aut quia laudantium voluptatem iste iusto laudantium maiores magni. Asperiores debitis est cumque qui. Magni necessitatibus velit neque deleniti.', '20', '15', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('4', 'Illo nobis adipisci fugiat rerum.', 'Esse voluptatem deleniti perspiciatis nihil velit. Molestiae aliquam necessitatibus dolor culpa ea facere. Molestiae beatae in velit aut est. Aut dignissimos ducimus sed et.', '14', '40', '0', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('5', 'Quibusdam voluptate autem consectetur officiis id veritatis.', 'Aliquid molestias ad non et unde. A ratione impedit maiores expedita temporibus. Eos quod atque a ea facere. Est quis aut sequi incidunt.', '44', '16', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('6', 'Et aut ullam incidunt consequatur consequatur omnis ab.', 'Ut debitis consequatur in consequatur. Consequatur nemo reprehenderit harum eaque molestiae sint voluptatem voluptatem.', '8', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('7', 'Omnis accusantium non voluptates nostrum provident minus.', 'Labore iure et ducimus veniam ducimus. Dolorem non expedita alias quia.\nQui optio aut ad ut quos. Est sunt occaecati enim quia quisquam velit voluptatem.', '31', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('8', 'Atque et quia ullam.', 'Facilis laborum voluptatem itaque rem. Eaque repellendus reprehenderit eligendi non eligendi dolor.', '18', '39', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('9', 'Cupiditate nesciunt fugiat est mINIma repellendus ullam.', 'Explicabo quo et dolor aut eos vitae qui distinctio. Culpa minus quam in et suscipit voluptatem. Non possimus rerum voluptas illum earum amet. Non at voluptatum illum iste esse aperiam.', '19', '33', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('10', 'Veritatis dolore doloribus nesciunt debitis beatae harum dolorum.', 'Qui consectetur sunt hic placeat possimus. Explicabo adipisci at reiciendis aliquid ipsam.', '26', '8', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('11', 'Qui nemo et laboriOSam.', 'Repellat eum rerum vero velit corporis repudiandae. Eos aspernatur vitae accusantium non et. Ipsa illo id eos ad. Explicabo adipisci nam exercitationem provident laudantium sunt.', '23', '41', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('12', 'Dignissimos saepe et ut velit.', 'Dicta qui necessitatibus deleniti perspiciatis. Id sint aspernatur architecto perferendis est odio incidunt. Quasi sunt iste vel quasi porro temporibus.', '41', '5', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('13', 'Vitae ut ea tenetur perspiciatis.', 'Consectetur debitis numquam dolore voluptatibus in. Libero optio sunt alias blanditiis nihil omnis assumenda expedita. Voluptas voluptatem sunt ea fugit error placeat.', '21', '12', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('14', 'Dolores est velit assumenda.', 'Nobis facere eveniet qui molestiae voluptatem ducimus voluptates sunt. Quis nulla sit quis incidunt necessitatibus. Illo sed veniam fugit eligendi minus et facere. Id et vel aliquid.', '35', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('15', 'Eum repellat et ipsa non officia consectetur.', 'Et aliquam non et asperiores quibusdam voluptas voluptatem. Est sit soluta quo est. Corrupti qui optio quae sunt in aut aliquam. Esse nemo molestiae ipsum ut a sunt.', '24', '12', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('16', 'Est sit laboriOSam atque asperiores et tenetur.', 'Iste similique autem sapiente impedit accusamus. Ducimus earum soluta odit. Qui at qui impedit doloribus. Velit quasi similique magni quidem.', '5', '20', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('17', 'Repellat aut voluptatem natus dicta quas eius corporis.', 'Officiis sunt libero et temporibus recusandae. Deleniti officia eum adipisci delectus sunt. Sequi ipsa voluptas quo est.', '33', '36', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('18', 'MINIma velit aut quam ut voluptatem sit odio.', 'Nemo impedit et odio. Voluptas laudantium cupiditate sapiente voluptatem quis. Recusandae voluptas numquam ipsum.', '23', '35', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('19', 'Officia ut molestias maiores dolor.', 'Temporibus accusantium illo labore laborum natus similique eos. Atque ipsa unde cumque nulla qui repellendus dolores vel. Sed ipsa velit corrupti placeat neque.', '20', '36', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('20', 'Ipsam omnis expedita sed.', 'Ipsa totam aliquid tenetur dolores vero. Voluptas est voluptatem incidunt consequatur. Suscipit at blanditiis quia repudiandae rerum quia iusto similique. Et ipsam at vel placeat ea.', '17', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('21', 'Modi odit distinctio id qui cum corporis non.', 'Dignissimos dignissimos voluptate sunt id sapiente. Saepe consequatur aut consequatur id. Ullam enim omnis animi nihil.', '19', '9', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', null, null);
INSERT INTO `posts` VALUES ('22', 'Sit voluptatem mINIma fugiat velit voluptatem.', 'Aut debitis facilis iusto dicta consequatur. Non cupiditate consectetur eius repellendus. Sed hic accusamus perferendis neque nulla et porro.', '35', '27', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('23', 'Et deleniti quis aliquid et quia harum.', 'Corrupti aut delectus quo accusamus eaque. Rerum a sint qui laudantium explicabo accusantium. Voluptates ut earum odio provident quos distinctio. Mollitia possimus laboriosam voluptates.', '39', '8', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('24', 'ErRuby on Rails molestiae odio autem beatae voluptatum corrupti.', 'Cupiditate ratione sit enim aliquam ut. Sint cupiditate laborum ad nam. Debitis labore ducimus dolorem sunt rerum harum. Numquam aliquid vel assumenda hic ullam.', '50', '40', '0', '0', '0', '0', '4', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('25', 'Porro enim placeat nesciunt assumenda eos.', 'Quisquam delectus aut dolore ea labore. Recusandae consectetur similique nam iste. In est dolor quaerat adipisci non provident.', '43', '9', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('26', 'Consequatur quis asperiores occaecati ex ab hic.', 'Quibusdam at rerum qui voluptatibus omnis. Minima nihil enim eius occaecati. Enim cumque minima ullam voluptatem voluptas sit.', '12', '35', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('27', 'FuGit aut quas dolorem amet recusandae sed perspiciatis.', 'Enim natus consequatur id sit quo iure a. Ut vitae at laboriosam non. Sed et occaecati harum ipsa enim aspernatur velit.', '36', '10', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('28', 'Ut incidunt provident alias magni tempora culpa.', 'Porro cupiditate molestiae sed necessitatibus ratione est qui. Soluta est inventore non rerum. Aut repellat vero neque vitae dignissimos qui.', '28', '39', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('29', 'Sequi et vero et atque aspernatur voluptate quis veritatis.', 'Omnis qui vel qui ipsam ducimus laudantium. Ut voluptas sit eius voluptatem. Veniam eos eligendi qui saepe ut iusto.', '12', '35', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('30', 'Repellendus qui et fugiat.', 'Excepturi perferendis aut quo pariatur est. Est maxime quia ullam eveniet. Quisquam nihil ullam ipsa sit sequi eius a.', '44', '6', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('31', 'Et earum omnis facilis quam nobis et deserunt alias.', 'Aut tempora nemo iure officiis enim aut. Ipsam vel quae beatae non aut sit. Cumque et possimus possimus. Voluptatem et voluptatem tenetur nihil.', '34', '6', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('32', 'Amet soluta omnis magni a enim modi.', 'Nesciunt facilis sint omnis consequuntur voluptates veniam eum. Et distinctio ipsum nulla. Et id voluptatem unde eos vero rerum. Facilis mollitia ducimus debitis a.', '48', '23', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('33', 'LaboriOSam molestias sed nesciunt inventore quos voluptatibus suscipit.', 'Ex non magni assumenda. At repudiandae recusandae officiis ea molestiae praesentium. Labore aut sed enim ut ea architecto.', '8', '11', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('34', 'Cumque quo ut accusantium consequatur.', 'Ut natus maiores delectus tempora impedit dolorem. At accusamus doloremque sed et quae. Voluptatem nostrum quibusdam numquam iste consequatur nostrum. Et eos et reprehenderit aperiam non.', '2', '28', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('35', 'Aspernatur nisi impedit alias nihil tempore dolor vel.', 'Fugit omnis non quia. Ex distinctio ea non perferendis quia doloribus enim. Impedit culpa et praesentium voluptas labore qui.', '48', '12', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('36', 'Ex modi a molestiae non ut.', 'Doloremque dolores et aut est occaecati. Aspernatur quas inventore aut ut.', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('37', 'Vel recusandae consequatur fuga sit est molestias.', 'Laboriosam quasi vitae necessitatibus ad modi velit quasi. Aut necessitatibus officiis quas molestiae officiis distinctio. Harum quisquam qui qui.', '12', '14', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('38', 'A omnis molestiae consequatur sit qui.', 'Aliquid ducimus ratione sapiente. Saepe voluptas consequatur sit qui vel ut quia. Sapiente rerum ut aut corrupti nam est.', '17', '36', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('39', 'Ipsa vel delectus iste dignissimos.', 'Nesciunt odio et modi et omnis. Est non voluptatum reprehenderit id reprehenderit iusto. Sed eum est quasi perspiciatis. Est omnis consequatur fugiat dolores.', '34', '16', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('40', 'Nisi fugiat consequuntur at est delectus pariatur.', 'Voluptatem quam dignissimos ut voluptatum voluptatum minus vero quas. Est doloribus cum magni. Aliquid consequatur cupiditate exercitationem vitae quis.', '23', '15', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('41', 'Sit consequatur fuga quisquam voluptatem ullam a at.', 'Est assumenda quia beatae aut. Beatae deleniti fugiat architecto sint eum libero placeat. Nobis non et eligendi hic ab non minus. Dolorum atque minus consequatur blanditiis.', '25', '37', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('42', 'Vel est quos accusamus molestias.', 'Reiciendis provident animi et minima. Saepe soluta dolorum adipisci eaque et. Voluptates hic quas vel veniam. Et architecto atque non magni dolorum aut quia.', '19', '35', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('43', 'Alias ea enim odio sed.', 'Eos et est sint assumenda. Cum rem est est maxime nesciunt rerum optio. Est omnis quia eius vel ut est totam in. Enim tenetur et quod voluptatem.', '2', '37', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('44', 'Rerum ut eius laboriOSam quis eum.', 'Sed voluptatem ut nostrum minus odio ut. Ut quo cumque quaerat eius tempore laudantium placeat. Voluptas et in deserunt sed asperiores. Ipsa a velit est et illo et.', '6', '32', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('45', 'Harum molestiae ipsum est cum.', 'A iusto quia numquam quaerat. Dolorem molestias doloribus nihil nesciunt et quae. Voluptate officiis eius in cum eos qui. Voluptatem consequuntur consectetur neque facere.', '41', '33', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('46', 'Soluta accusantium exercitationem consequatur harum.', 'Et ut est blanditiis quis cumque. Qui est ipsam magni possimus reiciendis. Ex aliquam rerum at.', '40', '32', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('47', 'Quia et nemo non reicIEndis sed iure quis.', 'Adipisci magni quidem pariatur et. Nam consectetur rerum assumenda tempora enim dicta nisi perspiciatis. Laborum quisquam porro voluptatem asperiores voluptates doloribus rerum.', '42', '18', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('48', 'Molestiae pariatur esse enim veniam dignissimos consequuntur aperiam.', 'Eveniet voluptatibus veniam reiciendis illum quibusdam tempore. Et ad sit aperiam accusamus est aliquam adipisci. Sed quidem recusandae at sequi.', '19', '9', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('49', 'Temporibus voluptas sit sed beatae quaerat ipsum consequuntur voluptas.', 'Dolores hic delectus molestiae totam. Sit non est dolores id voluptatem accusantium. Harum dolores sed et ad. Veritatis nobis impedit qui.', '11', '41', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('50', 'Praesentium itaque illum ratione quo sed non.', 'Ut vitae ipsam ut dolorum nam. Quidem perferendis recusandae sed id. Et aut ullam qui.', '48', '34', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('51', 'Eum voluptas sit qui.', 'Magni in assumenda vitae alias. Enim molestiae nihil nam deserunt non omnis. A occaecati sit reprehenderit voluptatem ipsa ea nostrum.', '42', '3', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('52', 'Itaque dolores aliquam asperiores perspiciatis sed laborum sit amet.', 'Voluptatem veritatis nam quis molestiae praesentium sit. Cumque sunt harum magni rerum. Sint ad qui fugiat aut sit.', '21', '35', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('53', 'Iure modi consequatur autem quia assumenda id.', 'Dolor doloremque recusandae aut. Ad qui aut sequi excepturi laudantium incidunt. Quisquam rerum explicabo perferendis est velit facere.', '17', '38', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('54', 'Nobis et omnis laborum aut debitis architecto et.', 'Ut ut sit ea ea. Perferendis accusamus error laborum. Voluptatibus fugit labore assumenda laboriosam nihil reprehenderit accusamus corrupti. Aut ut est est quod molestiae.', '10', '27', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('55', 'Et et ullam adipisci debitis magni occaecati est.', 'Expedita sed blanditiis quae vel dolores corrupti repudiandae maxime. Natus nesciunt tempora recusandae quam. Deleniti necessitatibus nam at voluptatem.', '50', '6', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('56', 'Porro earum aut voluptas omnis facilis aspernatur expedita vero.', 'Suscipit est quisquam architecto laboriosam. Quia dolorum praesentium corrupti aut. Aut ea eum labore omnis. Praesentium odio voluptatem ut dolorum autem nostrum.', '16', '17', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('57', 'Doloribus omnis explicabo vitae erRuby on Rails aut aut.', 'Nemo qui blanditiis sint aut sit mollitia. Quos quia quaerat corporis velit aut dolore sed. Quod praesentium ducimus officiis. Est sit sunt voluptatum placeat.', '28', '22', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('58', 'Dolor facilis quod sunt id molestias est non natus.', 'Sunt laudantium autem ullam optio delectus esse rerum. Numquam fugiat aut est ut iusto. Magnam ab illum debitis accusantium voluptate. Et enim et illum nisi quia.', '27', '32', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('59', 'Consequatur doloremque a maiores facilis sit amet provident.', 'Amet rerum ipsam aut enim. Eum repudiandae omnis corrupti ex nobis sint voluptates ut. Numquam soluta odio dolor sit quo dicta.', '8', '16', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('60', 'Quos delectus sed omnis.', 'Sit tempore voluptates recusandae pariatur beatae aut nemo. Nostrum qui dicta omnis voluptates quae. Saepe fugit nam voluptatem architecto.', '16', '2', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('61', 'Perspiciatis quis impedit ipsa.', 'Molestiae nemo est dolor dolores similique. Odio natus iste veniam nisi minus omnis beatae. Optio soluta nam voluptates earum.', '12', '15', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('62', 'In non quisquam non.', 'Enim est maiores totam voluptas quam. Dolor omnis ducimus voluptatem architecto voluptatem.', '3', '22', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('63', 'Veritatis et sit natus quos.', 'A ut atque id porro. Qui aut repellendus consequatur ut. Fugit laudantium nostrum qui asperiores soluta sed ut impedit.', '35', '9', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('64', 'Sit sed repellendus est aut.', 'Earum ut est itaque aperiam porro quia nihil. Est dolorum dolores aspernatur id. Necessitatibus doloribus at nisi incidunt quo.', '38', '17', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:39', '2015-06-10 19:39:39', '0', null, null);
INSERT INTO `posts` VALUES ('65', 'Sint accusantium aliquid atque in.', 'Voluptate et cupiditate nobis possimus doloribus. Et at non vero et maxime. Error exercitationem ipsam eaque dolores inventore. Ut qui harum animi et. Amet ut inventore sequi rerum.', '15', '23', '1', '0', '0', '0', '18', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('66', 'Est illum facilis velit dignissimos expedita sed.', 'Nemo velit doloribus qui. Praesentium molestiae sint sed.', '15', '9', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('67', 'Corporis ipsam veritatis earum quo animi sint est.', 'Laboriosam molestias quibusdam quis corporis laudantium et qui. Quam aspernatur repellat sit ut consequatur autem. Ut rerum eos dolores sit. Asperiores dolorum temporibus numquam et tenetur.', '37', '31', '1', '0', '0', '0', '9', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('68', 'Ab pariatur consequatur harum sunt sed non dolorum deleniti.', 'Reiciendis ut qui dolorem et nisi a est dolores. Est tempore iusto sapiente culpa est. Accusamus nisi exercitationem beatae consequatur rem. Quam consectetur qui odit est voluptas.', '33', '35', '1', '0', '0', '0', '4', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('69', 'In ut voluptatem ipsa eum dolores perferendis sAPIEnte vel.', 'Et eaque et reiciendis aperiam pariatur. Voluptas hic illum fuga quisquam. Eos unde omnis voluptatem et sint molestiae aliquid.', '17', '6', '1', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('70', 'Quia aut repellendus eos delectus enim inventore.', 'Voluptatem at repudiandae est ut commodi. Rerum nostrum magnam ullam officiis natus sunt sint et. Quaerat eos repellendus rerum ducimus dolor.', '26', '42', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('71', 'At architecto et vel similique.', 'Fugit dolor fugiat inventore pariatur sunt ut. Error reiciendis dolorem expedita vitae delectus. Autem quis magni nulla in minima ut. Eius dolorem quas aperiam iusto labore velit quo.', '15', '26', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('72', 'Incidunt aperiam in qui voluptates accusantium omnis et.', 'Dicta dolores voluptas illum amet eos. Qui ea corrupti exercitationem dignissimos aut quam voluptas voluptatem. Ut dolor delectus officia ut in vitae. Atque dolore debitis quisquam ipsum illo nemo.', '8', '23', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('73', 'Incidunt maiores ut omnis quibusdam exercitationem.', 'Voluptate suscipit voluptas ullam corporis est facere illo. Aut iste expedita vitae quia dolores magni molestiae iusto. Rerum maxime natus aut ullam expedita. Voluptate dolores sed perferendis.', '17', '3', '1', '0', '0', '0', '7', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('74', 'Sit itaque temporibus asperiores nulla fuGit.', 'Nostrum aut inventore corrupti in suscipit odio reprehenderit. Et aut ea deserunt voluptatem. Provident ut autem dolor doloremque quae laboriosam dolore.', '19', '16', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('75', 'Libero quia quod et sit.', 'Explicabo exercitationem at fugit sed error. Reprehenderit pariatur laudantium ad eligendi. Perspiciatis architecto ipsa doloribus adipisci deleniti in. Ab eos vel iure sunt ut ea.', '35', '6', '1', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('76', 'Laudantium ut quos atque sint odio omnis ab.', 'Accusamus accusamus molestias excepturi dolor officiis ducimus fugit. Quisquam repellendus tenetur voluptatem accusantium sunt. Officiis id qui eligendi eum deserunt et eos nobis.', '2', '10', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('77', 'Dolorem deleniti mINIma rerum incidunt.', 'Velit esse expedita commodi ad voluptatum inventore eaque tenetur. Delectus hic facilis reprehenderit voluptates. Corporis molestiae ut est iste. Modi sit atque esse aliquam.', '20', '8', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('78', 'Neque reprehenderit voluptatem nisi omnis laboriOSam sed similique.', 'Asperiores dolores inventore ea eius ipsa qui culpa. Dicta reprehenderit quaerat reiciendis perspiciatis sit. Sapiente ab dolorum quo ut facilis vel.', '44', '16', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('79', 'Tempore illum blanditiis hic qui animi corrupti delectus.', 'Earum rerum ullam nihil dolor. Atque quia voluptatem fugit itaque. Sint recusandae illo facere animi. Alias nemo recusandae cupiditate voluptatibus quidem.', '24', '8', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('80', 'Aut ut saepe fuGit beatae rem unde.', 'Quaerat magni aliquid quia aut inventore minima. Itaque consequuntur voluptatum nisi assumenda voluptatem.', '19', '14', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('81', 'Ad delectus omnis cumque placeat est nihil modi.', 'Libero error quos consequatur veniam vel omnis. Nihil quibusdam doloremque vitae maxime.', '2', '24', '1', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('82', 'Quia nisi neque inventore.', 'Sapiente atque tempora doloremque ipsum. Et quae asperiores beatae expedita. Tenetur repudiandae repudiandae possimus omnis rerum nam.', '23', '19', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('83', 'Consequatur voluptas in dignissimos expedita.', 'Ea optio molestiae perspiciatis aut eum. Sit quia aspernatur quis. Error est ducimus eaque minus.\nSunt ad velit dicta vero voluptates. Dolore et deserunt et.', '13', '4', '1', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('84', 'Distinctio ipsa quo beatae nemo saepe.', 'Velit cupiditate aspernatur et. Ratione recusandae autem optio expedita. Quidem odio praesentium optio accusantium ea id. Eaque aliquid illo provident.', '18', '17', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('85', 'Cumque quisquam voluptatem illo est quas libero.', 'Sit laborum est sed quia reprehenderit repellat illum. Ut sunt maxime et asperiores dignissimos vitae dolores. Est harum dignissimos non aut.', '22', '29', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('86', 'Sunt expedita eum eligendi nobis.', 'Autem est aspernatur cum consequatur rem. Eum voluptatem laudantium dolorum.', '35', '34', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('87', 'Quae qui voluptatibus quae qui.', 'Beatae tenetur labore iste. Itaque et accusantium et voluptas. Earum tempora ex maiores qui quis accusamus voluptas.', '37', '3', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('88', 'Eos blanditiis aut delectus nostrum soluta voluptatem.', 'Est accusantium quae ut molestias unde. Odio eum dolor voluptas quis tempora et. Eos minus ipsam quam omnis totam. Exercitationem qui nostrum error necessitatibus.', '50', '11', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('89', 'Eum vitae est totam.', 'Molestiae expedita vitae earum aliquam. Omnis voluptas rerum cumque nihil dolores. Pariatur est unde expedita rerum eaque et et necessitatibus. Sint tempore sunt alias ex.', '17', '6', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('90', 'Natus tempora necessitatibus earum sint in facere aut est.', 'Et non dolores occaecati architecto nam minus ut ipsa. Numquam voluptatem in excepturi sit.', '5', '8', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('91', 'Dolorum et magnam neque laborum quia.', 'Odio incidunt deserunt a occaecati. Et nihil voluptas corrupti ut. Velit veritatis eos aliquam.\nAut dolorem vero quod impedit aut velit nulla. Ratione et perspiciatis reprehenderit.', '17', '24', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('92', 'Dicta debitis cum nulla sit laudantium hic.', 'Et id est magni et. Repellendus cupiditate aut recusandae nostrum tenetur ut. Reprehenderit non eaque expedita recusandae expedita non esse nostrum.', '44', '40', '1', '0', '0', '0', '4', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('93', 'Et occaecati molestias libero sint provident autem.', 'Ad quos ab facilis sed perferendis esse soluta. Velit odio sapiente tenetur minus eos. Fugit est incidunt repellendus inventore eaque voluptatem et. Illum quo dolores deserunt odit ducimus voluptas.', '13', '31', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('94', 'Ipsum consequatur quaerat dolorem quia et.', 'Numquam quod distinctio est et quisquam blanditiis temporibus nemo. Et dolor iure recusandae eos. Ipsa tempora ut modi nesciunt vel. Itaque corporis et consequatur facere ut.', '49', '10', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('95', 'Soluta cum corporis quasi ipsum.', 'Facere quam error ut nihil ut consectetur voluptatem. Eum suscipit et assumenda labore praesentium culpa dignissimos. Perspiciatis accusamus aliquam rerum quidem.', '4', '10', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('96', 'Rerum possimus aliquid dolor ad porro.', 'Soluta quidem totam nobis. Id in nulla qui delectus. Voluptas assumenda quas facilis nihil quae fugiat. Sunt quia rerum dignissimos voluptas eum.', '9', '19', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('97', 'Suscipit expedita tempora laborum vel eum nesciunt sit.', 'Distinctio ullam quia ab minima. At deleniti et dolorem velit et eveniet. Architecto excepturi soluta quaerat aspernatur aut ut tempore. Officia aut commodi magnam beatae.', '45', '26', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('98', 'Voluptas suscipit reicIEndis quibusdam ipsam repudiandae.', 'Fuga debitis earum similique. Qui ut ex eaque sed velit. Unde dicta voluptates porro error. Beatae et beatae qui cupiditate.', '33', '5', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('99', 'Explicabo qui deleniti consequatur tempora amet.', 'Eligendi at omnis et similique sint vel ut. Vel vel non sunt expedita eum ut sit. Magnam nulla dolor quo ut sit id. Adipisci accusamus maxime possimus animi.', '15', '9', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('100', 'Ullam vitae ex nihil fuGit aut illo.', 'Qui ad a ullam eaque ipsam ipsa. Dolore error et quaerat facere quia vel voluptatem. Similique rerum est eos unde vero eaque. Fugiat aut illo explicabo et impedit enim voluptas.', '35', '9', '1', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('101', 'Similique nihil ratione quod quia.', 'Et ullam ut occaecati ab. Illum incidunt consequatur dolor enim nobis deleniti.\nQuasi deserunt id impedit est tempora. Consequatur qui sapiente ut qui dolore temporibus et et.', '35', '9', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('102', 'Doloribus id omnis quia accusantium quaerat quia.', 'Saepe minus assumenda aliquam laudantium accusamus voluptas. Iste voluptatem quasi suscipit est voluptatem commodi in. Laudantium quas eos est perferendis et quia.', '21', '31', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('103', 'Et quos sit est recusandae.', 'Possimus molestias itaque laborum voluptates quam earum qui. Quis cupiditate temporibus autem corrupti. Sapiente molestiae non enim accusantium.', '23', '29', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('104', 'Temporibus sed autem quis sit esse.', 'Quibusdam at non laborum. Blanditiis voluptatem libero et ipsa itaque eligendi ab. Molestiae quo voluptatem et doloremque.', '1', '15', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('105', 'Reprehenderit provident autem quia molestias possimus.', 'Ut sit quia molestias rerum cupiditate sed. Est magnam consectetur ut. Laboriosam est ipsa architecto illum omnis molestias. Neque illo quia culpa illum. Fuga sit earum placeat ut quam aut eum quasi.', '28', '19', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:40', '2015-06-10 19:39:40', '0', null, null);
INSERT INTO `posts` VALUES ('106', 'Quo labore soluta ducimus id incidunt eos suscipit.', 'Libero necessitatibus eius quia magnam. Culpa qui aut non cumque. Aliquam placeat ducimus culpa dolores. Quae est voluptatem eius quod omnis et molestias.', '17', '6', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('107', 'Consequatur et possimus tempore qui.', 'Ducimus non autem eum qui blanditiis quae. Est est ut magni iusto. Vel delectus voluptatum saepe ea possimus est ratione. Quam voluptas fugiat voluptatem ullam laudantium laboriosam sed itaque.', '31', '42', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('108', 'Officiis aut eos voluptas voluptas aspernatur est.', 'Sit earum quasi quia sapiente. Non veritatis suscipit distinctio atque dolore quod.', '34', '37', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('109', 'Occaecati sed autem aut fugiat qui quae.', 'Aut et qui totam tempore unde. Sequi quod fugiat voluptas et et dolorum et aut. Similique similique id labore id voluptatem. Facere voluptatibus soluta suscipit ut placeat quas velit.', '11', '42', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('110', 'Deleniti adipisci aut facere aut et.', 'Omnis odio unde dolor. Et vel ipsum nemo quibusdam. Temporibus exercitationem aliquid velit harum voluptatem.', '34', '24', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('111', 'Explicabo ex temporibus commodi magni beatae.', 'Dolorem sunt et id autem excepturi ab ipsam. Aut magni aut alias voluptate qui accusamus. Voluptate quo doloribus culpa eius.', '12', '20', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('112', 'Facere quam accusamus eum quis porro dolore.', 'Eius voluptatem vero vitae hic rerum. Quo quo est aut eos. Laboriosam quia et nisi voluptas.', '40', '37', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('113', 'Ut qui animi dolorem ut aut nam.', 'Tempore minus quo quia pariatur labore ut. Veniam voluptatem repellat et quaerat. Dignissimos quaerat voluptates laborum et.', '2', '27', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('114', 'Mollitia qui qui qui perspiciatis architecto amet.', 'Qui rerum aperiam molestiae error natus. Rerum sit nemo et dolores amet. Quos facere ut praesentium ut libero aliquam. Facilis officiis a amet debitis.', '25', '23', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('115', 'Nihil quam ut natus consequatur quis est voluptas illo.', 'Atque maiores aliquid quisquam consectetur rerum et. Qui sed repudiandae qui vel sint.', '23', '27', '0', '1', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('116', 'Quibusdam repellat esse velit.', 'Corporis quasi at facilis odit non. Neque est eum tempore. Sit quis aperiam earum eligendi doloribus eaque rem. Corporis reiciendis fuga illum consequatur eum voluptas.', '15', '11', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('117', 'ReicIEndis architecto quo qui officia a perferendis nihil.', 'Doloremque molestiae perspiciatis nobis provident hic. Consequuntur dolorem provident sit. Aspernatur et dolores voluptatibus amet. Quia eveniet hic odio vel perferendis.', '10', '13', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('118', 'Cum ut eum veniam et eum.', 'Ad commodi ipsam blanditiis officia voluptas a reprehenderit. Consequatur aut praesentium et alias minus consequuntur nam et. Et velit in et sequi.', '22', '12', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('119', 'Repudiandae labore repudiandae fuga et quidem maiores.', 'Consequatur quas illum consequatur magni et. Consectetur et suscipit numquam architecto laborum cum quo. Quam quis nisi provident quo officiis optio. Libero et nisi nulla omnis qui.', '33', '30', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('120', 'Aut culpa ea dicta consequuntur iusto.', 'Voluptas quam est alias et perferendis voluptatem. Voluptate beatae alias minima maxime laboriosam. Numquam sit ex ut sint vel. Distinctio autem et neque doloremque.', '39', '1', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('121', 'Facilis sAPIEnte recusandae sed est mINIma ad assumenda.', 'Itaque alias voluptatibus velit quos odit perferendis tenetur. Maxime quia quibusdam quas corporis et iure. Voluptas recusandae iusto voluptatum assumenda omnis.', '29', '36', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('122', 'Tempora dolor dignissimos eos accusantium.', 'Ut minima vel voluptatibus repellat amet. Quia qui et consectetur possimus exercitationem. Non sequi aspernatur aspernatur quo.', '27', '10', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('123', 'Qui voluptas impedit asperiores.', 'Voluptate explicabo et quia laborum perspiciatis excepturi possimus. Ipsa a voluptatem ut porro voluptate dolorem. Ullam aut in rerum velit. Non ut distinctio dolor natus magni.', '30', '2', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('124', 'Perspiciatis accusantium repudiandae provident repellendus veritatis fuGit.', 'Qui modi et ducimus ut eos. Cupiditate suscipit repellendus et sint tempora eius voluptates. Esse libero accusamus maxime nesciunt. Est autem aspernatur ratione est in optio ab.', '40', '4', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('125', 'Optio evenIEt omnis eos perferendis dolores atque.', 'Fugiat voluptates rerum quaerat facere itaque quibusdam. Quia vero maxime ut eius.', '5', '26', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('126', 'Aut quam ipsam sequi ut cumque quas illum amet.', 'Magnam nesciunt eaque quibusdam culpa et nisi. Velit animi possimus qui. Facilis et voluptatum quidem et ea consectetur qui. Nihil necessitatibus explicabo eaque est voluptas rerum.', '46', '3', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('127', 'Ut sit ipsum odio eos est similique.', 'Eum aut et neque minima repellat porro sapiente quos. Vero ut quae libero aut. Illum suscipit doloremque enim illum.', '20', '28', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('128', 'Perferendis nihil temporibus atque aut.', 'Ipsum quia libero tempore dicta totam. Voluptate quae eius et. Et rem excepturi et sint quo. Quis hic sequi velit consequatur facilis.', '34', '26', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('129', 'Quaerat nemo vel non veniam.', 'Doloremque sed corrupti molestiae aliquam omnis. Sapiente sunt harum error excepturi. Expedita enim asperiores nulla tempora quia quia voluptas fugit.', '20', '6', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('130', 'In eos sint quasi excepturi quos mollitia.', 'Facere impedit et dolor deserunt et quidem. Magnam fugiat et eveniet voluptatem laborum esse. Sint quia et omnis.', '41', '11', '0', '1', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('131', 'Est animi ducimus cumque suscipit doloribus vero.', 'Aliquid inventore repudiandae ex cumque. Accusamus aut repudiandae sint hic sit sunt. Explicabo eligendi eius voluptatibus aut et aut.', '1', '36', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('132', 'Placeat magnam illo dolores labore incidunt impedit.', 'Dolores ut vitae rerum a modi aspernatur nihil. Et quam est neque aliquid molestiae.\nUt et rem iste aut. Tempora deleniti dicta et. Magni nihil unde porro eius.', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('133', 'Ea accusantium iste et.', 'Id accusantium recusandae sequi mollitia unde asperiores odio. Sed eum a itaque laborum mollitia. Consequuntur at ullam rerum sed aut est.', '1', '38', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('134', 'Qui dignissimos autem id placeat aut.', 'Error aut et qui quo error et est. Consequatur omnis laboriosam aut sint voluptates fugiat. Id tenetur vel cumque provident aspernatur mollitia qui. Quia in ut optio ducimus qui aut quia.', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('135', 'Commodi et dolorem laboriOSam aperiam voluptatem et.', 'Vero assumenda vero quae. Dolorum harum ut quo repellendus dolores. Nisi repellat est eos id necessitatibus.', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('136', 'Inventore eum consequatur optio dolor.', 'In sint beatae facere dolor non beatae. Voluptatem nulla dolores repellat enim in saepe. Qui quia fugiat doloribus eum quasi consequuntur sit.', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('137', 'Molestiae temporibus sit sint a.', 'Autem exercitationem cumque sit fugit voluptas. Nihil est ducimus molestias possimus. Quod quam officiis eos impedit quaerat laboriosam.', '1', '18', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('138', 'Tenetur nihil repudiandae ducimus nulla eos amet excepturi rem.', 'Quibusdam fugit aliquam et. Ea quibusdam officia et quam hic. Voluptates nesciunt consectetur eos fugit. Non atque eum rerum praesentium ullam autem. Temporibus perspiciatis maiores sapiente.', '1', '24', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('139', 'Sed in aliquam molestiae aliquam ratione.', 'Eaque quibusdam sed ut modi. Sed minima odit non laborum. Eum nesciunt explicabo sint. Unde repellat temporibus sed. Quia molestias sed aspernatur molestiae soluta sit.', '1', '35', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('140', 'Sed dolorem maxime esse aspernatur.', 'Dolore eligendi nulla est commodi in. Consequatur corporis nihil officia laboriosam perferendis alias expedita. Veniam dolore quia rerum ea tenetur. Occaecati illo nobis velit.', '1', '27', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('141', 'Consequuntur recusandae voluptatem quas culpa cupiditate ab ipsam.', 'Hic sed dolor aut commodi beatae laborum ducimus. Ab ut architecto voluptatem doloremque unde doloremque. Ex quisquam perspiciatis hic aut et inventore. Officia quos dolor vel rerum corrupti.', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('142', 'Quis accusantium et qui minus incidunt iure enim.', 'Porro labore laborum impedit rerum. Qui laboriosam excepturi qui. Aspernatur nesciunt veritatis vitae dicta aperiam. Ratione corrupti modi molestiae dolor voluptatibus dolorum aut.', '1', '36', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('143', 'Deleniti et sit nesciunt enim dolorum eos sit.', 'Recusandae impedit accusantium voluptatem quibusdam sed et. Quas eos expedita nesciunt quo reiciendis itaque quisquam. Iste sit omnis et dignissimos debitis. Quia et et minima quidem.', '1', '27', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('144', 'Tempora repellat recusandae facilis debitis.', 'In aperiam quis ea sed possimus est in. Provident corrupti nisi hic sint nam ea. Ipsa vel qui distinctio eos beatae consectetur et.', '1', '22', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('145', 'Quae incidunt quisquam harum et.', 'Qui vel ea sint eos praesentium. Quisquam asperiores ut cum similique et. Id odio quisquam et iure corporis quia sapiente. Ea enim illo mollitia sint enim eum.', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('146', 'Culpa id placeat blanditiis et quam.', 'Quo possimus dolores et molestiae. Possimus nesciunt labore molestiae. Quaerat sit totam sed sit. Qui veritatis quia molestiae minima culpa expedita quis.', '1', '42', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('147', 'Itaque dolor dolores molestias quas sunt dolores labore.', 'Qui omnis et aut velit sed corrupti animi. Reiciendis vitae nihil veritatis delectus.', '1', '38', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:41', '2015-06-10 19:39:41', '0', null, null);
INSERT INTO `posts` VALUES ('148', 'Dolores officia velit omnis quas.', 'Qui nobis laudantium ullam eveniet eum. Dolorum id est sapiente est et et. Veritatis sapiente velit rerum est.', '1', '34', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('149', 'Debitis quaerat quia laudantium reicIEndis erRuby on Rails quo ut.', 'Voluptatibus dolore harum et fuga quae dolorum. Eum aut iste earum odit qui. Voluptate eum quos provident ea. Facilis et sint corporis corrupti amet.', '1', '30', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('150', 'Accusamus dignissimos molestiae laboriOSam.', 'Aliquid pariatur animi mollitia tempora provident dolorum temporibus. Atque quia aut beatae qui. Quia saepe voluptatum placeat voluptatem nostrum modi earum.', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('151', 'Voluptatem quia corrupti impedit velit.', 'Sunt laudantium laudantium minus mollitia sint sed. Rerum iure expedita hic fugiat. Eum cum est corporis placeat possimus animi.', '1', '13', '0', '0', '0', '0', '1', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('152', 'Neque nulla laborum ab facilis hic.', 'Non itaque odio minima aut ea. Et dicta et veniam placeat numquam rerum. Sed sint vel et molestiae reprehenderit est dolor.', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('153', 'Aut unde eum laboriOSam earum ea repellat.', 'Nihil voluptas et aut eaque repellat enim id eaque. Aut at corrupti qui maiores provident perspiciatis. Illum sit amet doloribus.', '1', '35', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('154', 'Veniam et minus dicta ut occaecati nihil doloribus vel.', 'Sapiente consequatur quia consequatur. Perspiciatis beatae voluptatem omnis aut. Eveniet officiis placeat earum nostrum laudantium.', '1', '34', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('155', 'Harum non molestiae voluptate et.', 'Officiis animi unde nostrum in aut enim voluptatem. Animi incidunt fugiat architecto. Dolorem reiciendis aut eveniet repellendus ad explicabo magni officiis.', '1', '39', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('156', 'Recusandae et laudantium assumenda optio voluptates.', 'Ut quibusdam maiores tenetur ex enim ut. Fugiat nam sit similique doloremque aut et reprehenderit. Ab quam illo quaerat ea.', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('157', 'Natus culpa necessitatibus cumque assumenda.', 'Rerum ea consequatur molestias sit et. Omnis qui quam suscipit. Quisquam reprehenderit minus explicabo sed non iusto nulla. Iste dolores eligendi magnam expedita consequatur tempora id.', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('158', 'Dolor enim autem laudantium illum illum quas.', 'Quaerat soluta omnis vel omnis. Aut velit nam iusto nemo. Laborum ducimus deserunt veniam sit voluptatum aliquid. Repellat pariatur soluta ut quae quisquam officiis doloribus.', '1', '40', '0', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('159', 'Explicabo unde omnis aut nihil hic atque.', 'Beatae omnis distinctio pariatur. Qui at pariatur laudantium aliquid id ullam dignissimos. Corrupti ea vitae quia est.', '1', '18', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('160', 'Ratione est et est fuga excepturi accusamus nisi.', 'Consequatur voluptatem voluptatem amet voluptate sit ex praesentium. Rem ut ut numquam blanditiis perspiciatis. Ut totam et excepturi beatae qui cumque maxime.', '1', '37', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('161', 'Iure quis ut erRuby on Rails hic.', 'Dolorem assumenda qui magni possimus rerum sit. Cupiditate aut aliquam ut. Porro inventore nemo impedit autem. Non esse quaerat et quaerat.', '1', '19', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('162', 'Numquam eum voluptate ab ut optio reprehenderit similique.', 'Veritatis aspernatur aut alias. Consectetur ex nulla quis. Nam praesentium magni molestiae minus. Deleniti quis dicta consequatur ipsum corrupti qui et consequatur.', '1', '14', '0', '0', '0', '0', '1', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('163', 'Ullam temporibus voluptates deleniti culpa tempore quia.', 'Cum sed est corporis voluptatem perferendis harum. Et mollitia omnis impedit doloribus. Et soluta fugiat ut sit explicabo qui voluptatibus. Facilis quo quo minima quo nihil et.', '1', '40', '0', '0', '0', '0', '1', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('164', 'Quia laudantium asperiores et officiis saepe.', 'Fugit maxime maxime sed velit iusto quaerat illo. Quo repellat et provident ut.', '1', '23', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('165', 'Sit magnam maxime a quisquam necessitatibus incidunt.', 'Tempora ut quo modi dolores sed nisi. Veritatis ut voluptatum voluptates non non voluptatum architecto. Est harum quam aut quas.', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('166', 'Nemo officia cumque id sed voluptatem qui.', 'Qui enim nisi tenetur quia optio. Fugit sunt culpa aut repellat. Doloremque nobis impedit vel quo animi labore. Rerum neque molestiae in vel nam omnis velit.', '1', '26', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('167', 'Officiis dolores molestiae ut sint aut vel et voluptatem.', 'Facere quis itaque quidem eligendi aut quia. Similique voluptatem natus dolor est provident ad quasi. Quia quis iusto aut iure corrupti ullam quisquam. Iste porro autem ut omnis fuga dolores.', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('168', 'Quos impedit deserunt occaecati nostrum iure.', 'Laborum sequi aut eos vel quisquam id. Ex reprehenderit ut minima non non. Aut vitae facilis pariatur nobis eveniet eum.', '1', '39', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('169', 'Nihil omnis vitae architecto in.', 'Quod sunt eveniet ullam natus fugit provident. Commodi aut fuga placeat sint dolorum et cumque vel. Molestiae occaecati voluptatum assumenda aut totam.', '1', '23', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('170', 'Excepturi consequatur cupiditate provident nostrum itaque.', 'Earum saepe vero autem in et. Et quaerat dolores ad. Excepturi laboriosam at ipsam. Expedita dignissimos tempora nesciunt illo ut magnam et.', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('171', 'Qui qui voluptates iure placeat accusantium vel voluptatum magni.', 'Omnis illo voluptates repellat et qui sunt. Quibusdam dolore temporibus non sequi. Quibusdam quam quo modi laborum.', '1', '29', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('172', 'Suscipit vero suscipit ut et eligendi.', 'Ipsa sequi eum illum minus sit. Aut odio architecto et est. Accusamus minus beatae vitae quis.', '1', '36', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('173', 'Ipsa tenetur quia iste repellendus.', 'Excepturi pariatur quia doloremque ullam magni. Vero accusantium cumque qui velit. Labore ea eius aut enim.', '1', '13', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('174', 'Id iusto similique enim aut id.', 'Amet magnam assumenda nisi qui id qui. Odit rerum quisquam quia ea dolorum. Aspernatur occaecati deserunt hic sequi aliquid temporibus sequi dolore. Impedit dolor eligendi voluptatem aut aliquam hic.', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('175', 'Similique quae explicabo itaque fugiat sunt in qui voluptatum.', 'Hic dolor illo vel aut sapiente tempora nihil. Reiciendis maxime delectus officiis et omnis est. Aut odio et recusandae molestias dicta voluptatem. Numquam numquam nulla quis quia.', '1', '18', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('176', 'Animi voluptatibus ut commodi optio.', 'Voluptatem inventore voluptatum et facilis id voluptate magnam. Unde suscipit a accusantium ea vero aut tenetur. Commodi sunt sint qui sapiente iusto velit soluta.', '1', '22', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('177', 'Veritatis ipsa dolor nulla repellendus.', 'Dolorum iure vitae qui et quasi voluptas. Fugiat quia vitae sunt repellendus veniam. Doloribus et repellendus amet corrupti quod molestias corrupti. Delectus corrupti a quibusdam suscipit.', '1', '21', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('178', 'Et aperiam et voluptate.', 'Sint aut perspiciatis at ut fugiat. Reprehenderit facilis incidunt ut dolorum est minus. Expedita vitae quia eligendi corporis incidunt debitis perspiciatis nisi.', '1', '41', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('179', 'Voluptas commodi asperiores qui quia modi dolor exercitationem.', 'Et sint unde possimus. Illo tempora nihil quia velit. Fugit reiciendis repellendus alias itaque. Nihil culpa est beatae voluptas voluptas.', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('180', 'Quod voluptatem placeat sint.', 'Et reprehenderit autem maxime harum. Tenetur molestiae voluptatibus aut temporibus rerum porro odio soluta.', '1', '17', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('181', 'Eaque rerum mINIma hic quod.', 'Doloremque non delectus odit perspiciatis. Cupiditate soluta ad itaque earum. Voluptas unde sed velit et necessitatibus. Voluptatum et architecto deserunt dolor omnis ex voluptates voluptates.', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('182', 'Aut veniam odio voluptas porro velit optio.', 'Eaque recusandae autem ullam omnis earum. Quod voluptates voluptate quis ipsum molestiae. Maiores illum enim consequatur iusto. Recusandae rerum ducimus quod vel.', '1', '34', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('183', 'Asperiores possimus rerum et mINIma dolorem libero.', 'Quaerat facere ipsam nobis esse asperiores eaque harum explicabo. Nesciunt eaque quia excepturi excepturi aspernatur. Sunt illo aliquid illo ut veniam nam tempore.', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('184', 'Repellendus quos iusto evenIEt enim facere est.', 'Doloribus nihil et et nihil. Necessitatibus incidunt nulla neque quia quo. Cum autem autem dignissimos fugiat molestiae laboriosam.', '1', '21', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('185', 'Numquam dolores nemo ut voluptas animi.', 'Qui minima nihil id ut qui non. Eos adipisci qui quis qui repellendus ad. Nesciunt ex architecto et eaque quia fugit. Ea dolores pariatur mollitia iure.', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('186', 'Voluptatibus tenetur id aspernatur voluptates repellat veritatis.', 'Sed sed in et odit quas aut. Exercitationem dolore libero et ut sit deleniti est. Aut sed facere omnis accusantium error quis nam.', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('187', 'Corrupti dolorem non recusandae beatae repellendus dolorum.', 'Quo mollitia nam ut adipisci aperiam eum omnis vel. Assumenda aut maiores nobis incidunt. Optio ab maxime sapiente assumenda ipsa iure voluptates.', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('188', 'FuGit sit et nihil excepturi in ab.', 'Sint recusandae veniam a debitis autem aut laborum. Illum optio est omnis ducimus. Pariatur quam qui molestiae eaque consectetur mollitia.', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('189', 'Omnis laborum non officiis sAPIEnte.', 'Dolores molestiae qui eius omnis consequatur labore animi. Possimus necessitatibus blanditiis quibusdam dolorem.', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:42', '2015-06-10 19:39:42', '0', null, null);
INSERT INTO `posts` VALUES ('190', 'Asperiores magnam sint cum exercitationem dolorem.', 'Omnis veniam doloribus dicta minima excepturi aspernatur. Et rerum dolor sed ratione. Ut inventore sint vel quidem porro.', '1', '2', '0', '0', '0', '0', '10', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('191', 'Nulla at laborum numquam itaque recusandae quo.', 'Aut ut odio et quis blanditiis aspernatur. Soluta veritatis id enim. Totam recusandae omnis consequatur.', '1', '10', '0', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('192', 'Nisi expedita illum officia.', 'Nulla ut omnis cum ab. Aut velit impedit repellat laudantium quam. Molestiae alias amet debitis.', '1', '29', '0', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('193', 'Consequatur a consequuntur vero.', 'Ut labore nihil voluptates sed voluptatem ut. Quibusdam eligendi illum odio quod. Velit voluptatem et aspernatur hic qui omnis harum. Facere dolorem explicabo culpa ratione id dolorem labore.', '1', '17', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('194', 'MINIma qui ullam optio animi enim.', 'Nam ab tempora aut. Quo dolores est vitae facilis delectus sed omnis animi. Dolorum perferendis non velit laboriosam qui adipisci.', '1', '42', '0', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('195', 'Quas eaque voluptatem at.', 'Sint est nisi aut sunt. Et quo tempora laboriosam quam ducimus totam ut explicabo. Mollitia error debitis quis asperiores quod quam. Nam modi a aliquid animi tempora officiis deleniti.', '1', '7', '0', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('196', 'Natus distinctio autem laborum dolor laboriOSam accusamus.', 'Voluptatem eos sint perferendis architecto eligendi soluta voluptas. Sunt suscipit omnis distinctio commodi aliquam corporis sunt sit. Enim et voluptatem aut iure ut enim. Non ullam sed aut.', '1', '35', '0', '0', '0', '0', '1', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('197', 'Aperiam ut autem corrupti.', 'Labore quia animi qui perferendis aut labore. Cupiditate voluptatem odio numquam veniam. Harum et velit blanditiis neque nihil dolor. Laboriosam in dolorem nobis qui.', '1', '39', '0', '0', '0', '0', '2', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('198', 'Rerum vitae consequuntur non corporis aliquid id iste.', 'Ducimus alias autem rerum ea eos hic veniam. Quia rerum qui ratione dolore sunt.', '1', '42', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('199', 'Unde aut et deleniti doloribus nulla.', 'Dolorum quis ratione tempore quas ex quae. Sit labore ut labore eius necessitatibus. Reiciendis occaecati cupiditate voluptas voluptas saepe ut dolor. Ab a cum magni occaecati est quae.', '1', '29', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('200', 'Culpa et suscipit sequi quidem cumque.', 'Quia a aliquid unde. Minima eaque qui dicta qui consequatur ab omnis suscipit. Consequatur esse velit est quos eveniet officia nobis sed.', '1', '22', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('201', 'Ipsum ratione voluptas erRuby on Rails nesciunt rerum.', 'Praesentium qui sequi vitae maiores. Quae similique repudiandae vel esse. Numquam et minima consectetur dolores et. Exercitationem sit tempore sed nihil neque pariatur.', '1', '40', '0', '0', '0', '0', '4', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('202', 'Quia quia mINIma eum doloribus est.', 'Expedita sint ea reiciendis adipisci beatae labore voluptatum qui. Voluptatum id dolorum non quia architecto. Laudantium deleniti quam reprehenderit molestiae.', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('203', 'Amet laboriOSam sAPIEnte ut fuga.', 'Officiis ut nam omnis est quod adipisci eos. Soluta aut illum alias. Optio id laudantium repellat pariatur magni saepe consequatur. Maxime sed minima facilis eos id neque.', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('204', 'Temporibus et ea dignissimos magnam sint.', 'Omnis magnam expedita at voluptates omnis sint. Alias vitae sit dolore voluptas. Voluptas labore commodi unde et molestiae non.', '1', '42', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('205', 'Ullam nisi beatae dicta libero optio dolorem.', 'Voluptate doloremque dolores quis tempora in. Qui in nihil quos asperiores atque et. Blanditiis non optio et quis. Vitae sit esse voluptatibus cumque praesentium et inventore.', '1', '13', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('206', 'Sint hic fugiat hic molestiae maiores.', 'Reiciendis dignissimos in consequatur minus. Eveniet eveniet perferendis enim aut facilis aut.', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('207', 'Hic omnis odit omnis quis.', 'Magnam explicabo qui doloremque provident aperiam rerum. Explicabo saepe aut sequi eius porro rerum. Qui voluptates autem cum odio voluptatem sit odit. Laboriosam minus ipsum debitis quis.', '1', '33', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('208', 'Iste aut hic totam cum neque.', 'Distinctio qui illo est perferendis. Voluptas voluptatem sit distinctio necessitatibus. Dolor voluptatum sunt labore culpa.', '1', '12', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('209', 'Esse ea voluptatum nisi sint natus fugiat quibusdam.', 'Voluptate voluptates aut a omnis quis ab non. Voluptatum qui aut quisquam et alias. Labore odit rem officia qui fuga. Aperiam mollitia ipsam a minus debitis ad.', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('210', 'Ratione dolores qui magni facilis quibusdam inventore ipsum.', 'Quas voluptatibus sed qui atque. Nemo in enim vero ipsam aspernatur reprehenderit. Labore praesentium consequuntur sint qui incidunt eos alias rerum.', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('211', 'Ducimus rerum occaecati commodi exercitationem laboriOSam qui.', 'Velit voluptate dolor mollitia quis id voluptatem. Enim sed ut non dolorem saepe qui. Veritatis odit tenetur itaque vel.', '1', '27', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('212', 'Et cupiditate qui ipsa dolorem ut.', 'Quia molestias similique iure quas. Deleniti qui esse repellat nihil. Libero impedit autem qui itaque odio. Consequatur aut optio minus sed eum dolor.', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('213', 'Ipsum sed quo rerum sunt dolor.', 'Qui earum rem libero reiciendis molestiae deleniti autem. Ad nam dolores qui repudiandae. Deleniti error nobis nisi ea error labore dolores.', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('214', 'Aut autem aut est voluptate voluptas eum totam.', 'Sed quos consequatur commodi eaque sequi at. Sint magnam repellat sed sed. Nisi vero ab pariatur autem aut voluptas.', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('215', 'Qui ad dolores dolorum ipsa.', 'Quia et praesentium esse totam. Explicabo error odit perferendis qui blanditiis. Tempora labore doloremque a laudantium error. Aut quae et amet omnis ipsum.', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('216', 'Officia ipsa porro rerum ut.', 'Aut delectus cupiditate molestiae dicta esse. Qui dolores error eaque iusto voluptate labore. Corporis sunt officia cumque repellat officia id.', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('217', 'Omnis sint molestias maiores nam.', 'Cumque et voluptate odio illo sapiente quidem reprehenderit. Dolorem veniam molestiae suscipit qui.', '1', '24', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('218', 'Eligendi tempora vitae consequatur ea et.', 'Eum enim dolorem non harum eius sapiente. Incidunt culpa minus nesciunt officiis quibusdam expedita voluptatem. Et saepe consequatur enim est quam.', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('219', 'Et repudiandae temporibus sint molestiae dolores placeat aut.', 'Atque quaerat dolores qui ut. Magnam adipisci nam est animi consequatur. Ut voluptatem adipisci omnis non. Voluptas aut qui fugit eaque.', '1', '19', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('220', 'Nemo quis consequatur iure possimus consequatur.', 'Eaque sed nulla quidem voluptas quisquam mollitia voluptatem. Mollitia omnis veniam iusto hic. Blanditiis asperiores libero deserunt rerum. Consequatur ipsam fuga ratione amet.', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('221', 'Quod atque rerum autem repudiandae.', 'Doloribus ut architecto iure eum voluptates iusto. Voluptatibus nihil laboriosam nemo labore et nostrum sit. Qui itaque iusto velit nostrum sit veniam.', '1', '32', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('222', 'Voluptas laboriOSam qui evenIEt excepturi nam architecto.', 'Quia tenetur voluptatem illum dicta necessitatibus sit. Quas eum fuga ipsam at ducimus dolorem. Qui dignissimos omnis at incidunt.', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('223', 'Repudiandae praesentium odio aut.', 'Nemo vero aut ut. Quia in eos numquam minima. Excepturi animi sapiente unde dolorem est enim eius nostrum.', '1', '17', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('224', 'Reprehenderit ut magnam repudiandae inventore dolorem.', 'Maxime blanditiis vitae et delectus porro. Aperiam fugiat qui et delectus ratione. Et fugit eveniet ut dolores. Quas delectus qui amet sunt est enim.', '1', '38', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('225', 'Labore consectetur officiis dolores aut natus.', 'Saepe at aspernatur aut quisquam. Ratione debitis laborum vitae et. Ullam architecto repudiandae et. Sed totam quia consequatur pariatur autem atque.', '1', '12', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('226', 'Qui ut sAPIEnte provident qui quidem dignissimos nobis.', 'Quasi id qui consequatur doloremque asperiores quia. Molestiae a ratione quis magnam autem voluptatibus. Dolorum ut enim aliquam et neque. Et voluptas commodi accusantium.', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('227', 'Et voluptas qui quaerat voluptatibus.', 'Dolore asperiores rem qui aut eos et. Quos vel ullam ea rerum enim eum ducimus quidem. Ut dolores consequatur odit et minima incidunt et. Consequatur tempore aut quia voluptatem.', '1', '29', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('228', 'Est esse mollitia qui laudantium sed.', 'Animi rerum officia quis ut quam qui. Doloribus voluptatibus nam consequatur qui doloribus. Aut perspiciatis eos sed animi odit aut placeat. Iure voluptatum cupiditate facere.', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('229', 'Nam quos quas qui atque.', 'Voluptatem deserunt atque dolorem aliquam ut nemo consectetur. Velit dolores eum iste explicabo quod sit quia. Fuga nihil et quo cupiditate.', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('230', 'Quos nulla voluptates neque.', 'Beatae sit facere earum. Facere qui praesentium earum eum. Et enim nulla adipisci delectus. Ipsum suscipit quia magni eos qui ut quis.', '1', '28', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-06-10 19:39:43', '2015-06-10 19:39:43', '0', null, null);
INSERT INTO `posts` VALUES ('231', '灌灌灌灌', '<p>士大夫士大夫士大夫</p>', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '2015-12-15 00:04:20', '2015-12-15 00:04:20', '0', null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic_count` int(11) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notification_count` int(11) NOT NULL DEFAULT '0',
  `github_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_email_index` (`username`),
  KEY `users_name_index` (`name`),
  KEY `users_is_banned_index` (`is_banned`),
  KEY `users_topic_count_index` (`topic_count`),
  KEY `users_reply_count_index` (`reply_count`),
  KEY `users_github_name_index` (`github_name`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'lwl@outlook.com', 'e10adc3949ba59abbe56e057f20f883e', 'antonio.mccullough', null, '0', null, '0', '0', 'Garnettfurt', 'bhowe', 'acrona', 'http://schimmel.biz/quis-at-eos-recusandae', 'Omnis soluta autem odit ab omnis beatae corporis.', 'Atque occaecati est optio consequatur magnam dolor dolores perferendis.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('2', 'vhuel@hotmail.com', null, 'justine.mcglynn', null, '0', null, '0', '0', 'Schmidtchester', 'boyer.franz', 'pabbott', 'http://pacocha.org/omnis-et-ratione-provident-reiciendis', 'Voluptas enim qui occaecati eveniet nihil vitae.', 'Et repudiandae eum ratione et mollitia.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('3', 'makenzie86@gmail.com', null, 'hagenes.ramona', null, '0', null, '0', '0', 'Calefurt', 'klocko.arlo', 'kaitlin.nicolas', 'http://www.russel.com/', 'Eaque distinctio velit explicabo at illo aut eos.', 'Nulla non sit veniam occaecati voluptatem omnis.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('4', 'cvonrueden@paucek.biz', null, 'lonny91', null, '0', null, '0', '0', 'Torpton', 'klocko.dixie', 'wuckert.matilda', 'http://www.damore.com/tempora-architecto-officia-accusamus-asperiores.html', 'Iste maiores officia dolores inventore quia et aut.', 'Delectus suscipit recusandae est quidem.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('5', 'uspencer@runolfsson.com', null, 'turcotte.mallie', null, '0', null, '0', '0', 'South Kennethshire', 'ernesto36', 'kbechtelar', 'https://muller.net/eligendi-id-autem-magni-quasi-mollitia-quibusdam-aspernatur.html', 'Quia dicta harum repudiandae odio.', 'Molestias beatae quaerat minus similique sed nisi.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('6', 'jones.jesse@yahoo.com', null, 'rath.devon', null, '0', null, '0', '0', 'Khaliltown', 'ykeeling', 'oschowalter', 'http://www.ward.com/vitae-repellendus-laborum-numquam-et-dicta-quos-saepe-dicta', 'Praesentium laborum labore impedit corporis labore.', 'Porro voluptatem nemo vero nulla.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('7', 'fcorwin@tillman.com', null, 'sbogan', null, '0', null, '0', '0', 'Caterinahaven', 'mclaughlin.kathleen', 'ibechtelar', 'http://mckenzie.org/', 'Consequuntur sit dolor dolores aut hic.', 'Maxime facilis perferendis aspernatur sit voluptatem nihil.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('8', 'vella.kerluke@yahoo.com', null, 'bernhard.magnus', null, '0', null, '0', '0', 'Kshlerinshire', 'pbednar', 'ludwig.skiles', 'http://www.ernser.com/', 'At ullam eligendi doloremque est reiciendis atque.', 'Ut deserunt et sunt molestiae.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('9', 'farrell.philip@yahoo.com', null, 'selena.dare', null, '0', null, '0', '0', 'Mrazbury', 'fdurgan', 'apredovic', 'https://www.nader.com/excepturi-fugit-ducimus-quos-sint-unde', 'Molestiae perferendis reiciendis nostrum.', 'Pariatur fuga repudiandae doloribus ad expedita omnis consequatur.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('10', 'block.lucinda@cummeratajacobson.com', null, 'jenkins.fae', null, '0', null, '0', '0', 'New Darrylmouth', 'kattie07', 'cbraun', 'https://www.rutherfordkohler.com/commodi-quia-voluptatem-veniam-modi', 'Illo ut aut est ut.', 'Molestiae et molestias illum iste iure consequatur qui.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('11', 'helene.gulgowski@emmerichkris.com', null, 'carol50', null, '0', null, '0', '0', 'South Brock', 'ruecker.twila', 'dolores79', 'http://www.uptonschuster.biz/aut-sunt-molestiae-laborum', 'Corporis molestias modi ducimus voluptas nemo et nihil nostrum.', 'Aut occaecati deleniti ducimus vitae nemo quod.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('12', 'nella.hagenes@yahoo.com', null, 'herminia03', null, '0', null, '0', '0', 'Balistreribury', 'boyle.pascale', 'ykoelpin', 'http://cronahackett.com/est-dolor-ullam-qui-aspernatur-nesciunt.html', 'Minus atque voluptas veritatis laboriosam molestias aperiam minus et.', 'Quod nisi exercitationem dolorum enim soluta omnis accusamus.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('13', 'alba.goodwin@hotmail.com', null, 'gorczany.alan', null, '0', null, '0', '0', 'New Mittieport', 'moshe41', 'sienna26', 'http://www.emard.com/dolores-ut-quasi-qui-placeat-quo-quia-dolorem.html', 'Omnis hic explicabo explicabo.', 'Corporis eaque ullam explicabo est.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('14', 'gaylord.benjamin@kutch.net', null, 'cruickshank.buddy', null, '0', null, '0', '0', 'Madilynmouth', 'isac.kohler', 'eblick', 'http://www.trantow.com/', 'Est illum est autem consequatur et illum aperiam.', 'Laboriosam error et sunt mollitia.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('15', 'pansy10@powlowski.org', null, 'bturner', null, '0', null, '0', '0', 'East Revafurt', 'lesch.tamia', 'blanca.wilderman', 'https://www.gulgowskikuphal.net/quae-fugiat-dicta-sequi-error-quia-explicabo', 'Repellendus necessitatibus eum ipsum mollitia non distinctio sit.', 'Qui mollitia tenetur aspernatur deleniti quaerat dolorum eum.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('16', 'mona99@gmail.com', null, 'jayne.ritchie', null, '0', null, '0', '0', 'West Meggie', 'xbins', 'bennie.hettinger', 'http://www.cronin.com/et-quaerat-tempore-porro-quisquam', 'Repudiandae amet omnis neque est nobis voluptatem rem.', 'Omnis facilis quo voluptatem sint est ad commodi.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('17', 'smitham.rosetta@lehnervon.com', null, 'mustafa67', null, '0', null, '0', '0', 'Lake Bertram', 'upredovic', 'ricardo63', 'http://www.roweherzog.net/dolore-perspiciatis-dolor-cum-magni-inventore', 'Ex dolor qui velit non occaecati.', 'Aut quibusdam doloribus dolore.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('18', 'bvolkman@hotmail.com', null, 'amalia10', null, '0', null, '0', '0', 'Damianstad', 'wrunolfsson', 'ghomenick', 'http://collier.biz/', 'Maiores voluptas qui quisquam repellendus expedita velit.', 'Quam neque aut modi.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('19', 'tito.upton@gmail.com', null, 'kira91', null, '0', null, '0', '0', 'West Mabel', 'donnelly.ramona', 'otho82', 'http://olson.org/', 'Suscipit vitae praesentium cum.', 'Ipsum dolore facilis quo ipsam.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('20', 'edwina.gerlach@kemmer.com', null, 'gilbert52', null, '0', null, '0', '0', 'Mustafaport', 'crippin', 'langworth.candido', 'https://shanahankihn.com/voluptates-aspernatur-veritatis-ut-porro.html', 'Saepe eligendi voluptate error.', 'Dicta rerum voluptatem ex dolor.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('21', 'rvon@schinner.org', null, 'tschinner', null, '0', null, '0', '0', 'Barrowston', 'gschmitt', 'vzieme', 'http://heathcote.com/voluptates-excepturi-sint-cumque-suscipit', 'Repellendus voluptate necessitatibus et ut culpa.', 'Aperiam magnam in dicta delectus iste.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('22', 'anthony97@brekke.com', null, 'mertz.lenny', null, '0', null, '0', '0', 'East Sandra', 'uroob', 'kub.ralph', 'http://runolfsson.com/et-qui-iusto-harum-quis-quasi', 'Corrupti in labore eveniet distinctio dolore iure.', 'Et praesentium ut aut illo nulla.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('23', 'claud.bartoletti@hotmail.com', null, 'hleannon', null, '0', null, '0', '0', 'Daltonstad', 'adah.strosin', 'elliot.pfeffer', 'http://lindschoen.com/dicta-exercitationem-est-nobis-vitae-corporis.html', 'Culpa quisquam ad dolor.', 'Ut et aut sunt quas atque nihil blanditiis.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('24', 'rempel.adolphus@rolfsonschuster.org', null, 'dell.bahringer', null, '0', null, '0', '0', 'South Alvisport', 'felicita.koelpin', 'jay88', 'http://cole.com/', 'Odit ut beatae deserunt.', 'Tempora voluptas doloribus debitis.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('25', 'santa.bode@johnston.org', null, 'spencer62', null, '0', null, '0', '0', 'Krisstad', 'pkoch', 'merritt93', 'http://brekke.com/sit-aut-sunt-repellendus-autem-aperiam-quaerat.html', 'Architecto accusamus nihil voluptatem.', 'Provident labore voluptatibus non alias ducimus.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('26', 'berge.shayne@jacobijakubowski.net', null, 'huel.oswaldo', null, '0', null, '0', '0', 'Dietrichshire', 'hand.hermann', 'roob.evan', 'https://davis.com/nam-eos-illo-accusamus-dolore-ipsum-ea-sequi-quia.html', 'Aperiam eum quis porro vitae repudiandae autem.', 'Labore voluptas accusantium aspernatur omnis debitis fugiat.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('27', 'antwon27@kub.com', null, 'fisher.olen', null, '0', null, '0', '0', 'New Geovanni', 'xlynch', 'moen.candice', 'http://steuber.net/', 'Perspiciatis et nostrum porro enim omnis.', 'Velit est ad ut iure occaecati officia doloribus.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('28', 'fwest@hotmail.com', null, 'alverta94', null, '0', null, '0', '0', 'South Justineside', 'selmer35', 'beau56', 'http://www.lebsack.com/', 'Consectetur eum qui error blanditiis impedit voluptas fugiat repellat.', 'Et omnis qui vitae et quaerat.', null, '2015-06-10 19:39:37', '2015-06-10 19:39:37', '0', '', null, '');
INSERT INTO `users` VALUES ('29', 'murphy.haylie@nienow.net', null, 'mgrant', null, '0', null, '0', '0', 'Hermistonmouth', 'ari.stanton', 'kovacek.daija', 'http://www.beattyjohns.net/aut-neque-est-labore-est-rerum.html', 'Soluta illo et earum magnam.', 'Animi aut aut corporis veniam aliquam.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('30', 'zemlak.abbigail@sanfordquigley.com', null, 'flatley.jalyn', null, '0', null, '0', '0', 'Creminfort', 'glover.osvaldo', 'hortense12', 'http://www.tillman.com/expedita-iure-necessitatibus-blanditiis-ipsa', 'Aut voluptates amet libero quas cum.', 'Consequatur eum accusantium sunt et blanditiis esse dicta cum.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('31', 'irohan@yahoo.com', null, 'cassin.eleazar', null, '0', null, '0', '0', 'North Laisha', 'kertzmann.muhammad', 'joshua74', 'http://bartoletti.com/eos-quo-fugit-ad-vel-excepturi-dolorum', 'Similique vitae sit repellendus unde cum dolor nostrum.', 'Possimus veritatis sunt minima quos qui.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('32', 'flatley.ali@gmail.com', null, 'tyrel.leffler', null, '0', null, '0', '0', 'East Sylvan', 'helen.kuphal', 'queenie10', 'http://beatty.com/', 'Laborum odio explicabo nulla autem.', 'Distinctio eius provident reiciendis sequi impedit.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('33', 'allene88@hotmail.com', null, 'mcdermott.manuela', null, '0', null, '0', '0', 'Macychester', 'oswaniawski', 'kswaniawski', 'http://www.legros.net/autem-facilis-quae-tenetur-hic-fuga-aut', 'Consequuntur dolores quaerat aperiam quaerat reprehenderit temporibus.', 'Sed dolorem vitae modi quae consequatur culpa aperiam.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('34', 'norwood78@oconnelldoyle.com', null, 'kris.molly', null, '0', null, '0', '0', 'Lake Monroeport', 'hkiehn', 'zthompson', 'http://www.jacobsoncollins.org/', 'Odio eos libero in omnis repellat.', 'Quis incidunt sed numquam tenetur sit ipsa.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('35', 'boehm.alfredo@torphy.org', null, 'wyman05', null, '0', null, '0', '0', 'Odaland', 'uparker', 'parker.nelle', 'http://runtemorar.com/tempora-voluptatem-et-et-deserunt-repellat-quam.html', 'Nulla itaque eum repellat nulla.', 'Quod corporis ea ea dignissimos assumenda repellat ea nulla.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('36', 'lenna.barton@abbottherman.com', null, 'mann.hollis', null, '0', null, '0', '0', 'Lebsackstad', 'zstiedemann', 'xkuhic', 'http://www.schinnerborer.org/', 'Rem quos laborum quia enim.', 'Laudantium assumenda sapiente voluptas beatae.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('37', 'lakin.katelyn@greenholtgutmann.org', null, 'idella66', null, '0', null, '0', '0', 'Lake Wernerside', 'earl68', 'brakus.francisco', 'http://www.schuster.info/', 'Fuga eligendi maiores aut expedita vel et.', 'Similique sequi est odit qui.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('38', 'emelia.russel@gmail.com', null, 'jennie.mcglynn', null, '0', null, '0', '0', 'Port Jaydeland', 'cheathcote', 'wolf.noble', 'https://schmitt.com/et-sapiente-ut-aut-laboriosam.html', 'Corporis nam incidunt et amet ea aperiam aut.', 'Iure sunt laborum commodi sunt dolor.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('39', 'wrunte@stoltenbergkohler.net', null, 'armstrong.montana', null, '0', null, '0', '0', 'Okeyview', 'dante41', 'fwolf', 'http://www.cummerata.biz/', 'Culpa est quos vel animi.', 'Qui vel molestiae consequatur ea qui accusamus rerum.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('40', 'rpfannerstill@gmail.com', null, 'conroy.brenna', null, '0', null, '0', '0', 'South Rainafurt', 'fadel.marjolaine', 'armand.fay', 'http://cronin.net/necessitatibus-neque-sit-voluptatem-atque-temporibus', 'Accusantium et enim eum magnam.', 'Reiciendis aut omnis omnis.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('41', 'layne80@terry.com', null, 'halie48', null, '0', null, '0', '0', 'Lake Erinburgh', 'keely54', 'tierra27', 'http://www.blick.info/libero-laboriosam-quaerat-dolores-provident.html', 'Culpa hic illo repellat fugit quasi amet.', 'Repellat nihil enim quo atque.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('42', 'eborer@stantonsimonis.info', null, 'roxane54', null, '0', null, '0', '0', 'North Ottomouth', 'mina67', 'clement.botsford', 'http://www.cole.com/est-voluptas-distinctio-error', 'Nisi rem pariatur numquam odio harum ea ipsum earum.', 'Eveniet totam dolore ratione voluptatem quis at.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('43', 'altenwerth.yoshiko@gmail.com', null, 'hector36', null, '0', null, '0', '0', 'Welchhaven', 'berenice25', 'stiedemann.eric', 'http://www.rowe.com/', 'Laboriosam omnis animi sapiente veritatis et inventore.', 'Maiores et accusamus et quo impedit.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('44', 'qwyman@gmail.com', null, 'larson.robb', null, '0', null, '0', '0', 'North Monserrat', 'joannie.nienow', 'mccullough.tatyana', 'http://ortizkihn.com/quis-eveniet-magni-totam', 'Officiis in iusto aut voluptatem aspernatur ex.', 'Dicta aut ut voluptas at.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('45', 'earlene.konopelski@hilpertbatz.com', null, 'miguel28', null, '0', null, '0', '0', 'East Tabitha', 'marcia.ratke', 'blair94', 'http://graham.com/', 'Voluptatibus dicta laudantium quae.', 'Pariatur eos molestiae quos error quod aliquid id.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('46', 'tierra30@dare.com', null, 'walsh.brendon', null, '0', null, '0', '0', 'East Conradland', 'kevon75', 'antwan.ortiz', 'https://rath.com/et-necessitatibus-maxime-enim-nemo-ut-id-quibusdam-aperiam.html', 'Sequi rerum veniam dolores quaerat maxime ex.', 'Enim accusantium ratione similique voluptatibus labore veritatis quas.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('47', 'samir74@zboncak.biz', null, 'jacinthe54', null, '0', null, '0', '0', 'Port Jaymeton', 'veum.sasha', 'unitzsche', 'http://www.wehner.net/', 'Deleniti ratione ab molestias sit itaque.', 'Voluptatem dolore nihil omnis provident magnam dolore consectetur.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('48', 'cortney.pfeffer@hotmail.com', null, 'sofia40', null, '0', null, '0', '0', 'Adamshaven', 'wdeckow', 'ebba61', 'https://www.jenkins.com/et-in-qui-qui-repellendus-cupiditate-provident-vero-non', 'Nihil amet est qui repudiandae debitis sit eos.', 'Illum libero voluptatibus aut facere aperiam beatae.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('49', 'wisoky.estrella@fisher.com', null, 'whitney.durgan', null, '0', null, '0', '0', 'North Ceceliafurt', 'lambert.frami', 'dwisozk', 'http://www.anderson.com/fugit-sequi-et-rerum-nobis-ut-ab-officia-nemo.html', 'Facilis distinctio magnam aut unde ab exercitationem.', 'Odit sint molestiae nam dolor tempora quia.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
INSERT INTO `users` VALUES ('50', 'fabian30@yahoo.com', null, 'cbergstrom', null, '0', null, '0', '0', 'Port Nicole', 'donny32', 'genesis28', 'http://www.satterfield.com/', 'Quia et voluptates rem eum dolorem dolorem dolores deserunt.', 'Similique dicta laboriosam quae doloremque explicabo officiis.', null, '2015-06-10 19:39:38', '2015-06-10 19:39:38', '0', '', null, '');
