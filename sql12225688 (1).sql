-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 10:53 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sql12225688`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Event'),
(2, 'Important'),
(3, 'Sports'),
(4, 'Placement'),
(5, 'Examination'),
(6, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `category_notice_mapping`
--

CREATE TABLE IF NOT EXISTS `category_notice_mapping` (
  `category_notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`category_notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `category_notice_mapping`
--

INSERT INTO `category_notice_mapping` (`category_notice_id`, `notice_id`, `category_id`) VALUES
(3, 3, 1),
(4, 2, 4),
(8, 1, 1),
(9, 1, 3),
(10, 1, 4),
(11, 4, 5),
(12, 5, 2),
(13, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image_type` varchar(255) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `url`, `type`, `image_type`) VALUES
(1, 'uzma image url', 'jpeg', 'user_img');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Id`, `Email`, `Password`) VALUES
(1, 'uzmaahmed.12@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `brief_desc` varchar(21844) NOT NULL,
  `full_desc` varchar(21844) NOT NULL,
  `creation_date` datetime NOT NULL,
  `updation_date` datetime NOT NULL,
  `approve` tinyint(1) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `user_id`, `title`, `brief_desc`, `full_desc`, `creation_date`, `updation_date`, `approve`) VALUES
(1, 1, 'In word processing and desktop ', 'In word processing and desktop ', 'In word processing and desktop publishing, a hard return or paragraph break indicates a new paragraph, to be distinguished from the soft return at the end of a line internal to a paragraph. This distinction allows word wrap to automatically re-flow text as it is edited, without losing paragraph breaks. The software may apply vertical whitespace or indenting at paragraph breaks, depending on the selected style.\r\n\r\nHow such documents are actually stored depends on the file format. For example, HTML uses thetag as a paragraph container. In plaintext files, there are two common formats. Pre-formatted text will have a newline at the end of every physical line, and two newlines at the end of a paragraph, creating a blank line. An alternative is to only put newlines at the end of each paragraph, and leave word wrapping up to the application that displays or processes the text.', '2019-07-04 00:00:00', '2008-07-04 00:00:00', 1),
(2, 2, 'title is good', 'm new user', 'Paragraphs are commonly numbered using the decimal system, where (in books) the integral part of the decimal represents the number of the chapter and the fractional parts are arranged in each chapter in order of magnitude. Thus in Whittaker and Watson''s 1921 A Course of Modern Analysis, chapter 9 is devoted to Fourier Series; within that chapter §9.6 introduces Riemann''s theory, the following section §9.61 treats an associated function, following §9.62 some properties of that function, following §9.621 a related lemma, while §9.63 introduces Riemann''s main theorem, and so on. Whittaker and Watson attribute this system of numbering to Giuseppe Peano on their "Contents" page, although this attribution does not seem to be widely credited elsewhere.[6]', '2018-05-28 00:00:00', '0000-00-00 00:00:00', 1),
(3, 1, 'hjbmn.k \r\njbkb,n.\r\nbk,n', '2nd notice', 'A recent trendy idea in English is not to indent the first paragraph, but indent those that follow. For example, Robert Bringhurst states that we should "Set opening paragraphs flush left."[2] Bringhurst explains as follows:\r\nThe function of a paragraph is to mark a pause, setting the paragraph apart from what precedes it. If a paragraph is preceded by a title or subhead, the indent is superfluous and can therefore be omitted.[2]\r\n\r\nThe Elements of Typographic Style states that "at least one en [space]" should be used to indent paragraphs after the first,[2] noting that that is the "practical minimum".[3] An em space is the most commonly used paragraph indent.[3] Miles Tinker, in his book Legibility of Print, concluded that indenting the first line of paragraphs increases readability by 7%, on the average.[4]', '2018-02-28 00:00:00', '2018-03-24 00:00:00', 1),
(4, 3, 'again titlec dnc dcnx ', '', 'dsfbds nvcmnvc  nvnmv nfn vmncv nfvn  vc nmmnc mf cn  vcnnncv  nv vvcn  cvnvnv cvn vn m ', '2018-03-15 00:00:00', '0000-00-00 00:00:00', 1),
(5, 4, 'title is dis', '', 'Looking for some already great color combinations? Our color chart features flat design colors, Google''s Material design scheme and the classic web safe color palette, all with Hex color codes. ', '2018-03-20 00:00:00', '0000-00-00 00:00:00', 1),
(6, 5, 'n den u r bx  xb zn zgbzbbzb ', '', 'Color codes are ways of representing the colors we see everyday in a format that a computer can interpret and display. Commonly used in websites and other software applications, there are a variety of formats, including Hex color codes, RGB and HSL values, and HTML color names, amongst others.', '2018-03-04 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `spam_message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  PRIMARY KEY (`notify_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notify_id`, `spam_message`, `user_id`, `notice_id`) VALUES
(1, 'not allowed', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `unique_no` int(20) NOT NULL,
  `college` varchar(255) NOT NULL,
  `img_id` int(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `user_name`, `password`, `category`, `unique_no`, `college`, `img_id`, `email`) VALUES
(1, 'uzma', '1234', 'student', 520907216, 'Gb pant', 2, 'uzmaahmed.12@gmail.com'),
(2, 'xyz', '123456', 'tecaher', 530907216, 'amity', 2, 'bbbjm@gmail.com'),
(3, 'uz', 'cmxcdm', '', 0, '', 0, 'uma@gmail.com'),
(4, 'uzmaaaa', '123445y5', '', 0, '', 0, 'ummamaa@gmail.com'),
(5, 'uzzu', '122222', '', 0, '', 0, 'ummamaazz@gmail.com'),
(6, 'priya', '12345', 'Student', 520907216, 'gbpant', 0, 'priya@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
