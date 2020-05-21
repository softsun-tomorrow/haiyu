-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- 主机: 222.73.129.135
-- 生成日期: 2013 年 08 月 23 日 17:26
-- 服务器版本: 5.0.95
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- 表的结构 `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- 表的结构 `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1),
('dec8_bin', 'dec8', 69, '', 'Yes', 1),
('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1),
('cp850_bin', 'cp850', 80, '', 'Yes', 1),
('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1),
('hp8_bin', 'hp8', 72, '', 'Yes', 1),
('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1),
('koi8r_bin', 'koi8r', 74, '', 'Yes', 1),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1),
('swe7_bin', 'swe7', 82, '', 'Yes', 1),
('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1),
('ascii_bin', 'ascii', 65, '', 'Yes', 1),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1),
('hebrew_bin', 'hebrew', 71, '', 'Yes', 1),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1),
('koi8u_bin', 'koi8u', 75, '', 'Yes', 1),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1),
('greek_bin', 'greek', 70, '', 'Yes', 1),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1),
('latin5_bin', 'latin5', 78, '', 'Yes', 1),
('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1),
('armscii8_bin', 'armscii8', 64, '', 'Yes', 1),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1),
('cp866_bin', 'cp866', 68, '', 'Yes', 1),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1),
('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1),
('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1),
('macce_bin', 'macce', 43, '', 'Yes', 1),
('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1),
('macroman_bin', 'macroman', 53, '', 'Yes', 1),
('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1),
('cp852_bin', 'cp852', 81, '', 'Yes', 1),
('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1),
('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1),
('latin7_general_cs', 'latin7', 42, '', 'Yes', 1),
('latin7_bin', 'latin7', 79, '', 'Yes', 1),
('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1),
('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1),
('cp1251_bin', 'cp1251', 50, '', 'Yes', 1),
('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1),
('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1),
('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1),
('cp1256_bin', 'cp1256', 67, '', 'Yes', 1),
('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1),
('cp1257_bin', 'cp1257', 58, '', 'Yes', 1),
('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1),
('geostd8_bin', 'geostd8', 93, '', 'Yes', 1),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- 表的结构 `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- 表的结构 `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'category', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'title', 3, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'uid', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'keywords', 5, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'description', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'content', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'copyfrom', 8, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'fromlink', 9, NULL, 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'thumb', 10, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'color', 11, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'isbold', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'tags', 13, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'recommends', 14, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'hits', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'realhits', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'createtime', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'updatetime', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'puttime', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'tpl', 20, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'listorder', 21, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'status', 22, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'lang', 23, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'category', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'title', 3, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'uid', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'keywords', 5, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'description', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'content', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'thumb', 8, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'color', 9, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'isbold', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'tags', 11, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'recommends', 12, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'hits', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'realhits', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'createtime', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'updatetime', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'puttime', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'tpl', 18, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'listorder', 19, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'status', 20, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'lang', 21, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 'name', 2, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 'thumb', 3, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', '属性图片'),
(NULL, 'sq_haiyu22', 'cms_attribute', 'listorder', 4, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', '', '', 'select,insert,update', '排序'),
(NULL, 'sq_haiyu22', 'cms_attribute', 'parent', 5, '0', 'YES', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 'status', 6, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 'lang', 7, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'parent', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'lft', 3, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(9) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'rht', 4, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(9) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'name', 5, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'isexternal', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'externalurl', 7, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'target', 8, '_self', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'dir', 9, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'title', 10, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'keywords', 11, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'description', 12, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'model', 13, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'thumb', 14, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'content', 15, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'color', 16, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'tpllist', 17, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'tpldetail', 18, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'pagesize', 19, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'isnavigation', 20, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'isdisabled', 21, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'listorder', 22, '99', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_category', 'lang', 23, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'varname', 2, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'title', 3, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'category', 4, NULL, 'NO', 'char', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(10)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'value', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'issystem', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'lang', 7, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'category', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'title', 3, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'uid', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'keywords', 5, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'description', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'content', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'thumb', 8, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'color', 9, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'attrurl', 10, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'attrname', 11, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'isbold', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'tags', 13, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'recommends', 14, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'hits', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'realhits', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'createtime', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'updatetime', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'puttime', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'tpl', 20, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'listorder', 21, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'status', 22, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'lang', 23, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'title', 2, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'varname', 3, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'content', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'remark', 5, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'createtime', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'updatetime', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'status', 8, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'lang', 9, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'category', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'title', 3, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'firstname', 4, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'surname', 5, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'gender', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'country', 7, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'uid', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'replyuid', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'sq_haiyu22', 'cms_guestbook', 'author', 10, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'email', 11, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'phone', 12, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'description', 13, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'content', 14, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'createtime', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'replytime', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'status', 17, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'listorder', 18, '999', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(9)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'lang', 19, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'category', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'title', 3, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'uid', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'keywords', 5, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'description', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'content', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'num', 8, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'city', 9, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'year', 10, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'thumb', 11, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'color', 12, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'isbold', 13, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'tags', 14, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'recommends', 15, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'hits', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'realhits', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'createtime', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'updatetime', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'puttime', 20, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'tpl', 21, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'listorder', 22, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'status', 23, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'lang', 24, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 'title', 2, NULL, 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 'url', 3, NULL, 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 'listorder', 4, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 'status', 5, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 'lang', 6, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 'title', 2, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 'varname', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 'icon', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 'listorder', 5, '99', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 'status', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'type', 2, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'title', 3, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'description', 4, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'thumb', 5, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'url', 6, NULL, 'NO', 'varchar', 150, 450, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(150)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'remark', 7, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'createtime', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'updatetime', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'listorder', 10, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'status', 11, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'lang', 12, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_model', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_model', 'varname', 2, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_model', 'listorder', 3, '99', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_model', 'issearch', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_model', 'isrecommend', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_model', 'status', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'type', 2, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'title', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'url', 4, NULL, 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'color', 5, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'remark', 6, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'rel', 7, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'thumb', 8, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'listorder', 9, '99', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'status', 10, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'lang', 11, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'type', 2, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'title', 3, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'description', 4, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'remark', 5, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'listorder', 6, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'status', 7, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'lang', 8, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'category', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'title', 3, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'uid', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'keywords', 5, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'description', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'content', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'price', 8, NULL, 'NO', 'float', NULL, NULL, 10, 2, NULL, NULL, 'float(10,2) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'thumb', 9, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', '产品图片路径，建议不包含图片'),
(NULL, 'sq_haiyu22', 'cms_product', 'thumb2', 10, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'thumb3', 11, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'thumb4', 12, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'preview', 13, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'small', 14, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'medium', 15, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'large', 16, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'color', 17, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'isbold', 18, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'tags', 19, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'attrs', 20, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'recommends', 21, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'hits', 22, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'realhits', 23, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'createtime', 24, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'updatetime', 25, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'puttime', 26, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'tpl', 27, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'listorder', 28, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'status', 29, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'lang', 30, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 'parent', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 'class', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 'method', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 'listorder', 5, '99', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 'status', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'title', 2, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'model', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'remark', 4, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'createtime', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'updatetime', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'listorder', 7, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'status', 8, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'lang', 9, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 'session_id', 1, '0', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(40)', 'PRI', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 'ip_address', 2, '0', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 'user_agent', 3, NULL, 'NO', 'varchar', 120, 360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(120)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 'last_activity', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 'user_data', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'type', 2, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'title', 3, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'description', 4, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'thumb', 5, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'url', 6, NULL, 'NO', 'varchar', 150, 450, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(150)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'remark', 7, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'createtime', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'updatetime', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'listorder', 10, '999', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'status', 11, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'lang', 12, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 'title', 2, NULL, 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 'url', 3, NULL, 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 'listorder', 4, '999', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(9) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 'status', 5, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 'lang', 6, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 'title', 2, NULL, 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 'type', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 'value', 4, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 'description', 5, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 'listorder', 6, '99', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(9) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'title', 2, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'class', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'remark', 4, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'thumb', 5, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'position', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'listorder', 7, '99', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'status', 8, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'lang', 9, 'zh_cn', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'usergroup', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'username', 3, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'password', 4, NULL, 'NO', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(32)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'salt', 5, '', 'NO', 'char', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(6)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'email', 6, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'realname', 7, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'sex', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'tel', 9, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'mobile', 10, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'fax', 11, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'address', 12, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'createtime', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'updatetime', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'lasttime', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'regip', 16, NULL, 'NO', 'char', 15, 45, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(15)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'lastip', 17, NULL, 'NO', 'char', 15, 45, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(15)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'logincount', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'status', 19, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 'id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 'varname', 2, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 'listorder', 3, '99', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 'purview', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 'isupdate', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 'status', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update', '');

-- --------------------------------------------------------

--
-- 表的结构 `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_article', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_ask', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_attribute', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_category', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_config', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_down', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_fragment', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_guestbook', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_hr', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_keywords', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_lang', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_link', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_model', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_navigation', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_online', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_product', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_purview', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_recommend', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_sessions', 'session_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_slide', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_tags', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_tpltags', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_type', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_user', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'sq_haiyu22', 'PRIMARY', NULL, 'sq_haiyu22', 'cms_usergroup', 'id', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` decimal(9,6) NOT NULL default '0.000000',
  `CPU_USER` decimal(9,6) default NULL,
  `CPU_SYSTEM` decimal(9,6) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- 读取数据时发生错误: (#1289 - The 'SHOW PROFILE' feature is disabled; you need MySQL built with 'enable-profiling' to have it working)

-- --------------------------------------------------------

--
-- 表的结构 `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'sq_haiyu22', 'latin1', 'latin1_swedish_ci', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'SELECT', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'INSERT', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'UPDATE', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'DELETE', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'CREATE', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'DROP', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'INDEX', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'ALTER', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'CREATE TEMPORARY TABLES', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'LOCK TABLES', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'EXECUTE', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'CREATE VIEW', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'SHOW VIEW', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'CREATE ROUTINE', 'NO'),
('''sq_haiyu22''@''%''', NULL, 'sq_haiyu22', 'ALTER ROUTINE', 'NO');

-- --------------------------------------------------------

--
-- 表的结构 `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'sq_haiyu22', 'cms_article', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 15, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_article', 1, 'sq_haiyu22', 'category', 1, 'category', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_article', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_article', 1, 'sq_haiyu22', 'recommend', 1, 'recommends', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 1, 'sq_haiyu22', 'category', 1, 'category', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 1, 'sq_haiyu22', 'recommend', 1, 'recommends', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 33, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 1, 'sq_haiyu22', 'name', 1, 'name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_category', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 18, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_category', 1, 'sq_haiyu22', 'parent', 1, 'parent', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_category', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_category', 1, 'sq_haiyu22', 'dir', 1, 'dir', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_config', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 46, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_config', 1, 'sq_haiyu22', 'category', 1, 'category', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_config', 1, 'sq_haiyu22', 'varname', 1, 'varname', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_config', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_down', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_down', 1, 'sq_haiyu22', 'category', 1, 'category', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_down', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_down', 1, 'sq_haiyu22', 'recommend', 1, 'recommends', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 22, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 1, 'sq_haiyu22', 'category', 1, 'category', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 1, 'sq_haiyu22', 'category', 1, 'category', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 1, 'sq_haiyu22', 'recommend', 1, 'recommends', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 1, 'sq_haiyu22', 'title', 1, 'title', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_link', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 5, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_link', 1, 'sq_haiyu22', 'category', 1, 'type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_link', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_model', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_model', 1, 'sq_haiyu22', 'varname', 1, 'varname', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 1, 'sq_haiyu22', 'type', 1, 'type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_online', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_online', 1, 'sq_haiyu22', 'category', 1, 'type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_online', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_product', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_product', 1, 'sq_haiyu22', 'category', 1, 'category', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_product', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_product', 1, 'sq_haiyu22', 'recommend', 1, 'recommends', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 38, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 1, 'sq_haiyu22', 'parent', 1, 'parent', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 1, 'sq_haiyu22', 'model', 1, 'model', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 0, 'sq_haiyu22', 'PRIMARY', 1, 'session_id', 'A', 64, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 1, 'sq_haiyu22', 'last_activity_idx', 1, 'last_activity', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 1, 'sq_haiyu22', 'category', 1, 'type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 20, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 1, 'sq_haiyu22', 'type', 1, 'type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_type', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 5, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_type', 1, 'sq_haiyu22', 'lang', 1, 'lang', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_user', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_user', 1, 'sq_haiyu22', 'usergroup', 1, 'usergroup', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 0, 'sq_haiyu22', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- 表的结构 `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 576, 0, 16661376, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=29127', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 423, 0, 16737264, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=39662', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 387, 0, 16733880, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=43351', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2013-08-23 09:43:13', '2013-08-23 09:43:13', NULL, 'utf8_general_ci', NULL, 'max_rows=8715', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6540', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3618', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 356, 0, 16590668, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=47127', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2013-08-23 09:43:13', '2013-08-23 09:43:13', NULL, 'utf8_general_ci', NULL, 'max_rows=9172', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3656, 0, 16755448, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4588', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2179, 0, 16767405, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7699', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6262', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3641, 0, 16763164, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4607', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2504, 0, 16749256, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6700', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7073', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2013-08-23 09:43:13', '2013-08-23 09:43:13', NULL, 'utf8_general_ci', NULL, 'max_rows=7652', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 1986, 0, 16759854, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=8447', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2013-08-23 09:43:13', '2013-08-23 09:43:13', NULL, 'utf8_general_ci', NULL, 'max_rows=15073', ''),
(NULL, 'sq_haiyu22', 'cms_article', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 15, 1937, 65928, 281474976710655, 8192, 36868, 37, '2013-08-16 07:17:43', '2013-08-22 01:03:23', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_ask', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 6676, 281474976710655, 8192, 6676, 9, '2013-08-16 07:17:44', '2013-08-16 08:48:33', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_attribute', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 33, 32, 1100, 281474976710655, 3072, 24, 36, '2013-08-16 07:17:44', '2013-08-16 08:48:13', NULL, 'utf8_general_ci', NULL, '', '产品属性表'),
(NULL, 'sq_haiyu22', 'cms_category', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 18, 535, 13076, 281474976710655, 5120, 3444, 45, '2013-08-16 07:17:45', '2013-08-23 09:40:10', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_config', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 46, 44, 2056, 281474976710655, 5120, 0, 54, '2013-08-16 07:17:45', '2013-08-22 05:55:17', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_down', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 1180, 281474976710655, 8192, 1180, 6, '2013-08-16 07:17:45', '2013-08-16 08:47:26', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_fragment', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 1972, 281474976710655, 3072, 1972, 5, '2013-08-16 07:17:46', '2013-08-16 08:49:19', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_guestbook', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 22, 70, 5924, 281474976710655, 4096, 4384, 125, '2013-08-16 07:17:46', '2013-08-22 05:59:04', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_hr', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 236, 281474976710655, 8192, 236, 3, '2013-08-16 07:17:47', '2013-08-16 08:49:31', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_keywords', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 48, 281474976710655, 6144, 48, 4, '2013-08-16 07:17:47', '2013-08-16 08:49:42', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_lang', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 52, 104, 281474976710655, 2048, 0, 3, '2013-08-16 07:17:47', '2013-08-16 07:17:48', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_link', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 5, 117, 876, 281474976710655, 4096, 288, 9, '2013-08-16 07:17:48', '2013-08-22 08:04:35', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_model', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 7, 20, 140, 281474976710655, 3072, 0, 8, '2013-08-16 07:17:48', '2013-08-16 07:17:48', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_navigation', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 42, 84, 281474976710655, 4096, 0, 28, '2013-08-16 07:17:48', '2013-08-16 07:17:49', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_online', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 364, 281474976710655, 4096, 364, 11, '2013-08-16 07:17:49', '2013-08-16 08:50:14', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_product', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 776, 19496, 281474976710655, 8192, 17168, 17, '2013-08-16 07:17:49', '2013-08-23 06:35:09', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_purview', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 38, 34, 1328, 281474976710655, 3072, 0, 56, '2013-08-16 07:17:50', '2013-08-16 07:17:50', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_recommend', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 44, 281474976710655, 4096, 44, 2, '2013-08-16 07:17:50', '2013-08-16 08:51:02', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_sessions', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 64, 161, 51580, 281474976710655, 27648, 41228, NULL, '2013-08-16 07:17:50', '2013-08-23 09:39:23', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_slide', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 111, 964, 281474976710655, 4096, 520, 13, '2013-08-16 07:17:51', '2013-08-22 06:07:33', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_tags', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 432, 281474976710655, 3072, 432, 45, '2013-08-16 07:17:51', '2013-08-16 08:51:46', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_tpltags', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 20, 462, 9256, 281474976710655, 3072, 0, 21, '2013-08-16 07:17:52', '2013-08-16 07:17:52', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_type', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 5, 40, 204, 281474976710655, 3072, 0, 6, '2013-08-16 07:17:52', '2013-08-16 07:17:52', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_user', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 140, 140, 281474976710655, 3072, 0, 6, '2013-08-16 07:17:52', '2013-08-23 08:43:41', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'sq_haiyu22', 'cms_usergroup', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 5860, 17580, 281474976710655, 2048, 0, 13, '2013-08-16 07:17:53', '2013-08-16 07:17:53', NULL, 'utf8_general_ci', NULL, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_article', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_ask', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_attribute', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_category', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_config', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_down', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_fragment', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_guestbook', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_hr', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_keywords', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_lang', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_link', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_model', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_navigation', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_online', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_product', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_purview', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_recommend', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_sessions', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_slide', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_tags', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_tpltags', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_type', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_user', 'PRIMARY KEY'),
(NULL, 'sq_haiyu22', 'PRIMARY', 'sq_haiyu22', 'cms_usergroup', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- 表的结构 `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''sq_haiyu22''@''%''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- 表的结构 `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- 数据库: `sq_haiyu22`
--
CREATE DATABASE `sq_haiyu22` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sq_haiyu22`;

-- --------------------------------------------------------

--
-- 表的结构 `cms_article`
--

CREATE TABLE IF NOT EXISTS `cms_article` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category` mediumint(8) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `copyfrom` varchar(100) NOT NULL,
  `fromlink` varchar(200) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `realhits` int(10) unsigned NOT NULL default '0',
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `puttime` int(10) unsigned NOT NULL default '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `cms_article`
--

INSERT INTO `cms_article` (`id`, `category`, `title`, `uid`, `keywords`, `description`, `content`, `copyfrom`, `fromlink`, `thumb`, `color`, `isbold`, `tags`, `recommends`, `hits`, `realhits`, `createtime`, `updatetime`, `puttime`, `tpl`, `listorder`, `status`, `lang`) VALUES
(22, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 44, 44, 1375896609, 1375897905, 1375896530, '', 999, 1, 'en'),
(23, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375972992, 1375973198, 1375972920, '', 999, 1, 'en'),
(24, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 3, 3, 1375973183, 1375973183, 1375973097, '', 999, 1, 'en'),
(26, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 18, 18, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(25, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 3, 3, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(27, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 4, 4, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(28, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(29, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(30, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(31, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(32, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(33, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(34, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(35, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 2, 2, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en'),
(36, 26, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 1, 'CRAIG BURLTON WINS THE ROYAL SOUTHERN JUNE', 'Having undergone series of strict trainings starting from South Hemisphere, New Zealand,Hav ing underg one series of Having undergone series of strict trainings starting from South Hemis', '<p>\n <img src="http://www.liusgear.com/data/attachment/image/20130808/78fdfe2ad0fad6348087b91e7bc218ea.jpg" alt="" /> \n</p>\n<p>\n <br />\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n Dear friends,\n</p>\n<p class="mb20" style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n March 11, 2011 is for sure one of the most shocking days for all Japanese and foreign people living here in Japan…… With the spirits of love and sharing, we firmly believe that all the tragedies resulted from this 9.0 magnitude earthquake will not stay silent, but roar out loud into promising energy to unit us together to rebuild our homelands.\n</p>\n<p style="font-family:Arial;color:#484848;background-color:#FFFFFF;">\n During the past days, we learn more and more damages caused by the devastating earthquakes and the aftershocks from the media. Even so, we still find it very difficult to believe or a ccept what has actually happeed to our peaceful lands. We see the people who have been deprived of their loved ones without warning were so shocked that they even forgot how to w eep We don''t think we can really share their loss because it''s only those who have actually lost their loved ones can really know. However, we do think we can at least do something, n o matter how small it is, to let them know that they are not alone, that we care for them, that we would love to help.<span style="font-family:''sans serif'', tahoma, verdana, helvetica;line-height:1.5;"></span> \n</p>\n<p>\n <br />\n</p>', '', 'http://www.liusgear.com/', 'data/attachment/image/20130808/308fa0075abcb03ec3515ee44253faf7.jpg', '', 0, '0', '', 3, 3, 1375973467, 1375973476, 1375973426, '', 999, 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_ask`
--

CREATE TABLE IF NOT EXISTS `cms_ask` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category` mediumint(8) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `realhits` int(10) unsigned NOT NULL default '0',
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `puttime` int(10) unsigned NOT NULL default '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_attribute`
--

CREATE TABLE IF NOT EXISTS `cms_attribute` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `thumb` varchar(100) NOT NULL COMMENT '属性图片',
  `listorder` int(10) default '0' COMMENT '排序',
  `parent` mediumint(8) unsigned default '0',
  `status` tinyint(1) NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='产品属性表' AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `cms_attribute`
--

INSERT INTO `cms_attribute` (`id`, `name`, `thumb`, `listorder`, `parent`, `status`, `lang`) VALUES
(1, 'GENDER', '', 1, 0, 1, 'en'),
(3, 'MEN', '', 2, 1, 1, 'en'),
(4, 'WOMEN', '', 3, 1, 1, 'en'),
(5, 'JUNIOR', '', 4, 1, 1, 'en'),
(6, 'CATEGORY', '', 5, 0, 1, 'en'),
(7, 'DRYSUITS', '', 7, 6, 1, 'en'),
(8, 'WETSUITS', '', 8, 6, 1, 'en'),
(9, 'JACKETS', '', 9, 6, 1, 'en'),
(10, 'RASH VESTS', '', 10, 6, 1, 'en'),
(11, 'THERMALS', '', 11, 6, 1, 'en'),
(12, 'DRY TOPS', '', 12, 6, 1, 'en'),
(13, 'BOTTOMS', '', 13, 6, 1, 'en'),
(14, 'GLOVES', '', 14, 6, 1, 'en'),
(15, 'FOOTWEAR', '', 15, 6, 1, 'en'),
(16, 'HEADGEAR', '', 16, 6, 1, 'en'),
(17, 'BUOYANCY AIDS', '', 17, 6, 1, 'en'),
(18, 'FEATURES', '', 18, 0, 1, 'en'),
(19, 'SELECT COLOUR', '', 19, 0, 1, 'en'),
(20, 'SIZE', '', 20, 0, 1, 'en'),
(21, 'THICKNESS', '', 21, 0, 1, 'en'),
(23, '2/1.5mm', '', 999, 21, 1, 'en'),
(24, '100% Cotton, 200gsm', '', 999, 18, 1, 'en'),
(25, 'High quality trim and detailing', '', 999, 18, 1, 'en'),
(26, 'Pre-stretched cotton', '', 999, 18, 1, 'en'),
(27, 'XS', '', 999, 20, 1, 'en'),
(28, 'S', '', 999, 20, 1, 'en'),
(29, 'M', '', 999, 20, 1, 'en'),
(30, 'L', '', 999, 20, 1, 'en'),
(31, 'XL', '', 999, 20, 1, 'en'),
(32, 'XXL', '', 999, 20, 1, 'en'),
(33, 'grey/black', 'data/attibute/image/20130814/346afa30e79c78bb9bd83af86f6d0024.jpg', 999, 19, 1, 'en'),
(34, '96% Polypropylene, 4% Elastane', '', 999, 18, 1, 'en'),
(35, 'BASELAYER', '', 999, 6, 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_category`
--

CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `parent` mediumint(8) unsigned NOT NULL default '0',
  `lft` mediumint(9) unsigned NOT NULL,
  `rht` mediumint(9) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `isexternal` tinyint(1) NOT NULL default '0',
  `externalurl` varchar(255) NOT NULL,
  `target` varchar(10) NOT NULL default '_self',
  `dir` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(20) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `color` char(7) NOT NULL,
  `tpllist` varchar(20) NOT NULL,
  `tpldetail` varchar(20) NOT NULL,
  `pagesize` tinyint(4) unsigned NOT NULL default '0',
  `isnavigation` tinyint(1) unsigned NOT NULL default '1',
  `isdisabled` tinyint(1) unsigned NOT NULL default '0',
  `listorder` tinyint(4) unsigned NOT NULL default '99',
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `parent` (`parent`),
  KEY `lang` (`lang`),
  KEY `dir` (`dir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `cms_category`
--

INSERT INTO `cms_category` (`id`, `parent`, `lft`, `rht`, `name`, `isexternal`, `externalurl`, `target`, `dir`, `title`, `keywords`, `description`, `model`, `thumb`, `content`, `color`, `tpllist`, `tpldetail`, `pagesize`, `isnavigation`, `isdisabled`, `listorder`, `lang`) VALUES
(40, 21, 28, 29, 'QUALITY ASSURANCE', 0, '', '_self', 'quality', 'QUALITY ASSURANCE', 'QUALITY ASSURANCE', 'QUALITY ASSURANCE', 'page', '', '', '', '', '', 0, 1, 0, 99, 'en'),
(36, 18, 8, 9, 'WHY LIUS', 0, '', '_self', 'why', '', '', '', 'page', '', '', '', '', '', 0, 1, 0, 99, 'en'),
(15, 0, 1, 2, 'GEAR', 0, '', '_self', 'gear', '', '', '', 'product', 'data/attachment/image/20130808/31aa68bfec5647e7b4964b353ae4c1bd.jpg', '', '', '', '', 0, 1, 0, 1, 'en'),
(18, 0, 3, 10, 'OUR STORY', 1, '/index.php?/category/logosource', '_self', 'story', '', '', '', 'page', 'data/attachment/image/20130808/9e4bea82a6338a65519b20d99ed1bbe8.jpg', '', '', '', '', 0, 1, 0, 2, 'en'),
(19, 0, 11, 18, 'NEWS', 1, '/index.php?/category/2013', '_self', 'news', '', '', '', 'article', '', '', '', '', '', 0, 1, 0, 3, 'en'),
(20, 0, 19, 22, 'TECH', 1, '/index.php?/category/cocp', '_self', 'tech', '', '', '', 'article', '', '', '', '', '', 0, 1, 0, 4, 'en'),
(21, 0, 23, 32, 'SERVICES', 1, '/index.php?/category/productcare', '_self', 'services', '', '', '', 'page', '', '', '', '', '', 0, 1, 0, 5, 'en'),
(33, 18, 4, 5, 'LOGO SOURCE', 0, '', '_self', 'logosource', 'LOGO SOURCE', 'LOGO SOURCE', 'LOGO SOURCE', 'page', '', '<div class="company-logo ks-clear">\r\n <ul>\r\n  <li>\r\n   <div class="logo-pic">\r\n    <img src="http://www.liusgear.com/data/attachment/image/20130809/3cdb3b338716f2fe095e74a6788e630b.jpg" alt="" /> \r\n   </div>\r\n<img src="http://www.liusgear.com/data/attachment/image/20130809/badf5f4eefc391806554d9d69999013d.jpg" alt="" /> \r\n  </li>\r\n  <li>\r\n   <div class="logo-pic">\r\n    <img src="http://www.liusgear.com/data/attachment/image/20130809/2ade8a5c0e93c19cfcc63cecff8cfbe8.jpg" width="230" height="230" alt="" /> \r\n   </div>\r\n<img src="http://www.liusgear.com/data/attachment/image/20130809/5c7dc343ce61037862daf5ccf4b5b504.jpg" alt="" /> \r\n  </li>\r\n  <li class="last">\r\n   <div class="logo-pic">\r\n    <img src="http://www.liusgear.com/data/attachment/image/20130823/837bb9df9232b90b46dd7125ff597143.jpg" width="230" height="217" alt="" /><br />\r\n   </div>\r\n<img src="http://www.liusgear.com/data/attachment/image/20130809/e50cf284f7099e2d0c5251f0c4c0e899.jpg" alt="" /> \r\n  </li>\r\n </ul>\r\n</div>\r\n<img src="http://www.liusgear.com/data/attachment/image/20130823/3b97350a375ceef794370abf288d1438.jpg" alt="" /><br />\r\n<div class="year" style="font-size:18px;font-weight:bold;color:#6B6B70;font-family:Arial;background-color:#FFFFFF;">\r\n 2004\r\n</div>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n This privacy policy sets out how Zhik Australia uses and protects any information that you give Zhik Australia when you use this website.Zhik Australia is committed to ensuring that y\r\n</p>\r\n<div class="year" style="font-size:18px;font-weight:bold;color:#6B6B70;font-family:Arial;background-color:#FFFFFF;">\r\n 2008\r\n</div>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n This privacy policy sets out how Zhik Australia uses and protects any information that you give Zhik Australia when you use this website.Zhik Australia is committed to ensuring that y\r\n</p>\r\n<div class="year" style="font-size:18px;font-weight:bold;color:#6B6B70;font-family:Arial;background-color:#FFFFFF;">\r\n 2013\r\n</div>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n This privacy policy sets out how Zhik Australia uses and protects any information that you give Zhik Australia when you use this website.Zhik Australia is committed to ensuring that y\r\n</p>', '', '', '', 0, 1, 0, 99, 'en'),
(26, 19, 12, 13, '2013', 0, '', '_self', '2013', '', '', '', 'article', '', '', '', '', '', 0, 1, 0, 1, 'en'),
(27, 19, 14, 15, '2014', 0, '', '_self', '2014', '', '', '', 'article', '', '', '', '', '', 0, 1, 0, 2, 'en'),
(28, 19, 16, 17, '2015', 0, '', '_self', '2015', '', '', '', 'article', '', '', '', '', '', 0, 1, 0, 3, 'en'),
(29, 20, 20, 21, 'TECH CO-CP', 0, '', '_self', 'cocp', '', '', '', 'page', '', '', '', '', '', 0, 1, 0, 99, 'en'),
(30, 21, 24, 25, 'PRODUCT CARE', 0, '', '_self', 'productcare', 'PRODUCT CARE', 'PRODUCT CARE', 'PRODUCT CARE', 'page', '', '<img src="http://www.liusgear.com/data/attachment/image/20130809/3f4cda9744df36e8b67a14a21cd7b660.jpg" alt="" /> \r\n<div class="services-pro">\r\n <p>\r\n  Product Care MUSTO clothing is recognised around the world for outstanding design and performance in the most testing conditions usi\r\n    ng the very best technical fabrics available.\r\n </p>\r\n <p>\r\n  To keep your products performing at their best, you can follow this simple guide on how to care for your technical clothing.\r\n </p>\r\n</div>\r\n<div class="services-list">\r\n <p>\r\n  Waterproof Outer Layers\r\n </p>\r\n <ul>\r\n  <li>\r\n   • After use, rinse off with fresh, clean water\r\n  </li>\r\n  <li>\r\n   • Do not store wet\r\n  </li>\r\n  <li>\r\n   • Reproof on a regular basis (how regular will be based on how often the garment is used) with a specialist reproofing product. MUSTO recommends Granger''s.\r\n  </li>\r\n </ul>\r\n</div>\r\n<div class="services-list">\r\n <p>\r\n  Drysuits\r\n </p>\r\n <ul>\r\n  <li>\r\n   • After use, rinse off with fresh, clean water\r\n  </li>\r\n  <li>\r\n   • Do not store wet\r\n  </li>\r\n  <li>\r\n   • Apply talcum powder to latex seals\r\n  </li>\r\n  <li>\r\n   •  Reproof on a regular basis (how regular will be based on how often the garment is used) with a specialist reproofing product. MUSTO recommends Granger''s\r\n  </li>\r\n </ul>\r\n</div>', '', '', '', 0, 1, 0, 99, 'en'),
(44, 43, 34, 35, 'OFFICE', 0, '', '_self', 'office', '', '', '', 'guestbook', '', '', '', '', '', 0, 1, 0, 99, 'en'),
(43, 0, 33, 36, 'CONTACT', 1, 'index.php?/category/office', '_self', 'contact', '', '', '', 'guestbook', '', '', '', '', '', 0, 1, 0, 99, 'en'),
(41, 21, 30, 29, 'SHIPPING & DELIVERY', 0, '', '_self', 'shipping', '', '', '', 'page', '', '', '', '', '', 0, 1, 0, 100, 'en'),
(32, 21, 26, 27, 'SIZE GUIDES', 0, '', '_self', 'size', 'SIZE GUIDES', 'SIZE GUIDES', 'SIZE GUIDES', 'page', '', '<img src="http://www.liusgear.com/data/attachment/image/20130809/9f2f7ae994a49204ac045225a92a52e8.jpg" alt="" /> \r\n<div class="service-tab ks-clear">\r\n <ul>\r\n  <li class="li1 current">\r\n   Mens\r\n  </li>\r\n  <li class="li2">\r\n   Womens\r\n  </li>\r\n  <li class="li3">\r\n   Junior\r\n  </li>\r\n  <li class="li4">\r\n   Gloves\r\n  </li>\r\n  <li class="li5">\r\n   Footwear\r\n  </li>\r\n </ul>\r\n</div>\r\n<div class="J-tab1">\r\n <div class="size-tit">\r\n  Mens Sizes\r\n </div>\r\n <table class="size-table ke-zeroborder" border="0" cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n   <tr class="first">\r\n    <td>\r\n     Musto Size\r\n    </td>\r\n    <td>\r\n     Junior Small(JS)\r\n    </td>\r\n    <td>\r\n     Junior Medium(JM)\r\n    </td>\r\n    <td>\r\n     JuniorLarge(JL)\r\n    </td>\r\n   </tr>\r\n   <tr>\r\n    <td>\r\n     Age\r\n    </td>\r\n    <td>\r\n     6-8years\r\n    </td>\r\n    <td>\r\n     9-11years\r\n    </td>\r\n    <td>\r\n     11-13years\r\n    </td>\r\n   </tr>\r\n   <tr>\r\n    <td>\r\n     To Fit Chest\r\n    </td>\r\n    <td>\r\n     28"-30"/71-76cm\r\n    </td>\r\n    <td>\r\n     31"-33"/78-83cm\r\n    </td>\r\n    <td>\r\n     24"-36"/86-91cm\r\n    </td>\r\n   </tr>\r\n  </tbody>\r\n </table>\r\n</div>\r\n<div class="J-tab2">\r\n <div class="size-tit">\r\n  Womens Sizes\r\n </div>\r\n <table class="size-table ke-zeroborder" border="0" cellpadding="0" cellspacing="0">\r\n  <tbody>\r\n   <tr class="first">\r\n    <td>\r\n     Musto Size\r\n    </td>\r\n    <td>\r\n     Junior Small(JS)\r\n    </td>\r\n    <td>\r\n     Junior Medium(JM)\r\n    </td>\r\n    <td>\r\n     JuniorLarge(JL)\r\n    </td>\r\n   </tr>\r\n   <tr>\r\n    <td>\r\n     Age\r\n    </td>\r\n    <td>\r\n     6-8years\r\n    </td>\r\n    <td>\r\n     9-11years\r\n    </td>\r\n    <td>\r\n     11-13years\r\n    </td>\r\n   </tr>\r\n   <tr>\r\n    <td>\r\n     To Fit Chest\r\n    </td>\r\n    <td>\r\n     28"-30"/71-76cm\r\n    </td>\r\n    <td>\r\n     31"-33"/78-83cm\r\n    </td>\r\n    <td>\r\n     24"-36"/86-91cm\r\n    </td>\r\n   </tr>\r\n  </tbody>\r\n </table>\r\n</div>\r\n<div class="J-tab3">\r\n 3\r\n</div>\r\n<div class="J-tab4">\r\n 4\r\n</div>\r\n<div class="J-tab5">\r\n 5\r\n</div>', '', '', '', 0, 1, 0, 99, 'en'),
(34, 18, 6, 7, 'BRAND STORY', 0, '', '_self', 'brandstory', 'BRAND STORY', 'BRAND STORY', 'BRAND STORY', 'page', '', '<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n <img src="http://www.liusgear.com/data/attachment/image/20130822/5b0ba871d54233f3e962335973e19050.jpg" alt="" />\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n This privacy policy sets out how Zhik Australia uses and protects any information that you give Zhik Australia when you use this website.\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n Zhik Australia is committed to ensuring that y\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n ccordance with this privacy statement. Zhik Australia may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes.\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n This privacy policy sets out how Zhik Australia uses and protects any information that you give Zhik Australia when you use this website.\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n Zhik Australia is committed to ensuring that y\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n ccordance with this privacy statement. Zhik Australia may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes.\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n This privacy policy sets out how Zhik Australia uses and protects any information that you give Zhik Australia when you use this website.\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n Zhik Australia is committed to ensuring that y\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n ccordance with this privacy statement. Zhik Australia may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes.\r\n</p>\r\n<p style="font-family:Arial;color:#6B6B70;background-color:#FFFFFF;">\r\n This privacy policy sets out how Zhik Australia uses and protects any information that you give Zhik Australia when you use this website.\r\n</p>', '', '', '', 0, 1, 0, 99, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_config`
--

CREATE TABLE IF NOT EXISTS `cms_config` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `varname` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` char(10) NOT NULL,
  `value` text NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL default '0',
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`category`),
  KEY `varname` (`varname`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `cms_config`
--

INSERT INTO `cms_config` (`id`, `varname`, `title`, `category`, `value`, `issystem`, `lang`) VALUES
(1, 'site_name', '', 'base', 'LIUS', 1, 'zh_cn'),
(2, 'site_title', '', 'base', 'LIUS', 1, 'zh_cn'),
(3, 'site_keywords', '', 'base', 'LIUS', 1, 'zh_cn'),
(4, 'site_description', '', 'base', 'LIUS', 1, 'zh_cn'),
(5, 'site_code', '', 'base', '', 1, 'zh_cn'),
(6, 'site_logo', '', 'base', 'images/logo.png', 1, 'zh_cn'),
(7, 'site_template', '', 'base', 'default', 1, 'zh_cn'),
(8, 'site_beian', '备案号', 'base', '沪ICP备88888888号', 0, 'zh_cn'),
(9, 'site_name', '', 'base', 'LIUS', 1, 'en'),
(10, 'site_title', '', 'base', 'LIUS', 1, 'en'),
(11, 'site_keywords', '', 'base', 'LIUS', 1, 'en'),
(12, 'site_description', '', 'base', 'LIUS', 1, 'en'),
(13, 'site_code', '', 'base', '', 1, 'en'),
(14, 'site_logo', '', 'base', 'images/logo.png', 1, 'en'),
(15, 'site_template', '', 'base', 'english', 1, 'en'),
(34, 'water_type', '', 'attr', '2', 1, '0'),
(33, 'attr_allowtype', '', 'attr', '', 1, '0'),
(32, 'attr_maxsize', '', 'attr', '200', 1, '0'),
(21, 'site_adminlang', '', 'lang', 'en', 1, '0'),
(22, 'site_frontlang', '', 'lang', 'en', 1, '0'),
(23, 'site_home', '', 'base', '', 1, 'en'),
(25, 'site_home', '', 'base', '', 1, 'zh_cn'),
(26, 'smtp_host', '', 'mail', 'smtp.mxhichina.com', 1, '0'),
(27, 'smtp_user', '', 'mail', 'sales@liusgear.com', 1, '0'),
(28, 'smtp_pass', '', 'mail', 'z3319502', 1, '0'),
(29, 'smtp_port', '', 'mail', '25', 1, '0'),
(30, 'smtp_sendmail', '', 'mail', 'eric@liusgear.com', 1, '0'),
(31, 'mail_type', '', 'mail', 'smtp', 1, '0'),
(35, 'water_text_value', '', 'attr', '', 1, '0'),
(36, 'water_text_size', '', 'attr', '24', 1, '0'),
(37, 'water_text_color', '', 'attr', '#990000', 1, '0'),
(38, 'water_text_font', '', 'attr', '', 1, '0'),
(39, 'water_minwidth', '', 'attr', '200', 1, '0'),
(40, 'water_minheight', '', 'attr', '100', 1, '0'),
(41, 'water_padding', '', 'attr', '-20', 1, '0'),
(42, 'water_opacity', '', 'attr', '10', 1, '0'),
(43, 'water_quality', '', 'attr', '100', 1, '0'),
(44, 'water_position', '', 'attr', 'bottomright', 1, '0'),
(45, 'water_image_path', '', 'attr', '', 1, '0'),
(46, 'company_address', 'Compay Address', 'base', 'Room 1011, Shihuite Building,No.518 Rongmei Rd, Songjiang District,Shanghai, P.R.China.', 0, 'en'),
(47, 'site_address', 'Site Address', 'base', 'www.liusgear.com', 0, 'en'),
(48, 'company_tel', 'Company Tel', 'base', '＋86－21－6073 5700', 0, 'en'),
(49, 'company_fax', 'Company Fax', 'base', '＋86－21－6073 5766', 0, 'en'),
(50, 'company_email', 'Company E-mail', 'base', 'sales@liusgear.com', 0, 'en'),
(51, 'company_name', 'Company Name', 'base', 'SHANGHAI  LIUS SAILING GEAR CO., LTD.', 0, 'en'),
(53, 'currency_sign', 'Currency sign', 'base', '$', 0, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_down`
--

CREATE TABLE IF NOT EXISTS `cms_down` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category` mediumint(8) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `attrurl` varchar(100) NOT NULL,
  `attrname` varchar(100) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `realhits` int(10) unsigned NOT NULL default '0',
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `puttime` int(10) unsigned NOT NULL default '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_fragment`
--

CREATE TABLE IF NOT EXISTS `cms_fragment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `varname` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_guestbook`
--

CREATE TABLE IF NOT EXISTS `cms_guestbook` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category` mediumint(8) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL default '1',
  `country` varchar(100) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `replyuid` int(10) unsigned NOT NULL default '0',
  `author` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `createtime` int(10) unsigned NOT NULL default '0',
  `replytime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `listorder` mediumint(9) NOT NULL default '999',
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- 转存表中的数据 `cms_guestbook`
--

INSERT INTO `cms_guestbook` (`id`, `category`, `title`, `firstname`, `surname`, `gender`, `country`, `uid`, `replyuid`, `author`, `email`, `phone`, `description`, `content`, `createtime`, `replytime`, `status`, `listorder`, `lang`) VALUES
(39, 8, '测试留言', '', '', 1, '', 1, 1, '小六', 'admin@x6cms.com', '', '', '测试留言测试留言测试留言测试留言测试留言测试留言测试留言', 0, 1361263087, 1, 999, 'zh_cn'),
(40, 8, '33', '', '', 1, '', 1, 1, '33', '33@33.com', '', '', '333', 1361264170, 1361264181, 1, 999, 'zh_cn'),
(45, 35, '', '', '', 1, '', 0, 0, '', '123@11.com', '', '', '123', 1376256009, 0, 0, 999, 'en'),
(46, 35, '', '', '', 1, '', 0, 0, '', '123@11.com', '', '', '123', 1376256895, 0, 0, 999, 'en'),
(47, 35, '', '', '', 1, '', 0, 0, '', '123@11.com', '', '', '123', 1376257033, 0, 0, 999, 'en'),
(48, 35, '', '', '', 1, '', 0, 0, '', '123@11.com', '', '', '123', 1376257109, 0, 0, 999, 'en'),
(49, 35, '', '', '', 1, '', 0, 0, '', '123@11.com', '', '', '123', 1376257175, 0, 0, 999, 'en'),
(50, 35, '', '123', '123', 1, '123', 0, 0, '', 'ltf569438296@gmail.com', '', '', '123', 1376314554, 0, 0, 999, 'en'),
(51, 35, '', '1', '1', 1, '', 0, 0, '', '569438296@qq.com', '', '', '12', 1376315916, 0, 0, 999, 'en'),
(52, 35, '', '', '', 1, '', 0, 0, '', 'ltf569438296@gmail.com', '', '', '123', 1376315991, 0, 0, 999, 'en'),
(53, 35, '', '', '', 1, '', 0, 0, '', 'ltf569438296@gmail.com', '', '', '1222', 1376316169, 0, 0, 999, 'en'),
(54, 35, '', 'liu', 'tengfei', 1, '', 0, 0, '', 'ltf569438296@gmail.com', '', '', 'hiyisdf', 1376316329, 0, 0, 999, 'en'),
(55, 35, '', '123', '123', 1, '123', 0, 0, '', 'ltf569438296@gmail.com', '', '', '123', 1376317903, 0, 0, 999, 'en'),
(56, 35, '', 'Liu', 'tengfei', 1, '123', 0, 0, '', 'ltf569438296@gmail.com', '123', '', '123而我儿童', 1376318394, 0, 0, 999, 'en'),
(57, 35, '', 'Liu', 'tengfei', 1, '威尔泰晤', 0, 0, '', 'ltf569438296@gmail.com', '韦尔特维尔', '', '而我认为他', 1376318481, 0, 0, 999, 'en'),
(58, 35, '', 'Liu', 'tengfei', 1, '123', 0, 0, '', 'ltf569438296@gmail.com', '韦尔特维尔', '', 'rwertwertwe', 1376318633, 0, 0, 999, 'en'),
(59, 35, '', '', '', 1, '', 0, 0, '', 'ltf569438296@gmail.com', '', '', '32345234', 1376318961, 0, 0, 999, 'en'),
(60, 35, '', '', '', 1, '', 0, 0, '', 'ltf569438296@gmail.com', '', '', '32345234', 1376319051, 0, 0, 999, 'en'),
(61, 35, '', '', '', 1, '', 0, 0, '', 'ltf569438296@gmail.com', '', '', '32345234', 1376319175, 0, 0, 999, 'en'),
(62, 35, '', 'lee', 'lee', 1, '', 0, 0, '', '467070264@qq.com', '', '', '你好！', 1377060238, 0, 0, 999, 'en'),
(63, 35, '', 'wendell', '', 1, '', 0, 0, '', 'wenhuaz@163.com', '', '', '测试 第一封', 1377063461, 0, 0, 999, 'en'),
(64, 35, '', 'wendell', '', 1, '', 0, 0, '', 'wenhuaz@163.com', '', '', '测试 第一封', 1377063462, 0, 0, 999, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_hr`
--

CREATE TABLE IF NOT EXISTS `cms_hr` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category` mediumint(8) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `num` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `realhits` int(10) unsigned NOT NULL default '0',
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `puttime` int(10) unsigned NOT NULL default '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_keywords`
--

CREATE TABLE IF NOT EXISTS `cms_keywords` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `listorder` int(3) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL default '1',
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `title` (`title`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_lang`
--

CREATE TABLE IF NOT EXISTS `cms_lang` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `varname` varchar(20) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL default '99',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `cms_lang`
--

INSERT INTO `cms_lang` (`id`, `title`, `varname`, `icon`, `listorder`, `status`) VALUES
(1, '简体中文', 'zh_cn', 'data/language/zh_cn/zh_cn.gif', 1, 1),
(2, 'English', 'en', 'data/language/en/en.gif', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_link`
--

CREATE TABLE IF NOT EXISTS `cms_link` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` mediumint(8) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `listorder` int(3) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `cms_link`
--

INSERT INTO `cms_link` (`id`, `type`, `title`, `description`, `thumb`, `url`, `remark`, `createtime`, `updatetime`, `listorder`, `status`, `lang`) VALUES
(4, 5, 'li1', '', 'data/attachment/image/20130808/31aa68bfec5647e7b4964b353ae4c1bd.jpg', '#', '', 1375967999, 1375968372, 1, 1, 'en'),
(5, 5, 'li2', '', 'data/attachment/image/20130822/83b82567bc8aa4806fb5ece3b685f11f.jpg', '/category/2013', '', 1375968036, 1377157691, 2, 1, 'en'),
(6, 5, 'li3', '', 'data/attachment/image/20130808/70f0081404d9b719f76e7cda425bae28.jpg', '#', '', 1375968063, 1375968383, 3, 1, 'en'),
(7, 5, 'li4', '', 'data/attachment/image/20130822/c1e843370e109ce216cce0cad5227559.jpg', '/category/logosource', '', 1375968087, 1377153133, 4, 1, 'en'),
(8, 5, 'li5', '', 'data/attachment/image/20130822/0f5c6ae9527400e1bea8a804408addc3.jpg', '/category/size', '', 1375968113, 1377153121, 5, 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_model`
--

CREATE TABLE IF NOT EXISTS `cms_model` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `varname` varchar(20) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL default '99',
  `issearch` tinyint(1) unsigned NOT NULL default '0',
  `isrecommend` tinyint(1) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `cms_model`
--

INSERT INTO `cms_model` (`id`, `varname`, `listorder`, `issearch`, `isrecommend`, `status`) VALUES
(1, 'article', 99, 1, 1, 1),
(2, 'product', 99, 1, 1, 1),
(3, 'down', 99, 1, 1, 0),
(4, 'page', 99, 0, 0, 1),
(5, 'hr', 99, 1, 1, 0),
(6, 'ask', 99, 1, 1, 0),
(7, 'guestbook', 99, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_navigation`
--

CREATE TABLE IF NOT EXISTS `cms_navigation` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `type` mediumint(8) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `color` char(7) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `rel` varchar(20) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL default '99',
  `status` tinyint(1) unsigned NOT NULL default '1',
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `cms_navigation`
--

INSERT INTO `cms_navigation` (`id`, `type`, `title`, `url`, `color`, `remark`, `rel`, `thumb`, `listorder`, `status`, `lang`) VALUES
(21, 4, '网站地图', 'sitemap', '0', '', '', '', 2, 1, 'zh_cn'),
(25, 4, 'RSS订阅', 'rss', '0', '', '', '', 3, 1, 'zh_cn');

-- --------------------------------------------------------

--
-- 表的结构 `cms_online`
--

CREATE TABLE IF NOT EXISTS `cms_online` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `remark` mediumtext NOT NULL,
  `listorder` int(3) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_product`
--

CREATE TABLE IF NOT EXISTS `cms_product` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category` mediumint(8) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `price` float(10,2) unsigned NOT NULL,
  `thumb` varchar(100) NOT NULL COMMENT '产品图片路径，建议不包含图片',
  `thumb2` varchar(100) NOT NULL,
  `thumb3` varchar(100) NOT NULL,
  `thumb4` varchar(100) NOT NULL,
  `preview` varchar(100) NOT NULL,
  `small` varchar(100) NOT NULL,
  `medium` varchar(100) NOT NULL,
  `large` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `attrs` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `realhits` int(10) unsigned NOT NULL default '0',
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `puttime` int(10) unsigned NOT NULL default '0',
  `tpl` varchar(20) NOT NULL,
  `listorder` int(10) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `cms_product`
--

INSERT INTO `cms_product` (`id`, `category`, `title`, `uid`, `keywords`, `description`, `content`, `price`, `thumb`, `thumb2`, `thumb3`, `thumb4`, `preview`, `small`, `medium`, `large`, `color`, `isbold`, `tags`, `attrs`, `recommends`, `hits`, `realhits`, `createtime`, `updatetime`, `puttime`, `tpl`, `listorder`, `status`, `lang`) VALUES
(14, 15, 'MEN''S HYDROPHOBE LONG SLEEVE TOP', 1, 'MEN''S HYDROPHOBE LONG SLEEVE TOP', 'MEN''S HYDROPHOBE LONG SLEEVE TOP', '<span style="color:#515151;font-family:Arial;background-color:#FFFFFF;"><span style="color:#515151;font-family:Arial, Helvetica, sans-serif;line-height:17px;background-color:#FFFFFF;">Super lightweight yet highly thermal rash vest, ergonomically designed using stretch materials. The material is naturally Hydrophobic so water is repelled away from the fabric ensuring the garment doesn’t get heavy and damp when worn in wet conditions</span></span>', 123.00, 'data/products/image/20130815/9d42306f629bb73229cb871ee3430d19.png', 'data/products/image/20130815/d7d5966c30c076cb582b18db5bf2c8fa.jpg', 'data/products/image/20130814/751d8e0a27ae0101cd25363bef1f8e4d.jpg', '', 'data/products/image/20130814/c2f57f3104950f2155a76298496488a1.jpg', '', '', '', '', 0, '0', '4,35,24,33,27,28,29,32,23', '', 47, 47, 1375994329, 1376573533, 1375993768, '', 3, 1, 'en'),
(15, 15, 'BR2 OFFSHORE JACKET BR2 OFFSHORE JACKET', 1, 'BR2 OFFSHORE JACKET BR2 OFFSHORE JACKET', 'BR2 OFFSHORE JACKET BR2 OFFSHORE JACKET', '<span style="color:#515151;font-family:Arial;background-color:#FFFFFF;">The BR2 Offshore Jacket with many of the features and benefits of the higher ranges, offers the best protection available for waterproof and breathable (non GORE-TEX®) performance for offshore sailing.</span>', 0.00, 'data/products/image/20130814/48f50e0d733e155fa0cc4cf4723daf7b.jpg', 'data/products/image/20130814/751d8e0a27ae0101cd25363bef1f8e4d.jpg', '', '', 'data/products/image/20130814/c2f57f3104950f2155a76298496488a1.jpg', '', '', '', '', 0, '0', '5,8,24,33,32,23', '', 73, 73, 1376483354, 1376583297, 1376483337, '', 2, 1, 'en'),
(16, 15, 'HYDROPHOBE TROUSERS', 1, 'HYDROPHOBE TROUSERS', 'HYDROPHOBE TROUSERS', '<span style="color:#515151;font-family:Arial, Helvetica, sans-serif;line-height:17px;background-color:#FFFFFF;">Super lightweight yet highly thermal trousers, ergonomically designed using stretch materials. The material is naturally Hydrophobic so water is repelled away from the fabric ensuring the garment doesn’t get heavy and damp when worn in wet conditions.</span>', 150.00, 'data/products/image/20130815/f0f95a259530af126672ce6a632daa3b.png', 'data/products/image/20130815/f2748de2e0b47ddcaae4a4d561ee55a9.jpg', '', '', 'data/products/image/20130815/44cbf0f962f34c8373a57c2d824ddfba.png', '', '', '', '', 0, '0', '4,35,27,28,29,30,31,32,23', '', 35, 35, 1376574166, 1377059649, 1376574104, '', 1, 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_purview`
--

CREATE TABLE IF NOT EXISTS `cms_purview` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `parent` mediumint(8) unsigned NOT NULL default '0',
  `class` varchar(20) NOT NULL,
  `method` varchar(255) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL default '99',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `cms_purview`
--

INSERT INTO `cms_purview` (`id`, `parent`, `class`, `method`, `listorder`, `status`) VALUES
(1, 0, 'system', '', 5, 1),
(2, 1, 'purview', 'add,edit,del,order', 1, 1),
(3, 1, 'usergroup', 'add,edit,del,order,grant', 2, 1),
(4, 1, 'user', 'add,edit,del', 3, 1),
(5, 0, 'content', '', 2, 1),
(6, 0, 'module', '', 4, 1),
(7, 0, 'seo', '', 3, 0),
(20, 6, 'type', 'add,edit,del,order', 6, 1),
(9, 6, 'link', 'add,edit,del,order', 2, 1),
(19, 1, 'config', 'add,base,lang,mail,attr,del', 6, 1),
(11, 5, 'article', 'add,edit,del,order', 2, 1),
(14, 5, 'ask', 'add,edit,del,order', 4, 0),
(15, 6, 'slide', 'add,edit,del,order', 1, 1),
(21, 5, 'category', 'add,edit,del,order', 1, 1),
(22, 6, 'navigation', 'add,edit,del,order', 3, 1),
(23, 7, 'tags', 'add,edit,del,order', 1, 0),
(24, 5, 'hr', 'add,edit,del,order', 6, 0),
(25, 5, 'product', 'add,edit,del,order', 3, 1),
(32, 0, 'personal', '', 1, 1),
(28, 7, 'keywords', 'add,edit,del', 2, 0),
(29, 7, 'robots', 'save,restore', 4, 0),
(30, 7, 'htaccess', 'save,restore', 3, 0),
(33, 32, 'adminindex', '', 1, 1),
(34, 32, 'profile', 'save', 3, 1),
(35, 32, 'propass', 'save', 2, 1),
(36, 6, 'fragment', 'add,edit,del', 5, 1),
(37, 1, 'clearcache', '', 12, 1),
(38, 6, 'online', 'add,edit,del,order', 4, 0),
(39, 5, 'down', 'add,edit,del,order', 5, 0),
(40, 1, 'database', 'backup,download,upgrade,optimize,del', 10, 1),
(41, 5, 'guestbook', 'add,edit,del,order', 7, 1),
(42, 1, 'template', 'edit', 11, 1),
(43, 7, 'sitemap', 'generate,download,del', 5, 0),
(51, 1, 'lang', 'add,edit,del,order', 9, 1),
(52, 5, 'model', 'add,edit,del,order', 9, 1),
(53, 5, 'recommend', 'add,edit,del', 8, 0),
(54, 1, 'tpltags', '', 7, 1),
(55, 5, 'attribute', 'add,edit,del,order', 4, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_recommend`
--

CREATE TABLE IF NOT EXISTS `cms_recommend` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `model` varchar(20) NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `listorder` tinyint(4) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `lang` (`lang`),
  KEY `model` (`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_sessions`
--

CREATE TABLE IF NOT EXISTS `cms_sessions` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(16) NOT NULL default '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cms_sessions`
--

INSERT INTO `cms_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('57b5fc6b620beea72d39f4a61ac19fa3', '66.249.74.65', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377181941, ''),
('f00c4035fcc9e61ad69b29009dc0bcc0', '66.249.74.64', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377206979, ''),
('4cba2fe30596c524bd2b6f82d331d4ac', '66.249.74.71', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377209482, ''),
('64e8d7fd093cc5f457745bc812bcb951', '66.249.74.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377210595, ''),
('3fedf67857b565c5e4dca319b1b7e2ca', '66.249.74.71', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377211975, ''),
('769bd5a927a0d4b3a95dde3065cd1bfe', '66.249.74.65', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377212473, ''),
('845a6963c7765b1d6348ddae04c951db', '66.249.74.70', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377199488, ''),
('4abf51bf6c96c7ec51bc6cae9f2cd80b', '66.249.74.70', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377185141, ''),
('f46c52c6fb3857e7aa1c2408accd4134', '66.249.74.64', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377189749, ''),
('aea9b8c0d54c8bd4d03effa757108f7d', '66.249.74.67', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377177022, ''),
('a03df982157fdcb4191480efd0a82230', '116.236.146.21', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)', 1377228647, ''),
('ce10c6e2b403ea323004638ef41eee31', '101.80.86.56', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 1377179627, ''),
('e803fa7792cb31c6924da4c46bc3e943', '58.247.132.246', 'Mozilla/5.0 (Windows NT 5.2; rv:23.0) Gecko/20100101 Firefox/23.0', 1377249747, 'a:6:{s:9:"user_data";s:0:"";s:7:"varname";s:10:"superadmin";s:9:"edit_lang";s:2:"en";s:3:"uid";s:1:"1";s:9:"usergroup";s:1:"1";s:8:"username";s:5:"admin";}'),
('b283fe5cf3a6beffc4a5e403d278bb7d', '14.17.34.190', 'Mozilla/4.0', 1377245470, ''),
('13d0df991f91bdb8af9611fdaebe6379', '66.249.74.71', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377245640, ''),
('cebd9f75096c0d98711ff142c1ca26e8', '140.207.152.22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7', 1377245982, ''),
('43d4603e06660210fef3460283027593', '66.249.74.67', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377168347, ''),
('fd56bf1d47cc854f91b910540b436e11', '14.17.34.191', 'Mozilla/4.0', 1377169754, ''),
('adc1e2ba7e87c9f5fc50699b253d54a4', '140.207.152.22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7', 1377244383, 'a:5:{s:3:"uid";s:1:"1";s:9:"usergroup";s:1:"1";s:7:"varname";s:10:"superadmin";s:8:"username";s:5:"admin";s:9:"edit_lang";s:2:"en";}'),
('2400ff33985cd8b24a0b59e02141d638', '140.207.152.22', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 1377243019, ''),
('4bac2699ed355504065262e749122bbb', '66.249.74.66', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377238695, ''),
('96026ba92df6144ff62614a0097ef95c', '116.236.146.21', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)', 1377240918, ''),
('46fb6ccba14d8e28b25d4c4ecd4e00e3', '66.249.74.64', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377244267, ''),
('ba9a5e629786ec620382001f0db4d793', '140.207.152.22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7', 1377245308, 'a:6:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:9:"usergroup";s:1:"1";s:7:"varname";s:10:"superadmin";s:8:"username";s:5:"admin";s:9:"edit_lang";s:2:"en";}'),
('f6555a33bdee03973115dd5ded86890e', '66.249.74.72', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377230868, ''),
('caede2a80812e9c1883e6e1be6d6b12f', '66.249.74.71', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377232563, ''),
('d8874d13d85bc64e2820afcc5ed77cfa', '140.207.152.22', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 1377233201, ''),
('ab5ae6ba53c0a792e08a702ee479b860', '66.249.74.71', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377169786, ''),
('6562c06ff46862d447b7c3653c753130', '66.249.74.70', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377170726, ''),
('779f5080be0d08cbc8c44dc3d8ef612b', '58.39.116.207', 'Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B206 Safari/75', 1377177905, ''),
('8164f382acbe51dcf9db1b35c1cb7965', '66.249.74.64', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377172016, ''),
('3b05692c003756e9202add2ce4c81dcb', '66.249.74.65', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377174197, ''),
('2aba1b8d0d70e630f876a07e6d25ffb7', '66.249.74.66', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377170737, ''),
('ab3c9af992252ec0bb9bc1665934c413', '65.55.52.86', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 1377248396, ''),
('59d193e3be39bb614a6fa8eaf75f8c36', '66.249.74.64', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377247339, ''),
('f4f6e1a4023efe17784e7cfdc5d91cbc', '66.249.74.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377165024, ''),
('144eddf80d06571f0a84a366065455c2', '66.249.74.65', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377248930, ''),
('4caa685be3e266e0a9911af1a4e5ce55', '140.207.152.22', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1', 1377220164, ''),
('c0548a73dbb8b88661205bf3417b9b94', '140.207.152.22', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1', 1377220138, ''),
('e29e03d9d602282a68333d5fcf88d410', '140.207.152.22', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', 1377220117, ''),
('a4d967cc83355808af80701756f313bb', '14.17.34.190', 'Mozilla/4.0', 1377216466, ''),
('249109f11545737f272626f4a399aea6', '66.249.74.67', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377218123, ''),
('4533e45e313c962e52793aa7d9fb80ea', '66.249.74.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377215336, ''),
('b59c437c3c34455baad45172eb6abce5', '66.249.74.67', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377214788, ''),
('da6a6caa664c7329a10ded14ee5727bc', '66.249.74.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377191539, ''),
('dddb218cd6870ca6b7663f7a15008443', '66.249.74.70', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377194752, ''),
('a44114e1de568dc67395e52fcb6e5395', '66.249.74.67', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377196066, ''),
('3fc7200df20cadcd542e430aa23a361f', '66.249.74.70', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377197144, ''),
('8b4beb505704eef85be99655e158f71a', '12.238.165.228', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR ', 1377197476, ''),
('4e1ce0f91a499de1b2224a175ad94007', '12.238.165.228', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR ', 1377197482, ''),
('f8c554b5c41d306e34aad8f9e249d233', '66.249.74.193', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377204646, ''),
('602d3e6deae2160e4c32748d63347f48', '66.249.74.42', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377203615, ''),
('2fdf0294b5d1935fb1f06262155a9cc9', '66.249.74.66', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377200087, ''),
('e8f81a0e530787fd740eb125794e6f38', '66.249.74.64', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377198953, ''),
('874e1d717c6e5fa60fb3c49a928e102c', '140.207.152.22', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', 1377227401, ''),
('aa442d5c4c173f1531cb9f4d4c237ff6', '66.249.74.65', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377226540, ''),
('29f7a388b78b8080ebb77b0ac98e5a80', '66.249.74.70', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377225014, ''),
('3f119ea37943bc22ebdf25d0d2df0c38', '140.207.152.22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/534.57.7 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.7', 1377222549, ''),
('8611431abe81a473b6451fe7f7e8d3f4', '66.249.74.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377222423, ''),
('8d4d2c96ee29e3e012e6faa7b76b4eee', '116.236.146.21', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)', 1377221081, ''),
('7ed62f625d2421ea004d42903379c19b', '220.181.141.66', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR ', 1377220275, ''),
('ffeceb373519d406f67cd973b49cc50b', '220.181.132.191', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/536.11 (KHTML, like Gecko) DumpRenderTree/0.0.0.0 Safari/536.11', 1377220293, ''),
('007fae9755c80a4d62032de7d5372cf5', '66.249.74.67', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1377234554, ''),
('0f15b0e82d1adc4a4c7f1ae7e92df13f', '58.247.132.246', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; .NET CLR 1.1.4322; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.', 1377234448, '');

-- --------------------------------------------------------

--
-- 表的结构 `cms_slide`
--

CREATE TABLE IF NOT EXISTS `cms_slide` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` mediumint(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `listorder` int(3) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `cms_slide`
--

INSERT INTO `cms_slide` (`id`, `type`, `title`, `description`, `thumb`, `url`, `remark`, `createtime`, `updatetime`, `listorder`, `status`, `lang`) VALUES
(12, 3, '标题4', '', 'data/attachment/image/20130822/2d0dfc265afc0fde366f6c68fb328d4d.jpg', '#', '', 1377074027, 1377150520, 99, 1, 'en'),
(9, 3, '标题1', '', 'data/attachment/image/20130822/870eb1a781c5cc57e19433769c961b57.jpg', '#', '', 1375881315, 1377150636, 99, 1, 'en'),
(10, 3, '标题2', '', 'data/attachment/image/20130822/0b89c0f30a8023a3a538c0f637660e38.jpg', '#', '', 1375887609, 1377150656, 99, 1, 'en'),
(11, 3, '标题3', '', 'data/attachment/image/20130822/b979b4c4944bd0ade8b09eccce8f1329.jpg', '#', '', 1375887630, 1377150672, 99, 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_tags`
--

CREATE TABLE IF NOT EXISTS `cms_tags` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `listorder` mediumint(9) unsigned NOT NULL default '999',
  `status` tinyint(1) unsigned NOT NULL default '1',
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_tpltags`
--

CREATE TABLE IF NOT EXISTS `cms_tpltags` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `value` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `listorder` mediumint(9) unsigned NOT NULL default '99',
  PRIMARY KEY  (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `cms_tpltags`
--

INSERT INTO `cms_tpltags` (`id`, `title`, `type`, `value`, `description`, `listorder`) VALUES
(1, '基本配置标签', 'system', '<?=$config[''site_name''];?>', '站点名称。其中site_name为参数，默认参数有：site_name（站点名称）、site_title（站点标题）、site_keywords（站点关键词）、site_description（站点描述）、seo_title（当前页SEO标题）、seo_keywords（当前页SEO关键词）、seo_description（当前页SEO描述）、site_logo（站点logo）、site_template（站点模板文件夹）、site_templateurl（站点模板文件夹路径），这里的参数还包括您自定义的配置，在后台->系统管理->站点设置中查看', 99),
(2, '搜索标签', 'system', '<?=x6cms_search(''article'',true);?>', '其中有两个参数：参数1：article(默认搜索模型)\r\n参数2:true或者false（是否有下拉选择模型搜索）\r\n其中参数1的模型，后台->系统管理->模型管理中的模型表名，注意，只能填写允许搜索的模型', 99),
(3, '文件路径标签', 'system', '<?=x6cms_path(''logo.png'');?>', '得到文件的完整路径。其中 logo.png即为参数，相对于系统根目录。', 99),
(4, '网址URL标签', 'system', '<?=x6cms_url(''news'');?>', '得到页面的完整路径，其中 news 为参数，会生成 http://www.anli.com/demo/index.php?/news', 99),
(5, '语言标签', 'system', '<?php $tmpData = x6cms_lang();?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>\r\n <a href="<?=$item[''url'']?>">\r\n  <img src="<?=$item[''thumb'']?>" alt="<?=$item[''title'']?>"/>\r\n </a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = x6cms_lang();?>得到语言数组\r\n<?php foreach($tmpData as $item):?>\r\n循环数据：\r\n<?=$item[''title''];?>语言名称\r\n<?=$item[''thumb''];?>语言图标\r\n<?=$item[''url''];?>该语言首页地址\r\n<?php endforeach;?>', 99),
(6, '网站栏目', 'system', '<?=x6cms_category(0);?>', '其中0为参数，控制栏目显示多少级（0或不填即为显示所有栏目，1只显示顶级栏目2显示两级，以此类推）', 99),
(7, '加载模板', 'system', '<?php $this->load->view($config[''site_template''].''/head'');?>', 'head 为参数，意思是加载head.php（头部）文件，如果为foot即，加载foot.php（底部）文件', 99),
(8, '幻灯标签', 'model', '<?php $tmpData = x6cms_slide(2);?>\r\n<?php foreach($tmpData as $item):?>\r\n<a href="<?=$item[''url'']?>" target="_blank">\r\n<img src="<?=$item[''thumb'']?>" alt="<?=$item[''title'']?>" width="640" height="250" />\r\n</a>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = x6cms_slide(2);?>\r\n取得后台系统管理->类别管理中幻灯分类id为2的所有幻灯数据\r\n<?=$item[''url'']?> 链接\r\n<?=$item[''thumb'']?> 图片\r\n<?=$item[''title'']?> 标题\r\n<?=$item[''description'']?> 描述', 99),
(9, '面包屑导航', 'seo', '<?=x6cms_location($category,'' > '');?>', '返回当前页面路径，用于除首页、RSS聚合、分类聚合、网站地图之外的其他页面。\r\n两个参数：$category，默认，一般不需要修改； '' > ''两个链接直接的连接符号。\r\n例：文章列表页会生成：首页 > 新闻中心 > 小六动态\r\n', 99),
(10, '导航标签', 'model', '<?php $tmpData = x6cms_navigation(4);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li><a href="<?=$item[''url'']?>" <?=$item[''color'']?>><?=$item[''title'']?></a></li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = x6cms_navigation(4);?>\r\n取回导航分类ID为4的所有链接导航\r\n<?=$item[''url'']?>导航链接\r\n<?=$item[''color'']?>导航颜色\r\n<?=$item[''title'']?>导航文字\r\n<?=$item[''thumb'']?>导航图片', 99),
(11, '内容数据标签', 'content', '<?php $tmpData = x6cms_modellist(''article'',0,''default'',7,0);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>\r\n[<a href="<?=$item[''categoryurl'']?>"><?=$item[''categoryname'']?></a>]\r\n<a href="<?=$item[''url'']?>" style="<?=$item[''color'']?><?=$item[''isbold'']?>"><?=$item[''title'']?></a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tempData,$item);?>', '<?php $tmpData = x6cms_modellist(''article'',0,''default'',7,0);?>\r\n三个参数：1、article(模型，还包括product、ask、hr、down)。2、0（分类栏目ID），如果为0即该模型下所有栏目。3：default（默认排序），puttime(发布时间)、hits(点击量)、id。4：7（显示条数）5：0（包括所有推荐位的数据）或者1（不包含所有推荐位的数据）\r\n<?=$item[''categoryurl'']?>该条数据的栏目链接\r\n<?=$item[''categoryname'']?>该条数据的栏目名称\r\n<?=$item[''url'']?>该条数据的链接\r\n<?=$item[''title'']?>该条数据的标题\r\n<?=$item[''color'']?>该条数据的显示颜色\r\n<?=$item[''isbold'']?>加粗\r\n<?=$item[''thumb'']?>缩略图\r\n<?=$item[''puttime'']?>发布时间\r\n<?=$item[''tagsstr'']?>标签\r\n<?=$item[''tagsstr'']?>标签\r\n<?=$item[''oldur'']?>下载链接（只有下载模块，oldurl，直接显示链接）\r\n<?=$item[''downurl'']?>下载链接（只有下载模块，downurl，经过转义的链接）\r\n<?=$item[''categorymodel'']?>该条数据所属模型\r\n<?=$item[''categoryid'']?>该条数据栏目的id', 99),
(12, '推荐位标签', 'content', '<?php $tmpData = x6cms_recommend(1,''default'',7);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>\r\n[<a href="<?=$item[''categoryurl'']?>"><?=$item[''categoryname'']?></a>]\r\n<a href="<?=$item[''url'']?>" style="<?=$item[''color'']?><?=$item[''isbold'']?>"><?=$item[''title'']?></a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tempData,$item);?>', '<?php $tmpData = x6cms_recommend(1,''default'',7);?>\r\n三个参数：1、1（推荐位ID）。2、default（默认排序），puttime(发布时间)、hits(点击量)、id。3：7（显示条数）\r\n<?=$item[''categoryurl'']?>该条数据的栏目链接\r\n<?=$item[''categoryname'']?>该条数据的栏目名称\r\n<?=$item[''url'']?>该条数据的链接\r\n<?=$item[''title'']?>该条数据的标题\r\n<?=$item[''color'']?>该条数据的显示颜色\r\n<?=$item[''isbold'']?>加粗\r\n<?=$item[''thumb'']?>缩略图\r\n<?=$item[''puttime'']?>发布时间\r\n<?=$item[''tagsstr'']?>标签\r\n<?=$item[''tagsstr'']?>标签\r\n<?=$item[''oldur'']?>下载链接（只有下载模块，oldurl，直接显示链接）\r\n<?=$item[''downurl'']?>下载链接（只有下载模块，downurl，经过转义的链接）\r\n<?=$item[''categorymodel'']?>该条数据所属模型\r\n<?=$item[''categoryid'']?>该条数据栏目的id', 99),
(13, '碎片标签', 'model', '<?=x6cms_fragment(''index_cpjs'')?>', '参数：index_cpjs（碎片变量名称）\r\n显示：该变量名称的值', 99),
(14, '聚合标签', 'seo', '<?php $tmpData = x6cms_tags(5);?>\r\n<?php foreach($tmpData as $item):?>\r\n<a href="<?=$item[''url'']?>" class="font<?=rand(1,10)?>"><?=$item[''title'']?></a>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = x6cms_tags(5);?>\r\n取得聚合标签的数据\r\n<?=$item[''url'']?>标签链接\r\n<?=$item[''title'']?>标签文字', 99),
(15, '聚合标签数据', 'seo', '<?php $tmpData = x6cms_tagsData(''article'',$tags,5);?>\r\n<?php foreach($tmpData as $item):?>\r\n<li>[<a href="<?=$item[''categoryurl'']?>"><?=$item[''categoryname'']?></a>] \r\n<a href="<?=$item[''url'']?>" target="_blank"><?=$item[''title'']?></a>\r\n<span><?=$item[''puttime'']?></span></li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = x6cms_tagsData(''article'',$tags,5);?>\r\n三个参数：1、article（文章模型数据）2、$tags(标签文字，在标签页面，直接使用$tags,如果在其他页面使用，直接输入标签文字)。3、5（显示数据条数）\r\n数据显示，与x6cms_modellist的一样', 99),
(16, '友情链接', 'model', '<?php $tmpData = x6cms_link();?>\r\n<?php foreach($tmpData as $item):?>\r\n<a href="<?=$item[''url'']?>" target="_blank" title="<?=$item[''description'']?>"><?=$item[''title'']?></a>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '<?php $tmpData = x6cms_link(0);?>\r\n取得友情链接数据，参数：0（友情链接分类ID，如果为0或空即显示所有链接）\r\n<?=$item[''url'']?>链接\r\n<?=$item[''description'']?>链接描述\r\n<?=$item[''title'']?>链接文字', 99),
(17, '客服标签', 'model', '<?php $tmpData = x6cms_online();?>\r\n<?php foreach($tmpData as $item):?>\r\n<?=$item[''type'']?>\r\n<?=$item[''title'']?>\r\n<?=$item[''description'']?>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', 'type:客服类型（qq：qq客服、wangwang：旺旺客服、email：邮箱客服、code：纯代码）\r\ntitle：客服文字\r\ndescription：客服号码或者代码', 99),
(18, '栏目左侧分类', 'content', '<?php $tmpData = x6cms_thiscategory($category);?>\r\n<?php foreach ($tmpData as $item): ?>\r\n<li class="level<?=$item[''level'']?><?php if($item[''id'']==$category[''id'']):?> active<?php endif;?>">\r\n<a href="<?=$item[''url'']?>"><?=$item[''name'']?></a>\r\n</li>\r\n<?php endforeach; ?>', '只应用于栏目列表页和详情页', 99),
(19, '栏目标签', 'seo', '<?php $tmpData = x6cms_allcategory();?>\r\n<?php foreach ($tmpData as $item): ?>\r\n<li class="level<?=$item[''level'']?>">\r\n<a href="<?=$item[''url'']?>"><?=$item[''name'']?></a>\r\n</li>\r\n<?php endforeach;?>\r\n<?php unset($tmpData,$item);?>', '用于站点地图和rss，展示网站所有栏目的链接', 99),
(20, '内容相关标签', 'content', '<?php $tmpData = x6cms_related($detail);?>\r\n<?php foreach ($tmpData as $item): ?>\r\n<li><a href="<?=$item[''url'']?>"><?=$item[''title'']?></a></li>\r\n<?php endforeach; ?>\r\n<?php unset($tmpData,$item);?>', '用于各栏目详情页，展示当前文章（产品等）相关的信息', 99);

-- --------------------------------------------------------

--
-- 表的结构 `cms_type`
--

CREATE TABLE IF NOT EXISTS `cms_type` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `position` int(11) NOT NULL default '0',
  `listorder` tinyint(4) unsigned NOT NULL default '99',
  `status` tinyint(1) unsigned NOT NULL default '1',
  `lang` varchar(20) NOT NULL default 'zh_cn',
  PRIMARY KEY  (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `cms_type`
--

INSERT INTO `cms_type` (`id`, `title`, `class`, `remark`, `thumb`, `position`, `listorder`, `status`, `lang`) VALUES
(1, '默认链接', 'link', '', '', 0, 99, 1, 'zh_cn'),
(2, '首页幻灯', 'slide', '', '', 1, 99, 1, 'zh_cn'),
(3, 'HomeSlide', 'slide', 'home slide', '', 1, 99, 1, 'en'),
(4, '顶部导航', 'navigation', '', '', 0, 99, 1, 'zh_cn'),
(5, 'HomeLink', 'link', 'home link', '', 0, 99, 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `cms_user`
--

CREATE TABLE IF NOT EXISTS `cms_user` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `usergroup` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL default '',
  `email` varchar(50) NOT NULL,
  `realname` varchar(50) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL default '0',
  `tel` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `createtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `lasttime` int(10) unsigned NOT NULL default '0',
  `regip` char(15) NOT NULL,
  `lastip` char(15) NOT NULL,
  `logincount` int(11) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `usergroup` (`usergroup`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `cms_user`
--

INSERT INTO `cms_user` (`id`, `usergroup`, `username`, `password`, `salt`, `email`, `realname`, `sex`, `tel`, `mobile`, `fax`, `address`, `createtime`, `updatetime`, `lasttime`, `regip`, `lastip`, `logincount`, `status`) VALUES
(1, 1, 'admin', 'a847cfdae0173a79ed6bc7c05034d9c8', 'xLSNpt', 'eric@liusgear.com', '', 1, '', '', '', '', 1335922827, 1377155680, 1377246406, '127.0.0.1', '140.207.152.22', 367, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_usergroup`
--

CREATE TABLE IF NOT EXISTS `cms_usergroup` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `varname` varchar(20) NOT NULL,
  `listorder` tinyint(4) unsigned NOT NULL default '99',
  `purview` text NOT NULL,
  `isupdate` tinyint(1) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `cms_usergroup`
--

INSERT INTO `cms_usergroup` (`id`, `varname`, `listorder`, `purview`, `isupdate`, `status`) VALUES
(1, 'superadmin', 1, 'a:4:{i:0;a:24:{i:0;s:1:"2";i:1;s:2:"33";i:2;s:2:"32";i:3;s:2:"15";i:4;s:2:"21";i:5;s:1:"9";i:6;s:2:"35";i:7;s:1:"5";i:8;s:1:"3";i:9;s:2:"11";i:10;s:2:"22";i:11;s:2:"34";i:12;s:1:"4";i:13;s:2:"25";i:14;s:2:"55";i:15;s:1:"6";i:16;s:1:"1";i:17;s:2:"36";i:18;s:2:"20";i:19;s:2:"19";i:20;s:2:"41";i:21;s:2:"52";i:22;s:2:"42";i:23;s:2:"37";}i:1;a:24:{s:7:"purview";a:3:{s:2:"id";s:1:"2";s:5:"class";s:7:"purview";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:10:"adminindex";a:3:{s:2:"id";s:2:"33";s:5:"class";s:10:"adminindex";s:6:"method";b:0;}s:8:"personal";a:3:{s:2:"id";s:2:"32";s:5:"class";s:8:"personal";s:6:"method";b:0;}s:5:"slide";a:3:{s:2:"id";s:2:"15";s:5:"class";s:5:"slide";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:8:"category";a:3:{s:2:"id";s:2:"21";s:5:"class";s:8:"category";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:4:"link";a:3:{s:2:"id";s:1:"9";s:5:"class";s:4:"link";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:7:"propass";a:3:{s:2:"id";s:2:"35";s:5:"class";s:7:"propass";s:6:"method";a:1:{i:0;s:4:"save";}}s:7:"content";a:3:{s:2:"id";s:1:"5";s:5:"class";s:7:"content";s:6:"method";b:0;}s:9:"usergroup";a:3:{s:2:"id";s:1:"3";s:5:"class";s:9:"usergroup";s:6:"method";a:5:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";i:4;s:5:"grant";}}s:7:"article";a:3:{s:2:"id";s:2:"11";s:5:"class";s:7:"article";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:10:"navigation";a:3:{s:2:"id";s:2:"22";s:5:"class";s:10:"navigation";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:7:"profile";a:3:{s:2:"id";s:2:"34";s:5:"class";s:7:"profile";s:6:"method";a:1:{i:0;s:4:"save";}}s:4:"user";a:3:{s:2:"id";s:1:"4";s:5:"class";s:4:"user";s:6:"method";a:3:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";}}s:7:"product";a:3:{s:2:"id";s:2:"25";s:5:"class";s:7:"product";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:9:"attribute";a:3:{s:2:"id";s:2:"55";s:5:"class";s:9:"attribute";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:6:"module";a:3:{s:2:"id";s:1:"6";s:5:"class";s:6:"module";s:6:"method";b:0;}s:6:"system";a:3:{s:2:"id";s:1:"1";s:5:"class";s:6:"system";s:6:"method";b:0;}s:8:"fragment";a:3:{s:2:"id";s:2:"36";s:5:"class";s:8:"fragment";s:6:"method";a:3:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";}}s:4:"type";a:3:{s:2:"id";s:2:"20";s:5:"class";s:4:"type";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:6:"config";a:3:{s:2:"id";s:2:"19";s:5:"class";s:6:"config";s:6:"method";a:6:{i:0;s:3:"add";i:1;s:4:"base";i:2;s:4:"lang";i:3;s:4:"mail";i:4;s:4:"attr";i:5;s:3:"del";}}s:9:"guestbook";a:3:{s:2:"id";s:2:"41";s:5:"class";s:9:"guestbook";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:5:"model";a:3:{s:2:"id";s:2:"52";s:5:"class";s:5:"model";s:6:"method";a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:3:"del";i:3;s:5:"order";}}s:8:"template";a:3:{s:2:"id";s:2:"42";s:5:"class";s:8:"template";s:6:"method";a:1:{i:0;s:4:"edit";}}s:10:"clearcache";a:3:{s:2:"id";s:2:"37";s:5:"class";s:10:"clearcache";s:6:"method";b:0;}}i:2;a:5:{i:1;a:6:{i:0;a:6:{s:2:"id";s:1:"2";s:6:"parent";s:1:"1";s:5:"class";s:7:"purview";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"3";s:6:"parent";s:1:"1";s:5:"class";s:9:"usergroup";s:6:"method";s:24:"add,edit,del,order,grant";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:1:"4";s:6:"parent";s:1:"1";s:5:"class";s:4:"user";s:6:"method";s:12:"add,edit,del";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:2:"19";s:6:"parent";s:1:"1";s:5:"class";s:6:"config";s:6:"method";s:27:"add,base,lang,mail,attr,del";s:9:"listorder";s:1:"6";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:2:"42";s:6:"parent";s:1:"1";s:5:"class";s:8:"template";s:6:"method";s:4:"edit";s:9:"listorder";s:2:"11";s:6:"status";s:1:"1";}i:5;a:6:{s:2:"id";s:2:"37";s:6:"parent";s:1:"1";s:5:"class";s:10:"clearcache";s:6:"method";s:0:"";s:9:"listorder";s:2:"12";s:6:"status";s:1:"1";}}i:32;a:3:{i:0;a:6:{s:2:"id";s:2:"33";s:6:"parent";s:2:"32";s:5:"class";s:10:"adminindex";s:6:"method";s:0:"";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:2:"35";s:6:"parent";s:2:"32";s:5:"class";s:7:"propass";s:6:"method";s:4:"save";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:2:"34";s:6:"parent";s:2:"32";s:5:"class";s:7:"profile";s:6:"method";s:4:"save";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}}i:0;a:4:{i:0;a:6:{s:2:"id";s:2:"32";s:6:"parent";s:1:"0";s:5:"class";s:8:"personal";s:6:"method";s:0:"";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"5";s:6:"parent";s:1:"0";s:5:"class";s:7:"content";s:6:"method";s:0:"";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:1:"6";s:6:"parent";s:1:"0";s:5:"class";s:6:"module";s:6:"method";s:0:"";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:1:"1";s:6:"parent";s:1:"0";s:5:"class";s:6:"system";s:6:"method";s:0:"";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}}i:6;a:5:{i:0;a:6:{s:2:"id";s:2:"15";s:6:"parent";s:1:"6";s:5:"class";s:5:"slide";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"9";s:6:"parent";s:1:"6";s:5:"class";s:4:"link";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:2:"22";s:6:"parent";s:1:"6";s:5:"class";s:10:"navigation";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:2:"36";s:6:"parent";s:1:"6";s:5:"class";s:8:"fragment";s:6:"method";s:12:"add,edit,del";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:2:"20";s:6:"parent";s:1:"6";s:5:"class";s:4:"type";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"6";s:6:"status";s:1:"1";}}i:5;a:6:{i:0;a:6:{s:2:"id";s:2:"21";s:6:"parent";s:1:"5";s:5:"class";s:8:"category";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:2:"11";s:6:"parent";s:1:"5";s:5:"class";s:7:"article";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:2:"25";s:6:"parent";s:1:"5";s:5:"class";s:7:"product";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:2:"55";s:6:"parent";s:1:"5";s:5:"class";s:9:"attribute";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:2:"41";s:6:"parent";s:1:"5";s:5:"class";s:9:"guestbook";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"7";s:6:"status";s:1:"1";}i:5;a:6:{s:2:"id";s:2:"52";s:6:"parent";s:1:"5";s:5:"class";s:5:"model";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"9";s:6:"status";s:1:"1";}}}i:3;a:4:{i:32;a:6:{s:2:"id";s:2:"32";s:6:"parent";s:1:"0";s:5:"class";s:8:"personal";s:6:"method";s:0:"";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:5;a:6:{s:2:"id";s:1:"5";s:6:"parent";s:1:"0";s:5:"class";s:7:"content";s:6:"method";s:0:"";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:6;a:6:{s:2:"id";s:1:"6";s:6:"parent";s:1:"0";s:5:"class";s:6:"module";s:6:"method";s:0:"";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"1";s:6:"parent";s:1:"0";s:5:"class";s:6:"system";s:6:"method";s:0:"";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}}}', 0, 1),
(6, 'generaladmin', 2, 'a:4:{i:0;a:37:{i:0;s:2:"32";i:1;s:2:"33";i:2;s:2:"23";i:3;s:2:"21";i:4;s:2:"15";i:5;s:1:"2";i:6;s:2:"35";i:7;s:2:"28";i:8;s:1:"3";i:9;s:1:"5";i:10;s:2:"11";i:11;s:1:"9";i:12;s:2:"34";i:13;s:1:"4";i:14;s:2:"22";i:15;s:1:"7";i:16;s:2:"25";i:17;s:2:"30";i:18;s:2:"14";i:19;s:2:"29";i:20;s:1:"6";i:21;s:2:"38";i:22;s:2:"43";i:23;s:2:"39";i:24;s:2:"36";i:25;s:1:"1";i:26;s:2:"20";i:27;s:2:"24";i:28;s:2:"19";i:29;s:2:"54";i:30;s:2:"41";i:31;s:2:"53";i:32;s:2:"51";i:33;s:2:"52";i:34;s:2:"40";i:35;s:2:"42";i:36;s:2:"37";}i:1;a:37:{s:8:"personal";a:3:{s:2:"id";s:2:"32";s:5:"class";s:8:"personal";s:6:"method";b:0;}s:10:"adminindex";a:3:{s:2:"id";s:2:"33";s:5:"class";s:10:"adminindex";s:6:"method";b:0;}s:4:"tags";a:3:{s:2:"id";s:2:"23";s:5:"class";s:4:"tags";s:6:"method";b:0;}s:8:"category";a:3:{s:2:"id";s:2:"21";s:5:"class";s:8:"category";s:6:"method";b:0;}s:5:"slide";a:3:{s:2:"id";s:2:"15";s:5:"class";s:5:"slide";s:6:"method";b:0;}s:7:"purview";a:3:{s:2:"id";s:1:"2";s:5:"class";s:7:"purview";s:6:"method";b:0;}s:7:"propass";a:3:{s:2:"id";s:2:"35";s:5:"class";s:7:"propass";s:6:"method";b:0;}s:8:"keywords";a:3:{s:2:"id";s:2:"28";s:5:"class";s:8:"keywords";s:6:"method";b:0;}s:9:"usergroup";a:3:{s:2:"id";s:1:"3";s:5:"class";s:9:"usergroup";s:6:"method";b:0;}s:7:"content";a:3:{s:2:"id";s:1:"5";s:5:"class";s:7:"content";s:6:"method";b:0;}s:7:"article";a:3:{s:2:"id";s:2:"11";s:5:"class";s:7:"article";s:6:"method";b:0;}s:4:"link";a:3:{s:2:"id";s:1:"9";s:5:"class";s:4:"link";s:6:"method";b:0;}s:7:"profile";a:3:{s:2:"id";s:2:"34";s:5:"class";s:7:"profile";s:6:"method";b:0;}s:4:"user";a:3:{s:2:"id";s:1:"4";s:5:"class";s:4:"user";s:6:"method";b:0;}s:10:"navigation";a:3:{s:2:"id";s:2:"22";s:5:"class";s:10:"navigation";s:6:"method";b:0;}s:3:"seo";a:3:{s:2:"id";s:1:"7";s:5:"class";s:3:"seo";s:6:"method";b:0;}s:7:"product";a:3:{s:2:"id";s:2:"25";s:5:"class";s:7:"product";s:6:"method";b:0;}s:8:"htaccess";a:3:{s:2:"id";s:2:"30";s:5:"class";s:8:"htaccess";s:6:"method";b:0;}s:3:"ask";a:3:{s:2:"id";s:2:"14";s:5:"class";s:3:"ask";s:6:"method";b:0;}s:6:"robots";a:3:{s:2:"id";s:2:"29";s:5:"class";s:6:"robots";s:6:"method";b:0;}s:6:"module";a:3:{s:2:"id";s:1:"6";s:5:"class";s:6:"module";s:6:"method";b:0;}s:6:"online";a:3:{s:2:"id";s:2:"38";s:5:"class";s:6:"online";s:6:"method";b:0;}s:7:"sitemap";a:3:{s:2:"id";s:2:"43";s:5:"class";s:7:"sitemap";s:6:"method";b:0;}s:4:"down";a:3:{s:2:"id";s:2:"39";s:5:"class";s:4:"down";s:6:"method";b:0;}s:8:"fragment";a:3:{s:2:"id";s:2:"36";s:5:"class";s:8:"fragment";s:6:"method";b:0;}s:6:"system";a:3:{s:2:"id";s:1:"1";s:5:"class";s:6:"system";s:6:"method";b:0;}s:4:"type";a:3:{s:2:"id";s:2:"20";s:5:"class";s:4:"type";s:6:"method";b:0;}s:2:"hr";a:3:{s:2:"id";s:2:"24";s:5:"class";s:2:"hr";s:6:"method";b:0;}s:6:"config";a:3:{s:2:"id";s:2:"19";s:5:"class";s:6:"config";s:6:"method";b:0;}s:7:"tpltags";a:3:{s:2:"id";s:2:"54";s:5:"class";s:7:"tpltags";s:6:"method";b:0;}s:9:"guestbook";a:3:{s:2:"id";s:2:"41";s:5:"class";s:9:"guestbook";s:6:"method";b:0;}s:9:"recommend";a:3:{s:2:"id";s:2:"53";s:5:"class";s:9:"recommend";s:6:"method";b:0;}s:4:"lang";a:3:{s:2:"id";s:2:"51";s:5:"class";s:4:"lang";s:6:"method";b:0;}s:5:"model";a:3:{s:2:"id";s:2:"52";s:5:"class";s:5:"model";s:6:"method";b:0;}s:8:"database";a:3:{s:2:"id";s:2:"40";s:5:"class";s:8:"database";s:6:"method";b:0;}s:8:"template";a:3:{s:2:"id";s:2:"42";s:5:"class";s:8:"template";s:6:"method";b:0;}s:10:"clearcache";a:3:{s:2:"id";s:2:"37";s:5:"class";s:10:"clearcache";s:6:"method";b:0;}}i:2;a:6:{i:0;a:5:{i:0;a:6:{s:2:"id";s:2:"32";s:6:"parent";s:1:"0";s:5:"class";s:8:"personal";s:6:"method";s:0:"";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"5";s:6:"parent";s:1:"0";s:5:"class";s:7:"content";s:6:"method";s:0:"";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:1:"7";s:6:"parent";s:1:"0";s:5:"class";s:3:"seo";s:6:"method";s:0:"";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:1:"6";s:6:"parent";s:1:"0";s:5:"class";s:6:"module";s:6:"method";s:0:"";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:1:"1";s:6:"parent";s:1:"0";s:5:"class";s:6:"system";s:6:"method";s:0:"";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}}i:32;a:3:{i:0;a:6:{s:2:"id";s:2:"33";s:6:"parent";s:2:"32";s:5:"class";s:10:"adminindex";s:6:"method";s:0:"";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:2:"35";s:6:"parent";s:2:"32";s:5:"class";s:7:"propass";s:6:"method";s:4:"save";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:2:"34";s:6:"parent";s:2:"32";s:5:"class";s:7:"profile";s:6:"method";s:4:"save";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}}i:7;a:5:{i:0;a:6:{s:2:"id";s:2:"23";s:6:"parent";s:1:"7";s:5:"class";s:4:"tags";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:2:"28";s:6:"parent";s:1:"7";s:5:"class";s:8:"keywords";s:6:"method";s:12:"add,edit,del";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:2:"30";s:6:"parent";s:1:"7";s:5:"class";s:8:"htaccess";s:6:"method";s:12:"save,restore";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:2:"29";s:6:"parent";s:1:"7";s:5:"class";s:6:"robots";s:6:"method";s:12:"save,restore";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:2:"43";s:6:"parent";s:1:"7";s:5:"class";s:7:"sitemap";s:6:"method";s:21:"generate,download,del";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}}i:5;a:9:{i:0;a:6:{s:2:"id";s:2:"21";s:6:"parent";s:1:"5";s:5:"class";s:8:"category";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:2:"11";s:6:"parent";s:1:"5";s:5:"class";s:7:"article";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:2:"25";s:6:"parent";s:1:"5";s:5:"class";s:7:"product";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:2:"14";s:6:"parent";s:1:"5";s:5:"class";s:3:"ask";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:2:"39";s:6:"parent";s:1:"5";s:5:"class";s:4:"down";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}i:5;a:6:{s:2:"id";s:2:"24";s:6:"parent";s:1:"5";s:5:"class";s:2:"hr";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"6";s:6:"status";s:1:"1";}i:6;a:6:{s:2:"id";s:2:"41";s:6:"parent";s:1:"5";s:5:"class";s:9:"guestbook";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"7";s:6:"status";s:1:"1";}i:7;a:6:{s:2:"id";s:2:"53";s:6:"parent";s:1:"5";s:5:"class";s:9:"recommend";s:6:"method";s:12:"add,edit,del";s:9:"listorder";s:1:"8";s:6:"status";s:1:"1";}i:8;a:6:{s:2:"id";s:2:"52";s:6:"parent";s:1:"5";s:5:"class";s:5:"model";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"9";s:6:"status";s:1:"1";}}i:6;a:6:{i:0;a:6:{s:2:"id";s:2:"15";s:6:"parent";s:1:"6";s:5:"class";s:5:"slide";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"9";s:6:"parent";s:1:"6";s:5:"class";s:4:"link";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:2:"22";s:6:"parent";s:1:"6";s:5:"class";s:10:"navigation";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:2:"38";s:6:"parent";s:1:"6";s:5:"class";s:6:"online";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:2:"36";s:6:"parent";s:1:"6";s:5:"class";s:8:"fragment";s:6:"method";s:12:"add,edit,del";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}i:5;a:6:{s:2:"id";s:2:"20";s:6:"parent";s:1:"6";s:5:"class";s:4:"type";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"6";s:6:"status";s:1:"1";}}i:1;a:9:{i:0;a:6:{s:2:"id";s:1:"2";s:6:"parent";s:1:"1";s:5:"class";s:7:"purview";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"3";s:6:"parent";s:1:"1";s:5:"class";s:9:"usergroup";s:6:"method";s:24:"add,edit,del,order,grant";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:2;a:6:{s:2:"id";s:1:"4";s:6:"parent";s:1:"1";s:5:"class";s:4:"user";s:6:"method";s:12:"add,edit,del";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:3;a:6:{s:2:"id";s:2:"19";s:6:"parent";s:1:"1";s:5:"class";s:6:"config";s:6:"method";s:27:"add,base,lang,mail,attr,del";s:9:"listorder";s:1:"6";s:6:"status";s:1:"1";}i:4;a:6:{s:2:"id";s:2:"54";s:6:"parent";s:1:"1";s:5:"class";s:7:"tpltags";s:6:"method";s:0:"";s:9:"listorder";s:1:"7";s:6:"status";s:1:"1";}i:5;a:6:{s:2:"id";s:2:"51";s:6:"parent";s:1:"1";s:5:"class";s:4:"lang";s:6:"method";s:18:"add,edit,del,order";s:9:"listorder";s:1:"9";s:6:"status";s:1:"1";}i:6;a:6:{s:2:"id";s:2:"40";s:6:"parent";s:1:"1";s:5:"class";s:8:"database";s:6:"method";s:36:"backup,download,upgrade,optimize,del";s:9:"listorder";s:2:"10";s:6:"status";s:1:"1";}i:7;a:6:{s:2:"id";s:2:"42";s:6:"parent";s:1:"1";s:5:"class";s:8:"template";s:6:"method";s:4:"edit";s:9:"listorder";s:2:"11";s:6:"status";s:1:"1";}i:8;a:6:{s:2:"id";s:2:"37";s:6:"parent";s:1:"1";s:5:"class";s:10:"clearcache";s:6:"method";s:0:"";s:9:"listorder";s:2:"12";s:6:"status";s:1:"1";}}}i:3;a:5:{i:32;a:6:{s:2:"id";s:2:"32";s:6:"parent";s:1:"0";s:5:"class";s:8:"personal";s:6:"method";s:0:"";s:9:"listorder";s:1:"1";s:6:"status";s:1:"1";}i:5;a:6:{s:2:"id";s:1:"5";s:6:"parent";s:1:"0";s:5:"class";s:7:"content";s:6:"method";s:0:"";s:9:"listorder";s:1:"2";s:6:"status";s:1:"1";}i:7;a:6:{s:2:"id";s:1:"7";s:6:"parent";s:1:"0";s:5:"class";s:3:"seo";s:6:"method";s:0:"";s:9:"listorder";s:1:"3";s:6:"status";s:1:"1";}i:6;a:6:{s:2:"id";s:1:"6";s:6:"parent";s:1:"0";s:5:"class";s:6:"module";s:6:"method";s:0:"";s:9:"listorder";s:1:"4";s:6:"status";s:1:"1";}i:1;a:6:{s:2:"id";s:1:"1";s:6:"parent";s:1:"0";s:5:"class";s:6:"system";s:6:"method";s:0:"";s:9:"listorder";s:1:"5";s:6:"status";s:1:"1";}}}', 1, 1),
(7, 'generaluser', 3, 'a:0:{}', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
