-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 11:53 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '25e4ee4e9229397b6b17776bfceaf8e7', '2018-03-31 06:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `Location` varchar(60) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `Location`, `message`, `Status`, `PostingDate`) VALUES
(6, 'dodla.pradeep2014@vit.ac.in', 6, '25/04/2018', '27/04/2018', 'vellore', 'Two day pondy trip. 8 seater vehicle needed.', 1, '2018-03-31 09:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(16, 'Toyota', '2018-03-31 07:21:54', NULL),
(17, 'BMW', '2018-03-31 07:21:58', NULL),
(18, 'BENZ', '2018-03-31 07:22:02', NULL),
(19, 'AUDI', '2018-03-31 07:22:05', NULL),
(20, 'Maruti', '2018-03-31 07:22:09', NULL),
(21, 'Tata', '2018-03-31 07:22:15', NULL),
(23, 'Range Rover', '2018-03-31 07:51:25', NULL),
(24, 'Mahindra', '2018-03-31 10:10:24', NULL),
(25, 'Harley Davidson', '2018-03-31 10:55:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Bangalore, India																									', 'info@fantasy.com', '9629786704');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align="justify"><font size="2"><strong><font color="#990000">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo", "we" or "us" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service ("TOS"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href="http://in.docs.yahoo.com/info/terms/">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align="justify"><font size="2">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo", "we" or "us" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service ("TOS"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href="http://in.docs.yahoo.com/info/terms/"><font size="2">http://in.docs.yahoo.com/info/terms/</font></a><font size="2">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align="justify"><font size="2">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo", "we" or "us" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service ("TOS"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href="http://in.docs.yahoo.com/info/terms/"><font size="2">http://in.docs.yahoo.com/info/terms/</font></a><font size="2">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										');
INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Privacy Policy', 'privacy', '										<div id="paragraph_1687654" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We understand that booking online involves significant trust on your part. We value your trust, and make it a high priority to ensure the security and confidentiality of the personal information you provide to us. Please read the following policy to learn about our privacy practices. By visiting this website, you are accepting the practices described herein.</p></div></div></div><div id="paragraph_1687655" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">What information we collect from you</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We receive and store any information you enter on our website or give us in any other way. This includes information that can identify you ("personal information"), including your first and last name, telephone number, postal and email addresses, fax number, and billing information (such as credit card number, cardholder name, and expiration date). You can choose not to provide information to us, but in general some information about you is required in order for you to register as a member; book travel; complete a traveler profile; participate in a survey, contest, or sweepstakes; ask us a question; or initiate other transactions on our site.</p></div></div></div><div id="paragraph_1687656" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Travel Companion Information</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">When you make a reservation for someone else through this website, we will request personal information and travel preferences about that individual. You should obtain the consent of other individuals prior to providing us with their personal information and travel preferences, as any access to view or change their information will be available only through your account.</p></div></div></div><div id="paragraph_1687657" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Information from Other Sources</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We also may periodically obtain both personal and non-personal information about you from affiliated entities, business partners and other independent third-party sources and add it to our account information. Examples of information we may receive include: updated delivery and address information, purchase history, and demographic information.</p></div></div></div><div id="paragraph_1687658" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Automatic Information</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We automatically collect some information about your computer when you visit this website. For example, we will collect your IP address, Web browser software (such as Firefox, Safari, or Internet Explorer), and referring website. We also may collect information about your online activity, such as trips viewed and bookings made. Our goals in collecting this automatic information include helping customize your user experience and inhibiting fraud. For more information, please see the “Cookies and other technologies” section below.</p></div></div></div><div id="paragraph_1687659" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">How we use your information</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We use sensitive billing information (such as cardholder name, credit card number, and expiration date) for the purpose of completing the travel bookings you conduct on our site. We use other information about you for the following general purposes: to provide you with the products and services you request; to provide you with travel confirmation and updates; to manage your account, including processing bills and providing travel notifications; to communicate with you in general; to respond to your questions and comments; to measure interest in and improve our products, services, and website; to notify you about special offers and products or services that may be of interest to you; to otherwise customize your experience with this website; to reward you as part of any reward and recognition program you choose to join; to solicit information from you, including through surveys; to resolve disputes, collect fees, or troubleshoot problems; to prevent potentially prohibited or illegal activities; to enforce our Terms of Use; and as otherwise described to you at the point of collection. We often receive testimonials and comments from customers who have had positive booking and/or travel experiences on our website. We occasionally publish such content, using first name plus last initial, only, for attribution.</p></div></div></div><div id="paragraph_1687660" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">E-mail Communications</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We want to make it easy for you to take advantage of travel-related opportunities on our website. One way we do this is by sending you email messages that contain information about your apparent travel-related interests. For example, if you search for a car in New York on our website and have saved your itinerary or otherwise not yet booked your travel, we may send you an email message reminding you about your saved travel itinerary or about a special travel deal in New York. Similarly, if you receive an email from us about New York travel and demonstrate an interest in New York car deals by affirmatively clicking on a link about New York car rentals in the email, you may receive an email about New York car rental offers. We believe these email messages will provide you with useful information about travel-related special offers available through our site. Please note that you will have the opportunity to choose not to receive these email messages in any such email we send.</p></div></div></div><div id="paragraph_1687661" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">With whom we share your information</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">This website may share your information with the following entities:</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;"><strong style="-webkit-tap-highlight-color: transparent; line-height: inherit;">Suppliers</strong>&nbsp;such as hotel, airline, car rental, and activity providers, who fulfill your travel reservations. Throughout this site, all services provided by a third-party supplier are described as such. We do not place limitations on our suppliers\' use or disclosure of your personal information. Therefore, we encourage you to review the privacy policies of any travel supplier whose products you purchase through this site. Please note that these suppliers also may contact you as necessary to obtain additional information about you, facilitate your travel reservation, or respond to a review you may submit.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;"><strong style="-webkit-tap-highlight-color: transparent; line-height: inherit;">Third-party vendors</strong>&nbsp;who provide services or functions on our behalf, including credit card processing, business analytics, customer service, marketing, distribution of surveys or sweepstakes programs, and fraud prevention. We may also authorize third-party vendors to collect information on our behalf, including as necessary to operate features of our website or to facilitate the delivery of online advertising tailored to your interests. Third-party vendors have access to and may collect information only as needed to perform their functions and are not permitted to share or use the information for any other purpose.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;"><strong style="-webkit-tap-highlight-color: transparent; line-height: inherit;">Business partners</strong>&nbsp;with whom we may jointly offer products or services, or whose products or services may be offered on our website. You can tell when a third party is involved in a product or service you have requested because their name will appear, either alone or with ours. If you choose to access these optional services, we may share information about you, including your personal information, with those partners. Please note that we do not control the privacy practices of these third-party business partners.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;"><strong style="-webkit-tap-highlight-color: transparent; line-height: inherit;">Referring websites</strong>. If you were referred to this website from another site (for example, through a link you clicked on another site that directed you to this one), we may share some information about you with that referring website. We have not placed limitations on the referring websites\' use of your personal information and we encourage you to review the privacy policies of any website that referred you here.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;"><strong style="-webkit-tap-highlight-color: transparent; line-height: inherit;">Companies within our corporate family.</strong>&nbsp;We may share your personal information with our parent company and corporate affiliates, such as Expedia.com, Hotwire.com and Hotels.com, as well as international corporate affiliates such as Hotels.uk.com. This sharing enables us to provide you with information about products and services, both travel-related and other, which might interest you. To the extent that our parent company and corporate affiliates have access to your information, they will follow practices that are at least as restrictive as the practices described in this Privacy Policy. They also will comply with applicable laws governing the transmission of promotional communications and, at a minimum, give you an opportunity in any commercial email they send to choose not to receive such email messages in the future.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We also may share your information:</p><ul style="-webkit-tap-highlight-color: transparent; margin-bottom: 15px; padding-left: 40px; font-family: inherit; font-size: 1rem; line-height: 1.6; list-style-type: disc;"><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">In response to subpoenas, court orders, or other legal process; to establish or exercise our legal rights; to defend against legal claims; or as otherwise required by law. In such cases we reserve the right to raise or waive any legal objection or right available to us.</li><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">When we believe it is appropriate to investigate, prevent, or take action regarding illegal or suspected illegal activities; to protect and defend the rights, property, or safety of our company or this website, our customers, or others; and in connection with our Terms of Service and other agreements.</li><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">In connection with a corporate transaction, such as a divestiture, merger, consolidation, or asset sale, or in the unlikely event of bankruptcy. Other than as set out above, you will be notified when personal information about you will be shared with third parties, and you will have an opportunity to choose not to have us share such information.</li></ul><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We also may share aggregate or anonymous information with third parties, including advertisers and investors. For example, we may tell our advertisers the number of visitors our website receives or the most popular vacation destinations. This information does not contain any personal information and is used to develop content and services we hope you will find of interest.</p></div></div></div><div id="paragraph_1687662" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">How you can access your information</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">CarRentals.com registered users can access and update their contact information by visiting the CarRentals.com My Profile page. CarRentals.com email subscribers can access and update their subscription choices through Subscription Management links found in the footer of any CarRentals.com email. You can close your account by contacting us at the email address listed below. Please note that after you close an account, you will not be able to sign in or access any of your personal information. However, you can open a new account at any time. Please also note that we may retain certain information associated with your account, including for analytical purposes as well as for record keeping integrity.</p></div></div></div><div id="paragraph_1687663" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Your choices with respect to collection and use of your information</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><ul style="-webkit-tap-highlight-color: transparent; margin-bottom: 15px; padding-left: 40px; font-family: inherit; font-size: 1rem; line-height: 1.6; list-style-type: disc;"><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">As discussed above, you can choose not to provide us with any information, although it may be needed to make travel bookings or to take advantage of certain features offered on our site.</li><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">You can add or update information and close your account as described above.</li><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">When you register as a member on our site, you will be given a choice as to whether you want to receive email messages from us about special offers. Whether registered as a member or not, you also will be given the opportunity to unsubscribe from commercial messages in any such email we send. Please note that we reserve the right to send you other communications, including service announcements, administrative messages, and surveys relating either to your account or to your transactions on this site, without offering you the opportunity to opt out of receiving them.</li><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">The Help portion of the toolbar on most browsers will tell you how to prevent your browser from accepting new cookies, how to have the browser notify you when you receive a new cookie, or how to disable cookies altogether. Please note that if you refuse to accept cookies from our site, you will not be able to access portions of this site</li></ul></div></div></div><div id="paragraph_1687664" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Cookies and other technologies</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">Cookies are small data text files and can be stored on your computer\'s hard drive (if your Web browser permits). This website use cookies for the following general purposes:</p><ul style="-webkit-tap-highlight-color: transparent; margin-bottom: 15px; padding-left: 40px; font-family: inherit; font-size: 1rem; line-height: 1.6; list-style-type: disc;"><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">To help us recognize your browser as a previous visitor and save and remember any preferences that may have been set while your browser was visiting this site. For example, if you register on this site, we may use cookies to remember your registration information. Please note that member IDs, passwords, and any other account-related data included in such cookies are encrypted for security purposes. Unless you register with us, these cookies will not contain any personal information.</li><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">To help us customize the content and advertisements provided to you on this website and on other sites across the Internet. For example, when you access a page on our website, a cookie is automatically set by us, our service providers, or our partners to recognize your browser as you navigate on the Internet and to present you with information and advertising based on your apparent interests.</li><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">To help measure and research the effectiveness of website features and offerings, advertisements, and email communications (by determining which emails you open and act upon).The Help portion of the toolbar on most browsers will tell you how to prevent your browser from accepting new cookies, how to have the browser notify you when you receive a new cookie, or how to disable cookies altogether. Please note that if you refuse to accept cookies, you may not be able to access many of the travel tools offered on our site.</li></ul><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">In addition to the above cookies, we use Local Shared Objects, also referred to as "flash cookies," on our website. These are used to enhance your user experience, for example, by storing your user preferences and settings, such as your volume/mute settings, and in connection with animated content on our website. Local Shared Objects are similar to browser cookies, but can store data more complex than simple text. By themselves, they cannot do anything to or with the data on your computer. Like other cookies, they can only access personally identifiable information that you have provided on this site, and cannot be accessed by other websites. To find out more about flash cookies or how to disable them, please click here:&nbsp;<a class="external" title="Find out more abot flash cookies" href="http://kb2.adobe.com/cps/526/52697ee8.html" target="_blank" data-link-target="blank" style="-webkit-tap-highlight-color: transparent; color: rgb(243, 113, 33); line-height: inherit; font-size: 0.8125rem; outline: 0px;">http://kb2.adobe.com/cps/526/52697ee8.html</a>. This site may also use Web beacons (also known as clear gifs, pixel tags or Web bugs), which are tiny graphics with a unique identifier, similar in function to cookies, that are placed in the code of a Web page. We use Web beacons to monitor the traffic patterns of users from one page within our site to another, to deliver or communicate with cookies, to understand whether you have come to this site from an online advertisement displayed on a third-party website, and to improve site performance. We also may allow our service providers to use Web beacons to help us understand which emails have been opened by recipients and to track the visitor traffic and actions on this site. This helps us measure the effectiveness of our content and other offerings. If you have any questions about our use of cookies or other technologies, please email us using our customer care.</p></div></div></div><div id="paragraph_1687665" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Data collected by this website to serve you with relevant advertising</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We are committed to providing you with relevant content and information. To do this, we may collect, through cookies and other technologies information about your travel-related searches, such as whether you are looking for rental cars, and use this information to serve you with ads, on our website or elsewhere online, that match your apparent interests. So, for example, if you search for a car rental in Florida on our site, you may see an ad for a Florida travel package on our site or on another website you visit.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">Please note that we do not combine the information we collect about your travel-related searches on this website with personal information (such as email address) to serve you with ads across other websites. We also do not share your personal information with third parties so they can serve you with advertisements. You can choose not to receive tailored online advertising on other websites, based on your travel-related searches on this website, by clicking here. Note that if you choose not to receive tailored ads, you will see online advertisements, but they will be more general and less relevant to you.</p></div></div></div><div id="paragraph_1687666" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Data collected by business partners and ad networks to serve you with relevant advertising</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">The advertisements you see on this website are served by us or by our service providers. But we also allow third parties to collect information about your online activities through cookies and other technologies. These third parties include (1) business partners, who collect information when you view or interact with one of their advertisements on our site, and (2) advertising networks, who collect information about your interests when you view or interact with one of the advertisements they place on many different websites on the Internet. The information gathered by these third parties is used to make predictions about your characteristics, interests or preferences and to display advertisements on our site and across the Internet tailored to your apparent interests. We do not permit these third parties to collect personal information about you on our site, nor do we share with them any personal information about you. These third parties may collect information about your interests, and the information practices of these third parties are not covered by this Privacy Policy. These companies may offer you a way to opt out of ad targeting based on their cookies. Some of these companies are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies. To learn more, please click&nbsp;<a class="external" title="Network Advertising Initiative" href="http://www.networkadvertising.org/" target="_blank" data-link-target="blank" style="-webkit-tap-highlight-color: transparent; color: rgb(243, 113, 33); line-height: inherit; font-size: 0.8125rem; outline: 0px;">here</a>.</p></div></div></div><div id="paragraph_1687667" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Data collected by companies that operate cookie-based exchanges to serve you with relevant advertising</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">Like other companies operating online, Expedia.com participates in cookie-based exchanges where anonymous information is collected about your browsing behavior through cookies and other technologies and segmented into different topics of interest (such as travel). These topics of interest are then shared with third parties, including advertisers and ad networks, so they can tailor advertisements to your apparent interests. We do not share personal information (such as your email address) with these companies and we do not permit these companies to collect any such information about you on our site. Please click&nbsp;<a class="external" title="Network Advertising Initiative" href="http://www.networkadvertising.org/" style="-webkit-tap-highlight-color: transparent; color: rgb(243, 113, 33); line-height: inherit; font-size: 0.8125rem; outline: 0px;">here</a>&nbsp;to learn more about cookie-based exchanges, including how to access information about the topics of interest associated with cookies on your computer and how to decline participation in these programs.</p></div></div></div><div id="paragraph_1687942" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Using the CarRentals.com mobile phone and tablet Apps (the "Mobile Apps")</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">When you use a CarRentals.com Mobile App, we collect and use information about you in the same way and for the same purposes as we do when you use our website.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">In addition to this, we also use some other information that we collect automatically when you use our Mobile Apps. Specifically:</p><ul style="-webkit-tap-highlight-color: transparent; margin-bottom: 15px; padding-left: 40px; font-family: inherit; font-size: 1rem; line-height: 1.6; list-style-type: disc;"><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">We collect information about Mobile App functionality that you access and use. This allows us to identify those areas of the Mobile App that are of interest to our customers so that we can refine and continuously improve the Mobile App. The information we collect for this purpose does not enable us to directly identify you.</li></ul><ul style="-webkit-tap-highlight-color: transparent; margin-bottom: 15px; padding-left: 40px; font-family: inherit; font-size: 1rem; line-height: 1.6; list-style-type: disc;"><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">Each Mobile App also sends us the device\'s unique device identifier (or "UID"), a sequence of numbers or characters that are unique to your mobile device. We use this only on the first opening of the Mobile App so that we can confirm to our advertising networks the number of downloads resulting from clicks on their respective ad banners and other marketing tools.</li></ul><ul style="-webkit-tap-highlight-color: transparent; margin-bottom: 15px; padding-left: 40px; font-family: inherit; font-size: 1rem; line-height: 1.6; list-style-type: disc;"><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">When you use a Mobile App, you can choose to allow access to your current location – provided by your mobile device using GPS or similar technologies – in order to identify nearby hotels or airports. If you choose to allow access, this location data may be collected anonymously as part of search requests logged by our servers. You can switch off the Mobile App’s access to your location at any time through your phone settings menu.</li></ul><ul style="-webkit-tap-highlight-color: transparent; margin-bottom: 15px; padding-left: 40px; font-family: inherit; font-size: 1rem; line-height: 1.6; list-style-type: disc;"><li style="-webkit-tap-highlight-color: transparent; font-size: 0.8125rem; line-height: 1.3125rem;">Each Mobile App will also send us error-reporting information in the event that it crashes or hangs. This enables us to investigate the error and to improve the stability of the Mobile App for future releases. As part of these error reports, the Mobile App sends us information about the mobile device type and version, the UID, the time the error occurred, the feature being used and the state of the application when the error occurred. We do not use this information for any purpose other than investigating and remedying the error.</li></ul><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">You always have the ability to control what information a Mobile App sends to us. You can exercise this control either by changing the settings of the Mobile App under its setting menu or changing the settings of your mobile device. Alternatively, you can remove the Mobile App from your mobile device entirely and access our services through our website.</p></div></div></div><div id="paragraph_1687668" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">How we protect your information</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We want you to feel confident about using this website to make travel arrangements, and we are committed to protecting the information we collect. While no website can guarantee security, we have implemented appropriate administrative, technical, and physical security procedures to help protect the personal information you provide to us. For example, only authorized employees are permitted to access personal information, and they only may do so for permitted business functions. In addition, we use encryption when transmitting your sensitive personal information between your system and ours, and we employ firewalls and intrusion detection systems to help prevent unauthorized persons from gaining access to your information.</p></div></div></div><div id="paragraph_1687669" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Children\'s privacy</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">This is a general audience website and does not offer services directed to children. Should a child whom we know to be under 13 send personal information to us, we will use that information only to respond directly to that child to inform him or her that we must have parental consent before receiving his or her personal information.</p></div></div></div><div id="paragraph_1687670" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">External links</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">If any part of this website links you to other sites, those sites do not operate under this Privacy Policy. We recommend you examine the privacy statements posted on those other websites to understand their procedures for collecting, using, and disclosing personal information.</p></div></div></div><div id="paragraph_1687671" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Visiting our website from outside the United States</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">If you are visiting our website from outside the United States, please be aware that your information may be transferred to, stored, and processed in the United States where our servers are located and our central database is operated. The data protection and other laws of the United States and other countries might not be as comprehensive as those in your country, but please be assured that we take steps to ensure that your privacy is protected. By using our services, you understand that your information may be transferred to our facilities and those third parties with whom we share it as described in this Policy.</p></div></div></div><div id="paragraph_1687943" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Agreement to CarRentals.com Terms of Use</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">Your use of the CarRentals.com Website is also subject to CarRentals.com’s&nbsp;<a class="internal" title="Terms of Use" href="https://www.carrentals.com/terms/" style="-webkit-tap-highlight-color: transparent; color: rgb(243, 113, 33); line-height: inherit; font-size: 0.8125rem; outline: 0px;">Terms of Use</a>.&nbsp; Any disputes related to this Privacy Policy shall be governed by the dispute resolution provisions of the Terms of Use (including but not limited to, its provisions concerning dispute arbitration) which are incorporated here by reference.&nbsp;</p></div></div></div><div id="paragraph_1687672" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">Changes to this Privacy Policy</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">We may update this Privacy Policy in the future. We will notify you about material changes to this Privacy Policy by sending a notice to the email address you provided to us or by placing a prominent notice on our website.</p></div></div></div><div id="paragraph_1687673" class="paragraph" style="-webkit-tap-highlight-color: transparent; margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px;"><div class="paragraph-panel" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px;"><h3 style="-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(243, 113, 33); font-family: Roboto, sans-serif; line-height: 1.375rem; text-rendering: optimizeLegibility; font-size: 1.125rem;">How you can contact us</h3><div class="text" style="-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 0.8125rem;"><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">If you have questions about either this Privacy Policy or your travel planning or purchases, please contact us at:</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;"><strong style="-webkit-tap-highlight-color: transparent; line-height: inherit;">Email:</strong><br style="-webkit-tap-highlight-color: transparent;"><a class="external" title="email us" href="mailto:support@carrentals.com" style="-webkit-tap-highlight-color: transparent; color: rgb(243, 113, 33); line-height: inherit; font-size: 0.8125rem; outline: 0px;">support@fantasy.com</a><br style="-webkit-tap-highlight-color: transparent;"><br style="-webkit-tap-highlight-color: transparent;"><strong style="-webkit-tap-highlight-color: transparent; line-height: inherit;">Address:</strong><br style="-webkit-tap-highlight-color: transparent;">Fantasy.com, Inc.</p><p style="-webkit-tap-highlight-color: transparent; margin-bottom: 30px; padding: 0px; font-family: inherit; font-size: 0.8125rem; line-height: 1.6; text-rendering: optimizeLegibility;">Last updated March 31, 2018</p></div></div></div>\r\n										');
INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(3, 'About Us ', 'aboutus', '<p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;">A&nbsp;<b>car rental</b>,&nbsp;<b>hire car</b>, or&nbsp;<b>car hire</b>&nbsp;agency is a company that&nbsp;<a href="https://en.wikipedia.org/wiki/Renting" title="Renting" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">rents</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Automobile" class="mw-redirect" title="Automobile" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">automobiles</a>&nbsp;for short periods of time, generally ranging from a few hours to a few weeks. It is often organized with numerous local&nbsp;<a href="https://en.wikipedia.org/wiki/Branch#Organizations" title="Branch" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">branches</a>&nbsp;(which allow a user to return a vehicle to a different location), and primarily located near&nbsp;<a href="https://en.wikipedia.org/wiki/Airport" title="Airport" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">airports</a>&nbsp;or busy city areas and often complemented by a website allowing online&nbsp;<a href="https://en.wikipedia.org/wiki/Computer_reservations_system" class="mw-redirect" title="Computer reservations system" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">reservations</a>.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;">Car rental agencies primarily serve people who require a temporary vehicle, for example, those who do not own their own car,&nbsp;<a href="https://en.wikipedia.org/wiki/Tourism" title="Tourism" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">travelers</a>&nbsp;who are out of town, or owners of damaged or destroyed vehicles who are awaiting repair or&nbsp;<a href="https://en.wikipedia.org/wiki/Auto_insurance" class="mw-redirect" title="Auto insurance" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">insurance</a>&nbsp;compensation. Car rental agencies may also serve the self-<a href="https://en.wikipedia.org/wiki/Moving_industry" class="mw-redirect" title="Moving industry" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">moving industry</a>&nbsp;needs, by renting&nbsp;<a href="https://en.wikipedia.org/wiki/Van" title="Van" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">vans</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/Truck" title="Truck" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">trucks</a>, and in certain markets, other types of vehicles such as motorcycles or scooters may also be offered.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;">Alongside the basic rental of a vehicle, car rental agencies typically also offer extra products such as insurance,&nbsp;<a href="https://en.wikipedia.org/wiki/Global_positioning_system" class="mw-redirect" title="Global positioning system" style="color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">global positioning system</a>&nbsp;(GPS) navigation systems, entertainment systems, mobile phones, portable WiFi and child safety seats.</p>'),
(11, 'FAQs', 'faqs', '																																								<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">You can change the FAQ content here from admin login.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'dodla.pradeep2014@vit.ac.in', '2018-03-31 08:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'dodla.pradeep2014@vit.ac.in', 'The Services provided by fantasy vehicle rentals is really amazing.', '2018-03-31 06:57:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Pradeep Reddy', 'some@email.com', 'somepassword', '9876543210', '23/10/1996', '', '', '', '2018-03-31 06:53:47', '2018-03-31 06:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(6, 'Evoque', 23, 'Land Rover has launched the new Range Rover Evoque Convertible in India priced at Rs 69.53 lakh, ex-showroom India. The Convertible is the first convertible SUV to be launched in India and despite being immensely stylish, it still retains all of its Land Rover characteristics. ', 7000, 'Diesel', 2018, 8, 'rr1.jpg', 'rr4.jpg', 'rr3.jpg', 'rr4.jpg', 'rr1.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-03-31 07:59:41', '2018-03-31 11:11:13'),
(7, 'XUV 700', 24, 'Underpinning the 2018 Mahindra XUV 700 is a new body-on-frame chassis that comes from Ssangyong. The traditional construction should improve the ruggedness of the upcoming SUV. Images show that the new SUV borrows in plenty from the design study. Design elements like a bold shoulder-line and flared wheel arches give this model a really aggressive stance. ', 5000, 'Diesel', 2018, 8, 'mr1.jpg', 'mr3.jpg', 'mr2.jpg', 'mr1.jpg', 'mr3.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-03-31 10:12:19', '2018-03-31 10:22:20'),
(8, 'King', 25, 'Harley-Davidson, Inc. (H-D), or Harley, is an American motorcycle manufacturer, founded in Milwaukee, Wisconsin in 1903. One of two major American motorcycle manufacturers to survive the Great Depression (along with Indian), the company has survived numerous ownership arrangements, subsidiary arrangements (e.g., Aermacchi 1974-1978 and Buell 1987-2009), periods of poor economic health and product quality, as well as intense global competition, to become one of the world\'s largest motorcycle manufacturers and an iconic brand widely known for its loyal following. There are owner clubs and events worldwide as well as a company-sponsored brand-focused museum.', 6000, 'Petrol', 2017, 2, 'hr1.jpg', 'hr2.jpg', 'hr3.jpg', 'hr4.jpg', 'hr5.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-03-31 10:59:17', '2018-03-31 11:10:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
