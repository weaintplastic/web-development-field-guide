# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.35-0ubuntu0.12.04.2-log)
# Datenbank: versioning-demo
# Erstellungsdauer: 2014-12-19 10:13:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle box_backup
# ------------------------------------------------------------

CREATE TABLE `box_backup` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `creation` datetime NOT NULL,
  `finish` datetime NOT NULL,
  `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'size in bytes',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `notes` text NOT NULL,
  `origin` varchar(50) NOT NULL DEFAULT 'create' COMMENT 'create, import',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_config
# ------------------------------------------------------------

CREATE TABLE `box_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `key` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(400) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_setting` (`module_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_dictionary
# ------------------------------------------------------------

CREATE TABLE `box_dictionary` (
  `language` varchar(3) NOT NULL DEFAULT 'DE',
  `key` varchar(50) NOT NULL DEFAULT '',
  `translation` varchar(400) NOT NULL DEFAULT '',
  UNIQUE KEY `language_key` (`language`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_geo_ip_range
# ------------------------------------------------------------

CREATE TABLE `box_geo_ip_range` (
  `a_from` varchar(15) DEFAULT NULL,
  `a_to` varchar(15) DEFAULT NULL,
  `n_from` bigint(20) NOT NULL,
  `n_to` bigint(20) NOT NULL,
  `country_code` varchar(5) DEFAULT NULL,
  `country_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_group
# ------------------------------------------------------------

CREATE TABLE `box_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `grouping` tinyint(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_group_module
# ------------------------------------------------------------

CREATE TABLE `box_group_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `assigned` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_group_right
# ------------------------------------------------------------

CREATE TABLE `box_group_right` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `right` char(50) NOT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT '0',
  `assigned` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id_module_id_right` (`group_id`,`module_id`,`right`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='active rights';



# Export von Tabelle box_group_user
# ------------------------------------------------------------

CREATE TABLE `box_group_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `assigned` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_language
# ------------------------------------------------------------

CREATE TABLE `box_language` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `int_name` varchar(50) NOT NULL DEFAULT '',
  `short` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_module
# ------------------------------------------------------------

CREATE TABLE `box_module` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `sort` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_site
# ------------------------------------------------------------

CREATE TABLE `box_site` (
  `domain` varchar(100) DEFAULT NULL,
  `associated_domains` text,
  `host` text,
  `page_id` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`page_id`),
  CONSTRAINT `domain_page` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table stores information about the sites we have in the same box.';



# Export von Tabelle box_site_module_config
# ------------------------------------------------------------

CREATE TABLE `box_site_module_config` (
  `site` int(11) NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  UNIQUE KEY `site_module` (`site`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store configuration for sites by module.';



# Export von Tabelle box_sns_notification
# ------------------------------------------------------------

CREATE TABLE `box_sns_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `message_id` varchar(200) NOT NULL,
  `creation` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table stores all notification that Amazon SNS may send to our box, mainly for the newsletter stuff.';



# Export von Tabelle box_user
# ------------------------------------------------------------

CREATE TABLE `box_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `type` enum('backend','frontend') NOT NULL DEFAULT 'frontend',
  `is_sysuser` tinyint(1) NOT NULL DEFAULT '0',
  `is_sysadmin` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'EN',
  `country` varchar(3) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  `limit_to_ip` varchar(25) DEFAULT NULL,
  `new_password_key` varchar(100) DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) DEFAULT NULL,
  `new_email_key` varchar(50) DEFAULT NULL,
  `last_ip` varchar(45) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_user_autologin
# ------------------------------------------------------------

CREATE TABLE `box_user_autologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle box_user_login_attempts
# ------------------------------------------------------------

CREATE TABLE `box_user_login_attempts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) NOT NULL,
  `login` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_cache
# ------------------------------------------------------------

CREATE TABLE `cms_cache` (
  `key` varchar(32) NOT NULL,
  `page_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `site` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `file` varchar(256) NOT NULL,
  `cached` bigint(20) NOT NULL,
  `expires` bigint(20) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table contains all the cached pages and information about it.';



# Export von Tabelle cms_cache_rule
# ------------------------------------------------------------

CREATE TABLE `cms_cache_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_key` varchar(20) DEFAULT '0',
  `site` int(11) NOT NULL DEFAULT '0',
  `route` varchar(250) DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `cache_lifetime` int(11) DEFAULT '0',
  `cache_units` varchar(15) NOT NULL DEFAULT '0',
  `created` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_collection
# ------------------------------------------------------------

CREATE TABLE `cms_collection` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `site` int(10) NOT NULL DEFAULT '0',
  `creation` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `frontend_writable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_collection_item
# ------------------------------------------------------------

CREATE TABLE `cms_collection_item` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `collection_id` int(10) NOT NULL,
  `sort` int(5) NOT NULL,
  `caption` varchar(200) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `version` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `approved_by` int(10) NOT NULL DEFAULT '1',
  `sent_approval_by` int(10) NOT NULL DEFAULT '0',
  `parent_item` int(10) unsigned NOT NULL DEFAULT '0',
  `create_tstamp` bigint(13) NOT NULL DEFAULT '0',
  `update_tstamp` bigint(13) NOT NULL DEFAULT '0',
  `sent_approval_tstamp` bigint(13) NOT NULL DEFAULT '0',
  `approve_tstamp` bigint(13) NOT NULL DEFAULT '0',
  `created_by` int(10) NOT NULL DEFAULT '1',
  `updated_by` int(10) NOT NULL DEFAULT '1',
  `publish_start` datetime NOT NULL,
  `publish_end` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_content
# ------------------------------------------------------------

CREATE TABLE `cms_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) NOT NULL,
  `owner_type` enum('page','collection') NOT NULL,
  `version` int(9) NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_FI_1` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_file_gallery
# ------------------------------------------------------------

CREATE TABLE `cms_file_gallery` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site` int(10) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `folder` varchar(200) NOT NULL,
  `allowed_extensions` varchar(150) NOT NULL DEFAULT 'gif|jpg|jpeg|png',
  `max_file_size` int(11) NOT NULL DEFAULT '100000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_file_gallery_file
# ------------------------------------------------------------

CREATE TABLE `cms_file_gallery_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gallery_id` bigint(20) NOT NULL,
  `size_keys` varchar(200) NOT NULL,
  `filename` varchar(300) NOT NULL,
  `filesize` bigint(20) NOT NULL DEFAULT '0',
  `is_image` tinyint(4) NOT NULL DEFAULT '1',
  `tstamp` bigint(13) unsigned NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `caption` varchar(300) NOT NULL,
  `copyright_author` varchar(300) NOT NULL,
  `description` varchar(500) NOT NULL,
  `state` int(5) NOT NULL DEFAULT '0' COMMENT '0 = offline, 1 = online',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_list_search
# ------------------------------------------------------------

CREATE TABLE `cms_list_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `collection_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `route` varchar(512) NOT NULL,
  `content` text NOT NULL,
  `checksum` char(50) NOT NULL,
  `updated` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `slug_content_page_route` (`route`,`content`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='DB that allows to perform searches on list items.';



# Export von Tabelle cms_page
# ------------------------------------------------------------

CREATE TABLE `cms_page` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `type` set('site','content') NOT NULL DEFAULT 'content',
  `route` varchar(400) NOT NULL DEFAULT '',
  `strict_route` tinyint(1) NOT NULL DEFAULT '1',
  `template_id` int(10) NOT NULL,
  `redirect_page_id` int(10) NOT NULL DEFAULT '0',
  `redirect_url` varchar(500) NOT NULL DEFAULT '',
  `redirect_status` smallint(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `version` int(9) NOT NULL,
  `live_version` int(10) NOT NULL,
  `sitemap` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap_prio` decimal(2,1) NOT NULL,
  `sitemap_changefreq` varchar(20) NOT NULL,
  `menu` tinyint(1) NOT NULL DEFAULT '1',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(10) NOT NULL DEFAULT '0',
  `creation` datetime NOT NULL,
  `alter` datetime NOT NULL,
  `publish_start` datetime NOT NULL,
  `publish_end` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_redirection
# ------------------------------------------------------------

CREATE TABLE `cms_redirection` (
  `redirect_from` varchar(250) NOT NULL,
  `redirect_to` int(11) NOT NULL,
  `http_status` set('301','302') NOT NULL DEFAULT '302',
  PRIMARY KEY (`redirect_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_search
# ------------------------------------------------------------

CREATE TABLE `cms_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site` int(10) unsigned NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `route` text NOT NULL,
  `content` text NOT NULL,
  `checksum` varchar(50) NOT NULL DEFAULT '',
  `meta_title` text,
  `meta_description` text,
  `meta_keywords` text,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name_route_content_meta_title_meta_description_meta_keywords` (`name`,`route`,`content`,`meta_title`,`meta_description`,`meta_keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Export von Tabelle cms_search_tracking
# ------------------------------------------------------------

CREATE TABLE `cms_search_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `searchstring` varchar(255) NOT NULL,
  `searches` int(11) NOT NULL DEFAULT '0',
  `last_search` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hits_last_search` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `searchstring` (`searchstring`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_shortcut
# ------------------------------------------------------------

CREATE TABLE `cms_shortcut` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_template
# ------------------------------------------------------------

CREATE TABLE `cms_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL,
  `site` int(10) DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `file` varchar(50) NOT NULL,
  `creation` date NOT NULL,
  `type` smallint(4) NOT NULL DEFAULT '1',
  `selectable_all_users` tinyint(4) NOT NULL DEFAULT '0',
  `snippet_names` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle cms_version
# ------------------------------------------------------------

CREATE TABLE `cms_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) DEFAULT NULL,
  `item_type` set('collection','page') DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `hash_content` varchar(100) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `is_live` tinyint(1) DEFAULT '0',
  `created` bigint(20) DEFAULT NULL,
  `updated` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle countries
# ------------------------------------------------------------

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Export von Tabelle nls_campaign
# ------------------------------------------------------------

CREATE TABLE `nls_campaign` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site` int(10) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `test_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `finish_time` datetime DEFAULT NULL,
  `num_recipients` bigint(20) unsigned NOT NULL DEFAULT '0',
  `done_recipients` bigint(20) unsigned NOT NULL DEFAULT '0',
  `status` enum('idle','working','failed','aborted','done') NOT NULL DEFAULT 'idle',
  `tracking` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A campaign combines a newsletter and its recipients.';



# Export von Tabelle nls_content
# ------------------------------------------------------------

CREATE TABLE `nls_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `newsletter_id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle nls_link
# ------------------------------------------------------------

CREATE TABLE `nls_link` (
  `hash` varchar(50) NOT NULL,
  `link` text NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `creation` bigint(20) NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links that a newsletter includes';



# Export von Tabelle nls_link_click
# ------------------------------------------------------------

CREATE TABLE `nls_link_click` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `creation` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle nls_newsletter
# ------------------------------------------------------------

CREATE TABLE `nls_newsletter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `hash` varchar(20) NOT NULL DEFAULT '',
  `group_ids` varchar(100) NOT NULL DEFAULT '' COMMENT 'recipient group IDs',
  `creation` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `template_id` bigint(20) NOT NULL DEFAULT '0',
  `site` int(10) NOT NULL DEFAULT '0',
  `sender_name` varchar(100) NOT NULL DEFAULT '',
  `sender_email` varchar(100) NOT NULL DEFAULT '',
  `service` varchar(50) NOT NULL DEFAULT 'codeigniter',
  `subject` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle nls_recipient
# ------------------------------------------------------------

CREATE TABLE `nls_recipient` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `salutation` varchar(50) NOT NULL DEFAULT '',
  `gender` set('male','female','unknown') NOT NULL DEFAULT 'unknown',
  `site` int(10) NOT NULL DEFAULT '0',
  `creation` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `token` text,
  `snippet_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle nls_recipient_assignment
# ------------------------------------------------------------

CREATE TABLE `nls_recipient_assignment` (
  `recipient_id` bigint(20) NOT NULL,
  `group_id` int(10) NOT NULL,
  UNIQUE KEY `recipient_id` (`recipient_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle nls_recipient_group
# ------------------------------------------------------------

CREATE TABLE `nls_recipient_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `origin` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(10) NOT NULL DEFAULT '0',
  `creation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle nls_send_log
# ------------------------------------------------------------

CREATE TABLE `nls_send_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `campaign_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `msg_id` varchar(100) NOT NULL DEFAULT '0',
  `time` int(13) unsigned NOT NULL DEFAULT '0',
  `update_tstamp` int(13) unsigned NOT NULL DEFAULT '0',
  `diagnostic` text NOT NULL,
  `opening_time` bigint(20) NOT NULL,
  `success` char(1) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `unsubscribed` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle nls_template
# ------------------------------------------------------------

CREATE TABLE `nls_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `creation` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `file` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_custom_fields
# ------------------------------------------------------------

CREATE TABLE `ugm_custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `meta_key` varchar(255) NOT NULL DEFAULT '0',
  `dict_key` varchar(255) DEFAULT NULL,
  `options` text,
  `site` int(10) DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_custom_fields_groups
# ------------------------------------------------------------

CREATE TABLE `ugm_custom_fields_groups` (
  `custom_field_id` int(10) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`custom_field_id`,`group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `ugm_custom_fields_groups_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `ugm_custom_fields` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `ugm_custom_fields_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `ugm_group` (`group_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_group
# ------------------------------------------------------------

CREATE TABLE `ugm_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(50) NOT NULL,
  `site` int(10) NOT NULL DEFAULT '0',
  `full` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  `default` tinyint(1) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_group_permission
# ------------------------------------------------------------

CREATE TABLE `ugm_group_permission` (
  `group_id` smallint(5) unsigned NOT NULL,
  `module_id` tinyint(3) unsigned NOT NULL,
  `permission` varchar(100) NOT NULL,
  `object_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`,`object_id`,`permission`),
  UNIQUE KEY `unique` (`group_id`,`object_id`,`module_id`,`permission`),
  KEY `group_id2_idx` (`group_id`),
  CONSTRAINT `group_id2` FOREIGN KEY (`group_id`) REFERENCES `ugm_group` (`group_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_mailtemplate
# ------------------------------------------------------------

CREATE TABLE `ugm_mailtemplate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site` int(10) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `cms_page_id` bigint(20) DEFAULT NULL,
  `code` text,
  `modified` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_user
# ------------------------------------------------------------

CREATE TABLE `ugm_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gender` varchar(1) NOT NULL DEFAULT '',
  `salutation` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(100) NOT NULL DEFAULT '',
  `lastname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `facebook_id` bigint(20) unsigned DEFAULT NULL,
  `facebook_access_token` text,
  `twitter_id` bigint(20) unsigned DEFAULT NULL,
  `twitter_access_token` text,
  `twitter_access_secret` text,
  `language` varchar(3) NOT NULL DEFAULT '',
  `country` varchar(10) NOT NULL DEFAULT '',
  `deleted` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `site` int(10) NOT NULL DEFAULT '0',
  `birthdate` datetime DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `is_sysuser` tinyint(1) NOT NULL DEFAULT '0',
  `limit_to_ip` varchar(100) DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(4) NOT NULL DEFAULT '0',
  `new_password_key` varchar(100) DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) DEFAULT NULL,
  `new_email_key` varchar(100) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL COMMENT 'For acct approval.',
  `meta` varchar(2000) DEFAULT '',
  `last_ip` varchar(45) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_count` int(10) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_email_site` (`username`,`email`,`site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_user_autologin
# ------------------------------------------------------------

CREATE TABLE `ugm_user_autologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_user_group
# ------------------------------------------------------------

CREATE TABLE `ugm_user_group` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL,
  `assigned` datetime NOT NULL,
  `assigned_by` int(10) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `user_id2_idx` (`user_id`),
  KEY `group_id1_idx` (`group_id`),
  CONSTRAINT `group_id1` FOREIGN KEY (`group_id`) REFERENCES `ugm_group` (`group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_id2` FOREIGN KEY (`user_id`) REFERENCES `ugm_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_user_login
# ------------------------------------------------------------

CREATE TABLE `ugm_user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_user_login_attempts
# ------------------------------------------------------------

CREATE TABLE `ugm_user_login_attempts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) NOT NULL,
  `site` int(10) NOT NULL DEFAULT '0',
  `login` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle ugm_user_meta
# ------------------------------------------------------------

CREATE TABLE `ugm_user_meta` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`key`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `ugm_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
