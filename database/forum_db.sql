-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 15, 2022 at 06:04 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `date_updated`) VALUES
(1, 'Competitive Coding', 'This category is used to describe Leetcode and GFG questions', '2022-05-15 05:59:35'),
(2, 'Programming', 'Sample category 2', '2020-10-16 14:57:13'),
(3, 'Databases', 'This is the databases category which includes the questions regarding the databasses such as MySQL, PHP, MongoDB etc.', '2022-05-15 05:58:54'),
(4, 'Machine Learning', 'This category has questions about machine learning and deep learning\r\n', '2022-05-15 12:00:36'),
(5, 'Python', 'This category has questions about data science ', '2022-05-15 12:48:36'),
(6, 'Mathematics', 'This category has questions about mathematics', '2022-05-15 12:01:37'),
(7, 'Amazon Web Services', 'This category contains all AWS questions', '2022-05-15 12:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `topic_id`, `user_id`, `comment`, `date_created`, `date_updated`, `likes`) VALUES
(1, 2, 1, 'Sample Comment', '2020-10-16 16:55:39', '2020-10-16 16:55:39', 0),
(2, 2, 2, 'test', '2020-10-16 17:04:34', '2020-10-16 17:04:34', 0),
(3, 2, 1, 'sample', '2020-10-17 08:54:46', '2020-10-17 08:54:46', 0),
(4, 2, 1, 'asdasd', '2020-10-17 09:42:04', '2020-10-17 09:42:04', 0),
(5, 3, 1, 'this is the answer to the question', '2022-05-14 18:36:30', '2022-05-14 18:36:30', 0),
(6, 3, 4, 'he', '2022-05-14 18:37:38', '2022-05-14 18:37:38', 0),
(7, 4, 4, 'qwerty', '2022-05-14 20:59:20', '2022-05-14 20:59:20', 0),
(8, 6, 20, 'HEY', '2022-05-15 05:32:28', '2022-05-15 05:32:28', 0),
(9, 4, 19, 'SAnjana&amp;#x2019;s Answer!', '2022-05-15 08:11:28', '2022-05-15 08:11:28', 0),
(10, 3, 19, 'My Answer', '2022-05-15 08:23:09', '2022-05-15 08:23:09', 0),
(11, 4, 21, 'This is the answer to MY Second Question', '2022-05-15 12:05:19', '2022-05-15 12:05:19', 0),
(12, 8, 26, 'The best classifier of Multiclass classifier is Naive bayes. Less time and very easy.', '2022-05-15 12:09:57', '2022-05-15 12:09:57', 0),
(13, 8, 23, 'I would prefer Decision Trees or Random Forest, as they are more tolerating towards outliers', '2022-05-15 12:17:02', '2022-05-15 12:17:02', 0),
(14, 11, 22, '&lt;p style=&quot;font-size: 16px; line-height: 1.5em; margin-bottom: 1em; padding: 0px; color: rgb(22, 25, 31); font-family: &amp;quot;Amazon Ember&amp;quot;;&quot;&gt;&lt;span style=&quot;color: rgb(22, 25, 31); font-family: &amp;quot;Amazon Ember&amp;quot;; font-size: 16px;&quot;&gt;To build an API with Lambda integrations, you can use Lambda proxy integration or Lambda non-proxy integration.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 16px; line-height: 1.5em; margin-top: 1em; margin-bottom: 1em; padding: 0px; color: rgb(22, 25, 31); font-family: &amp;quot;Amazon Ember&amp;quot;;&quot;&gt;In Lambda proxy integration, the input to the integrated Lambda function can be expressed as any combination of request headers, path variables, query string parameters, and body.&lt;/p&gt;&lt;p style=&quot;font-size: 16px; line-height: 1.5em; margin-bottom: 1em; padding: 0px; color: rgb(22, 25, 31); font-family: &amp;quot;Amazon Ember&amp;quot;;&quot;&gt;https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-with-lambda-integration.html&lt;/p&gt;&lt;p style=&quot;line-height: 1.5em; margin-bottom: 1em; padding: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '2022-05-15 12:23:04', '2022-05-15 12:24:09', 0),
(15, 10, 25, 'https://stackoverflow.com/questions/5771402/converting-sql-to-relational-algebra&lt;br&gt;Follow this. :)', '2022-05-15 12:28:32', '2022-05-15 12:28:32', 0),
(16, 12, 25, 'B&lt;span style=&quot;font-family: AmazonEmber, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;ecause of the distributed nature of Amazon S3 and its&lt;/span&gt;&lt;span style=&quot;font-family: AmazonEmber, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://docs.aws.amazon.com/AmazonS3/latest/dev/Introduction.html#ConsistencyModel&quot; target=&quot;_blank&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(0, 126, 185); outline: 0px; text-decoration-line: none;&quot;&gt;eventual consistency model&lt;/a&gt;&lt;span style=&quot;font-family: AmazonEmber, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;, it can take some time for changes to propagate across all AWS Regions. This is why you might temporarily see your bucket in the console, or in a response to a&lt;/span&gt;&lt;span style=&quot;font-family: AmazonEmber, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html&quot; target=&quot;_blank&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(0, 126, 185); outline: 0px; text-decoration-line: none;&quot;&gt;ListBuckets API request&lt;/a&gt;&lt;span style=&quot;font-family: AmazonEmber, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;, even after you delete the bucket.&lt;/span&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 0px; padding-top: 5px; font-family: AmazonEmber, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Until the bucket is completely removed by Amazon S3, you might still see the bucket, but you can&amp;#x2019;t perform any other actions on the bucket.&lt;/p&gt;', '2022-05-15 12:29:25', '2022-05-15 12:29:25', 0),
(17, 14, 27, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Domine; font-size: 19px;&quot;&gt;1)&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Domine; font-size: 19px;&quot;&gt;e&lt;/span&gt;&lt;span style=&quot;font-size: 14.25px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: rgb(0, 0, 0); font-family: Domine;&quot;&gt; ix&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Domine; font-size: 19px;&quot;&gt;&amp;nbsp;= cos x&amp;nbsp;+&amp;nbsp;i&thinsp;sin x&lt;/span&gt;&lt;/p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Domine; font-size: 19px;&quot;&gt;2) F&amp;nbsp;+&amp;nbsp;V&amp;nbsp;=&amp;nbsp;E&amp;nbsp;+ 2&lt;/span&gt;', '2022-05-15 12:32:21', '2022-05-15 12:32:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `forum_views`
--

CREATE TABLE `forum_views` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_views`
--

INSERT INTO `forum_views` (`id`, `topic_id`, `user_id`) VALUES
(1, 2, 2),
(2, 2, 1),
(3, 2, 3),
(4, 3, 1),
(5, 2, 4),
(6, 1, 4),
(7, 5, 1),
(8, 4, 1),
(9, 4, 19),
(10, 3, 19),
(11, 4, 21),
(12, 8, 26),
(13, 8, 23),
(14, 11, 22),
(15, 10, 25),
(16, 12, 25),
(17, 11, 25),
(18, 14, 27),
(19, 14, 19);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(30) NOT NULL,
  `comment_id` int(30) NOT NULL,
  `reply` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `reply`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 1, 'sample reply', 1, '2020-10-17 09:48:06', '0000-00-00 00:00:00'),
(2, 2, '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 16px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec elementum nunc bibendum, luctus diam id, tincidunt nisl. Vestibulum turpis arcu, fringilla sed lacus in, eleifend vulputate purus. Mauris sollicitudin metus in risus finibus fringilla.&lt;/span&gt;&lt;br&gt;', 1, '2020-10-17 09:48:57', '0000-00-00 00:00:00'),
(3, 1, 'asdasd&lt;p&gt;asdasd&lt;/p&gt;', 1, '2020-10-17 09:52:02', '0000-00-00 00:00:00'),
(4, 1, 's', 1, '2020-10-17 10:01:00', '0000-00-00 00:00:00'),
(5, 1, 'asdaasd', 1, '2020-10-17 10:01:06', '0000-00-00 00:00:00'),
(6, 1, 'asdasd&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2020-10-17 10:01:53', '0000-00-00 00:00:00'),
(7, 1, 'asdsdsd', 1, '2020-10-17 10:16:09', '0000-00-00 00:00:00'),
(8, 1, '1', 1, '2020-10-17 10:16:13', '0000-00-00 00:00:00'),
(9, 1, '2', 1, '2020-10-17 10:16:17', '0000-00-00 00:00:00'),
(10, 4, 'THIS IS SAMPLE REPLY TO THE QUEZTION', 2, '2022-05-14 21:05:20', '2022-05-14 21:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(30) NOT NULL,
  `category_ids` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_ids`, `title`, `content`, `user_id`, `date_created`) VALUES
(2, '1,2', 'Programming', '&lt;p style=&quot;margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;What is the best tool for programming online?&lt;/p&gt;', 1, '2020-10-16 16:07:54'),
(3, '2', 'NEW QUESTION', 'dfksnfsnfs', 4, '2022-05-14 17:55:40'),
(4, '2', 'MY SECOND QUESTION', '&lt;b&gt;HEY!&lt;/b&gt;', 4, '2022-05-14 20:14:58'),
(6, '4', 'Topic by VH', 'Topic by VH Question_Desc', 20, '2022-05-15 05:09:14'),
(7, '6', 'Value of Pi', 'I wanna know what is the value of Pi', 21, '2022-05-15 12:02:31'),
(8, '5,4', 'ML Classifiers', 'What are the classifiers are available for a multiclass classification and which one is the best?', 21, '2022-05-15 12:04:50'),
(9, '1', 'Big O(n) or Big O(log n)', 'I have thsi one doubt about my question. I have a problem set and I need to find out its time complexity. I am confused between O(n) and O(log n). Which is better?&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 26, '2022-05-15 12:09:21'),
(10, '3', 'Relational Algebra', 'Can someonel explain me what is relational Algebra and how to turn a query into aa RA', 23, '2022-05-15 12:16:19'),
(11, '7', 'API Gateway', 'How to integrate the API gateway to the lambda function and use it from the fromt end?', 24, '2022-05-15 12:20:03'),
(12, '7', 'S3 bucket not responding', 'I have created a S3 bucket an I want to add images to the bucket but the S3 bucket is not accessible to me. Can someone help?&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 24, '2022-05-15 12:21:32'),
(14, '6', 'Euler Formula', 'What is Euler&amp;#x2019;s Formula', 4, '2022-05-15 12:31:23'),
(15, '5', 'PYTHON', 'WHY PYTHO IS BEST?', 19, '2022-05-15 12:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '3' COMMENT '1=Admin,2=Staff, 3= subscriber',
  `address` varchar(300) NOT NULL,
  `profile` varchar(300) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `address`, `profile`, `phone`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1, '', '', 0),
(4, 'nikhil', 'nikhil@01', 'nkk01', 2, '5811, 4th Ave, Brooklyn', 'THis is jnl', 122),
(19, 'Lakshmi Sanjana Kalidindi', 'lk2849', 'lk2849', 3, '535, 74th Street, BKLYN, ny', 'sanju', 123),
(21, 'Nikhil Khaneja', 'nkk6190', 'nkk6190', 1, 'D-801, Keerthi Royal Palms, Service Road, Lavakusha Nagar, Electronic City', 'we2', 9925624166),
(22, 'Kishan', 'kishan', 'kishan', 3, '133, Bay Ridge, Avenue 1', 'profile', 3473374693),
(23, 'jinal', 'jinal2023', 'Abcdefghijh', 3, 'MSR BANGALORE', 'This is Jinal. I like ML and AI', 12344556631),
(24, 'gayathri', 'g3b3', 'Dumbo124', 3, '521 74th avenue brooklyn', 'I am gayathri', 2121289890),
(25, 'maria', 'm341', 'Sanjukopoopo', 3, '123 4th avenue queens', 'I am a Computer science enthusiast', 2135131347),
(26, 'john mi', 'mi_john', 'donkey123', 3, '90 56th street', 'Hey this is john test', 1231231231),
(27, 'pi meyer', 'pi_123', 'asdfghjkl', 3, '4343 9th avenue', 'hey this is pi, i like to code', 9090912334),
(29, 'TEST_USER', 'ts', 'ts', 3, 'BKLYN', 'vh', 1234567890);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_views`
--
ALTER TABLE `forum_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `forum_views`
--
ALTER TABLE `forum_views`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
