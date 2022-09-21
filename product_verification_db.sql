-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 05:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_verification_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Food'),
(2, 'Drugs'),
(4, 'Drinks'),
(17, 'custmetics'),
(21, 'Breverages'),
(22, 'others');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 68, 'Guest', 'alphasilas4@gmail.com', 'https://t.me/hymns_songs', 'approved', '2021-10-20'),
(2, 43, 'Guest', 'alphasilas4@gmail.com', 'Visit the telegram page...\r\n\r\nhttps://t.me/hymns_songs', 'approved', '2021-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_by` varchar(255) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_publisher` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_pdf` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(200) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_by`, `post_title`, `post_author`, `post_publisher`, `post_date`, `post_image`, `post_pdf`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(43, 4, 'silas', 'A Joyful Day', 'Ezeoke Celestine', 'Ugwu Uriel Silas', '2021-02-05', '', '../pdf/A Joyful Day_1.pdf', 'The song A Joyful Day is on key_A, timing of 4 4', 'enterance, a joyful day, what a joyful day', '', 'published', 148),
(44, 4, 'silas', 'AGNUS DEI', 'Solomon Bognet', 'Ugwu Silas', '2021-02-05', '', '../pdf/AGNUS DEI Solomon Bognet - Full Score.pdf', 'The song Agnu Dei was composed by Solomon Bognet from Kaduna Arch.\r\nIt is a 2 4 song on Key G', 'Agnus Dei, Lamb of God', '', 'published', 68),
(45, 22, 'user', 'Abu_umu_zayon', 'Isaac Onwubuya Charles', 'Silas Ugwu', '2021-02-07', '', '../pdf/Abu_umu_zayon_24-Feb-2017_16-31-34.pdf', 'The song Abu umu zayon by Isaac Charles is a 12 8 timing on Allegro with it on Key Ab', 'Isaac, Abu umu zion', '', 'published', 76),
(46, 4, 'user', 'Be the food of my soul', 'Eze Ifeanyichukwu', 'Uriel Ugwu', '2021-02-07', '', '../pdf/BE THE FOOD OF MY SOUL - Full Score.pdf', '', 'communion, be the food', '', 'published', 116),
(47, 1, 'user', 'My hiding place', 'Dr. Jude Nnam', 'Ugwu Silas Ogochukwu Uriel', '0000-00-00', '', '../pdf/My-Hiding-Place.pdf', '', 'You are my hiding place', '', 'published', 116),
(48, 1, 'user', 'Ashes as a sign of the cross on my head', 'Nduka Ugwu', 'Ugwu Silas Ogochukwu Uriel', '2021-02-07', '', '../pdf/Ashes on my head.... by NDK.pdf', 'A lenty season song by Nduka UK Ugwu.&nbsp; It\'s on a 4 4 time signature&nbsp;', 'Let, ashes on my head', '', 'published', 16),
(49, 4, 'admin', 'Ezi chukwu nara Aja Anyi', 'Obiele Udoka', 'Ugwu Silas', '2021-02-08', '', '../pdf/Ezi Chukwu Nara Aja Anyi-1.pdf', 'song on Key: Ab and on 3 4&nbsp;', 'Nara, anyia rio gi', '', 'published', 22),
(50, 1, 'admin', 'Take Our Bread', '', 'Ugwu Uriel Silas', '2021-02-08', 'take our bread.jpg', '', 'Song on Key&nbsp;D', 'take our bread we ask you that our lives', '', 'published', 43),
(51, 4, 'Nduka aku', 'Iheomachukwu', 'Nduka aku', '', '2021-02-10', '', '', 'A Thanksgiving song&nbsp;\r\n&nbsp;', '', '', 'draft', 16),
(52, 1, 'admin', 'Catholic Hymns in tunes', '', 'Ugwu Silas', '2021-02-11', '', '', '', 'catholic hymns', '', 'published', 31),
(53, 4, 'admin', 'Ocean of mery', 'Antuanya Emmanuel', 'Uriel Ugwu Ogochukwu', '2021-02-11', '', '../pdf/Ocean Of Mercy_1.pdf', '', 'concencration song, ocean of mercy', '', 'published', 29),
(54, 4, 'admin', 'Thanksgiving of Amazing grace', 'Dr. Jude Nnam', 'Ugwu Uriel Silas', '2021-02-11', '', '../pdf/Thanksgiving of Amazing-1.pdf', '', 'thanksgiving of amazing grace, Offering song', '', 'published', 20),
(56, 4, 'uriel', 'Laudate Dominum', 'Taize Community', 'Uriel', '2021-02-14', '', '../pdf/Laudate Dominum.pdf', 'Song by&nbsp;Taize Community&nbsp;', 'laudate dominum, sing praise and bless the Lord', '', 'published', 16),
(57, 1, 'uriel', 'Handel Messiah', 'Handel', 'Uriel Ugwu', '0000-00-00', '', '', 'Handel Messiah on tonic solfa', 'Handel messiah', '', 'draft', 16),
(58, 4, 'uriel', 'Nso Nso Nso', 'Ifeanyichukwu Eze', 'Uriel Ugwu', '2021-02-14', '', '../pdf/NSO, NSO, NSO 2 - Full Score.pdf', 'Song by Ifeanyichukwu Eze on Key Ab&nbsp;', 'Holy, Nso', '', 'published', 22),
(59, 2, 'uriel', 'And the Glory', 'Handel Messiah', 'Uriel Ugwu', '2021-02-14', '', '../pdf/and the glory of the lord.pdf', 'Handle Composition', 'And the glory of the Lord', '', 'published', 35),
(60, 1, 'uriel', 'God of mercy and compassion', '', 'Silas ugwu', '2021-02-19', '', '../pdf/God of mercy and compassion.pdf', '', 'Lent song', '', 'published', 18),
(61, 21, 'uriel', 'Lord you have the word of eternal life', 'Emperor', 'Uriel Ugwu', '2021-03-02', '', '../pdf/Psalm for 3rd Sunday of Lent.pdf', 'Psalm for 3rd Sunday of Lent.\r\nLord you have the word of eternal life.&nbsp;', 'Psalm', '', 'published', 6),
(62, 1, 'uriel', 'Love goes on', 'Bernadette Farrell', 'Uriel Ugwu', '2021-03-02', '', '../pdf/love goes on.pdf', 'Love goes on is a 3 4 song and key D.&nbsp;\r\nUT tells you everything you need to know about love.&nbsp;', 'Love', '', 'published', 16),
(63, 4, 'uriel', 'Sanctus', 'C. D. Okorie', 'Silas ugwu', '2021-03-02', '', '../pdf/sanctus by cd okorie.pdf', '', 'Holy, holy, sanctus', '', 'published', 37),
(64, 1, 'uriel', 'Lenten Hymns', 'The church', 'Ugwu Silas Ogochukwu Uriel', '0000-00-00', '', '', 'This is a compilation of different lenten Hymns&nbsp;', 'Lenten Hymns', '', 'draft', 8),
(65, 4, 'uriel', 'Ecce sacerdo', 'The church', 'Uriel Ugwu', '2021-03-10', '', '../pdf/Ecce Sacerdo Magnum.pdf', 'This song is mostly used during Entrance of the bishop for the Mass', 'Bishop mass, Entrance Hymns for bishop Mass', '', 'published', 7),
(66, 4, 'uriel', 'Priestly People', '', 'Uriel Ugwu', '2021-03-10', '', '../pdf/PRIESTLY PEOPLE.pdf', 'Priestly People an entrance song&nbsp;', 'Entrance song for bishop Mass', '', 'published', 13),
(67, 17, 'uriel', 'Our Culture, we celebrate', 'Jude Nnam', 'Uriel Ugwu', '2021-03-10', '', '../pdf/(Gen) Our Culture We Celebrate =-1.pdf', 'Mostly used for entrance Hymns for the Holy Mass', 'Entrance song', '', 'published', 38),
(68, 17, 'uriel', 'Ojochenemi', 'Jude Nnam', 'Ugwu Silas Ogochukwu Uriel', '2021-03-10', '', '../pdf/ojochenemi-1.pdf', 'An idoma song mostly used for in Masses&nbsp;', 'Offering song', '', 'published', 15),
(69, 17, 'uriel', 'Into your sanctuary', 'Eze Ifeanyi', 'Uriel Ugwu', '2021-03-10', '', '../pdf/INTO YOUR SANCTUARY - Full Score.pdf', 'Into your sanctuary is an entrance song&nbsp;', 'Entrance', '', 'published', 8),
(71, 21, 'uriel', 'Psalm for fourth Sunday of Lent', 'Daniel Tsado', 'Uriel Ugwu', '0000-00-00', '', '../pdf/PSALM FOR FOURTH SUNDAY OF LENT (B) - Tsado DANIEL.pdf', 'Psalm for fourth Sunday of Lent. \\\\\\\"Let my tongue cleave to my palate if I remember you not\\\\\\\"&nbsp;', 'Psalms, Sunday, Lent', '', 'published', 13),
(72, 1, 'uriel', 'My Suffering Jesus', 'Dr. Jude Nnam', 'Uriel Ugwu', '2021-03-22', '', '../pdf/My suffering Jesus.pdf', 'Lenten Hymns&nbsp;', 'Lenten Hymns', '', 'published', 16),
(73, 4, 'uriel', 'What a merriment', 'Udo Lawrence', 'Uriel Ugwu', '2021-03-22', '', '', 'This is a communion Hymn', 'What a merriment, what a banquet', '', 'published', 15),
(74, 1, 'uriel', 'Obiligo', 'Dr. Jude Nnam', 'Uriel Ugwu', '0000-00-00', '', '../pdf/ Obiligo (EASTER).pdf', 'This is an Easter song composed by Dr. Jude Nnam&nbsp;', 'Easter song, Jude Nnam', '', 'published', 17),
(75, 21, 'uriel', 'Psalm for palm Sunday', 'Daniel Tsado', 'Uriel Ugwu', '0000-00-00', '', '../pdf/PSALM FOR PASSION SUNDAY (PALM SUNDAY).pdf', 'Palm Sunday psalm&nbsp;', 'Psalm, palm Sunday', '', 'published', 10),
(78, 4, 'uriel', 'Kyrie Eleison', 'Enoch Clement', 'Uriel Ugwu', '0000-00-00', 'kyrie by Enoch clement.jpg', '', 'Kyrie by Enoch Clement&nbsp;', 'Lord have mercy, kyrie, Enoch', '', 'published', 14),
(79, 4, 'uriel', 'I Am The Living Bread', 'Ifeanyichukwu Eze', 'Uriel Ugwu', '2021-03-24', '', '../pdf/I AM THE LIVING BREAD_1 - Full Score.pdf', 'This is a communion song.&nbsp;', 'Communion, living bread, Eze Ifeanyi', '', 'published', 46),
(80, 4, 'uriel', 'My people', 'Dr. Jude Nnam', 'Ugwu Silas Ogochukwu Uriel', '2021-03-30', '', '../pdf/my people.pdf', 'My people is a song composed by Jude Nnam used during the Holy week', 'my people, Lenten song, Jude Nnam', '', 'published', 10),
(81, 4, 'uriel', 'My agonizing Jesus Christ', 'Clare Ubawike', 'Ugwu Silas Ogochukwu Uriel', '2021-03-30', '', '../pdf/MY AGONISING JESUS CHRIST.pdf', 'My agonizing Jesus Christ is a composed by Clare Ubawike', 'Clare Ubawike\0, my agonizing Jesus Christ,  Lenten song', '', 'published', 4),
(82, 4, 'uriel', 'My agonizing Jesus Christ', 'Clare Ubawike', 'Ugwu Silas Ogochukwu Uriel', '2021-03-30', '', '../pdf/MY AGONISING JESUS CHRIST.pdf', 'My agonizing Jesus Christ is a composed by Clare Ubawike', 'Clare Ubawike\0, my agonizing Jesus Christ,  Lenten song', '', 'published', 2),
(83, 17, 'uriel', 'Christ is risen', 'Dr. Jude Nnam', 'Uriel Ugwu', '2021-03-30', '', '../pdf/(Easter) Christ Is Risen.pdf', 'Easter song by Dr.&nbsp; Jude titled Christ is Risen&nbsp;', 'Easter song, Jude Nnam', '', 'published', 68),
(84, 17, 'uriel', 'Soro m tobe ya', 'Dr. Jude Nnam', 'Uriel Ugwu', '0000-00-00', '', '', 'Song by Dr. Jude&nbsp;', 'Soro m Tobe,', '', 'draft', 9),
(85, 4, 'uriel', 'Gloria', 'Uriel Ugwu Silas Ogochukwu', 'Uriel', '2021-04-02', 'IMG_20210402_203032_083.JPG', '../pdf/Gloria by Uriel and arranged by Enoch.pdf', 'Gloria by Uriel Ugwu Silas and arranged by Enoch Clement&nbsp;', 'Uriel Silas, Gloria ,Enoch Clement', '', 'published', 11),
(86, 21, 'uriel', 'Psalm Assumption', 'Daniel Tsado', 'Ugwu Silas Ogochukwu Uriel', '2021-08-10', 'Screenshot_20210810-014935.png', '../pdf/PSALM FOR THE ASSUMPTION OF THE BLESSED VIRGIN MARY (Solemnity).pdf', 'Written by Daniel Tsado', 'Psalm', '', 'published', 6),
(87, 4, 'uriel', 'Cry for mercy', 'Uriel Ugwu Silas Ogochukwu', 'Silas ugwu', '2021-08-10', 'Screenshot_20210810-090232.png', '../pdf/cry for mercy.pdf', 'Cry for mercy by Uriel Ugwu\r\nOn â´4', 'Prayer response, cry for mercy, prayer of the faithful', '', 'published', 14),
(88, 4, '', 'La ca', 'La csera', '', '2022-09-08', 'IMG_20210312_151835_888.jpg', '', 'best before 2023\r\n&nbsp;', 'PV6602d418db84', '', 'published', 4),
(89, 1, '', 'Super wash', 'Confidence', '', '0000-00-00', 'IMG_20200915_214615_105.jpg', '', 'Best multi wash in town', 'PVd68a3b629ca6', '', 'published', 0),
(90, 22, '', 'Super wash', 'Confidence', '', '2022-09-08', 'IMG_20200915_214615_105.jpg', '', 'Best multi wash in town', 'PVd61a3b629ca6', '', 'published', 0),
(91, 1, '', 'La ca', 'La csera', '', '0000-00-00', 'IMG_20210312_151835_888.jpg', '', 'best before 2023 &nbsp;', 'PV6602d418db87', '', 'published', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randsalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randsalt`) VALUES
(9, 'silas', '1', 'silas', 'Ugwu', 'messageusonow@gmail.com', '', 'admin', ''),
(16, 'user', '$2y$10$iRnlNdKlE3UTmmke8AglgudA09Fwps1WUzh6DRxSy2LX7A7JdW1v6', '', '', 'usermail@mail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(17, 'admin', '$2y$10$rZ0EAYyW3vm5u4qA0vGA7..dFO6gWTbMJRLedss.9mb.jKPKej5k.', 'Admin', 'Admin', 'admin@mail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(19, 'uriel', '$2y$10$Q55qSJMsr2iMyqXHWopwROs1oAwWamCraK7vdXWy3Z0mzrPVulPRO', 'silas', 'Ugwu', 'mailurworld.net@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(20, 'Abraham', '$2y$10$z.cY.WbYXL9EmWP/iqYZ1eNPM8rwOg/Lg4Tk5bKGMYEAW1ZMgK/Wu', '', '', 'alphasilas4@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(21, 'Nduka aku', '$2y$10$4PvBfaQmfVLLp4hakS8wz.WZZ8PLzl3xw99MM8tw4EO5ObUIvX3s.', '', '', 'ugwukenneth883@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(22, 'Mbamalu Chiedozie', '', 'Mbamalu Chiedozie', 'Emperor', 'emperorchiedozie@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(23, 'Agba Ben Stephen', '$2y$10$P2sxzfz2izLKkuzfdFvOh.g8sYvhUYEPhTx3Pd7MC/kfz4Gwn4z/m', '', '', 'agbabenstephen@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(24, 'Kelvin', '$2y$10$2XzXc0hvInZ6yzqsombmsuNqld3MdRugvExO3hVZzALngm9hAzwVq', '', '', 'Ugahdooyum@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(25, 'Innocent', '', 'Innocent', 'Udoekpo', 'udoekpoinnocent@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(26, 'Gentle Lamb', '', 'Gabriel', 'Emeri', 'themessiahmusicmelodies@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(27, 'Jakesqwerty', '$2y$10$9cFmbK1gM6UZtzgCekkfKeJ8U/cdSSDJg4EYeXnmI9RcdcPctEBzG', '', '', 'jacobsundayjacob@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(28, 'Chinah', '$2y$10$D26sXtoG2Nb7wEM8P64I.OrzDRtaLUC5Nu0t0T8k2S9g73S35cjkq', '', '', 'chinah147@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(29, 'Munchi', '$2y$10$z5LI/BaiIrvmAVgArZzxmuIDmuDB1Gn4C5WVycsmuAefyYaAxCSZW', '', '', 'martinsmunchi@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(30, 'Echezona', '$2y$10$FCCXfIJFwOOoo1bGlIiHfuLgwpwsKOj.rp0OKUtXsKQx73VhDQkYC', '', '', 'johnfrancisechezona@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(31, 'Terseer', '$2y$10$muZH9/l4.f35XDAlMKutC.YY4ImgFQB.x55aHUn88y16X4WWeBPM2', '', '', 'terseerabutu@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(32, 'Cynthia peters', '$2y$10$6MJNEQzpP4MxqGSooJgEweW85qhpjSMM1l4avW7B/wylYShO//MEK', '', '', 'uchechukwuugwu75@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(33, 'Sparrowmonic', '$2y$10$9cHV8LJjp6Y31RyJlzy/UOyXEWZX7vTmcb91lh5Fopusivu0q2opW', '', '', 'bishopdannyton@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(34, 'Vincent Yahaya', '$2y$10$m4KNDLFztxBqdXYdilYNJu56y9OdtDqu2OF1esyc8KWeABMv75hjq', '', '', 'vincentyahaya00@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(35, 'Freeman96', '$2y$10$Cf0SjM.afGDgfdXS4yJ6I.PFqo5Ebr5V1mnv970dkFAhoekGYktFy', '', '', 'simonyaji8@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'rpco8li4s4cgecr6rqnikpthk6', 1609830427),
(2, '903b2e879aa32a83ad0203f7ccccdcba', 1612389670),
(3, '4jltqimklpro07injnmp80f7i0', 1610746418),
(4, 'erua2lmrf4fv6gdgmh0idjaf91', 1610204742),
(5, '7cukthmqdd31qe388sn665qkr0', 1612254996),
(6, 'nv4dfaagiuhfi047l88p0751h0', 1612356762),
(7, 'iau4rfargf1dvvrtlcgs4kbmu1', 1612255043),
(8, '7vdm6eo7s2n4objob34sqbhtq3', 1612541717),
(9, 'grb7ga722l4ivmmd4h9q91pcm6', 1612533273),
(10, '7126ad97b31e47efb39d367bf443dcd2', 1612360896),
(11, '4pnlk1pa27r8cbb2djl54i8fg6', 1616632761),
(12, '1m6g6095va1pd37d7ca1aoa981', 1613827073),
(13, 'i8su6hmi131ku3t1suvdqlgvf1', 1612720151),
(14, 'l2q1q45qfa26olvm6kefado0o0', 1612758790),
(15, '5a96mo5o2mr8rchlnme4j0q5j4', 1612731169),
(16, 'l6tvgfsujt5er2bnjg1jutjg72', 1612926504),
(17, 'rmovajn9kqmdmtq6toggj2o6g4', 1612958341),
(18, '4nsulctigqrbmsc8mmtmhdj7u1', 1612990503),
(19, 'f1gi1501d700kpiv6q3626kk76', 1612991449),
(20, '0vgep3liujaku1b4d8dg1lnc81', 1613004126),
(21, '8eu14pjenmmtmihsb1jbj91m37', 1613045559),
(22, 'abrdoggou3ufgc20rb0j79les3', 1613119812),
(23, 'krkr2o35v6qsqmb7rkdbbqpc17', 1613148084),
(24, 'u917s96165tcapbug5h2qat327', 1613669676),
(25, 'e7df9a5ps6ek0l0amtnok95t50', 1613769210),
(26, '0ta3a314q6o7cligia4hdvd0s2', 1614709982),
(27, '6crrm0g14mtis0srm8uifgrkd2', 1614722431),
(28, '8jcdpm34d14n164rcl9ka25ba3', 1615283334),
(29, 'u149fmi0d35fks38qtafsice87', 1615391152),
(30, 'gik47q9iepbl6e47l5mate1k47', 1615401233),
(31, 'skjgmjf66u9fvokmf1ro3vrh00', 1615404423),
(32, 'armt3kfdaih3c8adt81kmlh8d2', 1615450769),
(33, '6obsu4b08jg58g1kcibvhgjcr4', 1615499284),
(34, '1iajmegj8bhj80c065qiqr3rd0', 1616433680),
(35, '7o7925b38c05msgk0u3agpbuj7', 1616444564),
(36, 'nghn81odgtfb8fnppalp2mvbt1', 1616580055),
(37, 'g5brh4gbr69lcn5tik9p9pgid7', 1616581138),
(38, 'kah3iu1rker64nfup85thhouk1', 1616581548),
(39, 'a5sf2g467821qk60s7dgfjir12', 1616611734),
(40, 'iqhn45q3pcfdtlqkho6jjl1dt2', 1616612051),
(41, '5em8kp0kvusr1s8b678b1pg8s6', 1617135020),
(42, '07re8fp4e51jesoej0qu9255e0', 1617393012),
(43, 'uph5vbau63uqkckub50nmdgn70', 1623445228),
(44, '6c61duh10010tqs96rmkcdfti5', 1628559224),
(45, '305h2sg29gcbu3kd1jh13o5j00', 1628582721),
(46, '56avs5on5mg3usabdu29s6naa1', 1628606726),
(47, 'om2lhfu9l7mp7ph6hj58j010h5', 1628609644),
(48, 'ftpkseku5i7tosc65k0nna7oi6', 1628688366),
(49, 'tpu2a5r6behd682rb28tqghq61', 1630782608),
(50, 'l1da41la1rn0vr59u427412o55', 1632485404),
(51, 'airdjsdi3m380us24kdbgu8kt2', 1634762367),
(52, '2vsouculd5clto41bffust8o80', 1635188324),
(53, 'brr45sq7uaggmsmkco36nbrk85', 1635239431),
(54, 'lbh7ealvput30ems7hrfj0nbb7', 1663171037),
(55, 'q394mo1j3kugvmb1jtjobtdcl8', 1661542191);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
