-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2020 at 10:15 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.3.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karcis`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `icon`) VALUES
(1, 'AC', 'default.png'),
(2, 'Tempat Parkir', 'default.png'),
(3, 'WiFi', 'default.png'),
(4, 'Breakfast', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `balance` decimal(12,2) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `user_id`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(2, 2, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(3, 3, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(4, 4, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(5, 5, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(6, 6, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(7, 7, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(8, 8, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(9, 9, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(10, 10, '1000.00', '2020-01-25 14:52:36', '2020-01-25 14:52:36'),
(11, 11, '1995592.00', '2020-01-25 14:52:55', '2020-01-25 15:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `balance_histories`
--

CREATE TABLE `balance_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `balance_id` int(10) UNSIGNED DEFAULT NULL,
  `balance` decimal(12,2) DEFAULT NULL,
  `top_up` decimal(12,2) DEFAULT '0.00',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance_histories`
--

INSERT INTO `balance_histories` (`id`, `user_id`, `balance_id`, `balance`, `top_up`, `created_at`, `updated_at`) VALUES
(1, 11, 11, '1000.00', '0.00', '2020-01-25 14:52:55', '2020-01-25 14:52:55'),
(2, 11, 11, '3001000.00', '3000000.00', '2020-01-25 14:53:12', '2020-01-25 14:53:12'),
(3, 11, 11, '1249648.00', '0.00', '2020-01-25 14:53:25', '2020-01-25 14:53:25'),
(4, 11, 11, '7249648.00', '6000000.00', '2020-01-25 14:54:22', '2020-01-25 14:54:22'),
(5, 11, 11, '5498296.00', '0.00', '2020-01-25 14:54:32', '2020-01-25 14:54:32'),
(6, 11, 11, '3746944.00', '0.00', '2020-01-25 15:04:02', '2020-01-25 15:04:02'),
(7, 11, 11, '1995592.00', '0.00', '2020-01-25 15:07:22', '2020-01-25 15:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`) VALUES
(1, 'Bandung', 9),
(2, 'Jakarta', 6),
(3, 'Solo', 10),
(4, 'Surabaya', 11);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `address` text,
  `star` int(11) DEFAULT '1',
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `description`, `address`, `star`, `city_id`, `latitude`, `longitude`, `province_id`) VALUES
(1, 'Wilkinson, Schoen and Okuneva', 'Sunt sequi et. Modi occaecati sed consectetur sapiente praesentium minima nesciunt consequuntur fugiat. Dignissimos quis temporibus qui sapiente autem consectetur vitae. Porro illum aut quisquam beatae.', '17115 Jameson Hills Suite 898', 4, 1, '-89.4549', '12.1502', 1),
(2, 'Schuster and Sons', 'Est rerum minus tenetur consectetur eligendi aliquam culpa quis. Harum sequi laboriosam consequatur laudantium esse. Maiores quam excepturi rerum dolorem ducimus esse quibusdam sit.', '0026 Justyn Union Apt. 883', 1, 1, '37.0535', '68.5456', 1),
(3, 'Koch, Cronin and Larson', 'Nobis natus quis cum non. Necessitatibus similique quo vel. Quia suscipit optio consectetur eaque animi corporis. Rerum voluptatibus qui quia similique dolorem voluptatibus. Fugit laboriosam quos. Sit quia fugit eum voluptatem.', '74948 Lebsack Mission Suite 742', 3, 1, '-68.9909', '-178.8180', 1),
(4, 'Koelpin LLC', 'Reprehenderit et sunt similique. Et vel nulla et et voluptatum doloremque. Ad hic officiis. Debitis aut delectus amet vel.', '3632 Asia Street Suite 901', 1, 1, '-40.1553', '-108.5349', 1),
(5, 'Reinger, Fay and Buckridge', 'Odio quam consequatur corrupti hic. Nihil non reprehenderit. Qui repudiandae sed quos quisquam quas autem et. Dolores veniam facere minima.', '82379 Garrison Well Suite 305', 4, 1, '35.5024', '144.4945', 1),
(6, 'Yundt Inc', 'Culpa officiis dolore sed neque recusandae nostrum dolor. Mollitia numquam quo enim quod aut nemo. Odio alias occaecati laborum quis perspiciatis. Excepturi repudiandae voluptate in nemo beatae et fugiat adipisci repellat.', '04665 Shayne Circles Apt. 936', 1, 1, '-80.3018', '169.4133', 1),
(7, 'Hauck and Sons', 'Nemo consequuntur quia rem. Nihil necessitatibus corrupti et. Excepturi beatae sunt omnis qui qui. Nam rem fugit architecto est voluptas est accusantium.', '15543 Reynolds Greens Apt. 931', 0, 1, '6.9045', '-37.5028', 1),
(8, 'Stoltenberg, Franecki and Kulas', 'Ratione eligendi laborum. Qui officiis quia cumque. Autem eveniet odio sapiente optio illum recusandae vitae enim aut. Amet dicta dignissimos facilis qui modi consequatur asperiores ut. Eum facilis quis rerum deleniti eligendi quia odio officiis impedit.', '73509 Hailie Skyway Apt. 617', 1, 1, '22.5477', '24.4366', 1),
(9, 'Schulist - Terry', 'Velit nam aut molestiae vel a harum. Minima et vel nam eos itaque non reprehenderit assumenda. Nisi ad minima magnam quod excepturi minima. Possimus praesentium voluptatibus ut fuga quibusdam quia qui.', '7820 Santina Views Suite 661', 4, 1, '82.0924', '-101.1465', 1),
(10, 'Zieme - Dietrich', 'Quidem facere in ipsam qui blanditiis rerum et suscipit. Dolorem quos amet voluptas recusandae at eligendi nulla dolorem. Id voluptates voluptatibus necessitatibus voluptates sapiente soluta aut. Rem non distinctio est. Iusto quia ut reprehenderit qui.', '497 Cartwright Island Apt. 000', 4, 1, '36.0488', '97.1120', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_amenities`
--

CREATE TABLE `hotel_amenities` (
  `amenities_id` int(10) UNSIGNED DEFAULT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_amenities`
--

INSERT INTO `hotel_amenities` (`amenities_id`, `hotel_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(3, 1),
(1, 2),
(4, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(2, 2),
(4, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(3, 9),
(2, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`id`, `hotel_id`, `filename`, `created_at`) VALUES
(1, 1, 'default.png', '2020-01-25 14:52:34'),
(2, 2, 'default.png', '2020-01-25 14:52:34'),
(3, 3, 'default.png', '2020-01-25 14:52:34'),
(4, 4, 'default.png', '2020-01-25 14:52:34'),
(5, 5, 'default.png', '2020-01-25 14:52:34'),
(6, 6, 'default.png', '2020-01-25 14:52:34'),
(7, 7, 'default.png', '2020-01-25 14:52:34'),
(8, 8, 'default.png', '2020-01-25 14:52:34'),
(9, 9, 'default.png', '2020-01-25 14:52:34'),
(10, 10, 'default.png', '2020-01-25 14:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_orders`
--

CREATE TABLE `hotel_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `room_type_id` int(10) UNSIGNED DEFAULT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `room_count` int(11) DEFAULT '1',
  `guest_count` int(11) DEFAULT '1',
  `cost` decimal(12,2) DEFAULT NULL,
  `subtotal` decimal(12,2) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT '1',
  `message` text,
  `is_complete` tinyint(1) DEFAULT '0',
  `is_canceled` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_orders`
--

INSERT INTO `hotel_orders` (`id`, `user_id`, `room_type_id`, `hotel_id`, `room_count`, `guest_count`, `cost`, `subtotal`, `check_in`, `check_out`, `duration`, `message`, `is_complete`, `is_canceled`, `created_at`, `updated_at`) VALUES
(3, 11, 1, 1, 1, 1, '1751352.00', '1751352.00', '2020-01-25 00:00:00', '2020-01-26 00:00:00', 1, NULL, 1, 0, '2020-01-25 15:04:02', '2020-01-25 15:05:27'),
(4, 11, 1, 1, 1, 1, '1751352.00', '1751352.00', '2020-01-25 00:00:00', '2020-01-26 00:00:00', 1, NULL, 0, 1, '2020-01-25 15:07:22', '2020-01-25 15:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `room_type_id` int(10) UNSIGNED DEFAULT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` decimal(12,2) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`room_type_id`, `hotel_id`, `cost`, `capacity`, `description`) VALUES
(1, 1, '1751352.00', 2, 'Hic odit a soluta qui excepturi a. Minus repudiandae ad tempora voluptas in. Voluptatum aut eum ut sit est. Accusamus asperiores magni reprehenderit. Tempora qui necessitatibus cupiditate fugiat excepturi vel. Qui officia voluptas velit necessitatibus laboriosam asperiores sit suscipit omnis.'),
(2, 1, '1865748.00', 2, 'Qui laudantium ex accusamus in. Alias necessitatibus ut doloribus ea quia quis numquam at. Sed sed recusandae sapiente reprehenderit illo praesentium aut rerum quas. Quasi ut fuga. Qui quo incidunt nisi aliquam recusandae. Sequi ut aliquid voluptates veritatis assumenda ut.'),
(3, 2, '1299356.00', 2, 'Error dolores labore minima ullam dolore quidem saepe. In eius nostrum accusantium et est ut. Dolore sunt et ratione. Asperiores adipisci consequuntur quisquam. Aliquid et voluptatem id quia unde atque. Aspernatur a quidem est molestiae vero veniam.'),
(4, 2, '693745.00', 2, 'Possimus et omnis tempora eum aliquid sint. Dolores occaecati et aut reprehenderit voluptatem illum quaerat. Et beatae perferendis neque at illo nihil quidem soluta. Doloremque aut magnam deleniti ipsum in. Dolores accusamus et aspernatur voluptatem neque dolorum voluptas libero et. Quam et natus officia nulla aut tempora.'),
(2, 2, '141680.00', 2, 'Et consequatur accusamus libero praesentium voluptatibus. Enim suscipit quasi laudantium et deserunt ipsum ea expedita. Ratione quam repellendus aperiam quasi culpa sit amet ipsa. Nesciunt dolorem ut enim quis accusamus expedita est a adipisci. Quia velit explicabo et soluta consequatur doloribus rem. Id asperiores iusto est commodi dolorem a accusamus non reiciendis.'),
(1, 3, '562606.00', 2, 'Officia et repellat nam voluptate eaque a quibusdam. Provident deleniti eligendi iure repellendus vero ut saepe reprehenderit. Quaerat dolor optio ea sint architecto modi. Cumque voluptatem porro. Laboriosam sed molestias non consequatur.'),
(1, 2, '1434180.00', 2, 'Autem eum est sapiente recusandae. Reiciendis esse animi dolor corrupti molestiae voluptatem blanditiis inventore deserunt. Sint adipisci qui inventore qui consequatur adipisci quaerat consequuntur voluptatem. Voluptates in qui sed.'),
(5, 2, '1472745.00', 2, 'Exercitationem omnis consequatur sit sint odit doloribus et magni. Quasi est ipsum sunt. Eligendi rerum modi eveniet. Perferendis doloribus recusandae id sit consequatur quas. Excepturi ut architecto a molestias perferendis repellat.'),
(4, 1, '383414.00', 2, 'Facilis odio natus. Totam optio quam eius voluptates debitis necessitatibus quia. Doloribus molestias fugiat corrupti qui sed harum. Voluptatem harum nobis corrupti ut et sed sed sunt incidunt.'),
(3, 1, '108156.00', 2, 'Magnam perspiciatis quia tenetur fugit. Beatae facere aut quia sunt distinctio exercitationem omnis. Qui dignissimos omnis et porro.'),
(5, 1, '2803.00', 2, 'Earum aut magni laudantium assumenda tenetur. Expedita voluptatum magni quo et vel alias aut placeat ipsum. Molestiae dolore saepe quam modi aut ea occaecati ea sit. Aut culpa ipsam dolorem provident voluptates. Ut iure temporibus. Necessitatibus fuga veritatis dicta libero non cumque tempore qui inventore.'),
(2, 3, '1500451.00', 2, 'Labore nemo doloribus maxime nam ut at sit quos et. Quis voluptatem quia eum. Dignissimos a nulla veritatis nihil quo non dolor quod.'),
(3, 3, '1591412.00', 2, 'Voluptates totam dolores aliquam ut accusamus. Labore aspernatur ut error consequuntur eum qui dolorum optio et. Praesentium omnis amet fugiat dolor debitis libero voluptate voluptas accusantium. Architecto rerum minus voluptatum. Et earum non soluta blanditiis aliquam aut dolores sit.'),
(4, 3, '1409958.00', 2, 'Aspernatur incidunt provident minus a voluptatem consequatur. Repellendus nihil aut. Necessitatibus repellendus eum pariatur hic. Odio accusantium magnam architecto minima et ad aut hic. Magni asperiores labore. Pariatur ullam occaecati consequuntur.'),
(5, 3, '1255114.00', 2, 'Enim eveniet enim dolorem culpa possimus alias dolorem praesentium et. Omnis dolorum itaque perferendis dolore aliquid sapiente nemo ipsa aut. Qui deleniti quasi consequuntur exercitationem quo laboriosam itaque enim amet. Molestiae deleniti nostrum aut enim qui dolores animi non. Blanditiis ut aut qui voluptate cupiditate in dolores modi dolorem.'),
(1, 4, '765278.00', 2, 'Fuga enim consectetur id ipsa quo. Magnam hic delectus suscipit amet repellendus architecto. Ratione dolores non nihil est vel.'),
(2, 4, '1827110.00', 2, 'Vitae delectus quasi eum velit non est. Voluptatem aut nobis et doloremque. Aut illo maiores commodi tenetur. Excepturi omnis ratione nemo voluptates aut. Veritatis et unde.'),
(3, 4, '913903.00', 2, 'Quisquam ea adipisci quo facilis et ratione eos ex. Incidunt qui officiis quod officia. Aut dolor non ab. Dolorem et occaecati voluptatem architecto qui laudantium aliquam.'),
(4, 4, '659141.00', 2, 'Officia laudantium culpa vel nostrum eius exercitationem qui aut. Et ipsa ut. Voluptatibus quo sint mollitia et ratione fuga omnis et.'),
(5, 4, '564710.00', 2, 'Repudiandae commodi rem sit ipsam eos. Ex laborum in beatae. Aut excepturi qui. Dolore vero sunt voluptates et accusantium iusto minus eligendi. At omnis incidunt. Dolor omnis et.'),
(1, 5, '52905.00', 2, 'Modi praesentium excepturi dolor aperiam. Et dolorem sint quia et. Excepturi nihil repudiandae accusamus placeat excepturi perferendis expedita dolores culpa. Laudantium nostrum in distinctio. Voluptatibus et voluptatem.'),
(2, 5, '583957.00', 2, 'Sit quod ipsum. Reiciendis id nesciunt aliquid non officia aut rerum. Ut alias facere. Ea doloribus et voluptatem nobis suscipit ab vitae qui quo. Voluptas quia delectus molestias perferendis. Vero aperiam soluta veritatis qui facere id.'),
(3, 5, '519312.00', 2, 'Et veritatis soluta. Est voluptas sapiente minima mollitia. In blanditiis veniam vero non non voluptatem sit. Et earum optio nulla. Sunt debitis aliquid et. Deserunt necessitatibus vitae illum aut quis voluptatem.'),
(4, 5, '1236744.00', 2, 'Cupiditate et et qui et alias minus odit. Sunt vitae sed. Est tempore nemo et quam in soluta quia odio. Est est qui optio. Praesentium consequatur est. Et illo similique sequi et natus quisquam est dolorum et.'),
(5, 5, '583022.00', 2, 'Aut sapiente deleniti. Similique non explicabo sed voluptas in ipsa consequatur. Iure doloremque nulla beatae alias cupiditate. Ipsa voluptas architecto impedit minus voluptatum ab est voluptatum quia. Possimus saepe quo aut rerum nisi. Earum aut voluptatem necessitatibus totam distinctio distinctio.'),
(1, 6, '934239.00', 2, 'Est qui molestias velit vero ea molestiae. Voluptas nemo est soluta explicabo eveniet et. Ullam nam vel et voluptate laborum neque nisi sit magni. Praesentium qui saepe minus et.'),
(2, 6, '1051806.00', 2, 'Et et rerum qui et recusandae. Dolor illum et in repellendus suscipit earum. Sed consectetur quia. Ea aut voluptas laudantium dolores sequi voluptatem optio et.'),
(3, 6, '1363485.00', 2, 'Qui quos quis suscipit ut sed. Accusamus quidem illo repudiandae asperiores. Autem minima ducimus odit in laboriosam qui est harum ducimus. Ducimus voluptas facilis maxime corporis non voluptatum sit deserunt.'),
(4, 6, '305433.00', 2, 'Molestiae aut nam veritatis aut sunt nisi amet eum quidem. Ad voluptatem blanditiis autem impedit aspernatur ipsam a. Illum omnis molestiae vel assumenda quis officiis accusantium iste. Qui aut consequatur. Accusantium id facere quo consequatur dolorem. Placeat nam assumenda minima veritatis sunt perferendis.'),
(5, 6, '1313780.00', 2, 'Eum et rerum. Esse iusto officia alias fuga natus adipisci iusto qui. Iusto repellat voluptatem debitis libero quisquam eius ducimus. Placeat voluptatem laudantium magnam quibusdam ullam quaerat maiores exercitationem iusto. Eligendi aperiam pariatur dolore aliquid velit.'),
(1, 7, '116089.00', 2, 'Rerum commodi quaerat sit voluptas. Ut id dolor fugiat. Est omnis ullam quas voluptatem saepe vero.'),
(2, 7, '1886995.00', 2, 'Et nihil enim nihil rerum laborum ut in suscipit. Ut ipsum saepe natus in et quasi eum. Ullam aut deserunt inventore. Distinctio tenetur sed quia.'),
(3, 7, '520665.00', 2, 'Quae hic nam neque dolor voluptas pariatur. Rerum iste accusantium facere accusantium animi dolores. Fuga quasi enim mollitia velit id qui.'),
(4, 7, '590991.00', 2, 'Perferendis suscipit dolorum illo explicabo suscipit. Voluptatibus ut reprehenderit a sed voluptatem in. Et dignissimos assumenda id quam in ducimus sint quam. Quod quia corporis exercitationem nesciunt voluptates dicta accusamus quo.'),
(5, 7, '1375639.00', 2, 'Sapiente enim vel ut quam. Deserunt quia nemo. Eligendi quia sed ex omnis quis. Sapiente consequatur fugiat officia. Laudantium tenetur provident.'),
(1, 8, '1042209.00', 2, 'Velit eaque officiis. Asperiores in quo. Cum aliquam quisquam.'),
(2, 8, '608226.00', 2, 'Quia sed mollitia eum tempore in dolores. Harum in perspiciatis laboriosam. Saepe nam autem doloribus nobis quas. Repellendus earum eos vel consequatur. Itaque hic ea minus rem accusamus quos fuga deserunt quibusdam.'),
(3, 8, '396736.00', 2, 'Minima enim soluta libero error. Necessitatibus quam doloremque. Animi ut ut. Quia aliquid et harum voluptatibus omnis aspernatur ut ipsa perspiciatis. Pariatur animi eum earum officiis aut repellendus.'),
(4, 8, '421033.00', 2, 'Consequuntur facere non et ipsum cupiditate non quos reprehenderit laudantium. Atque molestias quia sequi enim maxime unde libero. Dolore a eveniet et animi. Repellat voluptate sint soluta qui occaecati doloremque.'),
(5, 8, '1191899.00', 2, 'Possimus sit ea non labore. Cumque laudantium occaecati officiis dolore dolor harum quia. Sed dolores suscipit. Nulla repellat velit minus. Qui numquam hic.'),
(1, 9, '3862.00', 2, 'Et vel fugit voluptatem eius. Aut voluptatem expedita qui culpa cupiditate aspernatur alias eos. Atque nihil fuga ut mollitia esse. Eaque quia rerum veniam. Nisi debitis voluptatem aperiam sed quos fuga.'),
(2, 9, '82901.00', 2, 'Qui ea eum quae sit iste et eos. Impedit quibusdam dolore rem tempora sit perferendis. Consequatur dicta ex doloribus aliquid ducimus accusamus quaerat.'),
(3, 9, '1127976.00', 2, 'Placeat culpa eveniet et voluptas et. Occaecati repudiandae suscipit velit enim dignissimos dolorem veritatis neque eum. Ducimus voluptatem quasi nam placeat amet magnam dolore minus. Et quaerat sed. Labore repellendus eum ut suscipit in sapiente sunt unde dolorum. Enim et quia perferendis eos at.'),
(4, 9, '1633707.00', 2, 'Tenetur et ipsa aut et perspiciatis corrupti dolore quae. Deserunt repellat harum quo debitis. Quis aperiam praesentium vel ullam totam.'),
(1, 10, '258414.00', 2, 'Repellat nesciunt et facere cum iusto assumenda facilis molestiae ut. Id eum ratione. Sit et officia unde repudiandae voluptatum.'),
(5, 9, '363847.00', 2, 'Repellendus ut quisquam consectetur repellendus totam. Voluptas fuga sequi voluptatibus ab debitis consequatur doloribus molestiae laudantium. Voluptatem est consequuntur explicabo sed consequatur consectetur magni sapiente. Officiis saepe magnam dolores sed ipsum minus.'),
(2, 10, '1931626.00', 2, 'Dolor modi dolor facere et aspernatur vel dolorem. Mollitia magni impedit molestias. Sint cupiditate iusto sunt molestiae laboriosam. Velit deleniti qui ab nobis quisquam neque. Est aut consequatur.'),
(3, 10, '898168.00', 2, 'Minus magni aliquam animi asperiores voluptas velit. Voluptatibus voluptatibus et magni eligendi non cum. Ipsum totam enim ex. Qui tempore non consequuntur odit voluptatem et ea minima quia. Vel consequatur laudantium harum ullam placeat. Ex ex reiciendis expedita vel aperiam est reiciendis occaecati.'),
(4, 10, '1027331.00', 2, 'Minus soluta ad et ipsa vitae enim delectus vel. Nihil architecto aliquam aut sunt est. Nemo eum aperiam rerum nulla velit dolorem dolores aut dolore.'),
(5, 10, '1059253.00', 2, 'Ipsum ut quisquam sed porro. Tenetur et aut tempora provident asperiores sint ut et dignissimos. Quia vitae veniam recusandae nihil dolorem.');

-- --------------------------------------------------------

--
-- Table structure for table `knex_migrations`
--

CREATE TABLE `knex_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knex_migrations`
--

INSERT INTO `knex_migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
(91, '20200121190637_users.js', 1, '2020-01-25 07:52:21'),
(92, '20200121203733_province.js', 1, '2020-01-25 07:52:21'),
(93, '20200121204111_city.js', 1, '2020-01-25 07:52:21'),
(94, '20200121211255_hotels.js', 1, '2020-01-25 07:52:21'),
(95, '20200121212131_amenities.js', 1, '2020-01-25 07:52:21'),
(96, '20200121212309_hotel_amenities.js', 1, '2020-01-25 07:52:22'),
(97, '20200121212540_room_types.js', 1, '2020-01-25 07:52:22'),
(98, '20200121212700_hotel_rooms.js', 1, '2020-01-25 07:52:22'),
(99, '20200121213027_room_amenities.js', 1, '2020-01-25 07:52:23'),
(100, '20200121214154_room_ratings.js', 1, '2020-01-25 07:52:23'),
(101, '20200121215225_room_costs.js', 1, '2020-01-25 07:52:24'),
(102, '20200121230655_revoked_token.js', 1, '2020-01-25 07:52:24'),
(103, '20200122042142_otp_codes.js', 1, '2020-01-25 07:52:24'),
(104, '20200122202037_hotel_images.js', 1, '2020-01-25 07:52:24'),
(105, '20200122202431_room_images.js', 1, '2020-01-25 07:52:25'),
(106, '20200123163221_balance.js', 1, '2020-01-25 07:52:25'),
(107, '20200123163350_balance_history.js', 1, '2020-01-25 07:52:25'),
(108, '20200125022252_orders.js', 1, '2020-01-25 07:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `knex_migrations_lock`
--

CREATE TABLE `knex_migrations_lock` (
  `index` int(10) UNSIGNED NOT NULL,
  `is_locked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knex_migrations_lock`
--

INSERT INTO `knex_migrations_lock` (`index`, `is_locked`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `otp_codes`
--

CREATE TABLE `otp_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expired_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `revoked_token`
--

CREATE TABLE `revoked_token` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `revoked_token`
--

INSERT INTO `revoked_token` (`id`, `token`, `is_revoked`, `created_at`, `updated_at`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEsImZpcnN0X25hbWUiOiJNb2NoaGFtYWQiLCJsYXN0X25hbWUiOiJSYWZmaSBSYW1kaGFuaSIsImVtYWlsIjoicmFmZmlyYW1kaGFuaTQwQGdtYWlsLmNvbSIsImlhdCI6MTU3OTkzODc3NX0.EafncEZJtbfcYc3unOhuMMB4FJPma52gOipOGeMvNHw', NULL, '2020-01-25 14:52:55', '2020-01-25 14:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `room_amenities`
--

CREATE TABLE `room_amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `amenities_id` int(10) UNSIGNED DEFAULT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `room_type_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` decimal(12,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_amenities`
--

INSERT INTO `room_amenities` (`id`, `amenities_id`, `hotel_id`, `room_type_id`, `cost`) VALUES
(1, 1, 1, 1, '89147.00'),
(2, 2, 1, 1, '31234.00'),
(3, 3, 1, 3, '75694.00'),
(4, 4, 1, 3, '79207.00'),
(5, 1, 1, 2, '26307.00'),
(6, 3, 1, 1, '48879.00'),
(7, 4, 1, 2, '9562.00'),
(8, 2, 1, 2, '52864.00'),
(9, 4, 1, 1, '20289.00'),
(10, 1, 1, 3, '36267.00'),
(11, 2, 1, 3, '9838.00'),
(12, 3, 1, 2, '4964.00'),
(13, 1, 1, 4, '64156.00'),
(14, 2, 1, 4, '69508.00'),
(15, 3, 1, 4, '87754.00'),
(16, 4, 1, 4, '78164.00'),
(17, 1, 1, 5, '10478.00'),
(18, 2, 1, 5, '49587.00'),
(19, 3, 1, 5, '80259.00'),
(20, 4, 1, 5, '12223.00'),
(21, 1, 2, 1, '14980.00'),
(22, 2, 2, 1, '30350.00'),
(23, 3, 2, 1, '16920.00'),
(24, 4, 2, 1, '94318.00'),
(25, 1, 2, 2, '3706.00'),
(26, 2, 2, 2, '86844.00'),
(27, 3, 2, 2, '70252.00'),
(28, 4, 2, 2, '61424.00'),
(29, 1, 2, 3, '9627.00'),
(30, 2, 2, 3, '90796.00'),
(31, 3, 2, 3, '23612.00'),
(32, 4, 2, 3, '12486.00'),
(33, 1, 2, 4, '85058.00'),
(34, 2, 2, 4, '38314.00'),
(35, 3, 2, 4, '3255.00'),
(36, 4, 2, 4, '83726.00'),
(37, 1, 2, 5, '90466.00'),
(38, 2, 2, 5, '80395.00'),
(39, 3, 2, 5, '76606.00'),
(40, 4, 2, 5, '59571.00'),
(41, 1, 3, 1, '85585.00'),
(42, 2, 3, 1, '26062.00'),
(43, 3, 3, 1, '62390.00'),
(44, 4, 3, 1, '75312.00'),
(45, 1, 3, 2, '74011.00'),
(46, 2, 3, 2, '40557.00'),
(47, 3, 3, 2, '12034.00'),
(48, 4, 3, 2, '98013.00'),
(49, 1, 3, 3, '24902.00'),
(50, 2, 3, 3, '48627.00'),
(51, 3, 3, 3, '25589.00'),
(52, 4, 3, 3, '56601.00'),
(53, 1, 3, 4, '28910.00'),
(54, 2, 3, 4, '96788.00'),
(55, 3, 3, 4, '61075.00'),
(56, 4, 3, 4, '6111.00'),
(57, 2, 3, 5, '75243.00'),
(58, 1, 3, 5, '71180.00'),
(59, 3, 3, 5, '72081.00'),
(60, 4, 3, 5, '4145.00'),
(61, 1, 4, 1, '43498.00'),
(62, 2, 4, 1, '96727.00'),
(63, 3, 4, 1, '87826.00'),
(64, 4, 4, 1, '13251.00'),
(65, 1, 4, 2, '82710.00'),
(66, 2, 4, 2, '34269.00'),
(67, 3, 4, 2, '78057.00'),
(68, 4, 4, 2, '4627.00'),
(69, 1, 4, 3, '31639.00'),
(70, 2, 4, 3, '72202.00'),
(71, 4, 4, 3, '37826.00'),
(72, 1, 4, 4, '86487.00'),
(73, 3, 4, 3, '6592.00'),
(74, 2, 4, 4, '22506.00'),
(75, 3, 4, 4, '67839.00'),
(76, 4, 4, 4, '10.00'),
(77, 1, 4, 5, '25011.00'),
(78, 2, 4, 5, '32945.00'),
(79, 3, 4, 5, '42397.00'),
(80, 4, 4, 5, '83248.00'),
(81, 1, 5, 1, '29045.00'),
(82, 2, 5, 1, '72376.00'),
(83, 3, 5, 1, '24472.00'),
(84, 4, 5, 1, '77496.00'),
(85, 1, 5, 2, '84166.00'),
(86, 2, 5, 2, '55015.00'),
(87, 3, 5, 2, '59543.00'),
(88, 2, 5, 3, '99889.00'),
(89, 4, 5, 2, '97227.00'),
(90, 1, 5, 3, '10102.00'),
(91, 3, 5, 3, '55948.00'),
(92, 4, 5, 3, '35189.00'),
(93, 2, 5, 4, '62382.00'),
(94, 1, 5, 4, '68164.00'),
(95, 3, 5, 4, '45840.00'),
(96, 4, 5, 4, '45785.00'),
(97, 1, 5, 5, '96140.00'),
(98, 2, 5, 5, '45517.00'),
(99, 3, 5, 5, '86436.00'),
(100, 4, 5, 5, '72691.00'),
(101, 1, 6, 1, '79577.00'),
(102, 2, 6, 1, '71158.00'),
(103, 3, 6, 1, '27704.00'),
(104, 4, 6, 1, '71507.00'),
(105, 1, 6, 2, '90972.00'),
(106, 2, 6, 2, '30375.00'),
(107, 3, 6, 2, '11369.00'),
(108, 4, 6, 2, '42708.00'),
(109, 1, 6, 3, '49013.00'),
(110, 2, 6, 3, '77082.00'),
(111, 3, 6, 3, '19600.00'),
(112, 4, 6, 3, '58325.00'),
(113, 1, 6, 4, '6752.00'),
(114, 2, 6, 4, '96202.00'),
(115, 3, 6, 4, '36307.00'),
(116, 4, 6, 4, '41945.00'),
(117, 1, 6, 5, '84217.00'),
(118, 2, 6, 5, '930.00'),
(119, 3, 6, 5, '65138.00'),
(120, 4, 6, 5, '89866.00'),
(121, 1, 7, 1, '41563.00'),
(122, 2, 7, 1, '13973.00'),
(123, 3, 7, 1, '71832.00'),
(124, 4, 7, 1, '96905.00'),
(125, 1, 7, 2, '54774.00'),
(126, 2, 7, 2, '79969.00'),
(127, 3, 7, 2, '21447.00'),
(128, 4, 7, 2, '46618.00'),
(129, 1, 7, 3, '97423.00'),
(130, 2, 7, 3, '5710.00'),
(131, 3, 7, 3, '68970.00'),
(132, 4, 7, 3, '73324.00'),
(133, 1, 7, 4, '61210.00'),
(134, 2, 7, 4, '90966.00'),
(135, 3, 7, 4, '75348.00'),
(136, 4, 7, 4, '64502.00'),
(137, 1, 7, 5, '78624.00'),
(138, 2, 7, 5, '87240.00'),
(139, 3, 7, 5, '11602.00'),
(140, 4, 7, 5, '15469.00'),
(141, 1, 8, 1, '64040.00'),
(142, 2, 8, 1, '9708.00'),
(143, 3, 8, 1, '15184.00'),
(144, 4, 8, 1, '2038.00'),
(145, 1, 8, 2, '29649.00'),
(146, 2, 8, 2, '3188.00'),
(147, 3, 8, 2, '58047.00'),
(148, 4, 8, 2, '14183.00'),
(149, 1, 8, 3, '29994.00'),
(150, 2, 8, 3, '24335.00'),
(151, 3, 8, 3, '73681.00'),
(152, 4, 8, 3, '27372.00'),
(153, 1, 8, 4, '84619.00'),
(154, 2, 8, 4, '87114.00'),
(155, 3, 8, 4, '39202.00'),
(156, 4, 8, 4, '42339.00'),
(157, 1, 8, 5, '14834.00'),
(158, 2, 8, 5, '89216.00'),
(159, 3, 8, 5, '7217.00'),
(160, 4, 8, 5, '64260.00'),
(161, 1, 9, 1, '50062.00'),
(162, 2, 9, 1, '13084.00'),
(163, 3, 9, 1, '81226.00'),
(164, 4, 9, 1, '5913.00'),
(165, 1, 9, 2, '61095.00'),
(166, 2, 9, 2, '44025.00'),
(167, 3, 9, 2, '7249.00'),
(168, 4, 9, 2, '7289.00'),
(169, 1, 9, 3, '71886.00'),
(170, 2, 9, 3, '23455.00'),
(171, 3, 9, 3, '61676.00'),
(172, 4, 9, 3, '41166.00'),
(173, 1, 9, 4, '87161.00'),
(174, 2, 9, 4, '55547.00'),
(175, 3, 9, 4, '5290.00'),
(176, 4, 9, 4, '46968.00'),
(177, 1, 9, 5, '30582.00'),
(178, 2, 9, 5, '67284.00'),
(179, 3, 9, 5, '11350.00'),
(180, 4, 9, 5, '59749.00'),
(181, 1, 10, 1, '1750.00'),
(182, 2, 10, 1, '10421.00'),
(183, 3, 10, 1, '28314.00'),
(184, 4, 10, 1, '64681.00'),
(185, 1, 10, 2, '33849.00'),
(186, 2, 10, 2, '20392.00'),
(187, 3, 10, 2, '9966.00'),
(188, 4, 10, 2, '10881.00'),
(189, 1, 10, 3, '95189.00'),
(190, 2, 10, 3, '49583.00'),
(191, 3, 10, 3, '39529.00'),
(192, 4, 10, 3, '87936.00'),
(193, 1, 10, 4, '66725.00'),
(194, 2, 10, 4, '6974.00'),
(195, 3, 10, 4, '29599.00'),
(196, 4, 10, 4, '73946.00'),
(197, 1, 10, 5, '7941.00'),
(198, 2, 10, 5, '13068.00'),
(199, 3, 10, 5, '40091.00'),
(200, 4, 10, 5, '46517.00');

-- --------------------------------------------------------

--
-- Table structure for table `room_costs`
--

CREATE TABLE `room_costs` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `room_type_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` decimal(12,2) DEFAULT NULL,
  `discount` float(4,1) DEFAULT NULL,
  `breakfast_included` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_costs`
--

INSERT INTO `room_costs` (`id`, `hotel_id`, `room_type_id`, `cost`, `discount`, `breakfast_included`) VALUES
(1, 1, 1, '1204207.00', 53.0, '95903.00'),
(2, 1, 2, '1147463.00', 32.0, '518.00'),
(3, 1, 3, '1270792.00', 84.0, '50209.00'),
(4, 1, 4, '354941.00', 5.0, '66108.00'),
(5, 1, 5, '290741.00', 3.0, '32490.00'),
(6, 2, 1, '1176957.00', 68.0, '70346.00'),
(7, 2, 2, '1675584.00', 67.0, '75094.00'),
(8, 2, 3, '1144335.00', 5.0, '27270.00'),
(9, 2, 4, '1243620.00', 35.0, '33213.00'),
(10, 2, 5, '1330476.00', 36.0, '24805.00'),
(11, 3, 1, '697846.00', 71.0, '68946.00'),
(12, 3, 2, '177172.00', 51.0, '88721.00'),
(13, 3, 3, '1595246.00', 50.0, '74303.00'),
(14, 3, 4, '1712299.00', 37.0, '16018.00'),
(15, 3, 5, '292588.00', 77.0, '3468.00'),
(16, 4, 1, '378638.00', 11.0, '38598.00'),
(17, 4, 2, '1722277.00', 29.0, '66094.00'),
(18, 4, 3, '1481907.00', 63.0, '57146.00'),
(19, 4, 4, '1019924.00', 87.0, '20818.00'),
(20, 4, 5, '89360.00', 20.0, '88666.00'),
(21, 5, 1, '525349.00', 31.0, '37668.00'),
(22, 5, 2, '1675101.00', 15.0, '71964.00'),
(23, 5, 3, '14085.00', 18.0, '187.00'),
(24, 5, 4, '1165623.00', 22.0, '27394.00'),
(25, 5, 5, '1956047.00', 73.0, '44352.00'),
(26, 6, 1, '1755034.00', 58.0, '19170.00'),
(27, 6, 2, '226623.00', 86.0, '76392.00'),
(28, 6, 3, '130525.00', 7.0, '64319.00'),
(29, 6, 4, '400987.00', 16.0, '79993.00'),
(30, 6, 5, '88566.00', 89.0, '3564.00'),
(31, 7, 1, '718474.00', 63.0, '8864.00'),
(32, 7, 2, '606037.00', 7.0, '79633.00'),
(33, 7, 3, '762964.00', 83.0, '81015.00'),
(34, 7, 4, '1739396.00', 2.0, '97052.00'),
(35, 7, 5, '752346.00', 48.0, '11920.00'),
(36, 8, 1, '1679730.00', 61.0, '90021.00'),
(37, 8, 2, '117536.00', 39.0, '92385.00'),
(38, 8, 3, '579158.00', 5.0, '63576.00'),
(39, 8, 4, '1586139.00', 81.0, '88.00'),
(40, 8, 5, '1491624.00', 56.0, '28752.00'),
(41, 9, 1, '1633972.00', 15.0, '74205.00'),
(42, 9, 2, '1872122.00', 85.0, '78903.00'),
(43, 9, 3, '251085.00', 21.0, '31730.00'),
(44, 9, 4, '1068384.00', 69.0, '9721.00'),
(45, 9, 5, '1768502.00', 91.0, '71353.00'),
(46, 10, 1, '1431291.00', 7.0, '76026.00'),
(47, 10, 2, '896662.00', 16.0, '18501.00'),
(48, 10, 3, '1960927.00', 39.0, '18211.00'),
(49, 10, 4, '1793195.00', 1.0, '24482.00'),
(50, 10, 5, '1156396.00', 13.0, '39370.00');

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `room_type_id` int(10) UNSIGNED DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `hotel_id`, `room_type_id`, `filename`, `created_at`) VALUES
(1, 1, 1, 'default.png', '2020-01-25 14:52:35'),
(2, 1, 2, 'default.png', '2020-01-25 14:52:35'),
(3, 3, 2, 'default.png', '2020-01-25 14:52:35'),
(4, 3, 1, 'default.png', '2020-01-25 14:52:35'),
(5, 1, 4, 'default.png', '2020-01-25 14:52:35'),
(6, 2, 1, 'default.png', '2020-01-25 14:52:35'),
(7, 2, 2, 'default.png', '2020-01-25 14:52:35'),
(8, 2, 3, 'default.png', '2020-01-25 14:52:35'),
(9, 1, 5, 'default.png', '2020-01-25 14:52:35'),
(10, 1, 3, 'default.png', '2020-01-25 14:52:35'),
(11, 2, 5, 'default.png', '2020-01-25 14:52:35'),
(12, 2, 4, 'default.png', '2020-01-25 14:52:35'),
(13, 3, 3, 'default.png', '2020-01-25 14:52:35'),
(14, 3, 4, 'default.png', '2020-01-25 14:52:35'),
(15, 3, 5, 'default.png', '2020-01-25 14:52:35'),
(16, 4, 1, 'default.png', '2020-01-25 14:52:35'),
(17, 4, 2, 'default.png', '2020-01-25 14:52:35'),
(18, 4, 3, 'default.png', '2020-01-25 14:52:35'),
(19, 5, 1, 'default.png', '2020-01-25 14:52:35'),
(20, 5, 2, 'default.png', '2020-01-25 14:52:35'),
(21, 4, 4, 'default.png', '2020-01-25 14:52:35'),
(22, 4, 5, 'default.png', '2020-01-25 14:52:35'),
(23, 5, 3, 'default.png', '2020-01-25 14:52:35'),
(24, 5, 4, 'default.png', '2020-01-25 14:52:35'),
(25, 5, 5, 'default.png', '2020-01-25 14:52:35'),
(26, 6, 1, 'default.png', '2020-01-25 14:52:35'),
(27, 6, 2, 'default.png', '2020-01-25 14:52:35'),
(28, 6, 3, 'default.png', '2020-01-25 14:52:35'),
(29, 6, 4, 'default.png', '2020-01-25 14:52:35'),
(30, 6, 5, 'default.png', '2020-01-25 14:52:35'),
(31, 7, 1, 'default.png', '2020-01-25 14:52:35'),
(32, 7, 2, 'default.png', '2020-01-25 14:52:35'),
(33, 7, 3, 'default.png', '2020-01-25 14:52:35'),
(34, 7, 4, 'default.png', '2020-01-25 14:52:35'),
(35, 7, 5, 'default.png', '2020-01-25 14:52:35'),
(36, 8, 1, 'default.png', '2020-01-25 14:52:35'),
(37, 8, 2, 'default.png', '2020-01-25 14:52:35'),
(38, 8, 3, 'default.png', '2020-01-25 14:52:35'),
(39, 8, 4, 'default.png', '2020-01-25 14:52:35'),
(40, 8, 5, 'default.png', '2020-01-25 14:52:35'),
(41, 9, 1, 'default.png', '2020-01-25 14:52:35'),
(42, 9, 2, 'default.png', '2020-01-25 14:52:35'),
(43, 9, 3, 'default.png', '2020-01-25 14:52:35'),
(44, 9, 4, 'default.png', '2020-01-25 14:52:35'),
(45, 9, 5, 'default.png', '2020-01-25 14:52:35'),
(46, 10, 1, 'default.png', '2020-01-25 14:52:35'),
(47, 10, 2, 'default.png', '2020-01-25 14:52:35'),
(48, 10, 3, 'default.png', '2020-01-25 14:52:35'),
(49, 10, 4, 'default.png', '2020-01-25 14:52:35'),
(50, 10, 5, 'default.png', '2020-01-25 14:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `room_ratings`
--

CREATE TABLE `room_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `room_type_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` float(2,1) DEFAULT '1.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_ratings`
--

INSERT INTO `room_ratings` (`id`, `hotel_id`, `room_type_id`, `user_id`, `rating`) VALUES
(1, 1, 1, 1, 4.0),
(2, 1, 1, 2, 0.0),
(3, 1, 1, 3, 4.0),
(4, 1, 1, 7, 4.0),
(5, 1, 1, 5, 2.0),
(6, 1, 1, 6, 2.0),
(7, 1, 1, 4, 0.0),
(8, 1, 1, 8, 3.0),
(9, 1, 1, 9, 4.0),
(10, 1, 1, 10, 3.0),
(11, 1, 2, 1, 2.0),
(12, 1, 2, 2, 0.0),
(13, 1, 2, 3, 0.0),
(14, 1, 2, 4, 5.0),
(15, 1, 2, 5, 0.0),
(16, 1, 2, 6, 0.0),
(17, 1, 2, 7, 4.0),
(18, 1, 2, 8, 0.0),
(19, 1, 2, 9, 2.0),
(20, 1, 2, 10, 2.0),
(21, 1, 3, 1, 3.0),
(22, 1, 3, 2, 3.0),
(23, 1, 3, 3, 0.0),
(24, 1, 3, 4, 5.0),
(25, 1, 3, 5, 5.0),
(26, 1, 3, 6, 3.0),
(27, 1, 3, 7, 5.0),
(28, 1, 3, 8, 4.0),
(29, 1, 3, 9, 3.0),
(30, 1, 3, 10, 1.0),
(31, 1, 4, 1, 1.0),
(32, 1, 4, 2, 5.0),
(33, 1, 4, 3, 5.0),
(34, 1, 4, 4, 5.0),
(35, 1, 4, 5, 1.0),
(36, 1, 4, 6, 5.0),
(37, 1, 4, 7, 2.0),
(38, 1, 4, 8, 1.0),
(39, 1, 4, 9, 2.0),
(40, 1, 4, 10, 5.0),
(41, 1, 5, 1, 4.0),
(42, 1, 5, 2, 3.0),
(43, 1, 5, 3, 2.0),
(44, 1, 5, 4, 2.0),
(45, 1, 5, 5, 2.0),
(46, 1, 5, 6, 1.0),
(47, 1, 5, 7, 1.0),
(48, 1, 5, 8, 4.0),
(49, 1, 5, 9, 4.0),
(50, 1, 5, 10, 3.0),
(51, 2, 1, 1, 1.0),
(52, 2, 1, 2, 2.0),
(53, 2, 1, 3, 5.0),
(54, 2, 1, 4, 2.0),
(55, 2, 1, 5, 5.0),
(56, 2, 1, 6, 3.0),
(57, 2, 1, 7, 1.0),
(58, 2, 1, 8, 5.0),
(59, 2, 1, 9, 1.0),
(60, 2, 1, 10, 5.0),
(61, 2, 2, 2, 0.0),
(62, 2, 2, 1, 1.0),
(63, 2, 2, 3, 3.0),
(64, 2, 2, 4, 1.0),
(65, 2, 2, 5, 3.0),
(66, 2, 2, 6, 5.0),
(67, 2, 2, 7, 0.0),
(68, 2, 2, 8, 2.0),
(69, 2, 2, 9, 2.0),
(70, 2, 2, 10, 0.0),
(71, 2, 3, 1, 1.0),
(72, 2, 3, 2, 3.0),
(73, 2, 3, 3, 4.0),
(74, 2, 3, 4, 2.0),
(75, 2, 3, 5, 1.0),
(76, 2, 3, 6, 4.0),
(77, 2, 3, 7, 1.0),
(78, 2, 3, 8, 1.0),
(79, 2, 3, 9, 0.0),
(80, 2, 3, 10, 0.0),
(81, 2, 4, 1, 4.0),
(82, 2, 4, 2, 1.0),
(83, 2, 4, 3, 4.0),
(84, 2, 4, 4, 2.0),
(85, 2, 4, 5, 4.0),
(86, 2, 4, 6, 0.0),
(87, 2, 4, 7, 4.0),
(88, 2, 4, 8, 4.0),
(89, 2, 4, 9, 1.0),
(90, 2, 4, 10, 5.0),
(91, 2, 5, 1, 4.0),
(92, 2, 5, 2, 0.0),
(93, 2, 5, 3, 4.0),
(94, 2, 5, 4, 3.0),
(95, 2, 5, 5, 3.0),
(96, 2, 5, 6, 2.0),
(97, 2, 5, 7, 4.0),
(98, 2, 5, 8, 1.0),
(99, 2, 5, 9, 2.0),
(100, 2, 5, 10, 3.0),
(101, 3, 1, 1, 0.0),
(102, 3, 1, 2, 5.0),
(103, 3, 1, 3, 1.0),
(104, 3, 1, 4, 4.0),
(105, 3, 1, 5, 4.0),
(106, 3, 1, 6, 3.0),
(107, 3, 1, 7, 2.0),
(108, 3, 1, 8, 3.0),
(109, 3, 1, 9, 2.0),
(110, 3, 1, 10, 5.0),
(111, 3, 2, 1, 5.0),
(112, 3, 2, 2, 1.0),
(113, 3, 2, 3, 5.0),
(114, 3, 2, 4, 3.0),
(115, 3, 2, 5, 5.0),
(116, 3, 2, 6, 2.0),
(117, 3, 2, 7, 0.0),
(118, 3, 2, 8, 5.0),
(119, 3, 2, 9, 1.0),
(120, 3, 2, 10, 3.0),
(121, 3, 3, 1, 5.0),
(122, 3, 3, 2, 2.0),
(123, 3, 3, 3, 4.0),
(124, 3, 3, 4, 1.0),
(125, 3, 3, 5, 0.0),
(126, 3, 3, 6, 0.0),
(127, 3, 3, 7, 1.0),
(128, 3, 3, 8, 2.0),
(129, 3, 3, 9, 4.0),
(130, 3, 3, 10, 4.0),
(131, 3, 4, 1, 4.0),
(132, 3, 4, 2, 3.0),
(133, 3, 4, 3, 5.0),
(134, 3, 4, 4, 4.0),
(135, 3, 4, 5, 5.0),
(136, 3, 4, 6, 2.0),
(137, 3, 4, 7, 4.0),
(138, 3, 4, 8, 0.0),
(139, 3, 4, 9, 5.0),
(140, 3, 4, 10, 4.0),
(141, 3, 5, 1, 4.0),
(142, 3, 5, 2, 1.0),
(143, 3, 5, 3, 0.0),
(144, 3, 5, 4, 1.0),
(145, 3, 5, 5, 1.0),
(146, 3, 5, 6, 0.0),
(147, 3, 5, 7, 0.0),
(148, 3, 5, 8, 5.0),
(149, 3, 5, 9, 2.0),
(150, 3, 5, 10, 5.0),
(151, 4, 1, 1, 1.0),
(152, 4, 1, 2, 5.0),
(153, 4, 1, 3, 0.0),
(154, 4, 1, 4, 4.0),
(155, 4, 1, 5, 2.0),
(156, 4, 1, 6, 0.0),
(157, 4, 1, 7, 2.0),
(158, 4, 1, 8, 5.0),
(159, 4, 1, 9, 0.0),
(160, 4, 2, 1, 5.0),
(161, 4, 1, 10, 0.0),
(162, 4, 2, 2, 1.0),
(163, 4, 2, 3, 0.0),
(164, 4, 2, 4, 0.0),
(165, 4, 2, 5, 2.0),
(166, 4, 2, 6, 1.0),
(167, 4, 2, 7, 0.0),
(168, 4, 2, 8, 3.0),
(169, 4, 2, 9, 3.0),
(170, 4, 2, 10, 0.0),
(171, 4, 3, 1, 3.0),
(172, 4, 3, 2, 5.0),
(173, 4, 3, 3, 5.0),
(174, 4, 3, 4, 0.0),
(175, 4, 3, 5, 0.0),
(176, 4, 3, 6, 1.0),
(177, 4, 3, 7, 2.0),
(178, 4, 3, 8, 3.0),
(179, 4, 3, 9, 3.0),
(180, 4, 3, 10, 5.0),
(181, 4, 4, 1, 2.0),
(182, 4, 4, 2, 5.0),
(183, 4, 4, 3, 2.0),
(184, 4, 4, 4, 1.0),
(185, 4, 4, 5, 5.0),
(186, 4, 4, 6, 5.0),
(187, 4, 4, 7, 1.0),
(188, 4, 4, 8, 4.0),
(189, 4, 4, 9, 1.0),
(190, 4, 4, 10, 3.0),
(191, 4, 5, 1, 5.0),
(192, 4, 5, 2, 0.0),
(193, 4, 5, 3, 1.0),
(194, 4, 5, 4, 3.0),
(195, 4, 5, 5, 5.0),
(196, 4, 5, 6, 1.0),
(197, 4, 5, 7, 4.0),
(198, 4, 5, 10, 5.0),
(199, 5, 1, 1, 1.0),
(200, 4, 5, 8, 4.0),
(201, 5, 1, 2, 1.0),
(202, 4, 5, 9, 3.0),
(203, 5, 1, 3, 4.0),
(204, 5, 1, 4, 2.0),
(205, 5, 1, 5, 5.0),
(206, 5, 1, 6, 2.0),
(207, 5, 1, 7, 3.0),
(208, 5, 1, 8, 1.0),
(209, 5, 1, 9, 4.0),
(210, 5, 1, 10, 4.0),
(211, 5, 2, 1, 1.0),
(212, 5, 2, 2, 4.0),
(213, 5, 2, 3, 5.0),
(214, 5, 2, 4, 4.0),
(215, 5, 2, 5, 0.0),
(216, 5, 2, 6, 4.0),
(217, 5, 2, 7, 1.0),
(218, 5, 2, 8, 1.0),
(219, 5, 2, 9, 4.0),
(220, 5, 2, 10, 4.0),
(221, 5, 3, 1, 0.0),
(222, 5, 3, 2, 5.0),
(223, 5, 3, 3, 0.0),
(224, 5, 3, 4, 3.0),
(225, 5, 3, 5, 3.0),
(226, 5, 3, 6, 2.0),
(227, 5, 3, 7, 0.0),
(228, 5, 3, 8, 4.0),
(229, 5, 3, 9, 5.0),
(230, 5, 3, 10, 3.0),
(231, 5, 4, 1, 0.0),
(232, 5, 4, 2, 4.0),
(233, 5, 4, 3, 3.0),
(234, 5, 4, 4, 1.0),
(235, 5, 4, 5, 3.0),
(236, 5, 4, 6, 0.0),
(237, 5, 4, 7, 3.0),
(238, 5, 4, 8, 4.0),
(239, 5, 4, 9, 2.0),
(240, 5, 4, 10, 5.0),
(241, 5, 5, 1, 4.0),
(242, 5, 5, 2, 1.0),
(243, 5, 5, 3, 1.0),
(244, 5, 5, 4, 4.0),
(245, 5, 5, 5, 5.0),
(246, 5, 5, 6, 2.0),
(247, 5, 5, 7, 4.0),
(248, 5, 5, 8, 0.0),
(249, 5, 5, 9, 1.0),
(250, 5, 5, 10, 1.0),
(251, 6, 1, 1, 3.0),
(252, 6, 1, 2, 3.0),
(253, 6, 1, 3, 4.0),
(254, 6, 1, 4, 3.0),
(255, 6, 1, 5, 3.0),
(256, 6, 1, 6, 3.0),
(257, 6, 1, 7, 2.0),
(258, 6, 1, 9, 4.0),
(259, 6, 2, 1, 5.0),
(260, 6, 2, 2, 2.0),
(261, 6, 1, 8, 1.0),
(262, 6, 1, 10, 2.0),
(263, 6, 2, 3, 5.0),
(264, 6, 2, 4, 1.0),
(265, 6, 2, 5, 2.0),
(266, 6, 2, 6, 5.0),
(267, 6, 2, 7, 1.0),
(268, 6, 2, 8, 0.0),
(269, 6, 2, 9, 2.0),
(270, 6, 2, 10, 3.0),
(271, 6, 3, 1, 4.0),
(272, 6, 3, 2, 1.0),
(273, 6, 3, 3, 5.0),
(274, 6, 3, 4, 5.0),
(275, 6, 3, 5, 5.0),
(276, 6, 3, 6, 1.0),
(277, 6, 3, 7, 3.0),
(278, 6, 3, 8, 1.0),
(279, 6, 3, 9, 1.0),
(280, 6, 3, 10, 1.0),
(281, 6, 4, 1, 0.0),
(282, 6, 4, 2, 5.0),
(283, 6, 4, 3, 2.0),
(284, 6, 4, 4, 2.0),
(285, 6, 4, 5, 0.0),
(286, 6, 4, 6, 1.0),
(287, 6, 4, 7, 4.0),
(288, 6, 4, 8, 2.0),
(289, 6, 4, 9, 0.0),
(290, 6, 4, 10, 2.0),
(291, 6, 5, 1, 5.0),
(292, 6, 5, 2, 4.0),
(293, 6, 5, 3, 4.0),
(294, 6, 5, 4, 5.0),
(295, 6, 5, 5, 4.0),
(296, 6, 5, 6, 4.0),
(297, 6, 5, 7, 0.0),
(298, 6, 5, 8, 3.0),
(299, 6, 5, 9, 4.0),
(300, 6, 5, 10, 3.0),
(301, 7, 1, 1, 4.0),
(302, 7, 1, 2, 5.0),
(303, 7, 1, 3, 0.0),
(304, 7, 1, 4, 0.0),
(305, 7, 1, 5, 3.0),
(306, 7, 1, 6, 3.0),
(307, 7, 1, 7, 2.0),
(308, 7, 1, 8, 4.0),
(309, 7, 1, 9, 3.0),
(310, 7, 1, 10, 1.0),
(311, 7, 2, 1, 3.0),
(312, 7, 2, 2, 1.0),
(313, 7, 2, 3, 1.0),
(314, 7, 2, 4, 5.0),
(315, 7, 2, 5, 2.0),
(316, 7, 2, 6, 5.0),
(317, 7, 2, 7, 2.0),
(318, 7, 2, 8, 5.0),
(319, 7, 2, 9, 4.0),
(320, 7, 2, 10, 3.0),
(321, 7, 3, 1, 4.0),
(322, 7, 3, 2, 2.0),
(323, 7, 3, 3, 2.0),
(324, 7, 3, 4, 5.0),
(325, 7, 3, 5, 3.0),
(326, 7, 3, 6, 5.0),
(327, 7, 3, 7, 0.0),
(328, 7, 3, 8, 4.0),
(329, 7, 3, 9, 5.0),
(330, 7, 3, 10, 0.0),
(331, 7, 4, 1, 3.0),
(332, 7, 4, 2, 2.0),
(333, 7, 4, 3, 1.0),
(334, 7, 4, 4, 1.0),
(335, 7, 4, 5, 3.0),
(336, 7, 4, 6, 3.0),
(337, 7, 4, 7, 4.0),
(338, 7, 4, 8, 3.0),
(339, 7, 4, 9, 0.0),
(340, 7, 4, 10, 4.0),
(341, 7, 5, 1, 1.0),
(342, 7, 5, 2, 3.0),
(343, 7, 5, 3, 1.0),
(344, 7, 5, 4, 0.0),
(345, 7, 5, 5, 2.0),
(346, 7, 5, 6, 2.0),
(347, 7, 5, 7, 4.0),
(348, 7, 5, 8, 1.0),
(349, 7, 5, 9, 1.0),
(350, 7, 5, 10, 5.0),
(351, 8, 1, 1, 1.0),
(352, 8, 1, 2, 4.0),
(353, 8, 1, 3, 1.0),
(354, 8, 1, 4, 3.0),
(355, 8, 1, 5, 5.0),
(356, 8, 1, 6, 4.0),
(357, 8, 1, 7, 2.0),
(358, 8, 1, 8, 4.0),
(359, 8, 1, 9, 0.0),
(360, 8, 1, 10, 2.0),
(361, 8, 2, 1, 4.0),
(362, 8, 2, 2, 2.0),
(363, 8, 2, 3, 1.0),
(364, 8, 2, 4, 0.0),
(365, 8, 2, 5, 0.0),
(366, 8, 2, 6, 3.0),
(367, 8, 2, 7, 5.0),
(368, 8, 2, 8, 4.0),
(369, 8, 2, 9, 3.0),
(370, 8, 2, 10, 2.0),
(371, 8, 3, 1, 4.0),
(372, 8, 3, 2, 3.0),
(373, 8, 3, 3, 5.0),
(374, 8, 3, 4, 5.0),
(375, 8, 3, 5, 3.0),
(376, 8, 3, 6, 0.0),
(377, 8, 3, 7, 2.0),
(378, 8, 3, 8, 1.0),
(379, 8, 3, 9, 0.0),
(380, 8, 3, 10, 3.0),
(381, 8, 4, 1, 3.0),
(382, 8, 4, 2, 4.0),
(383, 8, 4, 3, 0.0),
(384, 8, 4, 4, 5.0),
(385, 8, 4, 5, 0.0),
(386, 8, 4, 6, 1.0),
(387, 8, 4, 7, 4.0),
(388, 8, 4, 8, 0.0),
(389, 8, 4, 9, 3.0),
(390, 8, 4, 10, 0.0),
(391, 8, 5, 1, 2.0),
(392, 8, 5, 2, 2.0),
(393, 8, 5, 3, 5.0),
(394, 8, 5, 4, 1.0),
(395, 8, 5, 5, 4.0),
(396, 8, 5, 6, 1.0),
(397, 8, 5, 7, 4.0),
(398, 8, 5, 8, 2.0),
(399, 8, 5, 9, 2.0),
(400, 8, 5, 10, 5.0),
(401, 9, 1, 1, 0.0),
(402, 9, 1, 2, 4.0),
(403, 9, 1, 3, 4.0),
(404, 9, 1, 4, 0.0),
(405, 9, 1, 5, 4.0),
(406, 9, 1, 6, 3.0),
(407, 9, 1, 7, 0.0),
(408, 9, 1, 8, 0.0),
(409, 9, 1, 9, 4.0),
(410, 9, 1, 10, 3.0),
(411, 9, 2, 1, 3.0),
(412, 9, 2, 2, 1.0),
(413, 9, 2, 3, 4.0),
(414, 9, 2, 4, 5.0),
(415, 9, 2, 5, 3.0),
(416, 9, 2, 6, 2.0),
(417, 9, 2, 7, 2.0),
(418, 9, 2, 8, 3.0),
(419, 9, 2, 9, 3.0),
(420, 9, 2, 10, 0.0),
(421, 9, 3, 1, 1.0),
(422, 9, 3, 3, 3.0),
(423, 9, 3, 4, 0.0),
(424, 9, 3, 5, 4.0),
(425, 9, 3, 2, 2.0),
(426, 9, 3, 6, 3.0),
(427, 9, 3, 7, 1.0),
(428, 9, 3, 8, 4.0),
(429, 9, 3, 9, 0.0),
(430, 9, 3, 10, 2.0),
(431, 9, 4, 1, 1.0),
(432, 9, 4, 2, 5.0),
(433, 9, 4, 3, 0.0),
(434, 9, 4, 4, 3.0),
(435, 9, 4, 5, 1.0),
(436, 9, 4, 6, 2.0),
(437, 9, 4, 7, 5.0),
(438, 9, 4, 8, 2.0),
(439, 9, 4, 9, 3.0),
(440, 9, 4, 10, 3.0),
(441, 9, 5, 1, 4.0),
(442, 9, 5, 2, 5.0),
(443, 9, 5, 3, 2.0),
(444, 9, 5, 4, 0.0),
(445, 9, 5, 5, 1.0),
(446, 9, 5, 6, 3.0),
(447, 9, 5, 7, 0.0),
(448, 9, 5, 8, 2.0),
(449, 9, 5, 9, 4.0),
(450, 9, 5, 10, 3.0),
(451, 10, 1, 1, 4.0),
(452, 10, 1, 2, 0.0),
(453, 10, 1, 3, 2.0),
(454, 10, 1, 4, 2.0),
(455, 10, 1, 5, 0.0),
(456, 10, 1, 6, 1.0),
(457, 10, 1, 7, 1.0),
(458, 10, 1, 8, 5.0),
(459, 10, 1, 9, 5.0),
(460, 10, 1, 10, 4.0),
(461, 10, 2, 1, 4.0),
(462, 10, 2, 2, 0.0),
(463, 10, 2, 3, 5.0),
(464, 10, 2, 4, 1.0),
(465, 10, 2, 5, 2.0),
(466, 10, 2, 6, 3.0),
(467, 10, 2, 7, 5.0),
(468, 10, 2, 8, 3.0),
(469, 10, 2, 9, 0.0),
(470, 10, 2, 10, 2.0),
(471, 10, 3, 1, 1.0),
(472, 10, 3, 2, 3.0),
(473, 10, 3, 3, 1.0),
(474, 10, 3, 4, 1.0),
(475, 10, 3, 5, 2.0),
(476, 10, 3, 6, 3.0),
(477, 10, 3, 7, 0.0),
(478, 10, 3, 8, 1.0),
(479, 10, 3, 9, 3.0),
(480, 10, 3, 10, 2.0),
(481, 10, 4, 1, 2.0),
(482, 10, 4, 2, 4.0),
(483, 10, 4, 3, 0.0),
(484, 10, 4, 4, 4.0),
(485, 10, 4, 5, 4.0),
(486, 10, 4, 6, 0.0),
(487, 10, 4, 7, 4.0),
(488, 10, 4, 8, 1.0),
(489, 10, 4, 9, 5.0),
(490, 10, 4, 10, 1.0),
(491, 10, 5, 1, 4.0),
(492, 10, 5, 2, 3.0),
(493, 10, 5, 4, 3.0),
(494, 10, 5, 3, 3.0),
(495, 10, 5, 5, 5.0),
(496, 10, 5, 6, 5.0),
(497, 10, 5, 7, 0.0),
(498, 10, 5, 8, 5.0),
(499, 10, 5, 9, 2.0),
(500, 10, 5, 10, 1.0);

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `description`) VALUES
(1, 'Quia dolorum tempore in repudiandae.', 'Consequatur labore harum doloremque voluptatum in quam saepe nisi sapiente. Sed repellat distinctio. Omnis officia autem ea molestiae facere neque reprehenderit amet. Itaque labore molestiae. Ad aspernatur quo et dolores saepe. Tempora dolore atque quas consequatur.'),
(2, 'Ut eum dolore.', 'Qui animi ut pariatur et voluptates consequatur in rerum. Et ab voluptatibus nesciunt voluptate qui quasi. Vel soluta voluptatum perspiciatis placeat officiis odit iusto. Amet voluptas consectetur aspernatur earum maxime. Totam harum qui. Animi et itaque non adipisci nostrum.'),
(3, 'Ipsa commodi quasi.', 'Deserunt voluptates doloremque ullam voluptas omnis. Repudiandae id velit nam quaerat molestiae veniam amet voluptatibus. Ut blanditiis laudantium recusandae maxime reprehenderit quod et aperiam.'),
(4, 'Odit in est voluptates possimus iste eum.', 'Odio quidem sed non. Labore vero corrupti expedita sed hic et numquam consequatur animi. Ea perferendis minus ut et dolorum quisquam rerum nisi. In veniam voluptatem rerum. Reiciendis eligendi sit voluptas molestias quibusdam hic quos itaque.'),
(5, 'Dolores quae quisquam impedit tenetur minima enim velit.', 'Saepe atque similique eum voluptas ipsam illum laborum pariatur. Eius sed nostrum error necessitatibus. Optio velit et commodi nam laudantium autem. Porro odio atque ducimus quas dignissimos. Ea dolor deserunt doloremque veniam dicta.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Edgardo', 'Paucek', 'Lee_Konopelski@yahoo.com', '$2a$10$QfHnLTIPW6MAm4VayAuKUO1Qjlpx/7IRpVlcdTXTRPaU1.WU3QZ9e', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(2, 'Angie', 'Mitchell', 'Stan.Bode@gmail.com', '$2a$10$JKSQmR6RixQFW7KlEV5hJurmad5YeEjfSfLyuqHlXcMmbYDwtOK1S', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(3, 'Kobe', 'Hintz', 'Jeanie.Schiller@hotmail.com', '$2a$10$dicD8bbisBXq8f3bFhKSmOBLZTWEjhCHne6BVfmHT522C8SP4ee8e', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(4, 'Kelley', 'Langworth', 'Emerson28@yahoo.com', '$2a$10$i4fTJN2bFQVRgfn8tQxVy.LPz/FeU36E3/XG2RgUexwjGnJQdqBVe', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(5, 'Ova', 'Auer', 'Aniya78@hotmail.com', '$2a$10$93T4AsHjeB1iflucH0Als.d7BjYsNcLZJtrvsjAdzyV828Wuatauu', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(6, 'Rachel', 'Kuphal', 'Ladarius_Walter@yahoo.com', '$2a$10$VGc229KZZgmF2IscUel3u.WHjlKoqhzdLyYgS1AQVedVrg7r6dtWm', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(7, 'Cathy', 'Anderson', 'Mayra_Bailey@yahoo.com', '$2a$10$W2FuZMlk9PdEzUDNOTJdZuITkxG.5GEpHS3td/I/Vi1CDdjsbRXBK', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(8, 'Brown', 'Jakubowski', 'Cleveland_Kirlin@gmail.com', '$2a$10$tkfbWptBQh5hPF9AMITWJOef2qG8CTM5BJ/HKydj/qjQwLgixNSfm', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(9, 'Peter', 'Hahn', 'Dock_Stoltenberg7@hotmail.com', '$2a$10$AIs/F.oSIFRMTjyECJHwWO.iiYXPF6uw5MWKtAKU/obZuW16C/j4i', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(10, 'Antwan', 'Kiehn', 'Lavinia.Luettgen25@hotmail.com', '$2a$10$9zIR1ktKdUVW.BxIT38BFufiQ5XUVdXdLZMKKMLdF1rQuBnFbsaly', '+62987676522', NULL, 'default.png', '2020-01-25 14:52:34', '2020-01-25 14:52:34'),
(11, 'Mochhamad', 'Raffi Ramdhani', 'raffiramdhani40@gmail.com', '$2a$10$zdmiE73l4R0VAui32opkoOGjxHi8a9wh.AV4OAu.KGPK6nK8z0yta', '08979762763', NULL, NULL, '2020-01-25 14:52:55', '2020-01-25 14:52:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balances_user_id_foreign` (`user_id`);

--
-- Indexes for table `balance_histories`
--
ALTER TABLE `balance_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balance_histories_user_id_foreign` (`user_id`),
  ADD KEY `balance_histories_balance_id_foreign` (`balance_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hotels_name_unique` (`name`),
  ADD KEY `hotels_city_id_foreign` (`city_id`),
  ADD KEY `hotels_province_id_foreign` (`province_id`);

--
-- Indexes for table `hotel_amenities`
--
ALTER TABLE `hotel_amenities`
  ADD KEY `hotel_amenities_amenities_id_foreign` (`amenities_id`),
  ADD KEY `hotel_amenities_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_images_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `hotel_orders`
--
ALTER TABLE `hotel_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_orders_room_type_id_foreign` (`room_type_id`),
  ADD KEY `hotel_orders_hotel_id_foreign` (`hotel_id`),
  ADD KEY `hotel_orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD UNIQUE KEY `hotel_rooms_room_type_id_hotel_id_unique` (`room_type_id`,`hotel_id`),
  ADD KEY `hotel_rooms_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `knex_migrations`
--
ALTER TABLE `knex_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knex_migrations_lock`
--
ALTER TABLE `knex_migrations_lock`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revoked_token`
--
ALTER TABLE `revoked_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_amenities`
--
ALTER TABLE `room_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_amenities_amenities_id_foreign` (`amenities_id`),
  ADD KEY `room_amenities_hotel_id_foreign` (`hotel_id`),
  ADD KEY `room_amenities_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_costs`
--
ALTER TABLE `room_costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_costs_hotel_id_foreign` (`hotel_id`),
  ADD KEY `room_costs_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_images_hotel_id_foreign` (`hotel_id`),
  ADD KEY `room_images_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_ratings`
--
ALTER TABLE `room_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_ratings_hotel_id_foreign` (`hotel_id`),
  ADD KEY `room_ratings_room_type_id_foreign` (`room_type_id`),
  ADD KEY `room_ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `balance_histories`
--
ALTER TABLE `balance_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hotel_orders`
--
ALTER TABLE `hotel_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `knex_migrations`
--
ALTER TABLE `knex_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `knex_migrations_lock`
--
ALTER TABLE `knex_migrations_lock`
  MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `otp_codes`
--
ALTER TABLE `otp_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `revoked_token`
--
ALTER TABLE `revoked_token`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `room_amenities`
--
ALTER TABLE `room_amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `room_costs`
--
ALTER TABLE `room_costs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `room_ratings`
--
ALTER TABLE `room_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `balances`
--
ALTER TABLE `balances`
  ADD CONSTRAINT `balances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `balance_histories`
--
ALTER TABLE `balance_histories`
  ADD CONSTRAINT `balance_histories_balance_id_foreign` FOREIGN KEY (`balance_id`) REFERENCES `balances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `balance_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotels_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel_amenities`
--
ALTER TABLE `hotel_amenities`
  ADD CONSTRAINT `hotel_amenities_amenities_id_foreign` FOREIGN KEY (`amenities_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotel_amenities_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD CONSTRAINT `hotel_images_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel_orders`
--
ALTER TABLE `hotel_orders`
  ADD CONSTRAINT `hotel_orders_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotel_orders_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotel_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD CONSTRAINT `hotel_rooms_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotel_rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_amenities`
--
ALTER TABLE `room_amenities`
  ADD CONSTRAINT `room_amenities_amenities_id_foreign` FOREIGN KEY (`amenities_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_amenities_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_amenities_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_costs`
--
ALTER TABLE `room_costs`
  ADD CONSTRAINT `room_costs_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_costs_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_images_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_ratings`
--
ALTER TABLE `room_ratings`
  ADD CONSTRAINT `room_ratings_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_ratings_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
