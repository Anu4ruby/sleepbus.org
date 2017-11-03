-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 01, 2017 at 11:05 AM
-- Server version: 10.1.24-MariaDB-1~jessie
-- PHP Version: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sleepbus_local`
--

-- --------------------------------------------------------

--
-- Table structure for table `birthday_pledge`
--

CREATE TABLE `birthday_pledge` (
  `id` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(555) NOT NULL,
  `email` varchar(555) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_reminder` varchar(228) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthday_pledge`
--

INSERT INTO `birthday_pledge` (`id`, `dateadded`, `user_id`, `full_name`, `email`, `date_of_birth`, `date_modified`, `last_reminder`) VALUES
(1, '2016-04-29 19:08:16', 8, 'Rajeev Kumar', 'rajeev@infinitewebsolutions.in', '1980-01-31', '2016-06-06 11:07:11', ''),
(2, '2016-04-30 18:01:11', 2, 'Neet', 'nitinkulshreshtha30@gmail.com', '1987-08-11', '2016-06-06 11:07:18', ''),
(3, '2016-04-30 19:09:49', 2, 'Rakesh', 'suprit@infinitewebsolutions.in', '1984-11-08', '2016-06-06 11:07:24', ''),
(4, '2016-05-03 18:39:36', 2, 'Rajeev', 'rajeev@infinitewebsolutions.in', '1987-11-08', '2016-06-06 11:07:31', ''),
(5, '2016-05-05 19:26:01', 2, 'Suprit', 'suprit@infinitewebsolutions.in', '1987-11-08', '2016-06-06 11:07:38', ''),
(6, '2016-05-06 16:55:34', 11, 'Rakesh', 'design@infinitewebsolutions.in', '1987-11-08', '2016-06-06 11:06:50', ''),
(7, '2016-05-11 18:31:00', 2, 'vijay', 'design@infinitewebsolutions.in', '1987-11-08', '2016-06-06 11:06:50', ''),
(8, '2016-05-25 14:30:12', 2, 'Anoop', 'anoop@infinitewebsolutions.in', '1987-11-08', '2016-06-06 11:06:50', ''),
(9, '2016-05-25 14:38:21', 2, 'nitin', 'nitinkulshreshtha30@gmail.com', '1987-05-26', '2016-06-06 11:06:50', ''),
(10, '2016-05-26 09:43:45', 1, 'Simon Rowe', 'simon@sleepbus.org', '1973-02-20', '2016-06-06 11:06:50', ''),
(11, '2016-05-27 14:11:26', 2, 'Anne Mehla', 'annemehla@me.com', '1981-09-07', '2016-06-06 11:06:50', ''),
(12, '2016-05-27 16:00:21', 1, 'Ethan Rowe', 'ethanrowe12@gmail.com', '2000-01-07', '2016-06-06 11:06:50', ''),
(13, '2016-05-27 16:03:03', 3, 'Ethan Rowe', 'ethanrowe12@gmail.com', '2000-01-07', '2016-06-06 11:06:50', ''),
(14, '2016-06-02 21:40:55', 4, 'Annie McCutcheon', 'annemehla@me.com', '1980-09-07', '2016-06-06 11:06:50', ''),
(15, '2016-07-07 15:18:35', 5, 'Nitin', 'nitinkulshreshtha30@gmail.com', '1987-08-11', '2016-07-07 05:18:35', ''),
(16, '2016-07-15 13:24:42', 6, 'James Wright', 'hello@ejameswright.com', '1982-09-01', '2016-07-15 03:24:42', ''),
(17, '2016-08-18 22:46:16', 12, 'Sarah', 'creative@sleepbus.org', '1984-08-07', '2016-08-18 12:46:16', ''),
(18, '2016-09-14 13:39:55', 16, 'Andrew Peel', 'dotandpixel@gmail.com', '1978-01-19', '2016-09-14 03:39:55', ''),
(19, '2016-09-29 12:05:37', 21, 'Pedita van Hees', 'pedita.vanhees@bendigoadelaide.com.au', '1987-05-25', '2016-09-29 02:05:37', ''),
(20, '2016-10-24 21:57:59', 23, 'Christian Brown', 'cmbrown7@hotmail.com', '1971-02-02', '2016-10-24 10:57:59', ''),
(21, '2016-11-30 08:53:37', 34, 'Dianne Sheridan', 'fishiesbeach@gmail.com', '1951-10-28', '2016-11-29 21:53:37', ''),
(22, '2016-12-24 04:44:47', 38, 'Lina Mbirkou', 'Lina.mbirkou@gmail.com', '1975-12-25', '2016-12-23 17:44:47', '');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_comments`
--

CREATE TABLE `campaign_comments` (
  `id` int(11) NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments` text NOT NULL,
  `campaign_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign_comments`
--

INSERT INTO `campaign_comments` (`id`, `dateadded`, `comments`, `campaign_id`) VALUES
(8, '2016-06-02 11:53:24', 'I\'m so cool.', 5),
(9, '2016-06-08 01:37:01', 'Anne is posting an update. Will it show up?', 8),
(10, '2016-06-09 01:58:26', 'Anne is doing great raising funds!', 9),
(11, '2016-06-10 06:50:27', '', 3),
(13, '2016-07-15 04:39:10', 'The election may be over, but every day it is possible to create a shift and change in society towards a better and more integrated community.\r\n\r\nSo I am making my next goal to reduce the number of people sleeping rough each night in my community of the Northern rivers by 50% in the next 18 months.\r\n\r\nI heard about some brilliant humans Nic Marchesi & Lucas Patchett at http://www.orangeskylaundry.com.au/ and their initiative to help wash the clothes of the needy and homeless.\r\n\r\nI then thought what if we could transform sleeper buses into short term accommodation for those sleeping rough ?\r\nAfter some research, I found Simon Rowe and www.sleepbus.org and they have a plan already underway! I have contacted Simon and sleepbus.org and hope to extend his program to the Northern Rivers very soon.\r\n\r\nThey are currently raising 120K to get the pilot program off the ground and are only 9k away from their goal.\r\nSo in the meantime share this campaign, create your own and get everyone to donate to this super important program that can help to transform our society.\r\n\r\nAs long members of our local community are sleeping rough, how can we sleep at peace ourselves ?\r\n\r\n1st September is the goal !\r\n\r\nJ.', 15),
(14, '2016-07-20 11:58:00', 'Founders Story.\r\n\r\nIn 1993, I fell behind in my rent and was evicted. I had a job, but for the next 4 months I lived in my car while I saved up enough money for a months bond and a months rent on another place. I would park in a car park near my old place for the night, and in the mornings, drive to a caravan park near by, sneak in, have a shower and go to work.\r\n\r\nSince then, I have made a good living for years as a Chef, and Entrepreneur, for the most part living selfishly and not giving a second thought to those sleeping rough. \r\n\r\n In May 2015, I was walking along Carlisle street in St. Kilda East, Melbourne, to my local Coles supermarket. As I approached the brand new Bank of Melbourne I see a   bright, white doona crumpled up in the   tiny alcove of an unused doorway. As I got   closer I noticed there was a man curled up in the doona, on the hard concrete floor,   trying to get some sleep… at lunch time. \r\n\r\n So many people were walking past, looking, but moving on with their day, as I have probably done since 1993. This time I couldn’t walk past, I stopped and asked   him if he was ok… he said “yeah mate,   thanks, just trying to get some sleep”. He   looked so tired. I said, “here mate” and   gave him the $20 I had in my pocket. His eyes lit up, he smiled and was so grateful. He shook my hand, thanked me again with a smile and curled back up under the doona. When I got home, I told my family what had happened and tears rolled down my face. \r\n\r\nThat man, trying to sleep on a concrete floor, in the middle of the day, on a busy city street affected me in a profound way. And that’s a mild story; for many sleeping on the streets are being subjected to terrible weather, harassment, bullying, being robbed and worse. No one should have to live like that. \r\n\r\nCharity. For me, charity is practical. It\'s the ability to use one\'s position of influence, relative wealth and power to affect lives for the better.\r\n\r\nI’m not a religious person, but there\'s a story in the bible about a man beaten near death by robbers. He\'s stripped naked and lying on the roadside. Most people pass him by, but one man stops. He picks him up and bandages his wounds. He puts him on his horse and walks alongside until they reach an inn. He checks him in and throws down his Amex. \"Whatever he needs until he gets better.”\r\n\r\nBecause he could.\r\n\r\nThe dictionary defines charity as simply the act of giving voluntarily to those in need.\r\n\r\nUsing my 20+ years of business experience, I set about developing a simple solution with a mission; to provide people sleeping “rough”, a safe overnight place to sleep. The more I developed and researched a solution, the more I discovered what a good nights sleep can do for a persons physical and mental health. Just being able to sleep through the night, warm and safe can give a person a whole new outlook on life. \r\n\r\nSleep Bus is distinct, yet complementary, to existing efforts from other organisations supporting Australians experiencing or at risk of ending up on the streets. Our work aims to fill a ‘gap’, rather than overlapping or replicating activities that support the urgent needs of people in Australia. \r\n\r\nThe least we can do is provide safe overnight accommodation to people sleeping rough in Australia, until they get back on their feet.', 16),
(15, '2016-07-20 11:59:25', 'Dear sleepbus Family.\r\n\r\nWe need to talk. It’s been 10 months since the idea of sleepbus was born and on the surface it looks like not much has happened, but the reality of setting up a Charity properly and for the long term takes time and more red-tape than I care to mention. That’s said, they are important steps and given our 100% model where all public donations go to sleepbus projects, it was important to make sure we did everything right from the start. \r\n\r\nSo what’s been happening. Well let me take you through the list. \r\n\r\nBus Design: Completed and is ready to go. The bus design includes 22 individual sleep pods, 2 toilets, 22 personal items lockers, under bus storage, 8 pet kennels, security system, lighting system inside & out and intercom system for family sleep pods with parental control locks. The toilet’s have been strategically located at the front of the bus to assist with the safety of guests within the bus.\r\n\r\nSleep Pods: Each sleep pods comes with single bed inner spring mattress, pillows, sheets and blankets (washed daily). The pod has USB charging for mobile phones, personal light, lockable roller door, climate control and Television with auxiliary channel running adverts for available services in the area to help with pathways out of homelessness. Each pod can be adapted for families, with parents able to control their child’s door lock and intercom for communication between designated family members only. Various sizes have been tested. I’ve slept in a pod every night for 3 weeks or so and found it very comfortable and cosy, which is important. Even the kids had a go. \r\n\r\nsleepbus Brand: A complete brand has been developed including, various logos, our vision, mission and essence, all developed and documented. \r\n\r\nOur Vison: To end the need for people sleeping rough in Australia.\r\n\r\nOur Mission: To provide safe overnight accommodation for people sleeping rough in Australia.\r\n\r\nOur Mantra: sleep changes everything. \r\n\r\nWe have two major fundraising and awareness events designed and planned to run each year and these are aimed at two very different target audiences. Sleep Bus Ltd has been registered (ABN 15 609 317 937),\r\ncharity constitution completed and register, Charity status lodged and awaiting our Deductable Gift Recipient status which takes several months. Two separate bank accounts have been setup to manage our 100% Model; one account is for public donations; this money will all go to sleepbus projects; the second account is for corporate donations to assist with the costs of running sleepbus. Money can be transferred from the corporate account to the public donations account to assist with projects, but can never be transferred from the public account to the corporate account. This is even written into our constitution.\r\n\r\nWebsite: Thanks to a very generous donation from Zeemo.com.au , we have a basic website up and running while the Zeemo team build our larger and more robust site for the future. Zeemo has also completed all the final logo designs and other branding, all of this is very time consuming and expensive work, but they were the first corporate to join the sleepbus family and do everything for free. Amazing. \r\n\r\nVolunteers: sleepbus has been inundated with offers of support; Zeemo as mentioned, all the legal work has been donated, a company has offered to clean all our buses for free once we’re up and going and Belinda Jane Video.com has offered their assistance to video the story of sleepbus from idea to birth and more. This will help you, our family, see everything that goes into building sleepbus, getting people off the street and provide safe sleeps. We have had many many other offers of help from individuals via our Facebook page . I can’t express how amazing it feels to not only have people love and support an idea, but to also know, we’re not on our own, there is plenty of help at our disposal. \r\n\r\nSo where are we now and what’s next.\r\n\r\nWe have all the legal & Charity paperwork/red-tape done. \r\n\r\nThe bank accounts and tracking system is done.\r\n\r\nWebsite stage one is up and the big bad boy of a site is underway and will be ready for launch this Winter. \r\n\r\nWe have media interest.\r\n\r\nWe have plans, designs, costings and material list done.\r\n\r\nWe have operational guidelines, checklists and manuals done. \r\n\r\nWe have our eye on several buses. \r\n\r\nSo all that is ready, and now sleepbus is ready to ask for donations to build the first of many buses and get people off the street. We want at least one bus on the road by this coming Winter. That one bus will provide 8,030 safe sleeps per year and can last up to 10 years before it needs major work or replacement. One bus costs approximately $50,000 to buy and build. \r\n\r\nWe have had significant interest from corporate organisations, but until now, two things have held us back, one; we weren’t prepared to do any deals or accept any money from anyone, until we were registered and everything was in order / two; corporates need to see proof of concept.  What does that mean? They want to see the first bus up and running before they commit. \r\n\r\n And fair enough. Talk is cheap. And I am expecting significant investment from our future corporate partners. After all, we have a goal for 300+ buses to build and operate across the country, we’ll need there help in a big way to reach our goals and provide enough safe sleeps across Australia. \r\n\r\n But for now, its up to us, the sleepbus family. I really need your help. Winter is fast approaching, and we must have a bus built and ready to go by then. We need to stop doing paperwork now and begin the important work of getting people off the street and provide safe sleeps. One bus will provide 8,030 safe sleeps per year…just one bus. \r\n\r\nWhat can you do to help;\r\n\r\nShare the sleepbus story & concept with everyone and anyone you know. \r\n\r\nIntroduce us to corporates that are interested in what we’re doing.\r\n\r\nStart a campaign, at work or at home and raise funds for the first bus.\r\n\r\nDonate; money & or goods to build the first bus\r\n\r\nDonate your professional skills to the sleepbus cause; we need an accounting firm to complete our books and auditing requirements; we need ongoing legal support; we need material suppliers; we need a bus supplier; we need trades; electrical, plumbing, carpentry, welding/metal work, auto electrical, mechanic, sign writer, auto spray painting.\r\n\r\nIntroductions within local council addressing homelessness right now.\r\n\r\nAbove all else, we need to get a bus. So sleepbus Family, if you were ever going to get involved now is the time. We have set ourselves a launch date. We have media wanting to run our story. Its time. \r\n\r\nIf you believe in what we’re doing; if you want to do something about people sleeping on the street this winter; if you want to be a part of sleepbus history as a founding donor of the very first bus that starts it all. \r\n\r\nDonate Now. \r\n\r\nRaise Money Now. \r\n\r\nSpeak to people Now. \r\n\r\nEvery bit will help. Every cent will go to buying, building & operating the first bus. 100% Model. You will be able to find your name on the first bus, plus your name and generous donation will be forever immortalised in sleepbus history and we look forward to meeting you all at our sleepbus launch. \r\n\r\nCome on sleepbus family, lets make this happen. \r\n\r\nThank you.', 16),
(16, '2016-07-20 12:00:07', 'Simon Rowe\r\nFounder', 16),
(17, '2016-07-20 12:01:49', 'https://www.youtube.com/watch?v=AmstRv7DSks', 16),
(18, '2016-07-20 12:02:38', 'https://www.youtube.com/watch?v=aCoJWoviYwQ', 16),
(19, '2016-07-20 12:03:10', 'https://www.youtube.com/watch?v=lb01EJ9KP84', 16),
(20, '2016-07-20 12:03:39', 'https://www.youtube.com/watch?v=GhzZRQKVurw', 16),
(21, '2016-12-18 09:31:39', '', 25),
(22, '2017-02-27 07:37:10', 'This is a test comment', 31);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `image_title` varchar(555) NOT NULL,
  `image_file` varchar(555) NOT NULL,
  `description` text NOT NULL,
  `image_alt_title_text` varchar(555) NOT NULL,
  `image_quality` varchar(20) NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_images`
--

INSERT INTO `campaign_images` (`id`, `dateadded`, `campaign_id`, `image_title`, `image_file`, `description`, `image_alt_title_text`, `image_quality`, `position`, `status`, `date_modified`, `modified_by_user`) VALUES
(6, '2016-04-24 02:42:33', 2, '', 'img4511.jpg', '', '', '', 4, '1', '2016-04-29 20:41:23', 'admin'),
(7, '2016-04-24 02:42:43', 2, '', 'img451.jpg', '', '', '', 3, '1', '2016-04-29 21:14:40', 'admin'),
(8, '2016-04-24 02:44:45', 1, '', 'Social-Banners6.jpg', '', '', '', 3, '1', '2016-08-31 05:12:17', 'admin'),
(9, '2016-04-24 02:44:48', 1, 'Bus', 'BannerBus.jpg', '', '', '', 4, '1', '2016-08-31 05:12:17', 'admin'),
(10, '2016-04-30 02:41:21', 2, '', 'img451_2.jpg', '', '', '', 2, '1', '2016-04-29 20:41:23', 'admin'),
(11, '2016-04-30 02:41:23', 2, '', 'img451_1.jpg', '', '', '', 1, '1', '2016-04-29 20:41:23', 'admin'),
(12, '2016-04-30 02:45:21', 3, '', 'img451_11.jpg', '', '', '', 1, '0', '2016-04-29 21:25:02', 'admin'),
(15, '2016-06-08 11:25:43', 4, '', 'BannerBus2.jpg', '', '', '', 4, '1', '2016-08-31 05:20:26', 'admin'),
(16, '2016-06-08 11:26:36', 5, '', 'BannerBus1.jpg', '', '', '', 4, '1', '2016-08-31 05:21:05', 'admin'),
(17, '2016-06-08 11:26:49', 6, '', 'BannerBus3.jpg', '', '', '', 4, '1', '2016-08-31 05:22:15', 'admin'),
(18, '2016-06-08 11:26:59', 7, '', 'BannerBus4.jpg', '', '', '', 4, '1', '2016-08-31 05:22:48', 'admin'),
(19, '2016-06-08 11:27:11', 8, '', 'BannerBus5.jpg', '', '', '', 4, '1', '2016-11-09 05:41:16', 'admin'),
(20, '2016-06-08 11:27:20', 9, '', 'BannerBus6.jpg', '', '', '', 4, '1', '2016-08-31 05:34:30', 'admin'),
(21, '2016-06-10 10:35:42', 4, '', 'Social-Banners.jpg', '', '', '', 3, '1', '2016-08-31 05:20:26', 'admin'),
(22, '2016-06-10 10:35:54', 5, '', 'Social-Banners1.jpg', '', '', '', 3, '1', '2016-08-31 05:21:05', 'admin'),
(23, '2016-06-10 10:36:05', 6, '', 'Social-Banners2.jpg', '', '', '', 3, '1', '2016-08-31 05:22:15', 'admin'),
(24, '2016-06-10 10:36:16', 7, '', 'Social-Banners3.jpg', '', '', '', 3, '1', '2016-08-31 05:22:48', 'admin'),
(25, '2016-06-10 10:36:25', 8, '', 'Social-Banners4.jpg', '', '', '', 3, '1', '2016-11-09 05:41:16', 'admin'),
(26, '2016-06-10 10:36:36', 9, '', 'Social-Banners5.jpg', '', '', '', 3, '1', '2016-08-31 05:34:30', 'admin'),
(30, '2016-08-31 03:06:50', 1, 'Birthday Gift Box', 'birthday_1_FINAL-01.jpg', '', '', '', 2, '1', '2016-08-31 05:12:17', 'admin'),
(31, '2016-08-31 03:12:17', 1, 'Birthday Cupcake', 'birthday_2_FINAL-01.jpg', '', '', '', 1, '1', '2016-08-31 05:12:27', 'admin'),
(32, '2016-08-31 03:20:12', 4, '', 'Campaign_1_FINAL-01.jpg', '', '', '', 2, '1', '2016-08-31 05:20:26', 'admin'),
(33, '2016-08-31 03:20:26', 4, '', 'Campaign_2_FINAL-01.jpg', '', '', '', 1, '1', '2016-08-31 05:20:26', 'admin'),
(34, '2016-08-31 03:21:04', 5, '', 'Campaign_1_FINAL-011.jpg', '', '', '', 2, '1', '2016-08-31 05:21:05', 'admin'),
(35, '2016-08-31 03:21:05', 5, '', 'Campaign_2_FINAL-011.jpg', '', '', '', 1, '1', '2016-08-31 05:21:05', 'admin'),
(36, '2016-08-31 03:21:35', 10, '', 'Campaign_1_FINAL-012.jpg', '', '', '', 2, '1', '2016-08-31 05:21:36', 'admin'),
(37, '2016-08-31 03:21:36', 10, '', 'Campaign_2_FINAL-012.jpg', '', '', '', 1, '1', '2016-08-31 05:21:36', 'admin'),
(38, '2016-08-31 03:22:15', 6, '', 'Campaign_1_FINAL-013.jpg', '', '', '', 2, '1', '2016-08-31 05:22:15', 'admin'),
(39, '2016-08-31 03:22:15', 6, '', 'Campaign_2_FINAL-013.jpg', '', '', '', 1, '1', '2016-08-31 05:22:15', 'admin'),
(40, '2016-08-31 03:22:47', 7, '', 'Campaign_1_FINAL-014.jpg', '', '', '', 2, '1', '2016-08-31 05:22:48', 'admin'),
(41, '2016-08-31 03:22:48', 7, '', 'Campaign_2_FINAL-014.jpg', '', '', '', 1, '1', '2016-08-31 05:22:48', 'admin'),
(42, '2016-08-31 03:33:53', 8, '', 'Campaign_1_FINAL-015.jpg', '', '', '', 2, '1', '2016-11-09 05:41:16', 'admin'),
(43, '2016-08-31 03:33:54', 8, '', 'Campaign_2_FINAL-015.jpg', '', '', '', 1, '1', '2016-11-09 05:41:16', 'admin'),
(44, '2016-08-31 03:34:28', 9, '', 'Campaign_1_FINAL-016.jpg', '', '', '', 2, '1', '2016-08-31 05:34:30', 'admin'),
(45, '2016-08-31 03:34:30', 9, '', 'Campaign_2_FINAL-016.jpg', '', '', '', 1, '1', '2016-08-31 05:34:30', 'admin'),
(47, '2016-11-09 07:50:35', 11, '', 'Campaign_Byron_Bay_3-01.jpg', '', 'Byron Bay', '', 2, '1', '2016-12-02 05:15:49', 'admin'),
(48, '2016-12-02 04:15:17', 11, 'Perth', 'Campaign_Perth.jpg', '', '', '', 1, '1', '2016-12-02 05:15:27', 'admin'),
(49, '2017-02-27 04:15:17', 11, 'Qlik', 'Qlik_Campaign_Header.jpeg', '', '', '', 3, '1', '2017-02-27 07:28:34', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_type`
--

CREATE TABLE `campaign_type` (
  `id` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `mission_statement` text NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_type`
--

INSERT INTO `campaign_type` (`id`, `dateadded`, `type_name`, `mission_statement`, `position`, `status`, `date_modified`, `modified_by_user`) VALUES
(1, '2016-04-23 00:00:00', 'Birthday Pledge', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 8, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(4, '2016-06-04 00:00:00', 'Individual', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 2, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(5, '2016-06-04 00:00:00', 'Family', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 3, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(6, '2016-06-04 00:00:00', 'Workplace', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 5, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(7, '2016-06-04 00:00:00', 'School', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 6, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(8, '2016-06-04 00:00:00', 'Community Group', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 7, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(9, '2016-06-04 00:00:00', 'Other', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 9, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(10, '2016-06-28 00:00:00', 'Friends', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 4, '1', '2016-11-09 05:42:32', 'zeemoadmin'),
(11, '2016-11-09 00:00:00', 'Campaign for a specific town', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', 1, '1', '2016-11-09 05:42:32', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `dateadded` date NOT NULL,
  `donation_type` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `payment_date` datetime NOT NULL,
  `transaction_no` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `donor_name` varchar(255) NOT NULL,
  `payer_email` varchar(555) NOT NULL,
  `status` varchar(555) NOT NULL,
  `comment` text NOT NULL,
  `anonymous` varchar(37) NOT NULL,
  `registered_user_id` varchar(55) NOT NULL,
  `profile_id` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `correlation_id` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `build` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `dateadded`, `donation_type`, `campaign_id`, `payment_date`, `transaction_no`, `paid_amount`, `donor_name`, `payer_email`, `status`, `comment`, `anonymous`, `registered_user_id`, `profile_id`, `profile_status`, `correlation_id`, `version`, `build`) VALUES
(1, '2016-05-30', 'campaign', 1, '2016-05-30 09:25:25', 'GTWUGTJLFWXDCLKVH', '2.06', 'Mr. Giles Welch', 'heidi@leannon.name', 'Completed', '', '', '1', 'GHYZXHMQHXHBIY', '', '', '', ''),
(2, '2016-06-07', 'one-time-donation', 0, '2016-06-07 20:50:05', 'WAKMODTZDHFMOPLAM', '12.67', 'Laurence Lakin', 'lillie@kuphal.org', 'Completed', '', '', '', 'IFMIULQSPPDPQP', '', '', '', ''),
(3, '2016-07-07', 'one-time-donation', 0, '2016-07-07 19:19:21', 'LQTMPMSOMUVMBSCYC', '59.84', 'Beryl Fritsch', 'omari@bechtelar.org', 'Completed', '', '', '', 'GLRMTNPFGLAABB', '', '', '', ''),
(4, '2016-07-10', 'one-time-donation', 0, '2016-07-10 15:55:54', 'DDLKUSOUJZGTGQGAA', '94.66', 'Mrs. Alexzander Berge', 'burley.olson@sauer.info', 'Completed', '', '', '', 'WSPKPQBZBGTBLD', '', '', '', ''),
(5, '2016-07-14', 'one-time-donation', 0, '2016-07-14 07:06:36', 'UYFOPODYYWBKVDLUI', '15.33', 'Ryann Gutkowski I', 'rowena@mcdermott.org', 'completed', '', '', '', 'LRXJZCSBTMULCJ', '', '', '', ''),
(6, '2016-07-18', 'campaign', 16, '2016-07-18 23:04:22', 'BZMVGPQCWBXBOYSXB', '67.63', 'Margaret Conn', 'abe@mosciski.org', 'completed', '', '', '7', 'KCBHJOJIXGOFWD', '', '', '', ''),
(7, '2016-07-18', 'campaign', 0, '2016-07-18 23:04:29', 'GJJFBAFTKUDGHZLBN', '99.58', 'Isac Gerhold', 'paige.lind@corkerymcglynn.io', '', '', '', '7', 'SCIKMJIBVGJMSC', '', '', '', ''),
(8, '2016-07-19', 'campaign', 17, '2016-07-19 18:51:40', 'NFVOVXOJSDNUIAUEZ', '1.05', 'Nathen Emard I', 'marlene@balistreri.net', 'completed', '', '', '9', 'HSBMUKMYEBHIRE', '', '', '', ''),
(9, '2016-07-19', 'campaign', 16, '2016-07-19 19:57:02', 'YBHHOXBYOZXUYDBLX', '57.53', 'Willow Farrell', 'kennedy@walker.com', 'completed', '', 'yes', '', 'IIPDIHEGSCUGZR', '', '', '', ''),
(10, '2016-07-24', 'monthly', 0, '2016-07-23 19:58:04', 'USDFOAHNEEEEMRYUX', '71.6', 'Evans Kreiger', 'grayson@mccullough.com', 'Completed', '', '', '', 'EIAGLFLPCYOMUK', 'ActiveProfile', 'a2d1dfc092c15', '64', '22386173'),
(11, '2016-07-24', 'one-time-donation', 0, '2016-07-24 16:27:22', 'PUBKXQDTLIKYCCITL', '6.36', 'Damaris Goldner', 'emile@fisherratke.co', 'completed', '', '', '', 'WXBHOZQFKKPYJU', '', '', '', ''),
(12, '2016-07-27', 'campaign', 17, '2016-07-27 23:51:14', 'MISXUCFFIAJQENROH', '64.05', 'Dr. Julia Hayes', 'erik.lueilwitz@parisian.co', 'completed', '', '', '', 'JHUHUNELTRBFAD', '', '', '', ''),
(13, '2016-08-03', 'one-time-donation', 0, '2016-08-03 15:49:22', 'WDRWRTFGNKJIWWEIU', '98.31', 'Mrs. Damian Beatty', 'sienna_bins@roberts.co', 'Completed', '', '', '', 'DUBMIODKKRITTE', '', '', '', ''),
(14, '2016-08-19', 'campaign', 17, '2016-08-19 10:14:36', 'NJDGQOVBTDJZSEEGW', '34.74', 'Dr. Anthony Dooley', 'zola_sawayn@purdy.biz', 'Completed', '', '', '', 'PJGHLTOZXUQUBP', '', '', '', ''),
(15, '2016-08-29', 'campaign', 18, '2016-08-29 22:36:00', 'CJGLVWGYEFFJREILC', '48.38', 'Luella Medhurst', 'agustin@rathankunding.co', 'Completed', '', 'yes', '12', 'OZVRPVQRIKOHLU', '', '', '', ''),
(16, '2016-08-30', 'campaign', 17, '2016-08-30 08:42:16', 'WFIZEWDCDVREHKSKB', '37.3', 'Nelda Lindgren', 'liza@runolfsdottir.net', 'Completed', '', '', '', 'NMODRQFBCGBFMO', '', '', '', ''),
(17, '2016-08-31', 'campaign', 16, '2016-08-31 22:04:51', 'ORPLZXZWIBFNMNYKE', '37.55', 'Anahi O\'Reilly', 'constantin@sengerwalker.info', 'Completed', '', '', '', 'YYVMQVYCWMDASI', '', '', '', ''),
(18, '2016-09-07', 'campaign', 17, '2016-09-07 07:52:11', 'ODPNFNXSQDLYRQMCH', '49.22', 'Miracle Kuhlman', 'yolanda_bechtelar@grahamrosenbaum.com', 'Completed', '', '', '', 'PKPSXQYRDYQHGK', '', '', '', ''),
(19, '2016-09-09', 'monthly', 0, '2016-09-09 02:40:23', 'VJADJLDJLDYQHICEU', '12.73', 'Mrs. Faye Ward', 'constantin@graham.net', 'Completed', '', '', '', 'VSOZDZZPFVOFAC', 'ActiveProfile', 'b5cd296859900', '64', '000000'),
(20, '2016-09-12', 'campaign', 17, '2016-09-12 17:45:06', 'GDUNSUKLOMHUXBGWM', '12.72', 'Dr. Tressie Halvorson', 'haie@vandervort.io', 'Completed', '', '', '', 'KCHZOESXFQQGYY', '', '', '', ''),
(21, '2016-09-14', 'monthly', 0, '2016-09-14 03:51:24', 'QIUMKOLCAUPDOGBVB', '32.75', 'Mr. Dion Stiedemann', 'aida.mcglynn@dubuque.net', 'Completed', '', '', '', 'AQVRBRRARCQZPM', 'ActiveProfile', 'aa0ff4dfed6d5', '64', '000000'),
(22, '2016-09-16', 'monthly', 0, '2016-09-16 06:31:02', 'VIZJFDHWHYWDBHYWK', '63.2', 'Rebeka Denesik', 'dovie@bayersteuber.org', 'Completed', '', '', '', 'CTODYWZYBDNYKD', 'ActiveProfile', '66bbdabd113d6', '64', '000000'),
(23, '2016-09-19', 'one-time-donation', 0, '2016-09-19 18:12:44', 'INIOBIWBHWNGWHSQH', '33.55', 'Mr. Hermina Bins', 'demario@walsh.name', '', '', '', '', 'CAOASPTCKHCBVY', '', '', '', ''),
(24, '2016-09-21', 'campaign', 17, '2016-09-21 17:41:55', 'DZGRTVBDRHIZEFFGB', '23.47', 'Chelsie Keeling', 'bettye@bartolettihomenick.biz', 'Completed', '', '', '', 'RMIKZRWOSBTXHX', '', '', '', ''),
(25, '2016-09-27', 'monthly', 0, '2016-09-27 04:20:08', 'XNTKVSVOTSKPEURDY', '11.25', 'Theo Emmerich', 'magdalena@stiedemanntorp.net', 'Completed', '', '', '', 'XLAPSSOGAAZUSQ', 'ActiveProfile', '7ca22c3a731a3', '64', '000000'),
(26, '2016-09-29', 'one-time-donation', 0, '2016-09-29 13:14:00', 'BUPOZRTYUTJXRRGXN', '77.67', 'Lauretta Pagac', 'dashawn@collier.com', '', '', '', '', 'ASCKWXMLUTQOLN', '', '', '', ''),
(27, '2016-09-29', 'one-time-donation', 0, '2016-09-29 15:39:35', 'GWKEPSEVTAOBSMOWX', '21.48', 'Luna Graham PhD', 'arden_ortiz@hamillschowalter.name', '', '', '', '', 'BRUWEMIIDJMULL', '', '', '', ''),
(28, '2016-09-29', 'one-time-donation', 0, '2016-09-29 15:41:37', 'SYMBQFSUQRFRPAOHG', '29.33', 'Orie Hilll', 'camron_beer@kuhicmitchell.co', 'Completed', '', '', '', 'ANWLHHTHRCJJBU', '', '', '', ''),
(29, '2016-09-30', 'one-time-donation', 0, '2016-09-30 16:51:00', 'SBESUBAGYZIMRDIXU', '39.8', 'Davion Brekke MD', 'ibrahim@faycorwin.com', '', '', '', '', 'RNHFVVMXQFPQCD', '', '', '', ''),
(30, '2016-09-30', 'one-time-donation', 0, '2016-09-30 16:54:17', 'EJUODVMBHCRUKBEQF', '11.48', 'Mr. Ronaldo Parisian', 'karli@lockman.biz', 'Completed', '', '', '', 'HSGHTVLKTCSNXH', '', '', '', ''),
(31, '2016-09-30', 'one-time-donation', 0, '2016-09-30 16:54:37', 'DKJTFEEIOFHWXADJF', '57.92', 'Agustina Kshlerin II', 'amari_jakubowski@okon.co', '', '', '', '', 'SKKEYRKBTDJMBD', '', '', '', ''),
(32, '2016-10-03', 'campaign', 17, '2016-10-03 18:06:36', 'XTOEOZXQIHHBSSHGU', '27.16', 'Amparo Pagac', 'magdalena@okongoyette.name', 'Completed', '', '', '', 'ZEKUYJXUFMJZZL', '', '', '', ''),
(33, '2016-10-12', 'campaign', 16, '2016-10-12 05:11:12', 'IRTQLCBMHNJTMBJZW', '76.65', 'Marco Keebler IV', 'garrett@hoeger.biz', 'Completed', '', 'yes', '', 'WZRKAPVNPWXPJA', '', '', '', ''),
(34, '2016-10-13', 'campaign', 17, '2016-10-13 14:53:17', 'YHZYEDTNSLFABEFXI', '71.15', 'Dr. Tina Sanford', 'vaughn.damore@kilback.net', 'Completed', '', '', '', 'REGSDUUNONMTZQ', '', '', '', ''),
(35, '2016-10-19', 'one-time-donation', 0, '2016-10-19 06:34:40', 'VHNIQCOVFJZAGRENE', '96.55', 'Dr. Zetta Thiel', 'pearlie@moendooley.net', 'Completed', '', '', '', 'TMUUOYJNFWBDSM', '', '', '', ''),
(36, '2016-10-21', 'campaign', 17, '2016-10-21 18:00:47', 'PDWKEJTMTOIWFIQSZ', '78.04', 'Cristopher Mraz', 'brandt.barrows@fritschcollins.co', 'Completed', '', '', '', 'KOYIHTHHIOSXTH', '', '', '', ''),
(37, '2016-10-24', 'one-time-donation', 0, '2016-10-24 23:06:29', 'MLLJZMKLJUUULSJGA', '44.56', 'Marlin Reichel', 'abraham_heel@dickens.biz', 'Completed', '', '', '24', 'MWJTOUZSMZAPAE', '', '', '', ''),
(38, '2016-10-26', 'monthly', 0, '2016-10-26 10:50:06', 'QREHDUPBEGIAOKCAL', '92.04', 'Alice Bode', 'nathen@wyman.name', 'Completed', '', '', '', 'JLSNPBPZLEHCZF', 'ActiveProfile', 'b3e21094c6e17', '64', '24616352'),
(39, '2016-10-26', 'monthly', 0, '2016-10-26 11:35:06', 'UTZZNHHYVMUAXSUOB', '56.3', 'Lavonne Bechtelar', 'schuyler.ruecker@mraz.info', 'Completed', '', '', '', 'CJXJNKSXZJBEKZ', 'ActiveProfile', 'f169c860e79fa', '64', '24616352'),
(40, '2016-10-26', 'monthly', 0, '2016-10-26 11:58:57', 'MPVWTDNHDOKWDJDOF', '58.25', 'Lea Bosco', 'johanna@lowe.biz', 'Completed', '', '', '', 'MLCMOHEGTTYMLZ', 'ActiveProfile', 'ef1eee70bb8c4', '64', '24616352'),
(41, '2016-10-28', 'campaign', 17, '2016-10-28 22:50:45', 'VDCVMZIRDKMKABSYT', '13.24', 'Jamarcus Toy', 'ludie.lockman@abernathy.io', 'Completed', '', '', '', 'DRUXPVARYVPHCP', '', '', '', ''),
(42, '2016-10-29', 'monthly', 0, '2016-10-29 03:34:34', 'TKWEASZTGMKRDHWKL', '28.93', 'Torrey Beer', 'noble@johns.net', 'Completed', '', '', '', 'RSYQISYBGDHINA', 'ActiveProfile', '455474c77133b', '64', '24616352'),
(43, '2016-10-29', 'campaign', 17, '2016-10-29 16:14:53', 'XIMBLBTTZAZKWPJAH', '44.31', 'Pietro Lakin', 'cale.okon@robel.name', 'Completed', '', '', '', 'WETYJUSAIDXBHN', '', '', '', ''),
(44, '2016-11-09', 'one-time-donation', 0, '2016-11-09 04:19:46', 'XJIIRVWXZEHZFRRXO', '15.58', 'Lily Wilkinson', 'graciela@kohlerkrajcik.org', 'Completed', '', '', '', 'OPPNNNGVJHSMRL', '', '', '', ''),
(45, '2016-11-10', 'campaign', 17, '2016-11-10 14:24:27', 'TKHYJORBKVKDURUGH', '25.96', 'Kristopher Mann', 'kaylie.harvey@heel.co', 'Completed', '', '', '', 'ZHFWEQIGHJIGGL', '', '', '', ''),
(46, '2016-11-11', 'campaign', 24, '2016-11-11 10:18:31', 'CBOSXWHCSOVAFIZXS', '34.94', 'Jeramy Bosco', 'antonetta@dickinson.biz', 'Completed', '', '', '', 'BAQWWXHPLKTDIN', '', '', '', ''),
(47, '2016-11-11', 'campaign', 24, '2016-11-11 11:15:22', 'PODSUFPHOIPKULLLU', '84.64', 'Mrs. Hester Greenholt', 'ari@jacobson.net', 'Completed', '', '', '', 'AZEJGJGBREJBQR', '', '', '', ''),
(48, '2016-11-11', 'campaign', 24, '2016-11-11 19:11:17', 'WMEXQFCORHDQOMQOY', '22.99', 'Eileen Rau II', 'jimmy_ortiz@stiedemann.name', '', '', '', '', 'IZUHKYOPAGFUWO', '', '', '', ''),
(49, '2016-11-13', 'campaign', 24, '2016-11-13 10:33:35', 'BRZTGJKXYUFKGRAGP', '7.05', 'Citlalli Raynor', 'wiley@nicolasjenkins.net', 'Completed', '', '', '', 'WGMZTMXVAXQCEY', '', '', '', ''),
(50, '2016-11-15', 'campaign', 24, '2016-11-15 09:47:50', 'KGCMWCWKGXPXSNYTR', '97.06', 'Lelah Lubowitz', 'kaylee_ratke@eichmann.com', 'Completed', '', '', '', 'KGYPXLOQVYFYTV', '', '', '', ''),
(51, '2016-11-25', 'campaign', 24, '2016-11-25 12:41:43', 'ASLXVEQOVOHDLZHXC', '83.53', 'Cora Rempel', 'dawn.welch@daniel.name', 'Completed', '', '', '', 'PIQDJUADPEICBF', '', '', '', ''),
(52, '2016-11-25', 'campaign', 24, '2016-11-25 12:45:55', 'AELCGTAXQKUYNIBWQ', '44.68', 'Cicero VonRueden', 'abdul.muller@okuneva.name', 'Completed', '', '', '', 'MHIWFGEUCWLLPP', '', '', '', ''),
(53, '2016-11-26', 'one-time-donation', 0, '2016-11-26 14:26:50', 'KLUYMYYRDXOWNTXTO', '99.38', 'Elias Douglas', 'kenyon@bins.co', 'Completed', '', '', '31', 'WMRXUKIANROVPO', '', '', '', ''),
(54, '2016-11-28', 'campaign', 17, '2016-11-28 13:31:40', 'FOXHZZPQVZODZYJIU', '72.15', 'Kiera Block', 'deonte_west@feil.info', 'Completed', '', '', '', 'ACBHJFPSJDWGFT', '', '', '', ''),
(55, '2016-12-02', 'campaign', 27, '2016-12-02 16:21:35', 'MBAGFQJDBBVWVHFMT', '16.52', 'Shany Lang', 'adriel@erdman.net', 'Completed', '', '', '12', 'BLFZDTTNZIOCZJ', '', '', '', ''),
(56, '2016-12-04', 'campaign', 25, '2016-12-04 09:47:44', 'JBRHEAVWCEDFVREEN', '16.18', 'Ottis Schaefer', 'austen_wolff@little.co', 'Completed', '', '', '', 'MDTDHBNKCPDEBM', '', '', '', ''),
(57, '2016-12-06', 'one-time-donation', 0, '2016-12-06 17:01:04', 'LSECUBXZMEZNPZVSB', '95.11', 'Bettye Fay', 'maximo@corwin.info', 'Completed', '', '', '', 'OZNDOJJBIUBHNK', '', '', '', ''),
(58, '2016-12-06', 'campaign', 27, '2016-12-06 22:00:13', 'XNEHOJPZKBNJTQZDC', '25.36', 'Kristin Zieme', 'fredy@fadel.org', 'Completed', '', '', '', 'VTECNRDNBLYWVF', '', '', '', ''),
(59, '2016-12-08', 'campaign', 27, '2016-12-08 01:22:45', 'UGIIJNXLORYHXLWAF', '39.14', 'Colten Roberts DDS', 'izaiah_smitham@lockmanohara.net', 'Completed', '', '', '', 'IKTXJDNSSNZKMX', '', '', '', ''),
(60, '2016-12-12', 'campaign', 17, '2016-12-12 13:53:41', 'YJLMUAELKVZIJGRUN', '74.23', 'Ms. Kayden Ondricka', 'hosea_nader@rennerweimann.io', 'Completed', '', '', '', 'ONSHMTZOEDQSPS', '', '', '', ''),
(61, '2016-12-12', 'one-time-donation', 0, '2016-12-12 20:43:31', 'POERGKHNSYGEZIVCL', '50.24', 'Antonetta Tremblay', 'jairo.upton@becker.co', 'Completed', '', '', '', 'PJJQOJLWDBRYFA', '', '', '', ''),
(62, '2016-12-13', 'one-time-donation', 0, '2016-12-13 12:47:30', 'UYCGNIPGTYLVEJAHN', '24.53', 'Royal Price', 'johnnie@boyerflatley.io', 'Completed', '', '', '', 'ELZNDTNLUAULXZ', '', '', '', ''),
(63, '2016-12-14', 'one-time-donation', 0, '2016-12-14 17:54:05', 'SPXTLXATCXSRJUMYH', '26.02', 'Janet Conroy', 'ronny@ebert.name', 'Completed', '', '', '', 'QBVIOVVBPVYXAE', '', '', '', ''),
(64, '2016-12-15', 'monthly', 0, '2016-12-14 23:18:13', 'ZKHRXGGTQEPVINHQS', '88.41', 'Dr. Karlie Denesik', 'shakira@stanton.net', 'Completed', '', '', '', 'SDZFHEFOOGNWZT', 'ActiveProfile', '98c307baef6f8', '64', '24616352'),
(65, '2016-12-17', 'one-time-donation', 0, '2016-12-17 10:19:29', 'PNPNQBANJOVRFWIFA', '90.73', 'Barbara Fay', 'damien@carroll.info', 'Completed', '', '', '', 'BXOWAJVDCCXQLA', '', '', '', ''),
(66, '2016-12-17', 'campaign', 27, '2016-12-17 21:31:31', 'EDCNZMHGTVZEWQHPY', '83.83', 'Hank Hilpert', 'wendell@price.org', 'Completed', '', 'yes', '', 'ZPOMGZLABSWZZK', '', '', '', ''),
(67, '2016-12-18', 'campaign', 27, '2016-12-18 14:11:59', 'GLGRHIDYGRRERKOOF', '97.21', 'Vern Stiedemann PhD', 'osvaldo@donnellystamm.org', 'Completed', '', 'yes', '', 'SMLRAOWTNSNAVR', '', '', '', ''),
(68, '2016-12-18', 'campaign', 25, '2016-12-18 20:23:11', 'LQXPGZLGNODYCPDXM', '23.1', 'Bessie Wolff', 'kiana@ruelbarton.com', 'Completed', '', '', '33', 'CHHMSPQKRTBAUO', '', '', '', ''),
(69, '2016-12-19', 'campaign', 27, '2016-12-19 13:33:59', 'MFVPDPAORICQGEROI', '47.6', 'Shawna Abbott V', 'helga@keeling.io', 'Completed', '', '', '', 'VZGRFTEFNIRZIE', '', '', '', ''),
(70, '2016-12-19', 'campaign', 27, '2016-12-19 23:50:00', 'HBUGOWSEWKYCQIAGK', '39.0', 'Wendell Bosco', 'telly@donnelly.info', 'Completed', '', '', '', 'LJPBKATCFWNISA', '', '', '', ''),
(71, '2016-12-20', 'monthly', 0, '2016-12-19 23:45:12', 'TBFPGACQLXDHIAJFX', '10.94', 'Boyd Langosh', 'newell_cain@spinka.io', 'Completed', '', '', '', 'PFSBIPLBGHMKYG', 'ActiveProfile', 'd93cf9cec54d', '64', '24616352'),
(72, '2016-12-20', 'campaign', 27, '2016-12-20 23:54:54', 'DTEOTVPXASAFMCMIM', '39.25', 'Cooper Baumbach', 'margarita.wuckert@christiansen.biz', 'Completed', '', '', '', 'GNLUYDWPQOOLYH', '', '', '', ''),
(73, '2016-12-22', 'one-time-donation', 0, '2016-12-22 00:59:53', 'EYNGDNEQWSXXMZPIH', '45.8', 'August Bergstrom', 'katherine.okuneva@purdy.org', 'Completed', '', '', '', 'MAYCXMEAISFWKV', '', '', '', ''),
(74, '2016-12-22', 'one-time-donation', 0, '2016-12-22 00:59:53', 'QCWNCIUPMLUYOSURJ', '7.1', 'Ericka Roberts', 'gabriella@nicolasfeeney.io', 'Completed', '', '', '', 'GRTFMWZEGQLLAI', '', '', '', ''),
(75, '2016-12-22', 'one-time-donation', 0, '2016-12-22 08:36:04', 'MNXACFFLCJCOROQGW', '23.44', 'Eloy Sawayn', 'alyon.hirthe@konopelski.biz', 'Completed', '', '', '', 'FLFIBDMQHVOWZF', '', '', '', ''),
(76, '2016-12-22', 'one-time-donation', 0, '2016-12-22 18:08:35', 'ZAGELCRGOFPJGUJSD', '40.58', 'Clemens Stokes', 'kristofer@nicolasbins.io', 'Completed', '', '', '', 'AZDPZEAZRXONLR', '', '', '', ''),
(77, '2016-12-24', 'one-time-donation', 0, '2016-12-24 20:05:32', 'GGUJVAAGHCSRJSOHP', '20.44', 'Agustina Williamson', 'lennie@bodelindgren.name', 'Completed', '', '', '', 'LGFOAKJDNTFQMX', '', '', '', ''),
(78, '2016-12-24', 'one-time-donation', 0, '2016-12-24 20:15:29', 'RXVQTPGTEKUBHBBIU', '57.42', 'Giovani Greenfelder', 'edna@keebler.info', 'Completed', '', '', '', 'FNYQGXHDARJGWK', '', '', '', ''),
(79, '2016-12-25', 'campaign', 17, '2016-12-25 12:07:00', 'ZSOYVUBYUPHPOSXXH', '55.71', 'Blanche Pacocha', 'dayana_botsford@runolfsdottirheidenreich.co', 'Completed', '', '', '', 'UZPRGVCTZZUYKQ', '', '', '', ''),
(80, '2016-12-25', 'one-time-donation', 0, '2016-12-25 12:52:51', 'OWOCKJFLRSQVIOYEM', '25.79', 'Ena Bode', 'marina@bergekreiger.org', 'Completed', '', '', '', 'LWIHBHZUFGHSFP', '', '', '', ''),
(81, '2016-12-26', 'campaign', 17, '2016-12-26 21:03:05', 'IUQIXDDLCRDWTBGDD', '58.85', 'Willis Herzog', 'cecile@adams.io', 'Completed', '', '', '', 'NABYJOJMMBRDBG', '', '', '', ''),
(82, '2016-12-27', 'one-time-donation', 0, '2016-12-27 10:41:23', 'KSRJECRFFPNNTWIMU', '5.13', 'Julius Mills', 'brooklyn_oreilly@collierhaley.name', 'Completed', '', '', '', 'MOZSXORXPQCZBF', '', '', '', ''),
(83, '2016-12-28', 'campaign', 17, '2016-12-28 13:33:54', 'YTJRYPYBMAXVEREZD', '51.37', 'Misael Beier', 'shakira@windler.com', 'Completed', '', '', '', 'SPPONXCXQIBEPT', '', '', '', ''),
(84, '2016-12-29', 'one-time-donation', 0, '2016-12-29 18:11:33', 'NDGIVPQKWJEKXRDPG', '66.51', 'Kelton Lebsack', 'keyon@wilderman.org', 'Completed', '', '', '', 'ZRPRDCTVJPUMDQ', '', '', '', ''),
(85, '2016-12-30', 'one-time-donation', 0, '2016-12-30 15:18:59', 'TXXGJPDGMRQWQXJAO', '79.83', 'Chad Hartmann', 'lola.vandervort@hahn.com', 'Completed', '', '', '', 'HPLMFZZYTEMHSC', '', '', '', ''),
(86, '2017-01-07', 'campaign', 17, '2017-01-07 12:51:25', 'BZLPYXPMVEMMOFQYB', '31.83', 'Barney Halvorson', 'taya.schmeler@dachhaag.co', 'Completed', '', '', '', 'DINQGENOGGDSCO', '', '', '', ''),
(87, '2017-01-07', 'campaign', 17, '2017-01-07 12:52:18', 'XBGPYVGXZKMKDLQAF', '39.09', 'Leif Murazik IV', 'dawson.bosco@runolfon.com', 'Completed', '', '', '', 'YSDCBKELTYLFBR', '', '', '', ''),
(88, '2017-01-09', 'campaign', 27, '2017-01-09 18:13:04', 'RMEXRHVVSUKJFWARB', '11.86', 'Antonio Koepp Jr.', 'hester@champlin.name', 'Completed', '', 'yes', '', 'WBSJWIESGBEPGE', '', '', '', ''),
(89, '2017-01-09', 'campaign', 0, '2017-01-09 18:13:04', 'EKTJUTJOQDMLJXKZK', '59.08', 'Chaim Murray', 'mark@wolff.biz', 'Completed', '', '', '', 'WIBPSCNGSYRLOM', '', '', '', ''),
(90, '2017-01-09', 'campaign', 27, '2017-01-09 20:26:33', 'TCSOVMZTEZMXLDJXD', '11.77', 'Lorna Veum', 'ed.funk@bechtelar.com', 'Completed', '', 'yes', '', 'CFOSRFDCPUGIJZ', '', '', '', ''),
(91, '2017-01-09', 'campaign', 0, '2017-01-09 20:26:33', 'KZENXNDCYYONSQEIA', '92.77', 'Idell Gleichner', 'andre_nolan@mitchell.name', 'Completed', '', '', '', 'OKABVPHURNBZCS', '', '', '', ''),
(92, '2017-01-09', 'campaign', 27, '2017-01-09 22:22:16', 'WXLVNSFLDRRGICGVC', '61.72', 'Norma Hoppe', 'caandre@monahan.info', 'Completed', '', 'yes', '', 'QYZPNAAYMZCCTO', '', '', '', ''),
(93, '2017-01-09', 'campaign', 27, '2017-01-09 23:42:48', 'YAJMMSNOOEENFLEDP', '51.73', 'Eleonore Flatley', 'adolfo.fadel@ward.net', 'Completed', '', '', '', 'LCPAKWREKWPHMD', '', '', '', ''),
(94, '2017-01-10', 'one-time-donation', 0, '2017-01-10 02:33:25', 'FEYFSAHCFORLDYBNK', '80.69', 'Jan Altenwerth', 'ruthe@ziemannnader.name', 'Completed', '', '', '', 'CJQPELJMQRCWXI', '', '', '', ''),
(95, '2017-01-20', 'campaign', 17, '2017-01-20 10:48:17', 'RZUAKBROJYRGJEQOD', '40.54', 'Drew Hermiston V', 'hester@schulist.name', 'Completed', '', '', '', 'WHDZNZZQNVYBGO', '', '', '', ''),
(96, '2017-01-24', 'one-time-donation', 0, '2017-01-24 19:33:49', 'DLTOWRDUYGYFODHJB', '45.0', 'Arden Sanford II', 'brianne.tillman@mcculloughtoy.info', 'Completed', '', '', '', 'DYNYEYZJQCAADS', '', '', '', ''),
(97, '2017-01-26', 'campaign', 27, '2017-01-26 11:31:31', 'CBGHWDZFSXNQKGOZG', '62.47', 'Bert Smith PhD', 'ryder@legros.com', 'Completed', '', '', '', 'VZXSGIGWITMCYM', '', '', '', ''),
(98, '2017-02-08', 'one-time-donation', 0, '2017-02-08 09:37:22', 'XAPKQNIMTVXFFTBCY', '25.91', 'Winston Little', 'neva@auer.co', 'Completed', '', '', '', 'ARVJXBYJNXTCJD', '', '', '', ''),
(99, '2017-02-11', 'one-time-donation', 0, '2017-02-11 09:11:56', 'XTSGNHQRGGNDYNJNU', '13.24', 'Eulalia Greenfelder III', 'layne@wuckertfay.io', 'Completed', '', '', '', 'IWJAUJHUQETLKL', '', '', '', ''),
(100, '2017-02-11', 'one-time-donation', 0, '2017-02-11 11:01:27', 'USKSRSMTFANRQIBWT', '12.0', 'Jimmie Schneider', 'lorna@ratke.biz', 'Completed', '', '', '', 'FAMPJBTITAFZUX', '', '', '', ''),
(101, '2017-02-12', 'one-time-donation', 0, '2017-02-12 13:16:33', 'WWBAJGRSWTMDZJRRA', '64.45', 'Sasha Wisoky', 'elza@langoshprohaska.net', 'Completed', '', '', '', 'DUVQRTKOWJKCAC', '', '', '', ''),
(102, '2017-02-21', 'one-time-donation', 0, '2017-02-21 20:06:01', 'JILYTAPSWBDGYOANX', '15.66', 'Miss Santina Friesen', 'maynard@sawayn.biz', 'Completed', '', '', '', 'JPJWFVCGFITCFB', '', '', '', ''),
(103, '2017-02-24', 'one-time-donation', 0, '2017-02-24 23:39:44', 'OSVGULVCOXHMMZHBV', '50.05', 'Malvina Kutch', 'lindsey@daughertyharber.io', 'Completed', '', '', '', 'WQUKCBLMMPASVE', '', '', '', ''),
(104, '2017-02-25', 'one-time-donation', 0, '2017-02-25 10:38:54', 'HABTQYIHNKWZQSHZD', '5.64', 'Dane Wolff', 'eleazar.weinat@sengerarmstrong.net', 'Completed', '', '', '', 'JVHVHHEFVWMJIU', '', '', '', ''),
(105, '2017-02-26', 'campaign', 24, '2017-02-26 21:00:49', 'JQODJBKSEMTLYNPSS', '34.98', 'Mark Wolff', 'corrine@bednardicki.io', 'Completed', '', 'yes', '', 'WBBNAMWGAJFMNB', '', '', '', ''),
(106, '2017-02-27', 'one-time-donation', 0, '2017-02-27 21:58:07', 'PCYQGPOJQPCQFVJTC', '96.71', 'Maya Marvin', 'vida@connellysimonis.com', 'Completed', '', '', '', 'WJOGZBOCVUHVKS', '', '', '', ''),
(107, '2017-03-02', 'one-time-donation', 0, '2017-03-02 14:17:55', 'NPDLFSACVATOZVKJT', '62.05', 'Hailie Stracke', 'coby@bosco.co', 'Completed', '', '', '', 'MLUDNZLACZNEQV', '', '', '', ''),
(108, '2017-03-03', 'campaign', 33, '2017-03-03 19:05:16', 'NUVPPNDEJNZBRMNQO', '37.82', 'Tillman Daniel', 'elenor_feeney@murray.info', 'Completed', '', '', '', 'QHROWCZUTLIJUY', '', '', '', ''),
(109, '2017-03-03', 'monthly', 0, '2017-03-03 09:25:58', 'DQLLSEVMVITBWJNAS', '52.08', 'Beatrice Tremblay', 'luciano@lindjohnston.org', 'Completed', '', '', '', 'XSSYAYHQGOTYCM', 'ActiveProfile', '7811138995bfa', '64', '25237094'),
(110, '2017-03-03', 'campaign', 24, '2017-03-03 08:25:58', 'YLYQCLCQBPDHOKFKB', '86.31', 'Abdiel Runolfsson', 'francis.rippin@hammes.info', 'Completed', '', '', '', 'GFKPDRRPTXAFPF', 'ActiveProfile', '', '', ''),
(111, '2017-03-05', 'campaign', 17, '2017-03-05 21:45:02', 'KVKAVEUZMZLQWAJON', '14.38', 'Adele Kohler', 'cole@ortizquigley.org', 'Completed', '', '', '', 'ZSSHQEHOYSIGJT', '', '', '', ''),
(112, '2017-03-05', 'campaign', 17, '2017-03-03 08:25:58', 'GDJNPJFBJIWIHGFYB', '71.01', 'Florian Erdman', 'jonathan_stanton@zemlak.io', 'Completed', '', '', '', 'TIROYSWSETTIJL', '', '', '', ''),
(113, '2017-03-05', 'campaign', 17, '2017-03-03 08:25:58', 'FELDCDAWRNLGENWYD', '67.56', 'Dane Wintheiser', 'guido@fisher.co', 'Completed', '', '', '', 'UFVDKLKQFFWGYH', '', '', '', ''),
(114, '2017-03-10', 'campaign', 27, '2017-03-10 09:27:35', 'NQZEGQJDTRUBJTRND', '22.33', 'Ophelia Kling', 'camille_pagac@pouros.org', 'Completed', '', '', '', 'BGFJQTMRHQKKUC', '', '', '', ''),
(115, '2017-03-14', 'one-time-donation', 0, '2017-03-14 01:35:50', 'KPKXETACVWKUWUVIC', '31.15', 'Ms. Kian O\'Hara', 'shana_dare@baumbachturner.co', 'Completed', '', '', '', 'WVBFQQAUGPYFYG', '', '', '', ''),
(116, '2017-03-14', 'campaign', 34, '2017-03-14 15:52:14', 'CVXGEAOUGNYNNIBOD', '54.8', 'Lola Abshire', 'freddie@sporerblick.io', 'Completed', '', '', '12', 'YJVGZHGSLHFXUF', '', '', '', ''),
(117, '2017-03-14', 'campaign', 34, '2017-03-14 15:56:27', 'GHNXSEEYKDHSMVFZL', '97.74', 'Nickolas Harber DVM', 'angelo@uptonstehr.com', 'Completed', '', '', '', 'VLOGTPWSXHHHDH', '', '', '', ''),
(118, '2016-08-06', 'campaign', 17, '2016-08-06 08:25:58', 'NZBGPPUEMBBLACCLA', '43.63', 'Kayla Braun', 'dorian_lubowitz@windler.io', 'Completed', '', '', '', 'CFXEJGNEHDIFOP', '', '', '', ''),
(119, '2016-10-09', 'campaign', 17, '2016-10-09 08:25:58', 'VCUHFTCKZHCHNUOPL', '75.2', 'Khalid Boyle', 'juvenal_dickinson@krajcikheel.name', 'Completed', '', '', '', 'XYAVMCEOYEPZRT', '', '', '', ''),
(120, '2017-03-15', 'campaign', 17, '2017-03-15 17:11:03', 'XYVWRRMVDSUZFGFUU', '50.04', 'Anastacio Hoppe', 'elenora.larkin@mueller.info', 'Completed', '', '', '', 'CHHYLPBUQSYGLR', '', '', '', ''),
(121, '2017-03-15', 'campaign', 34, '2017-03-15 21:20:13', 'XFMGIZODBKWSARVJR', '82.75', 'Linnea Mills', 'albertha@simonis.info', 'Completed', '', 'yes', '', 'VEBFSPJJINTQPP', '', '', '', ''),
(122, '2017-03-16', 'campaign', 34, '2017-03-16 00:00:00', 'QRMMWTYPCXBMWTTQP', '69.35', 'Eula O\'Hara', 'robyn@torphyboyer.net', 'Completed', '', '', '', 'GPFUZTVIMDKDZR', '', '', '', ''),
(123, '2017-03-17', 'one-time-donation', 0, '2017-03-17 13:04:51', 'QDNMZKAIOBKGSIVDM', '44.44', 'Miss Nyasia Hickle', 'shawna@veumstoltenberg.net', 'Completed', '', '', '', 'JFTEUZZMVKLFCI', '', '', '', ''),
(124, '2017-03-18', 'one-time-donation', 0, '2017-03-18 17:49:03', 'YLXERHHWZUDDKHJUB', '35.14', 'Christ Nitzsche', 'karianne.schuppe@strosin.org', 'Completed', '', '', '', 'MILKNAWAVYVRJQ', '', '', '', ''),
(125, '2017-03-19', 'campaign', 34, '2017-03-19 20:07:46', 'GYMVEUZMUJEPHEKRR', '9.78', 'Twila O\'Conner II', 'berry@schmidt.name', 'Completed', '', '', '', 'QXIQGDRUXYYMXC', '', '', '', ''),
(126, '2017-03-19', 'campaign', 34, '2017-03-19 20:12:22', 'DPFZDHTTGCZWANHMJ', '41.82', 'Jed VonRueden', 'lizzie@doyle.biz', 'Completed', '', '', '', 'VWSWCGJDSBJQWE', '', '', '', ''),
(127, '2017-03-21', 'one-time-donation', 0, '2017-03-21 17:06:31', 'DLFOLKFIKADOAFXNL', '19.99', 'Dr. Camden Green', 'gia.davis@quitzon.org', 'Completed', '', '', '', 'FFQNKSSKQADUAS', '', '', '', ''),
(128, '2017-03-24', 'one-time-donation', 0, '2017-03-24 13:52:08', 'TNMBMRIBHXLFLCBEJ', '31.54', 'Rylan Walker', 'vicente@deckowharvey.info', 'Completed', '', '', '', 'CLNOILHOXBDJSU', '', '', '', ''),
(129, '2017-03-29', 'campaign', 33, '2017-03-29 19:48:01', 'KLPEFXIKWGPQCGDSV', '35.38', 'Ian Dooley', 'maddison.koch@thiel.biz', 'Completed', '', '', '', 'PYFVPUJGASFCAT', '', '', '', ''),
(130, '2017-03-30', 'campaign', 24, '2017-03-30 07:51:27', 'TNZKGYNRWTCGXDBYL', '99.14', 'Ali Romaguera', 'percival_kerluke@damorepollich.net', 'Completed', '', 'yes', '', 'ZYGVMWPYWGMQSK', '', '', '', ''),
(131, '2017-03-31', 'one-time-donation', 0, '2017-03-31 15:58:30', 'JOQDLKFFRESHWLQQC', '50.97', 'Karelle Kessler Sr.', 'golda_bahringer@bartell.io', 'Completed', '', '', '', 'DGCCJBKZDGHEBL', '', '', '', ''),
(132, '2017-04-01', 'one-time-donation', 0, '2017-04-01 10:57:50', 'YRABYMSGVPCFJWVAU', '53.03', 'Reina Nienow', 'connie_ruel@krajcikwaelchi.biz', 'Completed', '', '', '', 'OERMIWBTJDQSFJ', '', '', '', ''),
(133, '2017-04-01', 'one-time-donation', 0, '2017-04-01 10:57:54', 'AFTGZHNUUQPGAEJQG', '75.48', 'Bella Kub', 'tabitha@fisherfarrell.name', 'Completed', '', '', '', 'QZLUWRNVKDUFJU', '', '', '', ''),
(134, '2017-04-01', 'one-time-donation', 0, '2017-04-01 11:12:22', 'XDDDOIWSQLYQXLDTQ', '33.15', 'Miss Dominique Hintz', 'myrtle@schroeder.co', 'Completed', '', '', '', 'FTETTBFOZDLTED', '', '', '', ''),
(135, '2017-04-01', 'one-time-donation', 0, '2017-04-01 11:24:38', 'DKOBZAMHANVSYEXRK', '84.66', 'Miss Minerva Collier', 'bennett@robel.io', 'Completed', '', '', '', 'OKNVUSDATKNABK', '', '', '', ''),
(136, '2017-04-01', 'one-time-donation', 0, '2017-04-01 11:28:46', 'UPFTBKLEEFAFYVMDU', '74.73', 'Melisa Kiehn', 'savion_kutch@gibson.info', 'Completed', '', '', '', 'JSTGPWQWWDXVDS', '', '', '', ''),
(137, '2017-04-01', 'one-time-donation', 0, '2017-04-01 11:32:58', 'ENVAWTYEUMOVQGPTQ', '22.7', 'Mr. Eddie Friesen', 'bo.barton@hirthedonnelly.org', 'Completed', '', '', '', 'DLWQUJTOZLZPNW', '', '', '', ''),
(138, '2017-04-01', 'one-time-donation', 0, '2017-04-01 11:43:52', 'MZFPHKFNVXKOCDLGT', '61.17', 'Schuyler Bartoletti', 'lolita.reilly@wisozk.co', 'Completed', '', '', '', 'TXWDHLAFCLPCVC', '', '', '', ''),
(139, '2017-04-01', 'one-time-donation', 0, '2017-04-01 11:51:00', 'RZHCJZOQMIPVUOUTU', '21.24', 'Britney Koss', 'aubrey@konopelskideckow.io', 'Completed', '', '', '', 'BCJRVAEWDCFYVS', '', '', '', ''),
(140, '2017-04-01', 'one-time-donation', 0, '2017-04-01 12:12:25', 'FDNFWTUNCXAWWGPGG', '20.36', 'Karli Howe Sr.', 'lula_schmidt@walter.io', 'Completed', '', '', '', 'QTXNIEKGAAVTTC', '', '', '', ''),
(141, '2017-04-01', 'one-time-donation', 0, '2017-04-01 12:17:28', 'ZNOAINVTLHYRFRIFP', '94.82', 'Meta Marquardt', 'kale@bergnaumjacobs.biz', 'Completed', '', '', '', 'YJRUHXONATKBDQ', '', '', '', ''),
(142, '2017-04-01', 'one-time-donation', 0, '2017-04-01 12:27:36', 'MGEDDMXTZAJLWHWIC', '20.77', 'Omer Olson', 'tavares.volkman@hoppe.org', 'Completed', '', '', '', 'WNFDZZUMRNEIRV', '', '', '', ''),
(143, '2017-04-01', 'one-time-donation', 0, '2017-04-01 12:46:51', 'LPYQSUDATTNEMHCDK', '50.44', 'Rosetta Hilpert', 'vallie@upton.co', 'Completed', '', '', '', 'PVWNMLKAGFNAMW', '', '', '', ''),
(144, '2017-04-01', 'one-time-donation', 0, '2017-04-01 13:13:02', 'UOHRQJDRKPJMJUOOE', '15.4', 'Leta Gleason', 'tavares_steuber@willmspfannerstill.com', 'Completed', '', '', '', 'KPIDWEWLTGFASJ', '', '', '', ''),
(145, '2017-04-01', 'one-time-donation', 0, '2017-04-01 17:18:15', 'RNXNKSZPMFVMMXHFR', '10.59', 'Ms. Ursula Kuhic', 'buford_beer@bodedare.biz', 'Completed', '', '', '', 'BGLPCBHWZLBWWF', '', '', '', ''),
(146, '2017-04-01', 'one-time-donation', 0, '2017-04-01 18:35:42', 'KKQRZSAHBWMXUSRQI', '64.48', 'Jocelyn Gaylord', 'lamont.jones@hoegerdubuque.info', 'Completed', '', '', '', 'TPUAJNFPJOYTPU', '', '', '', ''),
(147, '2017-04-01', 'one-time-donation', 0, '2017-04-01 23:13:43', 'CEZTHJHPSPYSVQXXZ', '17.43', 'Norene Hand', 'max.koch@treutel.org', 'Completed', '', '', '', 'VYQRHTPQGWRRDJ', '', '', '', ''),
(148, '2017-04-02', 'one-time-donation', 0, '2017-04-02 14:07:56', 'RMONPNROGWKWWDSFW', '42.48', 'Beau Dibbert', 'leonie@heidenreichbogisich.com', 'Completed', '', '', '', 'EDBFNSZQOFQJHT', '', '', '', ''),
(149, '2017-04-03', 'one-time-donation', 0, '2017-04-03 10:31:14', 'HMMNVKLEXSBHYDUOM', '63.74', 'Mrs. Ettie Koss', 'trevor.pagac@wizaemard.net', 'Completed', '', '', '', 'ZBQRTEEZATHJOR', '', '', '', ''),
(150, '2017-04-03', 'campaign', 33, '2017-04-03 11:31:08', 'EFWWLPKBKMVHRIUUZ', '71.51', 'Katlyn Nikolaus', 'anastasia.reynolds@okunevaokon.info', 'Completed', '', '', '', 'DZLGXDDMOTAOOD', '', '', '', ''),
(151, '2017-04-03', 'campaign', 33, '2017-04-03 14:31:08', 'XUKYWCCZCJBQXODZN', '58.41', 'Kaleb Kemmer I', 'ludie@harveyhoeger.com', 'Completed', '', '', '', 'QSPQAMEZTAOEPL', '', '', '', ''),
(152, '2017-04-03', 'campaign', 17, '2017-04-03 13:38:11', 'VUZUYAWTWFOIXLVIQ', '98.39', 'Emanuel Lynch Jr.', 'reanna@olson.net', 'Completed', '', '', '', 'UNVAVQAORIICIZ', '', '', '', ''),
(153, '2017-04-04', 'campaign', 34, '2017-04-04 18:31:59', 'ANGWVFADVZZWCFSHX', '27.92', 'Lelah Mann', 'addie@huel.biz', 'Completed', '', '', '', 'YPLUKFMTGMEOHZ', '', '', '', ''),
(154, '2017-04-07', 'campaign', 24, '2017-04-07 07:51:27', 'PWIRMYNAWAJYSNAHE', '37.77', 'Tianna Ziemann Sr.', 'vincenzo_weber@zulauf.com', 'Completed', '', '', '', 'KCEHLSZAKGVTPK', '', '', '', ''),
(156, '2017-04-08', 'one-time-donation', 0, '2017-04-08 14:11:04', 'QEVQFZLMARWCXGUWJ', '79.26', 'Henriette Gerlach III', 'emory@wisozk.com', 'Completed', '', '', '', 'EQXMZOWHVBKROG', '', '', '', ''),
(157, '2017-04-13', 'campaign', 34, '2017-04-13 17:25:25', 'TFLRXKNAKCJHBBQHV', '45.14', 'Buster Miller', 'raegan.pacocha@wuckert.org', 'Completed', '', '', '', 'ODMWNCHGIEKLXB', '', '', '', ''),
(158, '2017-04-13', 'campaign', 34, '2017-04-13 17:26:27', 'NQKMVURNCBTVSKSXU', '57.97', 'Trenton Emmerich', 'alba@towne.io', 'Completed', '', '', '', 'KEAQUVNRHYUJIT', '', '', '', ''),
(159, '2017-04-13', 'campaign', 34, '2017-04-13 18:14:18', 'ZPCXIZSDZVTVPFPRG', '37.17', 'Maximilian Farrell', 'kristy@williamson.net', 'Completed', '', '', '', 'NCXKHBLOBEEZTS', '', '', '', ''),
(160, '2017-04-13', 'campaign', 34, '2017-04-13 18:59:27', 'ZERXMZNGLAVNCLRER', '55.29', 'Rozella Franecki', 'lia.jerde@strosindach.com', 'Completed', '', '', '', 'RFMTKCTYIIVGWQ', '', '', '', ''),
(161, '2017-04-13', 'campaign', 34, '2017-04-13 19:00:56', 'GRFIONTEGRNKPJQWI', '45.79', 'Miss Raven Mann', 'margarita_graham@reilly.com', 'Completed', '', '', '', 'ZZEXNUOMHJVXXD', '', '', '', ''),
(162, '2017-04-13', 'campaign', 34, '2017-04-13 20:01:28', 'PAJVRJZZCANWCYEOZ', '20.42', 'Geovanny Jacobi I', 'frederik@konopelski.info', 'Completed', '', '', '', 'EQAHOUUNVJEIAO', '', '', '', ''),
(163, '2017-04-14', 'one-time-donation', 0, '2017-04-14 10:00:53', 'CWUBKAJUVGNZBOOIP', '49.75', 'Fernando Hartmann', 'timmy_adams@brakus.info', 'Completed', '', '', '', 'CNBXMOJWMFZGWM', '', '', '', ''),
(164, '2017-04-14', 'campaign', 34, '2017-04-14 22:23:45', 'CKISFQSAFHAJETXSH', '88.22', 'Rowena Schulist', 'dariana_welch@ryan.net', 'Completed', '', '', '', 'PKKCMFDDMKRKLE', '', '', '', ''),
(165, '2017-04-18', 'campaign', 34, '2017-04-18 20:57:56', 'QGKNFDFVZKBCXCRUQ', '18.09', 'Miss Macey Fahey', 'jaren@bahringer.co', 'Completed', '', '', '', 'ZAWGSKFCGPEFKL', '', '', '', ''),
(166, '2017-04-19', 'campaign', 34, '2017-04-19 09:52:55', 'RAEYPARZDTBSZCICF', '77.78', 'Dr. Destini Schumm', 'vincenza.wolf@lakin.info', 'Completed', '', '', '', 'NYWJMWDYGVVFHN', '', '', '', ''),
(167, '2017-04-19', 'campaign', 34, '2017-04-19 09:58:32', 'YXFZEEJJDASDUGWRG', '38.23', 'Margie Gutkowski', 'lane.lesch@feeney.co', 'Completed', '', '', '', 'ISJFMJRVMYSXOE', '', '', '', ''),
(168, '2017-04-19', 'campaign', 34, '2017-04-19 10:05:56', 'UAWIOQVKYTUDFNFDH', '9.73', 'Mrs. Alexanne Buckridge', 'tina@botsfordcasper.org', 'Completed', '', '', '', 'OVMKDNCDYCLPYO', '', '', '', ''),
(169, '2017-04-19', 'campaign', 34, '2017-04-19 10:08:26', 'XJWCQERJOJKVDRGEW', '40.82', 'Mrs. Oswald Denesik', 'greyson_bechtelar@schuppe.org', 'Completed', '', 'yes', '', 'XVTWNGTVNLSANE', '', '', '', ''),
(170, '2017-04-20', 'campaign', 24, '2017-04-20 07:39:53', 'YBULSORWWRRKPZUHR', '46.64', 'Madyson Welch', 'friedrich_wisozk@rice.io', 'Completed', '', '', '', 'PGHFSZQQPFYIVN', '', '', '', ''),
(171, '2017-04-20', 'campaign', 33, '2017-04-20 18:15:35', 'NVMDPOJHPVGONENNI', '7.98', 'Amely Mitchell', 'karli@wehner.net', 'Completed', '', '', '', 'QCYZOMAJHQXKCT', '', '', '', ''),
(172, '2017-04-20', 'campaign', 33, '2017-04-20 22:19:09', 'OXBRFKZGBAXTKZSCA', '26.77', 'Norene Waters MD', 'alexane_heathcote@hodkiewiczdubuque.info', 'Completed', '', '', '', 'SUQAKFSKKZHTYL', '', '', '', ''),
(173, '2017-04-20', 'campaign', 33, '2017-04-20 22:19:07', 'QBVUJIDMFGYHCBMRX', '27.32', 'Megane Bechtelar II', 'trey@lowe.org', 'Completed', '', '', '', 'JIEFHANZEANJOI', '', '', '', ''),
(174, '2017-04-21', 'campaign', 33, '2017-04-21 09:07:50', 'YMFKNFPPTJCDOPJSO', '77.16', 'Erin Dibbert', 'edythe.hilll@blickstoltenberg.net', 'Completed', '', '', '', 'LVQPBPFBNKHOGU', '', '', '', ''),
(175, '2017-04-21', 'campaign', 34, '2017-04-21 19:02:35', 'TSXDLDKABOTYABXOX', '71.93', 'Evan Ziemann PhD', 'greta@homenick.biz', 'Completed', '', '', '', 'UKUJLBDQTZGFFN', '', '', '', ''),
(176, '2017-04-21', 'campaign', 34, '2017-04-21 19:03:36', 'GVHWMPJGMXJAYRDWZ', '84.2', 'Dr. Alex Hermiston', 'lavada.mcglynn@ondricka.org', 'Completed', '', '', '', 'ITTMABRSDHTNUF', '', '', '', ''),
(177, '2017-04-21', 'campaign', 34, '2017-04-21 19:04:31', 'MTFZAMQBPMIZCBRUX', '41.73', 'Chanelle Swift', 'ralph.ebert@walshrohan.org', 'Completed', '', '', '', 'VTSCTTUWTKOSGQ', '', '', '', ''),
(178, '2017-04-21', 'campaign', 34, '2017-04-21 19:05:22', 'MSMLXIJDQKCSKWQEN', '33.93', 'Clementina Bernhard', 'gielle@starkdibbert.com', 'Completed', '', '', '', 'QBNKIXOAUHGQNB', '', '', '', ''),
(179, '2017-04-24', 'campaign', 33, '2017-04-24 15:08:00', 'MSUBLBBSDPEOMSIZZ', '68.19', 'Miss Avis Carroll', 'nakia_fisher@ruelschaden.biz', 'Completed', '', '', '', 'GPJVBIPFFZJVRD', '', '', '', ''),
(180, '2017-04-26', 'campaign', 33, '2017-04-26 09:59:46', 'OYCUCKSMFATBKTJSX', '1.56', 'Zella Torphy V', 'sandy@reichert.io', 'Completed', '', '', '', 'RJGVUCZWHPPRGV', '', '', '', ''),
(181, '2017-04-28', 'campaign', 17, '2017-04-28 15:06:46', 'KZQJDWTSAKNMSHHTI', '49.53', 'Percy Hoeger', 'tre.hettinger@klocko.co', 'Completed', '', '', '', 'CXTVPAKDMQYXJX', '', '', '', ''),
(182, '2017-04-28', 'campaign', 17, '2017-04-28 15:31:00', 'SJHHZRRIMSQFYIHKP', '39.86', 'Dr. Henri Eichmann', 'rodrick@haley.name', 'Completed', '', '', '', 'JPUSPHSVJFHNYT', '', '', '', ''),
(183, '2017-05-04', 'campaign', 33, '2017-05-04 15:39:41', 'SOPKBSGRTOQEXDTYW', '14.12', 'Dr. Zion Moore', 'winnifred.feil@rathwelch.co', 'Completed', '', 'yes', '', 'CSDLXYWPQRBTBL', '', '', '', ''),
(184, '2017-05-08', 'one-time-donation', 0, '2017-05-08 10:07:50', 'ODORAQGERUKKBRUYJ', '67.88', 'Durward Kohler', 'dortha_satterfield@boyle.io', 'Completed', '', '', '', 'TSMBQCMIYLQYPQ', '', '', '', ''),
(185, '2017-05-09', 'campaign', 0, '2017-05-09 20:46:21', 'VUCOQZKYGEFJJXLMN', '27.29', 'Mr. Sylvan Franecki', 'jakayla_nicolas@stokesconn.name', 'Completed', '', '', '', 'HHRKCMCJOGYAZB', '', '', '', ''),
(186, '2017-05-11', 'one-time-donation', 0, '2017-05-11 16:03:15', 'KKQNWRVYHBHJCSPQC', '2.48', 'Omer Klocko MD', 'cary.torphy@metzlittel.io', 'Completed', '', '', '', 'HHRYROPQLMWFWV', '', '', '', ''),
(187, '2017-05-14', 'one-time-donation', 0, '2017-05-14 16:03:47', 'YQPWTILARASHOPZSG', '22.22', 'Kelli Rau IV', 'lester_ruel@kutch.biz', 'Completed', '', '', '', 'WFTHSBNTRMSFRA', '', '', '', ''),
(188, '2017-05-15', 'one-time-donation', 0, '2017-05-15 15:22:00', 'OKMJWZSHKEDZOJCLA', '28.16', 'Coleman Wisoky', 'aurelia_harber@lynchkerluke.io', 'Completed', '', '', '', 'OAWBUVYQTKXOPP', '', '', '', ''),
(189, '2017-05-16', 'one-time-donation', 0, '2017-05-16 10:06:15', 'YDMPTATFPJIDAWTHG', '46.86', 'Junius Leffler', 'lysanne_tremblay@trompschaden.biz', 'Completed', '', '', '', 'LJTHKIJLXBCEBG', '', '', '', ''),
(190, '2017-05-18', 'campaign', 33, '2017-05-18 11:57:57', 'WWHPMODPOYCWOVGBA', '88.39', 'Clint Larkin', 'devyn@cormiernicolas.com', 'Completed', '', '', '', 'USCNJGWKLZLGJN', '', '', '', ''),
(191, '2017-05-22', 'one-time-donation', 0, '2017-05-22 12:43:50', 'CMKJUFOYQPEROQMQR', '70.04', 'Marilie Cassin', 'zoila@heller.io', 'Completed', '', '', '', 'IHZFMVCSGWCETK', '', '', '', ''),
(192, '2017-05-22', 'campaign', 33, '2017-05-22 14:33:05', 'GLFMAEZXRZBGTMOJP', '96.8', 'Marjorie Reichel', 'cloyd.goldner@kozey.biz', 'Completed', '\'It works on my machine\' always holds true for Chuck Norris.', '', '', 'ZXDPZWFEHCLJDG', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `report_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `message` text NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `report_type`, `name`, `last_name`, `email`, `contact_no`, `question`, `message`, `dateadded`) VALUES
(1, 'Contact-Enquiry', 'Madalyn Carter', 'Joesph Kilback', 'anne.lebsack@block.org', '328.377.5253 x9409', '', '', '2017-05-23 17:37:42'),
(2, 'Contact-Enquiry', 'Mr. Sean Smith', 'Halle Carroll', 'jeff@zboncak.co', '1-172-046-6674 x9836', '', '', '2017-05-23 17:37:42'),
(3, 'speaker-request', 'Trisha Nikolaus', 'Miss Mark Schimmel', 'elia_ratke@rutherford.com', '(150) 220-3615', '', '', '2017-05-23 17:37:42'),
(4, 'Contact-Enquiry', 'Marcel Ebert', 'Julia Johnson', 'efrain_pouros@kobednar.net', '401-360-2457 x5156', '', '', '2017-05-23 17:37:42'),
(5, 'Contact-Enquiry', 'Frederik Hodkiewicz', 'Mariana Brekke MD', 'haylee.douglas@emard.io', '1-711-460-3497 x732', '', '', '2017-05-23 17:37:42'),
(6, 'Contact-Enquiry', 'Dr. Fern Spencer', 'Carmela Jacobi', 'gillian@koelpin.org', '(432) 210-7602 x1435', '', '', '2017-05-23 17:37:42'),
(7, 'Contact-Enquiry', 'Miss Logan Botsford', 'Darian Schimmel PhD', 'dasia@jacobs.info', '268.632.0081 x5953', '', '', '2017-05-23 17:37:42'),
(8, 'Contact-Enquiry', 'Obie Bogisich', 'Dr. Bettie Hane', 'reynold_treutel@cormier.com', '(353) 888-9667 x24856', '', '', '2017-05-23 17:37:42'),
(9, 'Contact-Enquiry', 'Cicero Barrows', 'Raul Toy', 'vivienne.hintz@bartoletti.net', '(488) 336-3470', '', '', '2017-05-23 17:37:42'),
(10, 'Contact-Enquiry', 'Maude Altenwerth Jr.', 'Hettie Feil', 'floy_yost@mcglynnrippin.com', '576-570-3184', '', '', '2017-05-23 17:37:42'),
(11, 'Contact-Enquiry', 'Amber Romaguera', 'Nella Zboncak', 'sean.goldner@sanford.net', '283.549.3107', '', '', '2017-05-23 17:37:42'),
(12, 'Contact-Enquiry', 'Carmelo Corkery', 'Armando Torphy', 'erna_huels@streich.io', '505.270.2514', '', '', '2017-05-23 17:37:43'),
(13, 'Contact-Enquiry', 'Ms. Lucio Treutel', 'Gennaro Schuster', 'beulah_heathcote@hayes.biz', '(704) 851-2684', '', '', '2017-05-23 17:37:43'),
(14, 'Contact-Enquiry', 'Isabel Fahey', 'Giuseppe Funk IV', 'modesta@funkbayer.io', '776-625-6876', '', '', '2017-05-23 17:37:43'),
(15, 'Contact-Enquiry', 'Mr. Abagail Mante', 'Libby Kiehn', 'evangeline.bruen@mraz.name', '399-281-1305 x09538', '', '', '2017-05-23 17:37:43'),
(16, 'Contact-Enquiry', 'Patrick Hamill II', 'Andrew Dare', 'nyah.trantow@heller.biz', '834-538-7015 x082', '', '', '2017-05-23 17:37:43'),
(17, 'speaker-request', 'Charlie Schoen', 'Erica Hand', 'lavada_schowalter@pouros.com', '898.427.8359 x894', '', '', '2017-05-23 17:37:43'),
(18, 'Contact-Enquiry', 'Kristy Weissnat', 'Americo Batz', 'dax@spinka.name', '(281) 808-1371', '', '', '2017-05-23 17:37:43'),
(19, 'Contact-Enquiry', 'Emmanuelle Towne', 'Martine Hamill', 'bradly@kaulke.org', '387.765.1755 x121', '', '', '2017-05-23 17:37:43'),
(20, 'Contact-Enquiry', 'Watson Gutmann PhD', 'Jesse Schulist', 'felicity.crist@quigleyherman.io', '(889) 803-9301', '', '', '2017-05-23 17:37:43'),
(21, 'Contact-Enquiry', 'Edwina Lemke', 'Keely Ortiz', 'zetta.hills@reingerbogisich.org', '621-216-1829', '', '', '2017-05-23 17:37:43'),
(22, 'Contact-Enquiry', 'Mrs. Brant Kerluke', 'Dane Conroy', 'bette@oconnellwiza.biz', '1-972-529-2024', '', '', '2017-05-23 17:37:43'),
(23, 'Contact-Enquiry', 'Dr. Ari Kilback', 'Favian Koepp DVM', 'friedrich@roberts.name', '833-680-3754 x295', '', '', '2017-05-23 17:37:43'),
(24, 'Contact-Enquiry', 'Ismael Lemke', 'Leopold Lind', 'idell_parker@dickens.biz', '336-866-1127 x61679', '', '', '2017-05-23 17:37:43'),
(25, 'Contact-Enquiry', 'D\'angelo Howe', 'Ms. Samson Becker', 'malika_heel@pfannerstill.org', '336-426-0983', '', '', '2017-05-23 17:37:43'),
(26, 'Contact-Enquiry', 'Cole Crooks', 'Leola Toy', 'laria@hyatt.net', '715.750.7056', '', '', '2017-05-23 17:37:43'),
(27, 'Contact-Enquiry', 'Charlie Huel', 'Magdalen Feil', 'conrad@hickle.com', '206.050.9305 x453', '', '', '2017-05-23 17:37:43'),
(28, 'Contact-Enquiry', 'Hailee Dibbert', 'Rebeka Upton', 'maya_larkin@mullermoriette.com', '1-315-904-1537 x994', '', '', '2017-05-23 17:37:43'),
(29, 'Contact-Enquiry', 'Else Runte', 'Juliana Grimes DVM', 'sonia.stanton@prohaska.name', '1-130-173-1949 x3097', '', '', '2017-05-23 17:37:43'),
(30, 'Contact-Enquiry', 'Ashtyn Stroman', 'Vinnie Altenwerth', 'schuyler@simonis.biz', '346-218-4471 x48210', '', '', '2017-05-23 17:37:43'),
(31, 'Contact-Enquiry', 'Rashawn Lubowitz', 'Suzanne Daugherty MD', 'joanne.kirlin@okeefe.name', '987-631-0682 x64578', '', '', '2017-05-23 17:37:43'),
(32, 'Contact-Enquiry', 'Charley Koelpin MD', 'Ms. Erica Cremin', 'georgianna@millchinner.org', '227.527.9904', '', '', '2017-05-23 17:37:43'),
(33, 'Contact-Enquiry', 'Kris Nolan', 'Ruth Auer I', 'britney@wuckert.info', '241.971.5609 x51687', '', '', '2017-05-23 17:37:43'),
(34, 'Contact-Enquiry', 'Mrs. Karlie King', 'Isaac Osinski', 'maxine.oreilly@bergnaumjerde.io', '1-744-605-3362 x535', '', '', '2017-05-23 17:37:43'),
(35, 'Contact-Enquiry', 'Elliot Predovic', 'Mr. Nestor Hamill', 'verna.thompson@erdmandicki.co', '(327) 249-3212', '', '', '2017-05-23 17:37:43'),
(36, 'Contact-Enquiry', 'Celestino Ward', 'Vella Von', 'jacquelyn_rodriguez@nicolas.net', '156-507-7607', '', '', '2017-05-23 17:37:43'),
(37, 'Contact-Enquiry', 'Queenie Kuvalis', 'Rafael Tillman', 'silas_baumbach@mccluredonnelly.biz', '1-369-128-3666 x6932', '', '', '2017-05-23 17:37:43'),
(38, 'Contact-Enquiry', 'Roxanne Beatty DDS', 'Sanford Dietrich', 'niko@welch.org', '196.609.9239 x894', '', '', '2017-05-23 17:37:43'),
(39, 'Contact-Enquiry', 'Mrs. Dexter Roob', 'Clementina Kunde', 'mohammed_cormier@veum.name', '679-876-1857 x1120', '', '', '2017-05-23 17:37:43'),
(40, 'Contact-Enquiry', 'Jaden Ankunding', 'Jadon Conn', 'keyshawn.cormier@kirlinkeler.biz', '470-292-8505 x118', '', '', '2017-05-23 17:37:43'),
(41, 'Contact-Enquiry', 'Pietro Fadel', 'Imani Hane', 'bridget_rempel@haagbeier.com', '(762) 041-2062 x96513', '', '', '2017-05-23 17:37:43'),
(42, 'Contact-Enquiry', 'Shaina Wiza IV', 'Dr. Shaniya Murazik', 'leone_corkery@bechtelar.net', '785-177-3412', '', '', '2017-05-23 17:37:43'),
(43, 'Contact-Enquiry', 'Mr. Ryann Larson', 'Newell Koch', 'vernon_olson@schaden.com', '1-890-792-9810 x558', '', '', '2017-05-23 17:37:43'),
(44, 'Contact-Enquiry', 'Eudora Greenholt DVM', 'Naomi Cormier', 'lillie.brakus@kihn.net', '1-224-827-2039 x1748', '', '', '2017-05-23 17:37:43'),
(45, 'Contact-Enquiry', 'Odessa Hand', 'Garnet Pacocha', 'branson.bradtke@gleichner.info', '756.975.8364 x5393', '', '', '2017-05-23 17:37:43'),
(46, 'Contact-Enquiry', 'Jermey King', 'Ms. Karley Leannon', 'joan@champlin.biz', '1-209-587-2581 x35040', '', '', '2017-05-23 17:37:43'),
(47, 'Contact-Enquiry', 'Miss Coleman Jacobs', 'Titus Ward', 'lexie.kihn@pfeffer.net', '763.217.3598 x322', '', '', '2017-05-23 17:37:43'),
(48, 'Contact-Enquiry', 'Annette Hirthe', 'Jadyn Murazik', 'danielle_effertz@kreiger.name', '866-255-3012', '', '', '2017-05-23 17:37:43'),
(49, 'Contact-Enquiry', 'Dr. Rosa Gerhold', 'Heber Haley', 'luna@oreilly.biz', '1-224-139-2406 x82409', '', '', '2017-05-23 17:37:43'),
(50, 'Contact-Enquiry', 'Celine Rolfson', 'Vinnie Zieme', 'sherman@kuvaliatterfield.io', '(780) 913-6817 x08894', '', '', '2017-05-23 17:37:43'),
(51, 'Contact-Enquiry', 'Maye Eichmann MD', 'Madison Little', 'ru@feeney.info', '443-213-6666', '', '', '2017-05-23 17:37:43'),
(52, 'Contact-Enquiry', 'Joesph Waelchi', 'Nyasia Stark', 'elnora.rice@kohoeger.info', '1-650-883-2370', '', '', '2017-05-23 17:37:43'),
(53, 'Contact-Enquiry', 'Savannah Upton', 'Frank VonRueden MD', 'kaylie_carroll@schmidt.biz', '610.124.4502', '', '', '2017-05-23 17:37:43'),
(54, 'Contact-Enquiry', 'Merl Bosco', 'Holly Towne', 'katrina@fisherwolf.info', '(608) 811-8763 x210', '', '', '2017-05-23 17:37:43'),
(55, 'Contact-Enquiry', 'Rahsaan Gottlieb Sr.', 'Mr. Devon Feest', 'hester_hauck@heathcotetrantow.net', '1-171-880-4363 x134', '', '', '2017-05-23 17:37:43'),
(56, 'Contact-Enquiry', 'Jackson McClure', 'Kristoffer Kris', 'marjorie_wyman@vandervortlegros.co', '603-431-4780', '', '', '2017-05-23 17:37:43'),
(57, 'Contact-Enquiry', 'Bonita Anderson', 'Delores Morissette DVM', 'anibal@gerhold.org', '403.549.1943 x60986', '', '', '2017-05-23 17:37:43'),
(58, 'Contact-Enquiry', 'Frida Aufderhar', 'Letha Purdy', 'jeramy@kuhlman.name', '(796) 571-3412', '', '', '2017-05-23 17:37:43'),
(59, 'Contact-Enquiry', 'Dr. Isaias Lind', 'Marcelo Collins', 'cesar@wolffdach.org', '402.032.1886 x587', '', '', '2017-05-23 17:37:43'),
(60, 'Contact-Enquiry', 'Miss Dayne Parker', 'Colt Hauck', 'mertie@herzog.org', '1-601-668-9172 x58351', '', '', '2017-05-23 17:37:43'),
(61, 'Contact-Enquiry', 'Queen Dicki', 'Robin Homenick', 'roscoe@ortiz.net', '(616) 013-9435 x630', '', '', '2017-05-23 17:37:43'),
(62, 'Contact-Enquiry', 'Alexander Rau', 'Francis Kemmer', 'darius.mayer@stokes.org', '(996) 645-8157 x808', '', '', '2017-05-23 17:37:43'),
(63, 'Contact-Enquiry', 'Jacquelyn Rath', 'Dr. Odie Grady', 'conner@lehner.org', '770.750.4070 x202', '', '', '2017-05-23 17:37:43'),
(64, 'Contact-Enquiry', 'Haleigh Goyette', 'Mr. Graciela Schaefer', 'jaleel_anderson@robel.io', '724.599.1777', '', '', '2017-05-23 17:37:43'),
(65, 'speaker-request', 'Sienna Lang', 'Marilou Fahey', 'burnice.larkin@lubowitz.net', '(464) 716-3637', '', '', '2017-05-23 17:37:43'),
(66, 'Contact-Enquiry', 'Vernon Weber I', 'Alexandre Pagac V', 'roxane_kovacek@rodriguez.co', '413-037-0034 x9831', '', '', '2017-05-23 17:37:43'),
(67, 'Contact-Enquiry', 'Demetrius Green', 'Verna Hyatt', 'sonya.flatley@brekkecarter.info', '1-468-227-7425', '', '', '2017-05-23 17:37:43'),
(68, 'Contact-Enquiry', 'Sabina Will', 'Santiago Purdy', 'vicky.schuster@ernser.name', '1-631-366-1705 x367', '', '', '2017-05-23 17:37:43'),
(69, 'Contact-Enquiry', 'Aurelio Maggio', 'Dorcas McCullough', 'jerad.cremin@mccullough.biz', '1-384-992-8682 x809', '', '', '2017-05-23 17:37:43'),
(70, 'Contact-Enquiry', 'Elva Hayes', 'Darryl Hansen', 'pearlie_heller@moriettekautzer.com', '993-145-7996', '', '', '2017-05-23 17:37:43'),
(71, 'Contact-Enquiry', 'Deborah Kuphal Jr.', 'Prince Gutmann', 'stacy@bruen.info', '1-877-656-8804 x4587', '', '', '2017-05-23 17:37:43'),
(72, 'Contact-Enquiry', 'Gracie Olson', 'Hank O\'Reilly', 'kolby@huels.net', '(117) 062-2925', '', '', '2017-05-23 17:37:43'),
(73, 'Contact-Enquiry', 'Rowena Raynor', 'Cleveland Reilly', 'monique@johnsonbreitenberg.info', '235-014-6397', '', '', '2017-05-23 17:37:43'),
(74, 'Contact-Enquiry', 'Lindsay Jast V', 'Jaylin Feeney', 'adeline_kunze@carterohara.co', '378.538.2391 x75983', '', '', '2017-05-23 17:37:43'),
(75, 'Contact-Enquiry', 'Wilhelmine Dickens', 'Antonina Luettgen', 'kieran@white.biz', '(128) 150-2441', '', '', '2017-05-23 17:37:43'),
(76, 'Contact-Enquiry', 'Jaycee Jast', 'Ms. Rudy Torp', 'ruthe_kihn@ondricka.io', '(586) 563-6079', '', '', '2017-05-23 17:37:43'),
(77, 'Contact-Enquiry', 'Priscilla Nitzsche', 'Anita Swaniawski', 'vita_price@koch.com', '613.524.8589 x628', '', '', '2017-05-23 17:37:43'),
(78, 'Contact-Enquiry', 'Maurice Trantow', 'Alberta Wisozk V', 'lillian@legros.name', '842.011.4089 x8994', '', '', '2017-05-23 17:37:43'),
(79, 'Contact-Enquiry', 'Mathilde Brekke', 'Jose Anderson III', 'christine@shields.info', '1-705-860-2042 x633', '', '', '2017-05-23 17:37:43'),
(80, 'Contact-Enquiry', 'Rolando Harris III', 'Lenna Harris', 'sven_boyer@jenkins.co', '(663) 260-9832 x1169', '', '', '2017-05-23 17:37:43'),
(81, 'Contact-Enquiry', 'Keenan Ullrich', 'Shany Murray', 'kara@ferry.name', '1-635-282-8030 x34059', '', '', '2017-05-23 17:37:43'),
(82, 'Contact-Enquiry', 'Mr. Vanessa Bartoletti', 'Susanna Yost', 'rose.beahan@bayer.io', '(899) 237-7634 x93616', '', '', '2017-05-23 17:37:43'),
(83, 'Contact-Enquiry', 'Alicia Waters PhD', 'Lawrence Yundt', 'ania.kemmer@lemke.org', '1-295-480-6868 x37823', '', '', '2017-05-23 17:37:43'),
(84, 'Contact-Enquiry', 'Lea Effertz II', 'Addison Wolf', 'pascale_ruecker@gerlach.co', '(305) 282-3490', '', '', '2017-05-23 17:37:43'),
(85, 'Contact-Enquiry', 'Carissa Ziemann', 'Wilber Rau', 'donnell@mccullough.biz', '148-278-4896 x9448', '', '', '2017-05-23 17:37:43'),
(86, 'Contact-Enquiry', 'Brett Hoppe III', 'Otho Franecki', 'liza@okonheaney.name', '225.788.7476 x8301', '', '', '2017-05-23 17:37:43'),
(87, 'Contact-Enquiry', 'Noelia Cummings', 'Kendall Jerde', 'erin_reynolds@kunze.net', '607.637.5423', '', '', '2017-05-23 17:37:43'),
(88, 'Contact-Enquiry', 'Miss Angelo Jacobs', 'Merlin Nader', 'charley@grant.io', '1-733-116-2007', '', '', '2017-05-23 17:37:43'),
(89, 'Contact-Enquiry', 'Arlene Pollich', 'Martin Rolfson', 'nona@mann.name', '291.469.1885 x74000', '', '', '2017-05-23 17:37:43'),
(90, 'Contact-Enquiry', 'Brando Rodriguez', 'Ethan Legros', 'dan_blick@anderson.com', '1-626-531-3811', '', '', '2017-05-23 17:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters_subscribers`
--

CREATE TABLE `newsletters_subscribers` (
  `id` int(20) NOT NULL,
  `fname` varchar(250) DEFAULT NULL,
  `email1` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `superusers`
--

CREATE TABLE `superusers` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superusers`
--

INSERT INTO `superusers` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'mytester@localdev.com', '$2a$11$RvHoxtQf/w3mp1SVqOqPiOe2qV1ktdTutR4hFBCrM70z52xzSHkny', NULL, NULL, NULL, 1, '2017-09-29 05:25:53', '2017-09-29 05:25:53', '127.0.0.1', '127.0.0.1', '2017-09-29 05:24:34', '2017-09-29 05:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `full_name` varchar(555) NOT NULL,
  `email` varchar(555) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `other_type` varchar(255) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by_user` varchar(255) NOT NULL,
  `throwaway_column_only_local` varchar(255) NOT NULL,
  `reset_link` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `dateadded`, `full_name`, `email`, `password`, `account_type`, `other_type`, `phone`, `status`, `date_modified`, `modified_by_user`, `throwaway_column_only_local`, `reset_link`) VALUES
(1, '2016-05-26 09:43:43', 'Mr. Milford McKenzie', 'ryan.farrell@crooks.name', '72b302bf297a228a75730123efef7c41', '3', '', '764.044.7382', '0', '2017-08-05 07:33:48', 'admin', '', ''),
(2, '2016-05-27 02:11:24', 'Trevion Beier Sr.', 'orville@spencer.org', '72b302bf297a228a75730123efef7c41', '3', '', '510-756-8516 x2186', '1', '2017-08-05 07:33:48', '', '', ''),
(3, '2016-05-27 04:01:07', 'Keshawn Sawayn DDS', 'hallie@franecki.info', '72b302bf297a228a75730123efef7c41', '3', '', '(956) 564-3933', '0', '2017-08-05 07:33:48', 'admin', '', ''),
(4, '2016-06-02 09:40:53', 'Kyleigh Kertzmann', 'rocky.collins@abshiregraham.io', '72b302bf297a228a75730123efef7c41', '3', '', '(683) 704-5538 x03411', '1', '2017-08-05 07:33:48', 'user', '', ''),
(5, '2016-07-07 02:56:36', 'Miss Carmella Upton', 'alisha@gislasonlesch.biz', '72b302bf297a228a75730123efef7c41', '4', '', '370.912.0576 x19282', '0', '2017-08-05 07:33:48', 'admin', '', ''),
(6, '2016-07-15 01:24:40', 'Odell Walker', 'delilah@leffler.biz', '72b302bf297a228a75730123efef7c41', '3', '', '820.448.1372 x76466', '1', '2017-08-05 07:33:48', '', '', ''),
(7, '2016-07-18 10:43:30', 'Tatum Durgan', 'cory@gislason.info', '72b302bf297a228a75730123efef7c41', 'other', 'Not for profit organisation', '415.241.8915 x1569', '1', '2017-08-05 07:33:48', 'user', '', ''),
(8, '2016-07-18 08:15:15', 'Bell Little', 'era@yundthuels.org', '72b302bf297a228a75730123efef7c41', '3', '', '1-241-441-3033 x74291', '1', '2017-08-05 07:33:48', '', '', ''),
(9, '2016-07-19 06:48:13', 'Mrs. Sydnie Murazik', 'xander@mraz.com', '72b302bf297a228a75730123efef7c41', '4', '', '(541) 939-9806 x453', '1', '2017-08-05 07:33:48', 'user', '', ''),
(10, '2016-08-05 09:09:09', 'Mr. Amya O\'Kon', 'oma_bartoletti@adamscasper.name', '72b302bf297a228a75730123efef7c41', '3', '', '217-152-5043', '1', '2017-08-05 07:33:48', '', '', ''),
(11, '2016-08-12 09:49:52', 'Mrs. Ed Olson', 'merle.leuschke@quitzon.biz', '72b302bf297a228a75730123efef7c41', '3', '', '963.152.8396 x1240', '1', '2017-08-05 07:33:48', '', '', ''),
(12, '2016-08-18 10:46:14', 'Rosetta Langworth', 'marina@mcclurewaelchi.biz', '72b302bf297a228a75730123efef7c41', '3', '', '1-860-268-9758', '1', '2017-08-05 07:33:48', 'user', '', ''),
(13, '2016-09-03 04:58:20', 'Mr. Rosemarie Jones', 'dedrick@mcglynn.info', '72b302bf297a228a75730123efef7c41', '3', '', '1-494-318-1639', '1', '2017-08-05 07:33:48', '', '', ''),
(14, '2016-09-08 12:16:29', 'Maximilian Goodwin', 'devyn@herzog.co', '72b302bf297a228a75730123efef7c41', '3', '', '(391) 972-2401', '1', '2017-08-05 07:33:48', '', '', ''),
(15, '2016-09-09 12:32:13', 'Miss Sally Brekke', 'janelle.friesen@luettgen.info', '72b302bf297a228a75730123efef7c41', '3', '', '331-484-6512 x2643', '1', '2017-08-05 07:33:48', '', '', ''),
(16, '2016-09-14 01:39:54', 'Marilie Becker', 'bernadine.pouros@baileywaelchi.name', '72b302bf297a228a75730123efef7c41', '3', '', '230-758-1370 x0924', '1', '2017-08-05 07:33:48', '', '', ''),
(17, '2016-09-16 04:12:53', 'Elsie McKenzie DDS', 'jamey_connelly@boehm.co', '72b302bf297a228a75730123efef7c41', '3', '', '749-276-1301', '1', '2017-08-05 07:33:48', '', '', ''),
(18, '2016-09-23 12:49:51', 'Mr. Samanta Kilback', 'jairo_friesen@glovercollins.biz', '72b302bf297a228a75730123efef7c41', '3', '', '268-437-0403 x28575', '1', '2017-08-05 07:33:48', '', '', ''),
(19, '2016-09-25 01:56:56', 'Nestor Gerhold Jr.', 'shanna_champlin@prosacco.info', '72b302bf297a228a75730123efef7c41', '3', '', '1-781-832-8157', '1', '2017-08-05 07:33:48', '', '', ''),
(20, '2016-09-28 03:39:39', 'Rex Ryan', 'anita_carroll@johnsonhand.name', '72b302bf297a228a75730123efef7c41', '3', '', '1-326-794-0489', '1', '2017-08-05 07:33:48', '', '', ''),
(21, '2016-09-29 12:05:36', 'Patsy Watsica', 'reed.swaniawski@wolffspencer.info', '72b302bf297a228a75730123efef7c41', '3', '', '1-650-296-5700 x417', '1', '2017-08-05 07:33:48', '', '', ''),
(22, '2016-10-14 01:47:48', 'Mrs. Myrtice Metz', 'ruby.heathcote@kertzmann.com', '72b302bf297a228a75730123efef7c41', '3', '', '906.628.8298', '1', '2017-08-05 07:33:48', '', '', ''),
(23, '2016-10-24 09:57:57', 'Ernestine Ullrich', 'karine@kuhlmansimonis.net', '72b302bf297a228a75730123efef7c41', '3', '', '163-575-9650', '1', '2017-08-05 07:33:48', 'user', '', ''),
(24, '2016-10-24 11:04:47', 'Charles Gusikowski', 'darius.strosin@hamillschmidt.co', '72b302bf297a228a75730123efef7c41', '3', '', '1-935-100-6335 x237', '1', '2017-08-05 07:33:48', '', '', ''),
(25, '2016-10-26 09:31:23', 'Dr. Rashawn Ebert', 'darrion.spinka@bayerturcotte.com', '72b302bf297a228a75730123efef7c41', '3', '', '788-982-5708', '1', '2017-08-05 07:33:48', '', '', ''),
(26, '2016-10-27 10:24:51', 'Shania Dietrich', 'blake@bashirian.info', '72b302bf297a228a75730123efef7c41', '4', '', '1-567-179-8093 x8600', '1', '2017-08-05 07:33:48', '', '', ''),
(27, '2016-11-01 09:13:59', 'Genesis Waters DDS', 'maybell_herman@bode.co', '72b302bf297a228a75730123efef7c41', '3', '', '(372) 261-7926 x92116', '1', '2017-08-05 07:33:48', '', '', ''),
(28, '2016-11-06 05:08:58', 'Alia Pouros', 'walter@roberts.biz', '72b302bf297a228a75730123efef7c41', '3', '', '419.027.1479 x34216', '1', '2017-08-05 07:33:48', '', '', ''),
(29, '2016-11-09 03:48:31', 'Willy Kuvalis IV', 'giovanny@skiles.info', '72b302bf297a228a75730123efef7c41', '3', '', '394-776-0647 x63553', '1', '2017-08-05 07:33:48', 'user', '', ''),
(30, '2016-11-20 06:40:17', 'Ken Stehr V', 'trudie@olson.io', '72b302bf297a228a75730123efef7c41', '3', '', '541.252.0109 x82021', '1', '2017-08-05 07:33:48', '', '', ''),
(31, '2016-11-26 02:22:56', 'Geo Boehm', 'aaron.nader@gerhold.io', '72b302bf297a228a75730123efef7c41', '3', '', '1-525-919-6813', '1', '2017-08-05 07:33:48', '', '', ''),
(32, '2016-11-28 06:35:27', 'Cody Howell', 'rosalind@durganortiz.co', '72b302bf297a228a75730123efef7c41', '3', '', '549-073-5258', '1', '2017-08-05 07:33:48', '', '', ''),
(33, '2016-11-28 08:22:53', 'Foster Metz', 'joanny_ruel@pacocha.io', '72b302bf297a228a75730123efef7c41', '3', '', '(172) 274-7668', '1', '2017-08-05 07:33:48', '', '', ''),
(34, '2016-11-30 08:53:35', 'Mr. Grover Little', 'jonatan@luettgenfeest.info', '72b302bf297a228a75730123efef7c41', '3', '', '(953) 372-5388 x7279', '1', '2017-08-05 07:33:48', '', '', ''),
(35, '2016-12-01 12:14:24', 'Rosie Medhurst', 'mara.medhurst@kulasledner.io', '72b302bf297a228a75730123efef7c41', 'other', 'Community Group', '190-380-6508 x20566', '1', '2017-08-05 07:33:48', '', '', ''),
(36, '2016-12-19 08:21:59', 'Jodie Reynolds', 'patience@mertz.org', '72b302bf297a228a75730123efef7c41', '3', '', '1-837-828-9565 x99135', '1', '2017-08-05 07:33:48', '', '', ''),
(37, '2016-12-20 10:45:53', 'Kyra Kerluke', 'jordon_barrows@murphy.com', '72b302bf297a228a75730123efef7c41', '3', '', '684.554.4974 x14348', '1', '2017-08-05 07:33:48', '', '', ''),
(38, '2016-12-24 04:44:44', 'Paige Gerlach IV', 'justina@murphy.co', '72b302bf297a228a75730123efef7c41', '4', '', '357-782-1707 x4266', '1', '2017-08-05 07:33:48', '', '', ''),
(39, '2016-12-29 10:36:00', 'Marta Zemlak', 'tracy@sipes.info', '72b302bf297a228a75730123efef7c41', '5', '', '(517) 650-9409 x79711', '1', '2017-08-05 07:33:48', '', '', ''),
(40, '2017-01-14 05:20:38', 'Mrs. Olin Krajcik', 'ernestine_walter@kertzmann.com', '72b302bf297a228a75730123efef7c41', '3', '', '1-790-154-2401', '1', '2017-08-05 07:33:48', '', '', ''),
(41, '2017-01-19 10:10:56', 'Filomena Tromp', 'alysa.weinat@gloverrenner.com', '72b302bf297a228a75730123efef7c41', '3', '', '1-761-258-3373', '1', '2017-08-05 07:33:48', '', '', ''),
(42, '2017-01-20 02:13:49', 'Eileen Schulist MD', 'elia_kirlin@kovacekking.co', '72b302bf297a228a75730123efef7c41', '3', '', '(608) 386-1533', '1', '2017-08-05 07:33:48', '', '', ''),
(43, '2017-01-20 02:15:30', 'Dr. Kyler Veum', 'hershel.gibson@kertzmann.io', '72b302bf297a228a75730123efef7c41', '3', '', '(917) 465-3314 x215', '1', '2017-08-05 07:33:48', '', '', ''),
(44, '2017-02-09 08:53:24', 'Leopold Shields', 'merle.hane@bartell.co', '72b302bf297a228a75730123efef7c41', '4', '', '148-000-5379 x17758', '1', '2017-08-05 07:33:48', '', '', ''),
(45, '2017-02-12 08:01:10', 'Stan Senger', 'hallie_weber@brakus.co', '72b302bf297a228a75730123efef7c41', '3', '', '594.212.4999 x06491', '1', '2017-08-05 07:33:48', '', '', ''),
(46, '2017-02-12 05:08:23', 'Mckenna Steuber MD', 'marge@thompson.info', '72b302bf297a228a75730123efef7c41', '3', '', '(665) 260-9331', '1', '2017-08-05 07:33:48', '', '', ''),
(47, '2017-02-27 02:54:29', 'Miss Zachary Kunze', 'daron@mullereichmann.biz', '72b302bf297a228a75730123efef7c41', 'other', 'Workplace', '519-084-1265 x027', '1', '2017-08-05 07:33:48', '', '', ''),
(48, '2017-03-02 02:02:17', 'Malika Barrows', 'austin.walker@borer.com', '72b302bf297a228a75730123efef7c41', '3', '', '1-963-685-5128', '1', '2017-08-05 07:33:48', '', '', ''),
(49, '2017-03-08 06:26:27', 'Kayli Hauck', 'andres@kuvalis.co', '72b302bf297a228a75730123efef7c41', '3', '', '1-920-161-9777', '1', '2017-08-05 07:33:48', '', '', ''),
(50, '2017-03-13 04:55:22', 'Hester Fahey MD', 'jennings.corkery@bailey.biz', '72b302bf297a228a75730123efef7c41', '3', '', '462.487.8531 x191', '1', '2017-08-05 07:33:48', '', '', ''),
(51, '2017-04-01 04:25:15', 'Felicity Kuvalis', 'janea@wiegand.io', '72b302bf297a228a75730123efef7c41', '3', '', '1-911-234-8146', '1', '2017-08-05 07:33:48', '', '', ''),
(52, '2017-04-02 07:15:48', 'Emma Kub', 'oran.waters@cruickshank.biz', '72b302bf297a228a75730123efef7c41', '3', '', '442.382.9061 x45043', '1', '2017-08-05 07:33:48', '', '', ''),
(53, '2017-04-18 07:40:32', 'Elda Mayert IV', 'violette@hoeger.net', '72b302bf297a228a75730123efef7c41', '3', '', '(240) 856-2043', '1', '2017-08-05 07:33:48', '', '', ''),
(54, '2017-04-21 01:05:54', 'Shayna Goldner', 'mariah@weimannhowell.net', '72b302bf297a228a75730123efef7c41', '4', '', '1-575-728-2606 x3293', '1', '2017-08-05 07:33:48', '', '', ''),
(55, '2017-05-02 11:57:15', 'Ron Schiller Jr.', 'katelynn@schaden.name', '72b302bf297a228a75730123efef7c41', '3', '', '616-266-2229 x005', '1', '2017-08-05 07:33:48', 'user', '', ''),
(56, '2017-05-18 02:01:31', 'Dorcas Zulauf', 'anthony_bauch@huelsmcclure.info', '72b302bf297a228a75730123efef7c41', 'other', 'Idk', '218.460.3500', '1', '2017-08-05 07:33:48', '', '', ''),
(57, '2017-05-19 02:25:41', 'Talon Predovic', 'otho.schultz@shanahan.info', '72b302bf297a228a75730123efef7c41', '3', '', '1-765-034-7787 x6283', '1', '2017-08-05 07:33:48', '', '', ''),
(58, '2017-05-19 03:39:09', 'Cara MacGyver', 'louie_kuvalis@nitzschenicolas.info', '72b302bf297a228a75730123efef7c41', '4', '', '244.916.3743 x03824', '1', '2017-08-05 07:33:48', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_campaigns`
--

CREATE TABLE `user_campaigns` (
  `id` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `campaign_name` varchar(555) NOT NULL,
  `campaign_goal` varchar(255) NOT NULL,
  `campaign_end_date` date NOT NULL,
  `campaign_type` int(11) NOT NULL,
  `campaign_image` int(11) NOT NULL,
  `url` varchar(555) NOT NULL,
  `statement` text NOT NULL,
  `status` enum('1','0') NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project` varchar(36) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_campaigns`
--

INSERT INTO `user_campaigns` (`id`, `dateadded`, `user_id`, `campaign_name`, `campaign_goal`, `campaign_end_date`, `campaign_type`, `campaign_image`, `url`, `statement`, `status`, `date_modified`) VALUES
(1, '2016-05-26 09:43:46', 1, 'Simon\'s Birthday', '2000', '2017-02-20', 1, 9, 'simon-s-birthday', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-07-07 06:34:24'),
(2, '2016-05-27 14:11:27', 2, 'Annes Test Campaign', '275.00', '2016-08-03', 1, 9, 'anne-s-test-campaign', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:32:32'),
(3, '2016-05-27 16:00:23', 1, 'Ethans Birthday', '1000', '2017-01-07', 1, 9, 'ethan-s-birthday', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:03:06'),
(4, '2016-05-27 16:03:05', 3, 'Ethan\'s Birthday', '500', '2017-01-07', 1, 0, 'ethan-s-birthday-1', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:03:10'),
(5, '2016-06-02 21:40:55', 4, 'Anne is kinda cool', '500', '2016-09-04', 1, 9, 'anne-is-cool', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:03:14'),
(6, '2016-06-08 11:01:34', 4, 'Annie Test #2', '2000.00', '2016-10-10', 4, 0, 'annie-test-2', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:03:21'),
(7, '2016-06-08 11:24:13', 4, 'Annie does White Castle', '20.00', '2016-08-03', 5, 0, 'annie-does-white-castle', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:03:26'),
(8, '2016-06-08 11:28:32', 4, 'Missy Moo', '30', '2016-12-15', 4, 15, 'missy-moo', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:03:30'),
(9, '2016-06-09 11:58:00', 4, 'Bruno', '400', '2017-06-12', 6, 17, 'bruno', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!<br /> But too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.<br /> I started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.<br /> Please donate to my campaign -- anything you can give is a huge help.<br /> 100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.<br />', '1', '2016-06-09 04:07:56'),
(10, '2016-06-10 17:08:27', 1, 'test 3', '2750', '2017-01-07', 4, 21, 'test-3', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-06-10 07:08:27'),
(11, '2016-06-10 19:12:18', 1, 'this is a very long campaign name but does it fit?', '1250', '2016-09-07', 4, 21, 'this-is-a-very-long-campaign-name-but-does-it-fit', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-06-10 09:12:18'),
(12, '2016-06-21 09:35:38', 2, 'questions marks 43 numbers!!!@#$', '275.00', '2017-09-23', 5, 16, 'hksdf-asdf-asdlkfl-skdf-lksadl-fka-sdkf-laskdfl-aksdl-fkasldfkklklfklskdf-lkasdlfkkla-sdlfk-asdfasdfasdf', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help. Blah b;ahg\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-06-29 01:16:42'),
(13, '2016-07-07 14:56:38', 5, 'Test campaign', '300', '2016-07-07', 5, 22, 'test-campaign', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-07-07 08:05:40'),
(14, '2016-07-06 15:18:37', 5, 'test birthday', '200', '2016-07-07', 1, 9, 'test-birthday', '', '1', '2016-07-07 08:05:44'),
(15, '2016-07-15 13:24:43', 6, 'This year my Birthday Wish is to help get 20 people of the street for the night.', '550', '2016-09-02', 1, 9, 'this-year-my-birthday-wish-is-to-help-get-20-people-of-the-street-for-the-night', '', '1', '2016-07-15 03:24:43'),
(16, '2016-07-18 10:43:33', 7, 'Paws  Pals-Living Ruff in SA  SPSF loves Sleepbus for SA', '25000', '2017-02-01', 8, 19, 'paws-pals-living-ruff-in-sa-spsf-loves-sleepbus-for-sa', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.\r\n\r\nSleepbus will compliment Paws & Pals- Living Ruff in SA (pop up Vet for homeless) & Safe Pets Safe Families (fostering for people in Dv, homelessness & other crisis situations)', '1', '2016-07-18 10:57:39'),
(17, '2016-07-19 18:48:14', 9, 'Belinda Jane Staff and Friends', '3000', '2016-12-31', 6, 17, 'belinda-jane-staff-friends', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. Sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nThe staff at Belinda Jane Video have started this fundraising campaign to help sleepbus build and operate buses, all over Australia and I\'m looking for anyone who can help.\r\n\r\nPlease donate to our campaign -- anything you can give is a huge help.\r\n\r\nWe have an in-house coffee machine, and are paying $1 per coffee each and also $1 per small packet of chips or fruit that we have.  All the money raised is going directly to sleepbus.  The past 3 weeks, we have raised $120 just from those small donations.  You can do it too.  \r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.\r\n\r\n*****   IMPORTANT NOTICE: When making your donation, you MUST click on \"RETURN TO MERCHANT\" after the PayPal transaction otherwise your donation won\'t be registered to this campaign.    *****', '1', '2017-04-03 02:03:59'),
(18, '2016-08-18 22:46:17', 12, 'O\'Toole Birthday pledge', '27.50', '2016-08-30', 1, 9, 'o-toole-birthday-pledge', '', '1', '2016-08-18 12:46:17'),
(19, '2016-09-14 13:39:56', 16, 'SleepBus Birthday Pledge FUN-draiser', '275', '2017-01-26', 1, 9, 'sleepbus-birthday-pledge-fun-draiser', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-09-14 03:47:23'),
(20, '2016-09-29 12:05:39', 21, '30th Birthday Bypass', '600', '2017-05-25', 1, 31, '30th-birthday-bypass', '', '1', '2016-09-29 02:05:39'),
(21, '2016-10-24 21:58:01', 23, 'Brownies Birthday', '275', '2017-02-08', 1, 8, 'brownies-birthday', '', '1', '2016-10-24 10:58:01'),
(22, '2016-10-27 10:30:47', 26, 'SAFE PLACE HAVEN', '275.00', '2016-11-27', 6, 17, 'safe-place-haven', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-10-26 23:30:47'),
(23, '2016-11-06 17:09:00', 28, 'Helping the homeless', '10000', '2017-06-15', 4, 33, 'helping-the-homeless', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-11-06 06:11:06'),
(24, '2016-11-09 19:53:14', 12, 'Byron Shire Fundraising', '100000', '2017-06-30', 11, 47, 'byronshire', '**IMPORTANT NOTICE: When making your donation, you MUST return to this webpage after the PayPal transaction otherwise your donation won\'t be registered to this campaign. **\r\n\r\n\r\n\r\nDear sleepbus Family and the Byron Shire Community, \r\n\r\nMany of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of temporary overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nA few weeks ago I was approached by residents of Byron Shire, the Chamber of Commerce and the Mayor, about the possibility of a sleepbus in Byron Shire. During the discussions, I was made aware of the issues facing the Byron Shire community with regards to housing affordability and those forced to sleep rough. \r\n\r\nThose forced to sleep rough are exposed to major physical and mental health issues and lets face it, sleeping outside isn\'t safe. The reason why I developed the sleepbus solution was to provide safe sleeps, a temporary solution, until a long term solution program can be realised. \r\n\r\nI came to Byron Shire (8/11/16) at the request of various community members and the Byron Bay Chamber of Commerce to discuss a sleepbus for Byron Shire... we decided we were going to make it happen! We need your help.  \r\n\r\nWe have started this fundraising campaign to help sleepbus build and operate one bus to start, which will provide 8,030 safe sleeps per year, and I\'m looking for the Byron Shire community to help make this happen.\r\n\r\nPlease donate to the Byron Shire Campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for the Byron Shire sleepbus project, and when we reach our goal, the bus will be built, delivered and begin operations in Byron Shire. We want this to be by winter 2017. I look forward to you seeing exactly how we are helping to provide safe sleeps and making Byron Shire the best place for all of us. \r\n\r\nThank you\r\n\r\nSimon\r\nsleepbus Founder\r\n\r\nsleepbus is a registered Australian charity | All donations are TAX DEDUCTIBLE.', '1', '2017-04-06 05:29:58'),
(25, '2016-11-28 20:37:05', 33, 'Sleep 50 for my 50th please', '1375.00', '2016-12-20', 4, 21, 'sleep-50-for-my-50th-please', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2016-12-03 23:01:27'),
(26, '2016-11-30 08:53:38', 34, 'A warm safe bed.', '275', '2017-10-28', 1, 31, 'a-warm-safe-bed', '', '1', '2016-11-29 21:53:38'),
(27, '2016-12-02 16:17:03', 12, 'Perth Community Fundraising', '100000', '2017-03-31', 11, 48, 'perth', '**IMPORTANT NOTICE: When making your donation, you MUST return to this webpage after the PayPal transaction otherwise your donation won\'t be registered to this campaign. **\r\n\r\n\r\n\r\nMany of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nMichelle was a 34 year old Mum of 2. She made a promise to her kids a few years ago about getting better and returning home to them. She never completed that promise as she died in the bushes of Rockingham in a diabetic coma - homeless. \r\n\r\nSimon Rowe, the founder of sleepbus, has consented that the first bus we bring to WA will be named MICHELLE in her honour. \r\n\r\nWe are hoping to raise $100,000 before March 2017 to try and have our bus here by winter. This is bus number 1 for WA and we know that bus 2 and 3 will not be far behind.  We would love to see you get behind this campaign either in spirit or financially. Share this campaign with as many in WA as you can. \r\n\r\nEach bus sleeps 22 people who require accommodation for the night. That\'s 8,030 safe sleeps per year from one sleepbus. \r\n\r\nIf we had sleepbus over here back in May 2014, Michelle might be alive today, snuggled up with her children in safety. \r\n\r\n #bringmichellehome\r\n\r\n\r\n\r\nsleepbus is a registered Australian charity | All donations are TAX DEDUCTIBLE.', '1', '2016-12-07 05:51:53'),
(28, '2016-12-24 04:44:48', 38, 'Sleepbus', '300', '2017-01-25', 1, 31, 'sleepbus', '', '1', '2016-12-23 17:44:48'),
(29, '2017-01-20 14:13:51', 42, 'Slumber party for Sleepbus', '500', '2017-02-20', 10, 37, 'slumber-party-for-sleepbus', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2017-01-20 03:13:51'),
(30, '2017-02-09 20:53:26', 44, 'Grace Sleepbus', '550', '2018-02-09', 9, 20, 'grace-sleepbus', '<div>Testing HTML</div>\r\nMany of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2017-02-09 09:56:01'),
(31, '2017-02-12 08:04:43', 45, 'Testing Campaign After Migration', '5500', '2017-12-31', 8, 42, 'testing-campaign-after-migration', 'Many of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nI started this fundraising campaign to help sleepbus build and operate buses, and I\'m looking for anyone who can help me.\r\n\r\nPlease donate to my campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2017-02-11 21:04:43'),
(33, '2017-02-27 18:09:30', 47, 'Qlik', '100000', '2017-12-25', 11, 49, 'qlik', '***NOTE: PLEASE CLICK \"RETURN TO MERCHANT\" AFTER YOUR DONATION TO HAVE IT ALLOCATED TO THIS CAMPAIGN.***\r\n\r\n\r\n\r\nAt Qlik, we\'re all about the story, the whole story. We\'re all about making Sense of the chaos. What we do best is provide solutions to our clients problems and make everything clear so they can see the whole story in their data with Qlik Sense. \r\n\r\nsleepbus is a powerful story. A story about not walking by, about not ignoring the problem, a story about taking action. Taking action can change the world and that’s what we want to do.\r\n\r\nWhat sleepbus does is provide safe sleeps for those doing it tough, but it\'s so much more than that. They provide clarity in the chaos. They provide their clients with safety, with piece of mind and a moment of clarity to work out a strategy to move forward and find their pathway out of homelessness. This is why Qlik and sleepbus are so very well aligned – clarity, direction, peace of mind moving forward.\r\n\r\nQlik doesn\'t want to just help sleepbus, we want to take action. We want to BUY a sleepbus. We want to raise $100,000 to build a whole sleepbus, that will provide 8,030 safe sleeps per year. \r\n\r\nThe founder of sleepbus, Simon, refers to sleepbus supporters as \"the sleepbus family\". He says;\r\n\r\n\"When people work together, their strengths magnify. Family bestows them with a collective power to withstand all kinds of hardship.\r\n\r\nThis is why the sleepbus family is extremely important to ending the need for people to sleep rough.\"\r\n\r\nQlik family. We can do it. We can do it together.\r\n\r\nFundraise and donate to this campaign and let\'s buy, build and launch a sleepbus for safe sleeps; together we can help end the need for people to sleep rough in Australia.', '1', '2017-05-19 01:17:03'),
(34, '2017-03-14 14:05:26', 12, 'Stroll to the shack for sleepbus', '300.00', '2017-05-31', 4, 15, 'stroll-to-the-shack-for-sleepbus', 'This Good Friday, Sarah and Stacey are going to do a 15km walk through the hills and bends between Campbell\'s Creek and Glenluce. This will take approximately 3-4 hours and believe it\'s going to be quite a challenge for us - but all for a good cause, sleepbus®.\r\n\r\nMany of us have no idea what it\'s like to sleep rough. We have a roof over our heads and a comfy bed to sleep in each night!\r\n\r\nBut too many people around Australia don’t have that luxury. Every night, about 6,314 people are sleeping rough, and that number is growing. But it doesn’t have to be that way. sleepbus offers a simple solution of safe overnight accommodation to help provide safe sleeps to those in need around the country.\r\n\r\nWe started this fundraising campaign to help sleepbus build and operate buses, and we are looking for anyone who can help us.\r\n\r\nPlease donate to our campaign -- anything you can give is a huge help.\r\n\r\n100% of the money will be used for sleepbus projects, and when they’re complete, sleepbus will send us photos and locations so we can see exactly how we are helping to provide safe sleeps.', '1', '2017-04-21 04:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(20) NOT NULL DEFAULT '0',
  `fname` varchar(250) DEFAULT NULL,
  `email1` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `questionnaires` (
  `id` varchar(36) NOT NULL,
  `question` text,
  `answer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);
COMMIT;

-- Manual create for projects

CREATE TABLE projects ( id VARCHAR(36) NOT NULL , name VARCHAR(200) NOT NULL , project_type VARCHAR(100) NOT NULL , PRIMARY KEY (id)) ENGINE = InnoDB;

INSERT INTO projects (id, name, project_type) VALUES ('a70951fe-e0cd-480e-88ef-16777ef226cc', 'First sleepbus', 'bus');
INSERT INTO projects (id, name, project_type) VALUES ('836e38dc-b94b-4599-a2fd-63c50ba14330', 'Second sleepbus', 'bus');

ALTER TABLE `projects` ADD `status` VARCHAR(100) NULL AFTER `project_type`, ADD `location` VARCHAR(255) NULL AFTER `status`, ADD `geo_coordinates` VARCHAR(100) NULL AFTER `location`;

-- End projects

CREATE TABLE `sleeps` (
  `id` varchar(36) NOT NULL,
  `dateofsleep` date DEFAULT NULL,
  `bus` varchar(36) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `age` varchar(8) DEFAULT NULL,
  `companions` varchar(255) DEFAULT NULL,
  `questionnaire` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `sleeps`
--
ALTER TABLE `sleeps`
  ADD PRIMARY KEY (`id`);
COMMIT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birthday_pledge`
--
ALTER TABLE `birthday_pledge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_comments`
--
ALTER TABLE `campaign_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_type`
--
ALTER TABLE `campaign_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters_subscribers`
--
ALTER TABLE `newsletters_subscribers`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `superusers`
--
ALTER TABLE `superusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_superusers_on_email` (`email`),
  ADD UNIQUE KEY `index_superusers_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_campaigns`
--
ALTER TABLE `user_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birthday_pledge`
--
ALTER TABLE `birthday_pledge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `campaign_comments`
--
ALTER TABLE `campaign_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `campaign_type`
--
ALTER TABLE `campaign_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `newsletters_subscribers`
--
ALTER TABLE `newsletters_subscribers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `superusers`
--
ALTER TABLE `superusers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `user_campaigns`
--
ALTER TABLE `user_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
