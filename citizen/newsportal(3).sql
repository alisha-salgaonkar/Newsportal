-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2015 at 11:29 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE IF NOT EXISTS `advertise` (
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `path` varchar(200) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`a_id`, `name`, `path`, `status`) VALUES
(35, 'gggg', 'uploads/Chrysanthemum2.jpg', 0),
(36, 'fff', 'uploads/Chrysanthemum3.jpg', 0),
(37, 'mab', 'uploads/Koala2.jpg', 1),
(38, 'hhh', 'uploads/Desert14.jpg', 0),
(39, 'sadd', 'uploads/Penguins4.jpg', 0),
(40, 'Pepsi', 'uploads/Pepsi.jpg', 1),
(41, 'KFC', 'uploads/KFC.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `c_id` int(3) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `cname`) VALUES
(1, 'Nation'),
(2, 'External Affairs'),
(3, 'Sports'),
(4, 'Life'),
(9, 'Politics'),
(10, 'Education'),
(11, 'General'),
(12, 'State'),
(13, 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `com_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_id` int(10) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `m_id` int(10) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`com_id`, `f_id`, `comment`, `date`, `time`, `m_id`) VALUES
(1, 10, 'Yes', '2015-09-08', '06:17:00', 19),
(2, 0, 'r u dr', '2015-09-14', '07:09:24', 23),
(3, 0, 'qwer', '2015-09-14', '07:09:35', 20),
(4, 0, 'plm', '2015-09-14', '07:09:24', 21),
(5, 0, 'tyu', '2015-09-14', '07:09:49', 22),
(6, 0, 'mel roy', '2015-09-14', '07:09:59', 29),
(7, 19, 'naz eef', '2015-09-14', '07:09:55', 30),
(8, 20, 'hi', '2015-09-14', '12:09:54', 21),
(9, 20, 'ji', '2015-09-14', '12:09:11', 22),
(10, 20, 'jojo singh', '2015-09-14', '12:09:53', 20),
(11, 20, 'john', '2015-09-14', '12:09:43', 23),
(12, 20, 'alisha', '2015-09-14', '12:09:50', 22),
(13, 16, 'lol', '2015-09-14', '12:09:02', 21),
(14, 21, 'hi', '2015-09-14', '01:09:33', 23),
(15, 21, 'hi', '2015-09-19', '02:09:48', 20),
(16, 20, 'how are you all?', '2015-09-27', '01:09:18', 22),
(17, 23, 'ya true', '2015-10-16', '05:10:30', 21),
(18, 18, 'hello', '2015-10-17', '07:10:06', 20),
(19, 24, 'no', '2015-10-18', '12:10:49', 19),
(20, 24, 'yes', '2015-10-18', '12:10:58', 23),
(21, 10, 'i knwww', '2015-10-18', '05:10:39', 0),
(22, 24, 'fine', '2015-10-19', '06:10:07', 22),
(23, 24, 'yo', '2015-10-19', '07:10:28', 23),
(24, 24, 'yess', '2015-10-19', '07:10:09', 23),
(25, 24, 'yu', '2015-10-21', '09:10:17', 22),
(26, 25, 'FC Goa!!!!', '2015-11-23', '03:11:40', 22);

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `fpost` varchar(300) NOT NULL,
  `m_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `c_id` int(10) NOT NULL,
  `likes` int(20) NOT NULL,
  `dislikes` int(20) NOT NULL,
  `report` int(20) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`f_id`, `fpost`, `m_id`, `date`, `time`, `c_id`, `likes`, `dislikes`, `report`) VALUES
(10, 'Is it right???', 21, '2015-09-14', '02:09:20', 2, 0, 0, 0),
(11, 'qqq', 22, '2015-09-14', '05:09:45', 1, 0, 0, 0),
(12, 'sss', 23, '2015-09-14', '05:09:24', 1, 0, 0, 0),
(13, 'abc\\', 24, '2015-09-14', '05:09:58', 1, 0, 0, 0),
(14, 'gfasdy', 25, '2015-09-14', '07:09:54', 1, 0, 0, 0),
(15, 'tyu', 26, '2015-09-14', '07:09:06', 1, 0, 0, 0),
(16, 'qwe', 27, '2015-09-14', '07:09:12', 1, 0, 0, 0),
(17, 'uyt', 28, '2015-09-14', '07:09:44', 1, 0, 0, 0),
(18, 'mel', 29, '2015-09-14', '07:09:45', 1, 0, 0, 0),
(19, 'naz', 30, '2015-09-14', '07:09:47', 1, 0, 0, 0),
(20, 'Kid korya', 17, '2015-09-14', '12:09:38', 2, 0, 0, 0),
(21, 'oh no', 6, '2015-09-14', '01:09:50', 2, 0, 0, 0),
(22, 'holy', 2, '2015-09-27', '01:09:03', 4, 0, 0, 0),
(23, 'it is very rare to see fun', 23, '2015-10-16', '05:10:22', 1, 0, 0, 0),
(24, 'hello', 22, '2015-10-18', '12:10:27', 3, 0, 0, 0),
(25, 'FC goa should win ', 22, '2015-11-23', '03:11:26', 9, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `l_id` int(6) NOT NULL AUTO_INCREMENT,
  `m_id` int(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `m_id`, `email`, `password`) VALUES
(1, 20, 'lalu@gmail.com', 'yadav'),
(2, 22, 'abc@gmail.com', 'abc'),
(3, 21, 'abc@gmail.com', 'abc'),
(4, 23, 'admin@gmail.com', 'admin'),
(5, 37, 'testing@gmail.com', 'dc844e202aeeb82b6ee55cab1a3d2e'),
(6, 38, 'alishasalgaonkar@gmail.com', 'eb9a7852dcd7d634c8646f027dfa92'),
(7, 39, 'abcdef@gmail.com', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `m_id` int(6) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(10) NOT NULL,
  `profile_image` varchar(515) NOT NULL,
  `role` varchar(10) NOT NULL,
  `tempEmail` varchar(50) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`m_id`, `fname`, `mname`, `lname`, `dob`, `contact`, `profile_image`, `role`, `tempEmail`) VALUES
(19, 'lalu', '-', '', '2015-09-03', 9307434614, 'photo10.jpg', '', 'sham@yahoo.com'),
(20, 'lalu', 'prasad', 'yadav ', '1993-07-14', 9307434614, 'lalu2.jpg', '', 'sham@yahoo.com'),
(21, 'kaushal', 'kishore', 'patel ', '2009-04-03', 9307434614, 'photo11.jpg', '', 'sham@yahoo.com'),
(22, 'bobby', 'kishore', 'patel ', '2015-09-02', 9307434614, 'photo12.jpg', '', 'sham@yahoo.com'),
(23, 'ram', 'nandan', 'mandal ', '2010-03-10', 9307434614, 'Photo0088.jpg', 'admin', 'sham@yahoo.com'),
(29, 'nirs', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(30, 'sss', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(31, 'Alisha Salgaonkar', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(32, 'Nazeef', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(33, 'Anon', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(34, 'ere', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(35, 'dsdsds', NULL, '', '0000-00-00', 0, '', 'citizen', 'niraj@gmail.com'),
(36, 'dddddd', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(37, 'testing', 'testing ', 'testing', '2015-09-29', 1234567890, '11888055_898427383588355_8022757597411156415_n1.jpg', '', 'sham@yahoo.com'),
(38, 'Alisha', 'Salgaonkar ', 'Salgaonkar', '2015-10-06', 9158434563, '11888055_898427383588355_8022757597411156415_n2.jpg', '', 'sham@yahoo.com'),
(39, 'abc', 'def ', 'def', '2015-09-28', 1234567890, '11888055_898427383588355_8022757597411156415_n3.jpg', '', 'sham@yahoo.com'),
(40, 'ggggggggggggggggggg', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(41, 'Alisha', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(42, 'zxczdsvjkbn', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(43, 'Murari Shetye', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(44, 'Bindiya chari', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(45, 'TNN', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(46, 'PTI', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(47, 'Anonymous', NULL, '', '0000-00-00', 0, '', 'citizen', 'sham@yahoo.com'),
(48, 'Anonymous', NULL, '', '0000-00-00', 0, '', 'citizen', 'raaj@yahoo.com'),
(49, 'ANonymous', NULL, '', '0000-00-00', 0, '', 'citizen', 'raaj@yahoo.com'),
(50, 'Navin Jha', NULL, '', '0000-00-00', 0, '', 'citizen', 'raaj@yahoo.com'),
(51, 'Team Herald', NULL, '', '0000-00-00', 0, '', 'citizen', 'raaj@yahoo.com'),
(52, 'Team Herald', NULL, '', '0000-00-00', 0, '', 'citizen', 'raaj@yahoo.com'),
(53, 'gggggg', NULL, '', '0000-00-00', 0, '', 'citizen', 'raaj@yahoo.com'),
(54, 'sss', NULL, '', '0000-00-00', 0, '', 'citizen', 'ssssssssssssssssssss@ddd'),
(55, 'Chetana', NULL, '', '0000-00-00', 0, '', 'citizen', 'pchetana567@gmail.com'),
(56, 'Chetana', NULL, '', '0000-00-00', 0, '', 'citizen', 'pchetana567@gmail.com'),
(57, 'priya', NULL, '', '0000-00-00', 0, '', 'citizen', 'priyashet123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `member_address`
--

CREATE TABLE IF NOT EXISTS `member_address` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_line` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `pin` int(6) NOT NULL,
  `state` char(35) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `member_address`
--

INSERT INTO `member_address` (`m_id`, `address_line`, `city`, `pin`, `state`) VALUES
(19, 'Ponda, Goa, India', 'Ponda', 444444, 'GA'),
(20, 'Taleigao Road, Nagalli Hills Colony, Taleigao, Goa, India', 'Taleigao', 403002, 'GA'),
(21, 'Taleigao', 'Taleigao', 403206, 'GA'),
(22, 'taleiga', 'Taleigao', 403206, 'GA'),
(23, 'MGS, Mughal Sarai, Uttar Pradesh, India', 'Mughal Sarai', 232101, 'UP'),
(24, 'MGS, Mughal Sarai, Uttar Pradesh, India', 'Mughal Sarai', 232101, 'UP'),
(25, 'MGS, Mughal Sarai, Uttar Pradesh, India', 'Mughal Sarai', 232101, 'UP'),
(26, 'MGS, Mughal Sarai, Uttar Pradesh, India', 'Mughal Sarai', 232101, 'UP'),
(27, 'MGS, Shivaji Marg, Lucknow, Uttar Pradesh, India', 'Lucknow', 226001, 'UP'),
(28, 'MGS, Mughal Sarai, Uttar Pradesh, India', 'Mughal Sarai', 232101, 'UP'),
(37, 'Taleigao Road, Nagalli Hills Colony, Taleigao, Goa, India', 'Taleigao', 403002, 'GA'),
(38, 'Goa university,taleigao,panjim,Goa', 'North Goa', 408513, 'Goa'),
(39, 'Taleigao Road, Nagalli Hills Colony, Taleigao, Goa, India', 'Taleigao', 403002, 'GA');

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE IF NOT EXISTS `multimedia` (
  `media_id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `url` varchar(300) NOT NULL,
  `n_id` int(10) NOT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `multimedia`
--

INSERT INTO `multimedia` (`media_id`, `type`, `url`, `n_id`) VALUES
(2, 'image/jpeg', 'uploads/Penguins1.jpg', 12),
(3, 'image/jpeg', 'uploads/Lighthouse1.jpg', 13),
(4, 'image/jpeg', 'uploads/Koala.jpg', 16),
(5, 'image/jpeg', 'uploads/Tulips1.jpg', 17),
(7, 'video/mpeg', 'uploads/demoVideo.mp4', 23),
(8, 'video/mpeg', 'uploads/demoVideo.mp4', 34),
(9, 'video/mpeg', 'uploads/demoVideo.mp4', 35),
(10, 'image/jpeg', 'uploads/Tulips3.jpg', 36),
(11, 'image/jpeg', 'uploads/Desert10.jpg', 37),
(12, 'image/jpeg', 'uploads/Koala1.jpg', 37),
(13, 'video/mpeg', 'uploads/demoVideo.mp4', 38),
(15, 'image/jpeg', 'uploads/11703032_853361998072394_8267032710074198458_n.jpg', 42),
(16, 'image/jpeg', 'uploads/11888055_898427383588355_8022757597411156415_n.jpg', 43),
(17, 'image/jpeg', 'uploads/11870672_1024041324293527_6039681660958105363_n.jpg', 43),
(18, 'image/jpeg', 'uploads/11899947_898427370255023_4616091854778459958_n.jpg', 43),
(19, 'image/jpeg', 'uploads/Lighthouse2.jpg', 39),
(20, 'image/jpeg', 'uploads/Capture.JPG', 51),
(21, 'image/jpeg', 'uploads/12-laxmikant-parsekar.jpg', 53),
(22, 'image/jpeg', 'uploads/sanga-640sl.jpg', 56),
(23, 'image/jpeg', 'uploads/291225-smriti-irani.jpg', 58),
(24, 'image/gif', 'uploads/big_95131_Lead.gif', 60),
(25, 'image/gif', 'uploads/Desert.jpg', 61),
(26, 'image/jpeg', 'uploads/choppercrash_mufti1.jpg', 63),
(29, 'image/jpeg', 'uploads/modi1.jpg', 64),
(30, 'image/gif', 'uploads/app-comparison.gif', 65);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `n_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_id` int(3) NOT NULL,
  `title` varchar(60) NOT NULL,
  `body` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `m_id` int(6) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `font` varchar(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `c_id`, `title`, `body`, `date`, `time`, `m_id`, `status`, `font`) VALUES
(2, 1, 'Udhampur attack: NIA arrests owner of truck', 'Srinagar: A co-owner of the truck in which Pakistani terrorist Naved allegedly travelled to Udhampur to carry out the terror strike in August has been arrested by the National Investigation Agency.\r\nSabjar Ahmed, who also allegedly used to provide transport facilities to infiltrating Lashkar-e-Toiba terrorists in Kashmir, was nabbed on Tuesday night from Kulgam in South Kashmir.', '2015-08-31', '08:08:08', 20, 1, '1'),
(12, 1, 'Beef ban: SC refuses to hear plea for hearing in Jammu ', 'New Delhi: The Supreme Court on Wednesday refused to entertain a plea seeking a direction that a three-judge bench should hear the petitions on enforcement of a prohibition on slaughter of cow and beef sale in the state in Jammu instead of Srinagar bench of Jammu and Kashmir High Court.\r\n"Yesterday night, I had a talk with the learned Chief Justice and he is not expecting any problem whatsoever," a bench comprising Chief Justice HL Dattu and Justice Arun Mishra said.', '2015-09-05', '05:06:53', 21, 1, '1'),
(13, 4, '5 incredible food festivals ', 'The dynamic dining scene in India on the whole and Delhi in particular is well complemented with a thrilling culinary calendar. For the remaining days of the October, the huge variety of cuisines will be the topic of all conversations – through its tasting sessions, live cooking classes, performances and a lot more. This monthly guide which covers the best best culinary festivals in October will keep all food connoisseurs absolutely busy!', '2015-09-05', '05:19:58', 22, 1, '1'),
(14, 1, 'Pressure on major drug firms over sale of cough syrups', 'New Delhi: Indian regulators are privately pressuring major drug firms to better police how they sell popular codeine-based cough syrups to tackle smuggling and addiction, a move that is reducing supplies of a medicine doctors say is an effective treatment.\r\nIndia''s Cipla stopped making the product in 2014 owing to regulatory demands, and US-based Abbott Laboratories and Pfizer have had to reduce batch sizes by up to half, cutting how much medicine their factories can produce.', '2015-09-05', '05:21:11', 19, 1, '1'),
(15, 1, 'Coal scam: Court frames charges against ex-coal secretary', 'New Delhi: A special court on Wednesday framed charges against former coal secretary HC Gupta and five others in a coal scam case pertaining to alleged irregularities in allocation of a coal block in Madhya Pradesh to an accused firm.\r\nSpecial CBI Judge Bharat Parashar put the six on trial for alleged offences under section 120-B (criminal conspiracy) read with 420 (cheating), 409 (criminal breach of trust by public servant) of IPC and under relevant provisions of Prevention of Corruption Act.', '2015-09-06', '09:26:34', 20, 1, '1'),
(16, 3, 'Ranji Trophy: Rahul, Nair look to make mark ', 'KL Rahul and Karun Nair would look to put up impressive show before the national selectors meet to pick the Indian Test squad for the South Africa series, as Karnataka take on Vidarbha in a Group A Ranji Trophy match here on Wednesday.\r\nRahul, who is making a comeback after recovering from the quadriceps strain that he had sustained during India''s tour of Sri Lanka in August, will be desperate to make to mark.', '2015-09-09', '11:13:32', 21, 1, '1'),
(17, 9, 'Modi suffering from selective amnesia', 'New Delhi: Accusing Prime Minister Narendra Modi of selective amnesia and not taking appropriate action in the wake of the Dadri lynching, Congress on Wednesday said that it is not posturing that is needed but concrete action.\r\n"Narendra Modi is suffering from selective amnesia. He has forgotten that he is the Prime Minister of entire country and safety and protecting the life of 125 crore citizens of India is his responsibility," Congress chief spokesperson Randeep Surjewala said.', '2015-09-09', '11:27:53', 22, 1, '1'),
(18, 9, 'BJP hits back at its ally', 'Mumbai: After Shiv Sena asked ally Bharatiya Janata Party to opt out of the coalition government in Maharashtra if it is was bored with its stand on various issues, the latter hit back accusing Sena of "duplicity" and "indulging in "selfish patriotism" keeping upcoming polls in mind.\r\n"Sena is only indulging in selfish patriotism keeping the upcoming municipal elections in mind. The people will give them a befitting reply for their duplicity very soon," BJP Mumbai unit president Ashish Shelar said.', '2015-09-09', '11:53:42', 23, 1, '1'),
(19, 9, 'Lalu escapes unhurt as portion of dais caves in', 'Arwal (Bihar): RJD President Lalu Prasad escaped unhurt when a portion of the dais at his election meeting caved in due to overloading in Madhuvan Maidan in Bihar''s Arwal district on Tuesday.\r\n\r\nDue to overcrowding at the dais, a portion of it caved in and many RJD workers fell down, eyewitnesses and the police said. Prasad was at another side of the wooden dais.', '2015-09-09', '12:55:33', 29, 1, '1'),
(20, 2, 'Nawaz Sharif shortens US visit ', 'slamabad: Prime Minister Nawaz Sharif has shortened his US visit from five to three days, skipping his Chicago engagements amid fears that the opposition Pakistan Tehreek-e-Insaf may hold protest in the city, a media report said on Wednesday.\r\nSharif is expected to reach in the US on October 20 instead of October 19 as initially planned.', '2015-09-09', '12:56:12', 23, 1, '1'),
(21, 2, 'Global framework needed for total elimination', 'United Nations: Voicing its commitment to unilateral moratorium on nuclear explosive testing, India has said the goal of complete elimination of nuclear weapons can be achieved by a "global and non-discriminatory" multilateral framework.\r\nIndia''s Permanent Representative to the Conference on Disarmament Venkatesh Varma also told a First Committee meeting in the UN General Assembly on Monday that India has vital developmental and security interests in space as a major space faring nation and backs strengthening the international legal regime to protect and preserve access to space.', '2015-09-09', '12:58:34', 22, 1, '1'),
(22, 4, 'AIFW 2015', 'New Delhi: ‘Hero’ actress Athiya Shetty, also the brand ambassador for Maybelline New York, will be walking the ramp for designer duo Rohit Gandhi and Rahul Khanna at the Amazon India Fashion Week (AIFW) Spring Summer 2016 here on Saturday.\r\nThe actress will showcase the designers'' pret collection, inspired by the Maybelline woman who is modern, edgy, ambitious and diverse.', '2015-09-09', '01:30:59', 21, 1, '1'),
(23, 1, '9 Indian sailors jailed in Iran released', 'New Delhi: Nine Indian sailors who were in a jail in Iran on charges of smuggling have been released and will reach Delhi on Wednesday, External Affairs Minister Sushma Swaraj said on Tuesday.\r\n"Iran has released nine Indian sailors -- Thank you Iran. Thank you (Iranian Foreign Minister) Javad Zarif for a prompt action on our request," Swaraj tweeted. "', '2015-09-09', '01:32:59', 20, 1, '1'),
(27, 1, 'Odisha: FIR against mother', 'Bhubaneswar: After rescuing a 4-year-old girl from a locked house in Bhubaneswar, the Child Welfare Committee (CWC) on Tuesday lodged an FIR against her mother.\r\nThe girl''s mother used to leave her in a locked room before going to work in a private hospital and the child spent about 10 hours there alone for about six months.', '2015-09-17', '03:25:29', 19, 1, '1'),
(28, 1, '50 kids rescued from electronics', 'New Delhi: At least 50 children, aged between 10-14 years, working in electronics and toy manufacturing units in Sagarpur and Naraina areas of the capital were rescued during a raid conducted by SDM of Delhi Cantonment on Tuesday.\r\nThe raid took place on Nobel laureate Kailash Satyarthi-run Bachpan Bachao Andolan''s (BBA) complaint and identification, the organisation said in a statement.', '2015-09-17', '03:28:39', 20, 1, '1'),
(30, 13, 'CCD launches largest IPO in three years', 'India''s Cafe Coffee Day chain launched the country''s largest stock market flotation in three years on Wednesday, as it seeks to tap the tea-loving nation''s growing taste for caffeine.\r\nCoffee Day Enterprises, which owns the chain of cafes, hopes to raise $176 million through the initial public offering (IPO), which runs until Friday.', '2015-09-17', '03:51:32', 22, 1, '1'),
(36, 11, 'Sensex down 133 points in early trade', 'Mumbai: The benchmark BSE Sensex fell over 133 points in early trade on Wednesday due to selling in IT stocks after TCS'' second quarter earnings failed to impress investors.\r\nBesides, a weak trend on other Asian bourses and overnight losses at the US markets also dampened the trading sentiment here.', '2015-09-20', '07:17:41', 23, 0, '1'),
(37, 1, 'Rupee recovers 9 paise against dollar ', 'Mumbai: The rupee recovered by 9 paise to 65.09 against the dollar in early trade on fresh selling of the US currency by exporters and banks.\r\nBesides, the dollar''s weakness against major world currencies after poor data in China and Europe bolstered prospects the Federal Reserve will delay hiking its key interest rate strengthened the rupee sentiment..', '2015-09-20', '07:43:16', 22, 0, '1'),
(38, 11, 'Snapdeal takes a dig at rivals ', 'The big Indian online sale season in on and the papers are plastered with ads (readers had to wade through 8 pages of ads to be able to reach the front page of The Times of India yesterday).\r\nThe three big players in the Indian e-commerce industry - Flipkart, Amazon and Snapdeal - are battling it out for the billions that they expect to rake in as Indian online shoppers get clicking and tapping to inflate their credit card bills.', '2015-09-27', '01:43:57', 23, 0, '1'),
(39, 1, 'Facebook''s new tool ', '		New Delhi: Other than aiming to connect the 1.5 billion people all over the world through its social networking site, Facebook also wants the visually-impaired users have an equal and enjoyable experience as others while using the site.\r\nFacebook’s new accessibility team, led by Jeff Wieland, aims to help people with visual disabilities see images on the social site thereby truly contributing to the idea of connecting the world..', '2015-09-28', '07:03:55', 22, 0, '1'),
(40, 11, 'Hero launches Splendor Pro at Rs 46,850', 'Hero MotoCorp is cashing on the festive season and is launching new products. The updated Hero Splendor Pro has been launched in India at Rs 46,850, ex-Delhi.\r\nThis updated motorcycle brings in electric start, new visor, clear lens indicators, new graphics and fuel tank. A wider grab rail, body coloured mirrors and a new instrument cluster with a side stand indicator are the other changes.', '2015-09-28', '07:04:43', 29, 0, '1'),
(53, 12, 'Rising unemployment prompts GOA CM to urge self employment', ' Chief minister Laxmikant Parsekar expressed concern over the rising unemployment figures in the state and urged the youth to set up their own enterprise by availing the benefits of various employment-oriented schemes', '2015-10-30', '11:55:43', 43, 0, '1'),
(54, 12, '3 yrs on,BJP''s mediclaim scheme still comatose', 'If you’re wondering why the BJP-led government’s much-touted Deen Dayal Swastha Seva or universal mediclaim scheme has yet to take off, 41 months after the government revoked the scheme offered by the former Congress regime, it’s because of the interventions of the private hospitals’ lobby.', '2015-10-30', '11:58:01', 44, 0, '1'),
(55, 12, 'CCP to beautify St.Inez cemetary', 'Continuing its efforts to redevelop and beautify burial grounds in the city, councillors from the corporation of the city of Panaji, local MLA Sidharth Kuncalienker and a team of architects led by Rahul Deshpande conducted a visual inspection of the St Inez Catholic cemetery.', '2015-10-31', '12:03:19', 45, 0, '1'),
(56, 3, 'Sangakkara, Jayawardene confirm participation in PSL', 'Kumar Sangakkara and Mahela Jayawardene announced their retirements from international cricket during the World Cup in February', '2015-10-31', '12:10:00', 46, 0, '1'),
(57, 10, 'CBSE CTET 2015: Results for September session likely to be a', 'The Central Board of Secondary Education (CBSE) may announce the results for the September session of Central Teacher Eligibility Test (CTET) 2015, on Friday.The candidates can check their results at the official website on October 30, 2015.', '2015-10-31', '12:13:18', 47, 0, '1'),
(58, 10, 'Non-NET fellowship: Former UGC member member hits out at Smr', 'Former UGC member M M Ansari on Thursday hit out at HRD Minister Smriti Irani accusing her ministry of interfering in the affairs of the University Grants Commission by ordering to repeal the decision taken on non-NET fellowship issue.', '2015-10-31', '12:15:05', 48, 0, '1'),
(59, 10, 'Dinesh Singh''s tenure as DU VC to end Wednesday', ' Delhi University Vice Chancellor Dinesh Singh demits office on Wednesday after presiding over what is being described as a controversial tenure during which he introduced Four-Year Undergraduate Programme and was accused of financial and administrative irregularities', '2015-10-31', '12:17:31', 49, 0, '1'),
(60, 13, 'For Shantinagar Residents, There’s Not A Drop Of Water To Sp', 'Since 23 October, residents of Vasco’s Shantinagar area have been plagued by a water crisis. The issue has caused immense hardship and chaos in the locality as residents scramble to get as much water as they can from water tankers that are hired. The locals have also stated that they will stage an agitation in the event that water doesn’t return to their taps soon. PWD officials on their part have noted the issue and asserted that there is damage or a blockage to the pipeline supplying water to the area and said they will sort the issue soon', '2015-10-31', '12:22:18', 50, 0, '1'),
(61, 1, 'Supreme Court To Hear Writs Challenging Renewal Of 88 Mining', 'The Supreme Court will hear on Friday the two writ petitions, filed by Goa Foundation and activist Sudip Tamankar, challenging the renewal of 88 iron ore mining leases in Goa.The Supreme Court will hear on Friday the two writ petitions, filed by Goa Foundation and activist Sudip Tamankar, challenging the renewal of 88 iron ore mining leases in Goa.The Supreme Court will hear on Friday the two writ petitions, filed by Goa Foundation and activist Sudip Tamankar, challenging the renewal of 88 iron ore mining leases in Goa.', '2015-10-31', '12:27:08', 51, 1, '1'),
(62, 1, 'RTA to allot land for private buses at Margao KTC stand', '		The Road Transport Authority (RTA) Committee of Salcete has decided to allot land for private buses and hotel coaches at the Kadamba bus stand in Margao. Salcete Deputy Collector Ajit Panchwadkar, who is the chairman of the committee, will write to the Kadamba authorities and request them to charge nominal parking fees for the bus owners. The bus owners'' association has welcomed the moves.', '2015-10-31', '12:28:06', 52, 1, '1'),
(63, 1, 'J&K: Seven dead in helicopter crash near Katra', '		Katra: Seven people have been killed after a helicopter crashed near Katra in Jammu and Kashmir. The pilot is among the people who have been killed.\r\nThe chopper belonged to a private company. The accident took place while the chopper was returning from Vaishnodevi shrine.\r\nAll passengers in the chopper were pilgrims.\r\nIG Jammu Danish Rana said the accident took place at around 12.30 pm on Monday. It crashed soon after taking off.\r\nThe chopper was being flown by a lady pilot. The reason for the crash is under investigation. The Jammu IG said that technical fault might also have led to the accident.\r\nNo one has been injured on the ground due to the crash. Chopper services have been suspended for the time being.\r\n\r\n', '2015-11-23', '09:50:12', 55, 1, '1'),
(64, 1, 'Seek Malaysia''s cooperation for Make in India and Smart Citi', '		Putrajaya (Malaysia): Promising to build better ties between the two countries, Prime Minister Narendra Modi and his Malaysian counterpart Najib Razak said that efforts will be made with ''renewed vigour'' to maintain the momentum of the partnership. "We will make our defence relations stronger and aim for better maritime security and better disaster management," he said.\r\nHe also said that India seeks the cooperation from Malaysia for Make in India and Smart Cities initiative. "Malaysia and India share a very strong bond. We are defined by diversity and culture," he added.\r\n\r\nModi, on the other hand, complimented his Malaysian counterpart Najib Razak for providing leadership in combating extremism and radicalisation, rejecting any link between terrorism and religion and in highlighting the "real values of Islam".\r\n"I am particularly grateful to you for our security cooperation. It underlines our shared commitment to deal with our security challenges. We will continue to deepen our cooperation in this area," he said in a joint press briefing after his talks with Najib at Putrajaya, the sprawling administrative capital on the outskirts of Kuala Lumpur.\r\nAppreciating Najib''s leadership in combating extremism and radicalisation, Modi said this is a great contribution an important aspect of global efforts against this challenge. Warning that terrorism is the "biggest threat" to the world, Modi had yesterday said it should be delinked from religion.', '2015-11-23', '09:52:44', 56, 1, '1'),
(65, 10, 'Microsoft introduces new app to lure Android users to Window', 'New Delhi: In its continuous bid to garner Android users’ attention to its Windows Phone experience, Microsoft has now released a new tool that will help the rival OS users compare their favourite apps and show which platform has a better offering.\r\nThe new Android app, dubbed AppComparison, identifies your favourite Android apps on the device and matches them with the ones available on Microsoft Store. It further shows you the parallel or highlights some of the most popular Windows Phone apps.\r\n\r\nThe app is especially helpful for those mulling a switch from Android platform to a Windows Phone.\r\nSuggestions do not necessarily indicate the exact alternative to an Android app so one might need to re-check the findings to make the mega switch.', '2015-11-23', '09:58:12', 57, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `r_id` int(5) NOT NULL AUTO_INCREMENT,
  `reason` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `n_id` int(5) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`r_id`, `reason`, `email`, `n_id`) VALUES
(9, 'It is a fake news. please check your sources.', 'feezan169@gmail.com', 2),
(10, 'Not a good article. looks fishy!!!', 'abc@gmail.com', 2),
(11, 'This is a copy article. ', 'john@yahoo.com', 13),
(12, 'News is totally wrong!', 'sham@msn.com', 2),
(13, 'No. Its wrong. Please remove it', 'babu@gmail.com', 2),
(14, 'not good', 'abc@gmail.com', 2),
(15, 'hi', 'feezan169@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`s_id`, `email`) VALUES
(1, 'alishasalgaonkar@gmail.com'),
(2, 'alisha7393@yahoo.in'),
(3, 'alisha@gmail.com'),
(4, 'djhsf@gms.vc'),
(5, 'abc@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
