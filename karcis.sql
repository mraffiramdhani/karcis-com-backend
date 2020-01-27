-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2020 at 02:31 PM
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
(2, 2, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(3, 3, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(4, 4, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(5, 5, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(6, 6, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(7, 7, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(8, 8, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(9, 9, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(10, 10, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59'),
(11, 11, '1000.00', '2020-01-27 14:30:59', '2020-01-27 14:30:59');

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
(1, 'Graham and Sons', 'Temporibus consequatur consequatur ut omnis. Laudantium et magnam ut iure dolorem. Reprehenderit in voluptatibus reprehenderit praesentium quasi ut dolores. Sint modi omnis et ex quia quasi repudiandae labore facilis. Quia amet aut facere natus in ipsa esse consectetur quia.', '2538 Ronaldo Parkways Apt. 443', 2, 1, '-30.3332', '147.5734', 1),
(2, 'Ullrich Inc', 'Possimus cumque possimus ut reprehenderit molestiae facilis. Ex aut numquam molestiae qui eos nisi dolores nesciunt reprehenderit. Tempora officia est reiciendis enim perferendis vel asperiores necessitatibus iure. Ipsum autem sapiente.', '7508 Leuschke Ferry Apt. 830', 0, 1, '24.0951', '75.5797', 1),
(3, 'O\'Reilly LLC', 'Voluptatibus culpa sapiente omnis qui aliquam dolorum corporis inventore temporibus. Soluta quisquam aut quisquam qui dolores. Et aut optio vitae.', '7204 Nienow Glen Suite 411', 4, 1, '-56.6904', '-40.6777', 1),
(4, 'Fahey - Wyman', 'Explicabo aut odio. Consequuntur sint qui perferendis nisi adipisci a. Quis suscipit labore magni odio voluptatem est. Dolorem quia animi error. A et ut repudiandae possimus et saepe.', '8439 Monahan Overpass Suite 153', 3, 1, '58.5600', '-72.3138', 1),
(5, 'Walter - Rempel', 'Qui dicta hic nisi a magni sit exercitationem tenetur. Eum et sint quas quos. Eaque sit iste consequatur officia sint nesciunt suscipit dolor non. Ut minus incidunt dolore eligendi impedit. Atque ex est. Est ut autem qui et ipsa soluta eum.', '31447 Rusty Views Suite 355', 1, 1, '72.2577', '-81.8984', 1),
(6, 'Schuppe, Torphy and Hegmann', 'Suscipit voluptas expedita mollitia. Enim id quis repellendus quo et. Dolores ut voluptatum et molestiae labore minima et. Reprehenderit eaque doloremque enim consequatur maxime distinctio aut. Animi et voluptatem dolor qui et voluptatem sequi. Laboriosam assumenda temporibus et voluptate nemo.', '51604 Bosco Falls Apt. 573', 2, 1, '27.0802', '-18.3888', 1),
(7, 'Padberg Inc', 'Eveniet laudantium sed perferendis ratione perspiciatis quam. Alias sunt ipsam perferendis quas aut ut rerum molestiae. Sed aut est iure eius.', '34953 Rosalee Landing Suite 615', 1, 1, '-38.6133', '95.4634', 1),
(8, 'Goldner Group', 'Id id quia adipisci asperiores tempora aut. Distinctio labore quo ut dolor adipisci aspernatur sint corrupti. Laudantium fugiat odio fuga consequatur nam deleniti illo. Quod sequi reprehenderit dolorem eos laborum voluptatem dolores. Cum cumque sed earum illum earum tenetur maiores illum. Doloribus enim molestias.', '7238 Jaskolski Burgs Suite 917', 3, 1, '-72.9743', '133.4926', 1),
(9, 'Schinner - Franecki', 'Architecto a animi omnis et laborum eos. Debitis dolorem et illum molestias veniam eligendi consectetur. Harum ullam tempora aperiam voluptatem occaecati. Magni suscipit officia quod minus et. Tenetur aut consequuntur magnam corporis incidunt maiores blanditiis aut pariatur.', '005 Viviane Locks Apt. 880', 5, 1, '26.4039', '34.9351', 1),
(10, 'Bernier Group', 'Aspernatur quia delectus doloremque veritatis dolores et laborum pariatur consequatur. Sed veniam rem quis occaecati voluptatem. Hic temporibus corrupti ex modi provident officiis dolore atque consequuntur. Sunt velit quidem recusandae ipsa aut qui dolorum accusamus.', '42462 Lucienne Estates Apt. 505', 3, 1, '-36.8048', '40.4196', 1);

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
(3, 1),
(3, 2),
(4, 2),
(3, 3),
(2, 3),
(4, 3),
(1, 2),
(2, 2),
(1, 3),
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
(2, 9),
(3, 9),
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
(1, 1, 'default.png', '2020-01-27 14:30:57'),
(2, 2, 'default.png', '2020-01-27 14:30:57'),
(3, 3, 'default.png', '2020-01-27 14:30:57'),
(4, 4, 'default.png', '2020-01-27 14:30:57'),
(5, 5, 'default.png', '2020-01-27 14:30:57'),
(6, 6, 'default.png', '2020-01-27 14:30:57'),
(7, 7, 'default.png', '2020-01-27 14:30:57'),
(8, 8, 'default.png', '2020-01-27 14:30:57'),
(9, 9, 'default.png', '2020-01-27 14:30:57'),
(10, 10, 'default.png', '2020-01-27 14:30:57');

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
(1, 1, '1720226.00', 2, 'Consequatur incidunt aspernatur quos temporibus deserunt aut voluptatem aut aut. Fuga deleniti tempora voluptas porro sit mollitia. Vel laboriosam dolores aut molestiae ad reprehenderit cupiditate. Debitis ducimus corporis minus.'),
(2, 1, '640398.00', 2, 'Repudiandae possimus molestiae vel. Ea soluta recusandae nisi autem vel voluptas quaerat. Aliquid facere distinctio doloribus voluptatem laudantium qui.'),
(3, 1, '1631854.00', 2, 'Et voluptas inventore autem sit qui culpa et consectetur vero. Similique rem ex non quis magni illum rem non ad. Sunt aliquam aut perspiciatis dolor qui ad voluptate et.'),
(4, 1, '463392.00', 2, 'Ut et sapiente nostrum qui. Aut reiciendis commodi. Nisi praesentium voluptatem praesentium amet. Iste voluptate ea beatae ipsam commodi non et. Ut aspernatur odit quam nemo et atque consequatur velit. Ipsum alias ut deserunt accusantium a ducimus sit cupiditate sunt.'),
(1, 2, '1349012.00', 2, 'Quia nobis saepe voluptatibus velit quos nostrum laboriosam. Minima iure sed aut nisi aspernatur nostrum sit ea. Repudiandae amet libero nihil ab unde. Voluptatibus ut quidem voluptatem aut unde rerum. Asperiores quasi nobis et laborum earum.'),
(5, 1, '1348254.00', 2, 'Dolores sed rerum sequi error amet repellendus. Commodi ut accusantium accusamus qui. Neque asperiores voluptatum recusandae accusantium excepturi consequatur et. Odio reprehenderit quod et in asperiores quis id. Aut autem consequatur omnis pariatur laborum pariatur ut libero.'),
(2, 2, '6719.00', 2, 'Natus similique libero ea commodi debitis quo enim et. Eos est quisquam. Vel voluptates laboriosam aut.'),
(5, 2, '78181.00', 2, 'Dignissimos odit cupiditate. Quia assumenda est optio qui nemo excepturi enim dolores. Molestiae doloribus sed hic illo tenetur.'),
(3, 2, '1002322.00', 2, 'Animi et omnis molestiae neque. Fugit repellat vitae doloribus praesentium accusantium nihil. Dolore ad in. Aut sint nam nesciunt in. Natus impedit cupiditate aliquam ea ducimus sint consectetur.'),
(4, 2, '593238.00', 2, 'Dolor odit in numquam. Voluptatibus earum unde voluptatem eligendi in. Ut temporibus quis sunt sed quod beatae earum numquam labore.'),
(1, 3, '733736.00', 2, 'Ut iste fugiat illo dolore. Quo velit minima consequatur harum. Quis iste dolores adipisci quia praesentium.'),
(2, 3, '1447520.00', 2, 'Facilis quia rerum maiores. Sit est ut error animi illum quidem. Vitae quis non minima fuga iusto rem itaque.'),
(3, 3, '1339356.00', 2, 'Et modi maiores dignissimos eaque est. Ad recusandae laborum. Est dolor adipisci a ut repellat ipsam.'),
(4, 3, '826683.00', 2, 'Vitae ad ducimus at nihil incidunt accusantium quis. Repellendus temporibus animi dolorem aut. Eius officia minus et sint laudantium accusantium quia repellendus ullam. Nulla odit illum. Eos quasi beatae sit dolor consequatur expedita qui sequi.'),
(5, 3, '257510.00', 2, 'Harum quia suscipit cum voluptas ullam nisi ea. Quo accusamus explicabo in ut porro numquam soluta reprehenderit nulla. Quia distinctio et voluptatem dignissimos earum.'),
(1, 4, '1391996.00', 2, 'Consequatur provident incidunt doloribus sint qui. Fugiat et neque corporis quia. Nihil qui sed qui iusto magnam error quisquam blanditiis. Maxime ut maxime. Aut voluptatem sed ut expedita ut. Ut autem quia et distinctio facilis magnam est est non.'),
(2, 4, '1520422.00', 2, 'Sapiente molestias deleniti ad. Dolorum quis quisquam similique et voluptatem voluptas voluptates velit temporibus. Earum voluptatum eligendi voluptatem odio cupiditate. Quas ipsa amet non quia vel quod. Et voluptatem suscipit perspiciatis velit provident. Commodi officia deleniti libero fugiat officiis aut.'),
(3, 4, '764817.00', 2, 'Vitae excepturi eum et ipsa distinctio hic corrupti. Doloremque et ut quisquam quis est. Reiciendis aut repudiandae omnis eum magnam non. Occaecati deleniti voluptas.'),
(4, 4, '103829.00', 2, 'Quaerat asperiores quia. Voluptas totam ducimus omnis aut dolor voluptas facere et qui. Facilis nam qui et est dolorem nihil error eveniet. Et sit non soluta qui dolor deleniti nobis explicabo. Est quidem eos odit qui. Sit ab nemo vel inventore voluptatem fugit accusantium aut nesciunt.'),
(5, 4, '213342.00', 2, 'Ab nam omnis officia aliquid aut natus voluptatem. Sequi nihil ea qui et sapiente tempore quia sed. Impedit quaerat cupiditate itaque recusandae hic qui nostrum et repudiandae.'),
(1, 5, '1606095.00', 2, 'Iste doloremque odio aperiam facere adipisci reprehenderit. Eum omnis ipsam tempore dignissimos consequuntur. Libero nesciunt totam atque. Possimus ab numquam. Modi quis voluptate ut a nihil sunt. Officia voluptatem et exercitationem consequuntur aliquid.'),
(2, 5, '682345.00', 2, 'Commodi omnis ea non corrupti quaerat aspernatur magnam. Magni est sunt qui voluptatem molestiae eius. Consectetur neque soluta et beatae. Consequatur quia et. Facilis ducimus et. Dolorum fugit aspernatur dolorem rerum rerum dolorem quisquam.'),
(3, 5, '811916.00', 2, 'Perferendis mollitia praesentium molestiae quam sapiente reprehenderit velit sit quos. Sit itaque ea amet dolores qui sint. Quia ut et assumenda quisquam praesentium dolorem quia. Fugit aut minus laboriosam dolorum molestias.'),
(4, 5, '250994.00', 2, 'Nisi dolor est nisi aut error repellat laboriosam. Incidunt qui id quo et dolorem. Id consequatur ipsum explicabo quod qui ratione soluta velit quia. Nesciunt quam placeat a voluptas quia voluptas voluptas quam quam. Alias aut quam earum sed repellendus enim. Iusto et sint aut voluptas quidem iste.'),
(5, 5, '1263843.00', 2, 'Pariatur vitae magni rerum veniam sequi nam ullam. Accusamus vel officiis. Libero in debitis enim iste. Nulla et aut voluptas qui porro sed. Rerum aliquid dolores repudiandae optio. Dolores et enim id suscipit sit.'),
(1, 6, '1161145.00', 2, 'Vitae aliquam soluta quo aut nostrum eaque. Numquam corporis in vel ut culpa aut debitis doloribus. Aut ipsam corporis. Vel deleniti magnam ea adipisci doloribus dolore velit.'),
(2, 6, '1830956.00', 2, 'Doloremque natus et dignissimos maxime et quos et quos quis. Nobis ut unde beatae quasi est omnis perspiciatis. Illo asperiores voluptatem. Aut aperiam voluptatum impedit delectus necessitatibus architecto et id. Veritatis iure rerum facilis.'),
(3, 6, '934696.00', 2, 'Dolores veniam quia atque veritatis accusamus autem ab. Est consequatur in. Eum debitis blanditiis unde deserunt maxime. Tempora accusantium unde. Odit quibusdam autem cumque doloribus voluptatum et aut a doloremque. Laborum rerum voluptatum voluptas vel atque dicta dignissimos voluptatem.'),
(4, 6, '1014363.00', 2, 'Est ut dignissimos quia voluptatem occaecati porro. Impedit velit consequatur nihil modi in. Rerum numquam sunt vitae libero ut voluptatem labore id. At esse aliquid omnis quia. Eum sit rerum ipsam assumenda repellendus sed iste consequatur. In laboriosam et officiis tempora numquam voluptatum voluptas rerum.'),
(5, 6, '152879.00', 2, 'Saepe harum voluptatum amet alias praesentium illum earum pariatur laboriosam. Modi dolore ipsum dolor in. Quaerat consectetur labore possimus est et non modi mollitia. Et ut voluptas id pariatur rerum dolorum.'),
(1, 7, '1960165.00', 2, 'Consequatur inventore id qui nisi sequi aspernatur. Qui et eius qui rerum voluptatibus eaque nesciunt commodi aspernatur. Numquam fugiat accusamus nihil. Fugiat qui ut repudiandae consequatur.'),
(2, 7, '535168.00', 2, 'Illum et doloribus sed repellat vero officia. Eum dolores quae non non modi aliquam. Error quo ratione unde culpa itaque numquam.'),
(3, 7, '820297.00', 2, 'Quo optio placeat rerum. Nemo sunt qui. Et eius omnis autem dicta et ut dolor exercitationem. Tenetur accusantium delectus sunt placeat quam similique non quia voluptatem. Quia ducimus dolorem impedit deserunt.'),
(4, 7, '101119.00', 2, 'Rerum omnis voluptas fugit rerum itaque. Veritatis sapiente architecto nobis rerum eaque. Sed a beatae doloribus tempore earum nesciunt. Doloremque ipsum qui dolorum voluptas. Facere nihil qui tenetur illo vero iusto voluptas ut.'),
(5, 7, '833990.00', 2, 'Officiis sit voluptates consequatur. Recusandae quo ut ducimus reiciendis ipsa. Repellendus asperiores nostrum et id sint. Voluptatem atque velit consequatur. Et ipsum impedit fugit qui consequuntur temporibus.'),
(1, 8, '798720.00', 2, 'Qui aut quia ut dolor minima in non nihil. Velit dignissimos sit non nobis consequatur aut sunt. Explicabo eum distinctio. Et explicabo et quam. Quia sed cum omnis mollitia veritatis et.'),
(2, 8, '875113.00', 2, 'Architecto eveniet temporibus voluptas. Excepturi rerum voluptatem quis dolorem. Doloribus in laboriosam quae qui sint voluptatem ducimus recusandae rerum. Sed reiciendis itaque eaque hic incidunt. Ut in accusamus quia tenetur sed ipsa eos ratione voluptas.'),
(3, 8, '1323954.00', 2, 'Modi ea qui fugiat cum. Voluptas at eligendi. Nostrum aut nihil neque quisquam alias quaerat cum praesentium.'),
(4, 8, '206801.00', 2, 'Soluta maiores mollitia facere. Ratione dignissimos at. Sint labore ut nobis nihil. Hic quia reiciendis qui corrupti deserunt.'),
(5, 8, '1919619.00', 2, 'Itaque sit expedita voluptatem laboriosam. Molestias voluptas labore. Est rerum optio ad quisquam rerum. Velit consectetur labore perspiciatis quo est eveniet sed excepturi. Sed aut exercitationem. Ut mollitia voluptate qui recusandae.'),
(1, 9, '711558.00', 2, 'Officia suscipit ut voluptatem. Possimus similique est. Eum quia enim animi eos maxime alias eius pariatur. Error sed debitis minima repellendus ipsa dolor nulla quia aut.'),
(2, 9, '1369918.00', 2, 'Ut tempore quod doloribus error et corrupti fugit. Nisi explicabo fugit cum impedit consequatur ut aspernatur. Atque explicabo non. Est velit dolor temporibus eius eum fugiat veritatis tempora. Excepturi officia recusandae sed tenetur eos quia fuga. Aut voluptates amet enim.'),
(3, 9, '923057.00', 2, 'Quia quas autem earum ratione. Enim quas nobis possimus libero id et ab. Ipsam porro unde quod unde sunt doloribus. Quod ipsa suscipit et.'),
(4, 9, '513298.00', 2, 'Voluptatem et ea. Delectus quia et numquam incidunt deserunt praesentium ut tenetur rerum. Voluptatem non alias dolor aspernatur error. Est voluptatem voluptatibus illum quaerat numquam est iste. Vel quam placeat aperiam qui corrupti.'),
(5, 9, '245220.00', 2, 'Nemo ut quia et officiis ut repellendus totam velit quo. Veritatis ipsum similique eveniet. Blanditiis harum asperiores. Iste temporibus quia provident laudantium. Laboriosam placeat architecto nemo aut. Sit sunt est sint vel quisquam dignissimos libero aliquid.'),
(1, 10, '827917.00', 2, 'Sequi voluptatibus hic excepturi facilis nesciunt quia. Ex impedit aut sint quos qui. Totam velit delectus praesentium accusantium dolorum labore ratione delectus. Id velit nobis enim praesentium magni necessitatibus magnam consequatur minima. Tempore ad sint quae id doloribus deleniti. Esse ducimus est perspiciatis dolores.'),
(2, 10, '744318.00', 2, 'Et libero dolorum sapiente. Ea error et occaecati. Eum omnis voluptates repellat assumenda. Ut ut fugit suscipit est rerum omnis quod pariatur est.'),
(3, 10, '1452998.00', 2, 'Aut voluptatum consequatur aliquam nisi. Sit architecto soluta assumenda impedit odit eum incidunt. Maiores ut autem qui et.'),
(4, 10, '1344078.00', 2, 'Vel fuga qui commodi quis expedita omnis mollitia praesentium. Sunt adipisci illum blanditiis perspiciatis quasi fugiat quidem quis. Rerum sit nobis ducimus. Qui nulla nostrum quos labore illum quibusdam aut odio voluptatem.'),
(5, 10, '504492.00', 2, 'Nesciunt laudantium eaque delectus non minima ipsum dolorem est. Similique consequatur non sit. Consequatur modi debitis laboriosam quidem. Praesentium iure deserunt quibusdam.');

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
(58, '20200116023106_roles.js', 1, '2020-01-27 07:30:43'),
(59, '20200121190637_users.js', 1, '2020-01-27 07:30:43'),
(60, '20200121203733_province.js', 1, '2020-01-27 07:30:43'),
(61, '20200121204111_city.js', 1, '2020-01-27 07:30:44'),
(62, '20200121211255_hotels.js', 1, '2020-01-27 07:30:44'),
(63, '20200121212131_amenities.js', 1, '2020-01-27 07:30:44'),
(64, '20200121212309_hotel_amenities.js', 1, '2020-01-27 07:30:44'),
(65, '20200121212540_room_types.js', 1, '2020-01-27 07:30:44'),
(66, '20200121212700_hotel_rooms.js', 1, '2020-01-27 07:30:45'),
(67, '20200121213027_room_amenities.js', 1, '2020-01-27 07:30:45'),
(68, '20200121214154_room_ratings.js', 1, '2020-01-27 07:30:46'),
(69, '20200121215225_room_costs.js', 1, '2020-01-27 07:30:47'),
(70, '20200121230655_revoked_token.js', 1, '2020-01-27 07:30:47'),
(71, '20200122042142_otp_codes.js', 1, '2020-01-27 07:30:47'),
(72, '20200122202037_hotel_images.js', 1, '2020-01-27 07:30:47'),
(73, '20200122202431_room_images.js', 1, '2020-01-27 07:30:47'),
(74, '20200123163221_balance.js', 1, '2020-01-27 07:30:47'),
(75, '20200123163350_balance_history.js', 1, '2020-01-27 07:30:48'),
(76, '20200125022252_orders.js', 1, '2020-01-27 07:30:48');

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
  `token` text,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'administrator'),
(2, 'customer');

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
(1, 1, 1, 1, '35670.00'),
(2, 2, 1, 1, '40163.00'),
(3, 3, 1, 3, '5733.00'),
(4, 4, 1, 3, '43358.00'),
(5, 3, 1, 1, '87826.00'),
(6, 4, 1, 2, '89371.00'),
(7, 4, 1, 1, '41248.00'),
(8, 1, 1, 2, '65632.00'),
(9, 2, 1, 2, '50544.00'),
(10, 1, 1, 3, '43391.00'),
(11, 2, 1, 3, '70086.00'),
(12, 3, 1, 2, '50686.00'),
(13, 1, 1, 4, '24740.00'),
(14, 2, 1, 4, '85436.00'),
(15, 3, 1, 4, '69241.00'),
(16, 4, 1, 4, '91168.00'),
(17, 1, 1, 5, '13356.00'),
(18, 2, 1, 5, '75017.00'),
(19, 3, 1, 5, '54732.00'),
(20, 4, 1, 5, '20441.00'),
(21, 1, 2, 1, '47146.00'),
(22, 2, 2, 1, '58380.00'),
(23, 3, 2, 1, '923.00'),
(24, 4, 2, 1, '70076.00'),
(25, 1, 2, 2, '88275.00'),
(26, 2, 2, 2, '99365.00'),
(27, 3, 2, 2, '58958.00'),
(28, 4, 2, 2, '69177.00'),
(29, 1, 2, 3, '53224.00'),
(30, 2, 2, 3, '59781.00'),
(31, 3, 2, 3, '18553.00'),
(32, 4, 2, 3, '38977.00'),
(33, 2, 2, 4, '96782.00'),
(34, 1, 2, 4, '87027.00'),
(35, 3, 2, 4, '98255.00'),
(36, 4, 2, 4, '65580.00'),
(37, 1, 2, 5, '78151.00'),
(38, 2, 2, 5, '53967.00'),
(39, 3, 2, 5, '48873.00'),
(40, 4, 2, 5, '96998.00'),
(41, 1, 3, 1, '96829.00'),
(42, 2, 3, 1, '71624.00'),
(43, 3, 3, 1, '7597.00'),
(44, 4, 3, 1, '17360.00'),
(45, 1, 3, 2, '9948.00'),
(46, 2, 3, 2, '45335.00'),
(47, 3, 3, 2, '60069.00'),
(48, 1, 3, 3, '94206.00'),
(49, 3, 3, 3, '14705.00'),
(50, 2, 3, 3, '10552.00'),
(51, 4, 3, 3, '99801.00'),
(52, 4, 3, 2, '32224.00'),
(53, 1, 3, 4, '95340.00'),
(54, 2, 3, 4, '17124.00'),
(55, 3, 3, 4, '22024.00'),
(56, 4, 3, 4, '76882.00'),
(57, 2, 3, 5, '64490.00'),
(58, 1, 3, 5, '82737.00'),
(59, 3, 3, 5, '3453.00'),
(60, 4, 3, 5, '65803.00'),
(61, 1, 4, 1, '11306.00'),
(62, 2, 4, 1, '89970.00'),
(63, 3, 4, 1, '29570.00'),
(64, 1, 4, 2, '39244.00'),
(65, 4, 4, 1, '67138.00'),
(66, 2, 4, 2, '33525.00'),
(67, 3, 4, 2, '82249.00'),
(68, 4, 4, 2, '79529.00'),
(69, 1, 4, 3, '54434.00'),
(70, 2, 4, 3, '89005.00'),
(71, 3, 4, 3, '82582.00'),
(72, 4, 4, 3, '244.00'),
(73, 1, 4, 4, '56414.00'),
(74, 2, 4, 4, '61226.00'),
(75, 3, 4, 4, '825.00'),
(76, 4, 4, 4, '87290.00'),
(77, 1, 4, 5, '55334.00'),
(78, 2, 4, 5, '42502.00'),
(79, 3, 4, 5, '59943.00'),
(80, 4, 4, 5, '37293.00'),
(81, 1, 5, 1, '50451.00'),
(82, 2, 5, 1, '41741.00'),
(83, 3, 5, 1, '48442.00'),
(84, 4, 5, 1, '65874.00'),
(85, 1, 5, 2, '98733.00'),
(86, 2, 5, 2, '27640.00'),
(87, 3, 5, 2, '63881.00'),
(88, 4, 5, 2, '68403.00'),
(89, 1, 5, 3, '3074.00'),
(90, 3, 5, 3, '12319.00'),
(91, 2, 5, 3, '61446.00'),
(92, 4, 5, 3, '12340.00'),
(93, 1, 5, 4, '85601.00'),
(94, 2, 5, 4, '39214.00'),
(95, 3, 5, 4, '42607.00'),
(96, 4, 5, 4, '13917.00'),
(97, 1, 5, 5, '78549.00'),
(98, 2, 5, 5, '20669.00'),
(99, 3, 5, 5, '74808.00'),
(100, 4, 5, 5, '21473.00'),
(101, 1, 6, 1, '44822.00'),
(102, 2, 6, 1, '35073.00'),
(103, 3, 6, 1, '68730.00'),
(104, 4, 6, 1, '78794.00'),
(105, 1, 6, 2, '78875.00'),
(106, 2, 6, 2, '17621.00'),
(107, 3, 6, 2, '7175.00'),
(108, 4, 6, 2, '12333.00'),
(109, 1, 6, 3, '64956.00'),
(110, 2, 6, 3, '31300.00'),
(111, 3, 6, 3, '43414.00'),
(112, 4, 6, 3, '94175.00'),
(113, 1, 6, 4, '39571.00'),
(114, 2, 6, 4, '90870.00'),
(115, 3, 6, 4, '5641.00'),
(116, 4, 6, 4, '51907.00'),
(117, 1, 6, 5, '57436.00'),
(118, 2, 6, 5, '97173.00'),
(119, 3, 6, 5, '25558.00'),
(120, 4, 6, 5, '59951.00'),
(121, 1, 7, 1, '37111.00'),
(122, 2, 7, 1, '39218.00'),
(123, 3, 7, 1, '32247.00'),
(124, 4, 7, 1, '84352.00'),
(125, 1, 7, 2, '49058.00'),
(126, 2, 7, 2, '69435.00'),
(127, 3, 7, 2, '81029.00'),
(128, 4, 7, 2, '44337.00'),
(129, 1, 7, 3, '58917.00'),
(130, 2, 7, 3, '26189.00'),
(131, 3, 7, 3, '82672.00'),
(132, 4, 7, 3, '32529.00'),
(133, 1, 7, 4, '81071.00'),
(134, 2, 7, 4, '23442.00'),
(135, 3, 7, 4, '17917.00'),
(136, 4, 7, 4, '59848.00'),
(137, 1, 7, 5, '98269.00'),
(138, 2, 7, 5, '34836.00'),
(139, 3, 7, 5, '58414.00'),
(140, 4, 7, 5, '47476.00'),
(141, 1, 8, 1, '30393.00'),
(142, 2, 8, 1, '58005.00'),
(143, 3, 8, 1, '15658.00'),
(144, 4, 8, 1, '45785.00'),
(145, 1, 8, 2, '95232.00'),
(146, 2, 8, 2, '13480.00'),
(147, 3, 8, 2, '57792.00'),
(148, 4, 8, 2, '81423.00'),
(149, 1, 8, 3, '13010.00'),
(150, 2, 8, 3, '80730.00'),
(151, 3, 8, 3, '9313.00'),
(152, 4, 8, 3, '87474.00'),
(153, 1, 8, 4, '27325.00'),
(154, 2, 8, 4, '73252.00'),
(155, 3, 8, 4, '95702.00'),
(156, 4, 8, 4, '90783.00'),
(157, 1, 8, 5, '49440.00'),
(158, 2, 8, 5, '53516.00'),
(159, 3, 8, 5, '28364.00'),
(160, 4, 8, 5, '37427.00'),
(161, 1, 9, 1, '35592.00'),
(162, 2, 9, 1, '85734.00'),
(163, 3, 9, 1, '33980.00'),
(164, 4, 9, 1, '57759.00'),
(165, 1, 9, 2, '68490.00'),
(166, 2, 9, 2, '90177.00'),
(167, 3, 9, 2, '40464.00'),
(168, 4, 9, 2, '99893.00'),
(169, 1, 9, 3, '29563.00'),
(170, 2, 9, 3, '32181.00'),
(171, 3, 9, 3, '25164.00'),
(172, 4, 9, 3, '72908.00'),
(173, 1, 9, 4, '25800.00'),
(174, 2, 9, 4, '22249.00'),
(175, 3, 9, 4, '27532.00'),
(176, 4, 9, 4, '1063.00'),
(177, 1, 9, 5, '72405.00'),
(178, 2, 9, 5, '63274.00'),
(179, 3, 9, 5, '30214.00'),
(180, 4, 9, 5, '69705.00'),
(181, 1, 10, 1, '57758.00'),
(182, 2, 10, 1, '37476.00'),
(183, 3, 10, 1, '91891.00'),
(184, 4, 10, 1, '66280.00'),
(185, 1, 10, 2, '8720.00'),
(186, 2, 10, 2, '31857.00'),
(187, 3, 10, 2, '99763.00'),
(188, 4, 10, 2, '31718.00'),
(189, 1, 10, 3, '60177.00'),
(190, 2, 10, 3, '74416.00'),
(191, 3, 10, 3, '56143.00'),
(192, 4, 10, 3, '8955.00'),
(193, 1, 10, 4, '44037.00'),
(194, 2, 10, 4, '77575.00'),
(195, 3, 10, 4, '11843.00'),
(196, 4, 10, 4, '96643.00'),
(197, 1, 10, 5, '37840.00'),
(198, 2, 10, 5, '19927.00'),
(199, 3, 10, 5, '73649.00'),
(200, 4, 10, 5, '95276.00');

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
(1, 1, 1, '909644.00', 29.0, '50399.00'),
(2, 1, 2, '1397225.00', 38.0, '53910.00'),
(3, 3, 1, '27999.00', 37.0, '26215.00'),
(4, 1, 5, '1208825.00', 42.0, '23154.00'),
(5, 1, 3, '999888.00', 100.0, '28281.00'),
(6, 2, 4, '534175.00', 6.0, '84467.00'),
(7, 1, 4, '35315.00', 15.0, '88151.00'),
(8, 2, 2, '840679.00', 63.0, '78755.00'),
(9, 2, 5, '1090265.00', 17.0, '16185.00'),
(10, 2, 3, '695766.00', 51.0, '94084.00'),
(11, 2, 1, '1454580.00', 36.0, '95282.00'),
(12, 3, 2, '637873.00', 21.0, '19931.00'),
(13, 3, 3, '1765378.00', 99.0, '78118.00'),
(14, 3, 4, '277436.00', 82.0, '15607.00'),
(15, 3, 5, '593794.00', 91.0, '11224.00'),
(16, 4, 1, '47243.00', 18.0, '62270.00'),
(17, 4, 2, '246556.00', 45.0, '23619.00'),
(18, 4, 3, '750100.00', 36.0, '51224.00'),
(19, 4, 4, '1386041.00', 24.0, '85730.00'),
(20, 4, 5, '189383.00', 65.0, '46035.00'),
(21, 5, 1, '517322.00', 66.0, '6482.00'),
(22, 5, 2, '274442.00', 93.0, '44287.00'),
(23, 5, 3, '925006.00', 98.0, '11276.00'),
(24, 5, 4, '1606462.00', 58.0, '23522.00'),
(25, 5, 5, '1794173.00', 43.0, '24865.00'),
(26, 6, 1, '597685.00', 20.0, '89172.00'),
(27, 6, 2, '72107.00', 79.0, '77873.00'),
(28, 6, 3, '1897018.00', 2.0, '4655.00'),
(29, 6, 4, '920959.00', 79.0, '63954.00'),
(30, 6, 5, '1121746.00', 69.0, '98171.00'),
(31, 7, 1, '1529359.00', 72.0, '54433.00'),
(32, 7, 2, '938799.00', 63.0, '99600.00'),
(33, 7, 3, '1445182.00', 52.0, '5184.00'),
(34, 7, 4, '1740054.00', 62.0, '41748.00'),
(35, 7, 5, '1763918.00', 17.0, '48833.00'),
(36, 8, 1, '941552.00', 12.0, '48825.00'),
(37, 8, 2, '1037662.00', 81.0, '61584.00'),
(38, 8, 3, '440036.00', 78.0, '8274.00'),
(39, 8, 4, '1350735.00', 24.0, '26642.00'),
(40, 8, 5, '105664.00', 42.0, '36472.00'),
(41, 9, 1, '1286571.00', 23.0, '61860.00'),
(42, 9, 2, '518414.00', 79.0, '6103.00'),
(43, 9, 3, '521175.00', 68.0, '62330.00'),
(44, 9, 4, '337471.00', 35.0, '85849.00'),
(45, 9, 5, '1073110.00', 32.0, '21476.00'),
(46, 10, 1, '791174.00', 12.0, '97944.00'),
(47, 10, 2, '174581.00', 100.0, '63811.00'),
(48, 10, 3, '1198842.00', 71.0, '51090.00'),
(49, 10, 4, '909921.00', 60.0, '40672.00'),
(50, 10, 5, '263435.00', 53.0, '32080.00');

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
(1, 1, 1, 'default.png', '2020-01-27 14:30:58'),
(2, 1, 2, 'default.png', '2020-01-27 14:30:58'),
(3, 3, 1, 'default.png', '2020-01-27 14:30:58'),
(4, 3, 2, 'default.png', '2020-01-27 14:30:58'),
(5, 2, 5, 'default.png', '2020-01-27 14:30:58'),
(6, 2, 4, 'default.png', '2020-01-27 14:30:58'),
(7, 2, 1, 'default.png', '2020-01-27 14:30:58'),
(8, 2, 3, 'default.png', '2020-01-27 14:30:58'),
(9, 1, 3, 'default.png', '2020-01-27 14:30:58'),
(10, 1, 4, 'default.png', '2020-01-27 14:30:58'),
(11, 2, 2, 'default.png', '2020-01-27 14:30:58'),
(12, 1, 5, 'default.png', '2020-01-27 14:30:58'),
(13, 3, 3, 'default.png', '2020-01-27 14:30:58'),
(14, 3, 4, 'default.png', '2020-01-27 14:30:58'),
(15, 3, 5, 'default.png', '2020-01-27 14:30:58'),
(16, 4, 1, 'default.png', '2020-01-27 14:30:58'),
(17, 4, 2, 'default.png', '2020-01-27 14:30:58'),
(18, 4, 3, 'default.png', '2020-01-27 14:30:58'),
(19, 4, 4, 'default.png', '2020-01-27 14:30:58'),
(20, 4, 5, 'default.png', '2020-01-27 14:30:58'),
(21, 5, 1, 'default.png', '2020-01-27 14:30:58'),
(22, 5, 2, 'default.png', '2020-01-27 14:30:58'),
(23, 5, 3, 'default.png', '2020-01-27 14:30:58'),
(24, 5, 4, 'default.png', '2020-01-27 14:30:58'),
(25, 5, 5, 'default.png', '2020-01-27 14:30:58'),
(26, 6, 1, 'default.png', '2020-01-27 14:30:58'),
(27, 6, 2, 'default.png', '2020-01-27 14:30:58'),
(28, 6, 3, 'default.png', '2020-01-27 14:30:58'),
(29, 6, 4, 'default.png', '2020-01-27 14:30:58'),
(30, 6, 5, 'default.png', '2020-01-27 14:30:58'),
(31, 7, 1, 'default.png', '2020-01-27 14:30:58'),
(32, 7, 2, 'default.png', '2020-01-27 14:30:58'),
(33, 7, 3, 'default.png', '2020-01-27 14:30:58'),
(34, 7, 4, 'default.png', '2020-01-27 14:30:58'),
(35, 7, 5, 'default.png', '2020-01-27 14:30:58'),
(36, 8, 1, 'default.png', '2020-01-27 14:30:58'),
(37, 8, 2, 'default.png', '2020-01-27 14:30:58'),
(38, 8, 3, 'default.png', '2020-01-27 14:30:58'),
(39, 8, 4, 'default.png', '2020-01-27 14:30:58'),
(40, 9, 1, 'default.png', '2020-01-27 14:30:59'),
(41, 8, 5, 'default.png', '2020-01-27 14:30:59'),
(42, 9, 2, 'default.png', '2020-01-27 14:30:59'),
(43, 9, 3, 'default.png', '2020-01-27 14:30:59'),
(44, 9, 4, 'default.png', '2020-01-27 14:30:59'),
(45, 9, 5, 'default.png', '2020-01-27 14:30:59'),
(46, 10, 1, 'default.png', '2020-01-27 14:30:59'),
(47, 10, 2, 'default.png', '2020-01-27 14:30:59'),
(48, 10, 3, 'default.png', '2020-01-27 14:30:59'),
(49, 10, 4, 'default.png', '2020-01-27 14:30:59'),
(50, 10, 5, 'default.png', '2020-01-27 14:30:59');

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
(1, 1, 1, 2, 0.0),
(2, 1, 1, 3, 1.0),
(3, 1, 2, 2, 4.0),
(4, 1, 2, 3, 4.0),
(5, 1, 1, 6, 4.0),
(6, 1, 1, 7, 4.0),
(7, 1, 1, 11, 2.0),
(8, 1, 1, 4, 2.0),
(9, 1, 1, 5, 1.0),
(10, 1, 1, 10, 2.0),
(11, 1, 1, 8, 3.0),
(12, 1, 1, 9, 4.0),
(13, 1, 2, 4, 4.0),
(14, 1, 2, 5, 3.0),
(15, 1, 2, 6, 0.0),
(16, 1, 2, 7, 5.0),
(17, 1, 2, 8, 3.0),
(18, 1, 2, 9, 5.0),
(19, 1, 2, 10, 3.0),
(20, 1, 2, 11, 0.0),
(21, 1, 3, 2, 0.0),
(22, 1, 3, 3, 2.0),
(23, 1, 3, 4, 3.0),
(24, 1, 3, 5, 4.0),
(25, 1, 3, 6, 0.0),
(26, 1, 3, 7, 3.0),
(27, 1, 3, 8, 0.0),
(28, 1, 3, 9, 0.0),
(29, 1, 3, 10, 3.0),
(30, 1, 3, 11, 4.0),
(31, 1, 4, 2, 5.0),
(32, 1, 4, 3, 1.0),
(33, 1, 4, 4, 4.0),
(34, 1, 4, 5, 1.0),
(35, 1, 4, 6, 3.0),
(36, 1, 4, 7, 2.0),
(37, 1, 4, 8, 5.0),
(38, 1, 4, 9, 5.0),
(39, 1, 4, 10, 1.0),
(40, 1, 4, 11, 0.0),
(41, 1, 5, 2, 3.0),
(42, 1, 5, 3, 3.0),
(43, 1, 5, 4, 5.0),
(44, 1, 5, 5, 0.0),
(45, 1, 5, 6, 4.0),
(46, 1, 5, 7, 2.0),
(47, 1, 5, 8, 3.0),
(48, 1, 5, 9, 0.0),
(49, 1, 5, 10, 0.0),
(50, 1, 5, 11, 1.0),
(51, 2, 1, 2, 0.0),
(52, 2, 1, 3, 3.0),
(53, 2, 1, 4, 2.0),
(54, 2, 1, 5, 2.0),
(55, 2, 1, 6, 0.0),
(56, 2, 1, 7, 2.0),
(57, 2, 1, 8, 3.0),
(58, 2, 1, 9, 3.0),
(59, 2, 1, 10, 1.0),
(60, 2, 2, 2, 1.0),
(61, 2, 1, 11, 5.0),
(62, 2, 2, 3, 0.0),
(63, 2, 2, 4, 2.0),
(64, 2, 2, 5, 0.0),
(65, 2, 2, 6, 1.0),
(66, 2, 2, 7, 2.0),
(67, 2, 2, 8, 1.0),
(68, 2, 2, 9, 5.0),
(69, 2, 2, 10, 0.0),
(70, 2, 2, 11, 0.0),
(71, 2, 3, 2, 0.0),
(72, 2, 3, 3, 2.0),
(73, 2, 3, 4, 1.0),
(74, 2, 3, 5, 2.0),
(75, 2, 3, 6, 4.0),
(76, 2, 3, 7, 4.0),
(77, 2, 3, 8, 5.0),
(78, 2, 3, 9, 5.0),
(79, 2, 3, 10, 4.0),
(80, 2, 3, 11, 3.0),
(81, 2, 4, 2, 4.0),
(82, 2, 4, 3, 5.0),
(83, 2, 4, 4, 1.0),
(84, 2, 4, 5, 3.0),
(85, 2, 4, 6, 5.0),
(86, 2, 4, 7, 1.0),
(87, 2, 4, 8, 2.0),
(88, 2, 4, 10, 5.0),
(89, 2, 4, 9, 1.0),
(90, 2, 4, 11, 3.0),
(91, 2, 5, 2, 1.0),
(92, 2, 5, 3, 2.0),
(93, 2, 5, 4, 3.0),
(94, 2, 5, 5, 0.0),
(95, 2, 5, 6, 5.0),
(96, 2, 5, 7, 3.0),
(97, 2, 5, 8, 4.0),
(98, 2, 5, 9, 0.0),
(99, 2, 5, 10, 2.0),
(100, 2, 5, 11, 5.0),
(101, 3, 1, 2, 3.0),
(102, 3, 1, 3, 5.0),
(103, 3, 1, 4, 2.0),
(104, 3, 1, 5, 1.0),
(105, 3, 1, 6, 3.0),
(106, 3, 1, 7, 2.0),
(107, 3, 1, 8, 5.0),
(108, 3, 1, 9, 5.0),
(109, 3, 1, 10, 2.0),
(110, 3, 1, 11, 2.0),
(111, 3, 2, 2, 2.0),
(112, 3, 2, 3, 4.0),
(113, 3, 2, 4, 4.0),
(114, 3, 2, 5, 0.0),
(115, 3, 2, 6, 3.0),
(116, 3, 2, 7, 5.0),
(117, 3, 2, 8, 0.0),
(118, 3, 2, 9, 3.0),
(119, 3, 2, 10, 2.0),
(120, 3, 2, 11, 5.0),
(121, 3, 3, 2, 3.0),
(122, 3, 3, 3, 3.0),
(123, 3, 3, 4, 5.0),
(124, 3, 3, 5, 4.0),
(125, 3, 3, 6, 0.0),
(126, 3, 3, 7, 1.0),
(127, 3, 3, 8, 0.0),
(128, 3, 3, 9, 3.0),
(129, 3, 3, 10, 3.0),
(130, 3, 3, 11, 2.0),
(131, 3, 4, 2, 4.0),
(132, 3, 4, 3, 5.0),
(133, 3, 4, 4, 2.0),
(134, 3, 4, 5, 4.0),
(135, 3, 4, 6, 3.0),
(136, 3, 4, 7, 0.0),
(137, 3, 4, 8, 2.0),
(138, 3, 4, 9, 3.0),
(139, 3, 4, 10, 1.0),
(140, 3, 4, 11, 4.0),
(141, 3, 5, 2, 1.0),
(142, 3, 5, 3, 4.0),
(143, 3, 5, 4, 0.0),
(144, 3, 5, 5, 4.0),
(145, 3, 5, 6, 0.0),
(146, 3, 5, 7, 0.0),
(147, 3, 5, 8, 4.0),
(148, 3, 5, 9, 1.0),
(149, 3, 5, 10, 2.0),
(150, 3, 5, 11, 1.0),
(151, 4, 1, 2, 4.0),
(152, 4, 1, 3, 1.0),
(153, 4, 1, 6, 2.0),
(154, 4, 1, 5, 5.0),
(155, 4, 1, 7, 1.0),
(156, 4, 1, 8, 0.0),
(157, 4, 1, 4, 2.0),
(158, 4, 1, 9, 1.0),
(159, 4, 1, 10, 2.0),
(160, 4, 1, 11, 3.0),
(161, 4, 2, 2, 3.0),
(162, 4, 2, 3, 1.0),
(163, 4, 2, 4, 2.0),
(164, 4, 2, 5, 3.0),
(165, 4, 2, 6, 4.0),
(166, 4, 2, 7, 0.0),
(167, 4, 2, 8, 1.0),
(168, 4, 2, 9, 5.0),
(169, 4, 2, 10, 2.0),
(170, 4, 2, 11, 5.0),
(171, 4, 3, 2, 1.0),
(172, 4, 3, 3, 0.0),
(173, 4, 3, 5, 3.0),
(174, 4, 3, 6, 3.0),
(175, 4, 3, 4, 4.0),
(176, 4, 3, 7, 1.0),
(177, 4, 3, 8, 4.0),
(178, 4, 3, 9, 4.0),
(179, 4, 3, 10, 2.0),
(180, 4, 3, 11, 5.0),
(181, 4, 4, 2, 1.0),
(182, 4, 4, 3, 1.0),
(183, 4, 4, 4, 4.0),
(184, 4, 4, 5, 2.0),
(185, 4, 4, 6, 1.0),
(186, 4, 4, 7, 3.0),
(187, 4, 4, 8, 2.0),
(188, 4, 4, 9, 4.0),
(189, 4, 4, 10, 2.0),
(190, 4, 4, 11, 1.0),
(191, 4, 5, 2, 0.0),
(192, 4, 5, 3, 2.0),
(193, 4, 5, 4, 2.0),
(194, 4, 5, 5, 1.0),
(195, 4, 5, 8, 1.0),
(196, 4, 5, 7, 4.0),
(197, 4, 5, 10, 0.0),
(198, 4, 5, 6, 4.0),
(199, 4, 5, 11, 2.0),
(200, 4, 5, 9, 3.0),
(201, 5, 1, 4, 3.0),
(202, 5, 1, 2, 5.0),
(203, 5, 1, 5, 4.0),
(204, 5, 1, 3, 3.0),
(205, 5, 1, 6, 5.0),
(206, 5, 1, 7, 5.0),
(207, 5, 1, 8, 3.0),
(208, 5, 1, 9, 1.0),
(209, 5, 1, 10, 5.0),
(210, 5, 1, 11, 1.0),
(211, 5, 2, 2, 2.0),
(212, 5, 2, 3, 0.0),
(213, 5, 2, 4, 2.0),
(214, 5, 2, 5, 1.0),
(215, 5, 2, 6, 1.0),
(216, 5, 2, 7, 2.0),
(217, 5, 2, 8, 1.0),
(218, 5, 2, 9, 1.0),
(219, 5, 2, 10, 3.0),
(220, 5, 2, 11, 4.0),
(221, 5, 3, 2, 0.0),
(222, 5, 3, 3, 5.0),
(223, 5, 3, 4, 1.0),
(224, 5, 3, 5, 3.0),
(225, 5, 3, 6, 1.0),
(226, 5, 3, 7, 2.0),
(227, 5, 3, 8, 2.0),
(228, 5, 3, 9, 0.0),
(229, 5, 3, 10, 1.0),
(230, 5, 3, 11, 4.0),
(231, 5, 4, 2, 3.0),
(232, 5, 4, 3, 2.0),
(233, 5, 4, 4, 2.0),
(234, 5, 4, 5, 3.0),
(235, 5, 4, 6, 2.0),
(236, 5, 4, 7, 4.0),
(237, 5, 4, 8, 4.0),
(238, 5, 4, 9, 0.0),
(239, 5, 4, 10, 2.0),
(240, 5, 4, 11, 1.0),
(241, 5, 5, 2, 0.0),
(242, 5, 5, 3, 0.0),
(243, 5, 5, 4, 1.0),
(244, 5, 5, 5, 4.0),
(245, 5, 5, 6, 4.0),
(246, 5, 5, 7, 4.0),
(247, 5, 5, 8, 4.0),
(248, 5, 5, 9, 2.0),
(249, 5, 5, 10, 2.0),
(250, 5, 5, 11, 3.0),
(251, 6, 1, 2, 4.0),
(252, 6, 1, 3, 2.0),
(253, 6, 1, 4, 4.0),
(254, 6, 1, 5, 5.0),
(255, 6, 1, 6, 0.0),
(256, 6, 1, 7, 1.0),
(257, 6, 1, 8, 4.0),
(258, 6, 1, 9, 3.0),
(259, 6, 1, 11, 5.0),
(260, 6, 2, 2, 0.0),
(261, 6, 1, 10, 0.0),
(262, 6, 2, 3, 5.0),
(263, 6, 2, 4, 4.0),
(264, 6, 2, 5, 0.0),
(265, 6, 2, 6, 0.0),
(266, 6, 2, 7, 3.0),
(267, 6, 2, 8, 5.0),
(268, 6, 2, 9, 3.0),
(269, 6, 2, 10, 3.0),
(270, 6, 2, 11, 2.0),
(271, 6, 3, 2, 2.0),
(272, 6, 3, 3, 4.0),
(273, 6, 3, 4, 3.0),
(274, 6, 3, 5, 4.0),
(275, 6, 3, 6, 0.0),
(276, 6, 3, 7, 5.0),
(277, 6, 3, 8, 4.0),
(278, 6, 3, 9, 5.0),
(279, 6, 3, 10, 1.0),
(280, 6, 3, 11, 4.0),
(281, 6, 4, 2, 3.0),
(282, 6, 4, 3, 3.0),
(283, 6, 4, 4, 4.0),
(284, 6, 4, 5, 2.0),
(285, 6, 4, 6, 2.0),
(286, 6, 4, 7, 1.0),
(287, 6, 4, 8, 2.0),
(288, 6, 4, 9, 3.0),
(289, 6, 4, 10, 1.0),
(290, 6, 4, 11, 3.0),
(291, 6, 5, 2, 2.0),
(292, 6, 5, 3, 1.0),
(293, 6, 5, 4, 3.0),
(294, 6, 5, 5, 1.0),
(295, 6, 5, 6, 2.0),
(296, 6, 5, 7, 3.0),
(297, 6, 5, 8, 3.0),
(298, 6, 5, 9, 2.0),
(299, 6, 5, 10, 4.0),
(300, 6, 5, 11, 3.0),
(301, 7, 1, 2, 1.0),
(302, 7, 1, 3, 4.0),
(303, 7, 1, 4, 2.0),
(304, 7, 1, 5, 2.0),
(305, 7, 1, 6, 5.0),
(306, 7, 1, 7, 2.0),
(307, 7, 1, 8, 1.0),
(308, 7, 1, 10, 5.0),
(309, 7, 1, 9, 5.0),
(310, 7, 1, 11, 0.0),
(311, 7, 2, 2, 3.0),
(312, 7, 2, 3, 1.0),
(313, 7, 2, 4, 1.0),
(314, 7, 2, 6, 1.0),
(315, 7, 2, 7, 3.0),
(316, 7, 2, 5, 3.0),
(317, 7, 2, 8, 1.0),
(318, 7, 2, 9, 3.0),
(319, 7, 2, 10, 2.0),
(320, 7, 2, 11, 0.0),
(321, 7, 3, 2, 2.0),
(322, 7, 3, 3, 2.0),
(323, 7, 3, 4, 1.0),
(324, 7, 3, 5, 3.0),
(325, 7, 3, 6, 3.0),
(326, 7, 3, 7, 3.0),
(327, 7, 3, 8, 4.0),
(328, 7, 3, 9, 3.0),
(329, 7, 3, 10, 1.0),
(330, 7, 3, 11, 2.0),
(331, 7, 4, 2, 1.0),
(332, 7, 4, 3, 1.0),
(333, 7, 4, 4, 0.0),
(334, 7, 4, 5, 4.0),
(335, 7, 4, 6, 5.0),
(336, 7, 4, 7, 3.0),
(337, 7, 4, 8, 4.0),
(338, 7, 4, 9, 3.0),
(339, 7, 4, 10, 0.0),
(340, 7, 4, 11, 2.0),
(341, 7, 5, 2, 2.0),
(342, 7, 5, 3, 5.0),
(343, 7, 5, 4, 1.0),
(344, 7, 5, 5, 0.0),
(345, 7, 5, 6, 1.0),
(346, 7, 5, 7, 5.0),
(347, 7, 5, 8, 0.0),
(348, 7, 5, 9, 0.0),
(349, 7, 5, 10, 5.0),
(350, 7, 5, 11, 2.0),
(351, 8, 1, 2, 0.0),
(352, 8, 1, 3, 5.0),
(353, 8, 1, 4, 3.0),
(354, 8, 1, 5, 2.0),
(355, 8, 1, 6, 1.0),
(356, 8, 1, 7, 3.0),
(357, 8, 1, 8, 5.0),
(358, 8, 1, 9, 2.0),
(359, 8, 1, 10, 3.0),
(360, 8, 1, 11, 0.0),
(361, 8, 2, 2, 0.0),
(362, 8, 2, 3, 3.0),
(363, 8, 2, 4, 3.0),
(364, 8, 2, 5, 2.0),
(365, 8, 2, 6, 0.0),
(366, 8, 2, 7, 2.0),
(367, 8, 2, 8, 0.0),
(368, 8, 2, 9, 3.0),
(369, 8, 2, 10, 4.0),
(370, 8, 2, 11, 5.0),
(371, 8, 3, 2, 0.0),
(372, 8, 3, 3, 3.0),
(373, 8, 3, 4, 3.0),
(374, 8, 3, 5, 4.0),
(375, 8, 3, 6, 4.0),
(376, 8, 3, 7, 0.0),
(377, 8, 3, 8, 1.0),
(378, 8, 3, 9, 0.0),
(379, 8, 3, 10, 1.0),
(380, 8, 3, 11, 2.0),
(381, 8, 4, 2, 1.0),
(382, 8, 4, 3, 3.0),
(383, 8, 4, 4, 3.0),
(384, 8, 4, 5, 3.0),
(385, 8, 4, 6, 5.0),
(386, 8, 4, 7, 4.0),
(387, 8, 4, 8, 2.0),
(388, 8, 4, 9, 3.0),
(389, 8, 4, 10, 1.0),
(390, 8, 4, 11, 1.0),
(391, 8, 5, 2, 3.0),
(392, 8, 5, 3, 4.0),
(393, 8, 5, 4, 3.0),
(394, 8, 5, 5, 4.0),
(395, 8, 5, 6, 5.0),
(396, 8, 5, 7, 4.0),
(397, 8, 5, 8, 4.0),
(398, 8, 5, 9, 2.0),
(399, 8, 5, 10, 3.0),
(400, 8, 5, 11, 1.0),
(401, 9, 1, 2, 1.0),
(402, 9, 1, 3, 0.0),
(403, 9, 1, 4, 4.0),
(404, 9, 1, 5, 1.0),
(405, 9, 1, 6, 0.0),
(406, 9, 1, 7, 4.0),
(407, 9, 1, 8, 2.0),
(408, 9, 1, 9, 4.0),
(409, 9, 1, 10, 1.0),
(410, 9, 1, 11, 2.0),
(411, 9, 2, 2, 1.0),
(412, 9, 2, 3, 3.0),
(413, 9, 2, 4, 1.0),
(414, 9, 2, 5, 1.0),
(415, 9, 2, 6, 1.0),
(416, 9, 2, 7, 0.0),
(417, 9, 2, 8, 5.0),
(418, 9, 2, 9, 4.0),
(419, 9, 2, 10, 2.0),
(420, 9, 3, 2, 1.0),
(421, 9, 3, 6, 4.0),
(422, 9, 3, 3, 4.0),
(423, 9, 3, 4, 5.0),
(424, 9, 2, 11, 2.0),
(425, 9, 3, 5, 2.0),
(426, 9, 3, 7, 0.0),
(427, 9, 3, 8, 2.0),
(428, 9, 3, 10, 2.0),
(429, 9, 3, 11, 2.0),
(430, 9, 3, 9, 5.0),
(431, 9, 4, 2, 5.0),
(432, 9, 4, 3, 2.0),
(433, 9, 4, 4, 3.0),
(434, 9, 4, 5, 2.0),
(435, 9, 4, 6, 3.0),
(436, 9, 4, 7, 4.0),
(437, 9, 4, 8, 1.0),
(438, 9, 4, 9, 4.0),
(439, 9, 4, 10, 3.0),
(440, 9, 4, 11, 2.0),
(441, 9, 5, 2, 1.0),
(442, 9, 5, 3, 5.0),
(443, 9, 5, 4, 3.0),
(444, 9, 5, 5, 2.0),
(445, 9, 5, 6, 5.0),
(446, 9, 5, 7, 2.0),
(447, 9, 5, 8, 1.0),
(448, 9, 5, 9, 4.0),
(449, 9, 5, 10, 2.0),
(450, 9, 5, 11, 2.0),
(451, 10, 1, 2, 5.0),
(452, 10, 1, 3, 1.0),
(453, 10, 1, 4, 0.0),
(454, 10, 1, 5, 1.0),
(455, 10, 1, 6, 5.0),
(456, 10, 1, 7, 0.0),
(457, 10, 1, 8, 0.0),
(458, 10, 1, 9, 2.0),
(459, 10, 1, 10, 2.0),
(460, 10, 1, 11, 5.0),
(461, 10, 2, 2, 2.0),
(462, 10, 2, 3, 4.0),
(463, 10, 2, 4, 5.0),
(464, 10, 2, 5, 3.0),
(465, 10, 2, 6, 4.0),
(466, 10, 2, 7, 5.0),
(467, 10, 2, 8, 0.0),
(468, 10, 2, 9, 1.0),
(469, 10, 2, 10, 4.0),
(470, 10, 2, 11, 4.0),
(471, 10, 3, 2, 3.0),
(472, 10, 3, 3, 3.0),
(473, 10, 3, 4, 2.0),
(474, 10, 3, 5, 2.0),
(475, 10, 3, 6, 4.0),
(476, 10, 3, 7, 4.0),
(477, 10, 3, 8, 0.0),
(478, 10, 3, 9, 3.0),
(479, 10, 3, 10, 2.0),
(480, 10, 3, 11, 2.0),
(481, 10, 4, 2, 4.0),
(482, 10, 4, 3, 0.0),
(483, 10, 4, 4, 2.0),
(484, 10, 4, 5, 3.0),
(485, 10, 4, 6, 2.0),
(486, 10, 4, 7, 3.0),
(487, 10, 4, 8, 1.0),
(488, 10, 4, 9, 2.0),
(489, 10, 4, 10, 3.0),
(490, 10, 4, 11, 2.0),
(491, 10, 5, 2, 4.0),
(492, 10, 5, 3, 0.0),
(493, 10, 5, 4, 2.0),
(494, 10, 5, 5, 4.0),
(495, 10, 5, 6, 5.0),
(496, 10, 5, 7, 4.0),
(497, 10, 5, 8, 0.0),
(498, 10, 5, 9, 1.0),
(499, 10, 5, 10, 3.0),
(500, 10, 5, 11, 2.0);

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
(1, 'Enim laborum non aut molestias repellat.', 'Architecto amet omnis quas. Praesentium pariatur non dolores consectetur quidem maiores. Enim eum similique sequi temporibus quia dolore ea ipsam eveniet.'),
(2, 'Sunt placeat molestiae ad et vel.', 'Dolores molestiae vero dolores. Voluptatum culpa non ad fugiat voluptas at et quia adipisci. Unde quia cupiditate. Maxime corporis rem quia. Veritatis enim quam ab eos voluptatem vel et sed nam. Veniam omnis architecto sapiente similique iusto cum sit deserunt.'),
(3, 'Aut sapiente aperiam quia autem quidem est harum.', 'Dolorem id sit ea dolores odio. Ut amet eveniet. Quas temporibus expedita tempora. Non quidem voluptate enim. Praesentium officiis et ab mollitia maxime necessitatibus consequatur cupiditate non.'),
(4, 'Ad nobis dolorem veritatis est consequuntur qui fugit.', 'Beatae rem atque odio. Cumque quibusdam unde in vitae eaque. Reprehenderit est incidunt officiis. Dolor facere est tenetur. Ipsa quam eum. Qui aut molestiae qui blanditiis voluptate fuga.'),
(5, 'Consequuntur earum quis hic.', 'Ipsam in sapiente. Aut commodi tempora iste velit cupiditate provident. Molestiae non enim et velit quibusdam amet qui recusandae et. Voluptatum omnis illo sit reiciendis doloribus assumenda molestiae enim.');

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
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `title`, `image`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'admin@karcis.com', '$2a$10$sa0HzBa8uFblyJLgE/hrPOmvIraJDEZjqb3N/rvOObdPaq9uCQWZW', '+62987676522', NULL, 'default.png', 1, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(2, 'Eleazar', 'Morissette', 'Hellen.Bashirian55@yahoo.com', '$2a$10$inDxa3EbYpAXnQ9ugm812ey7VV.DSUUDozbj5yiYLMu0lIvTjcezu', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(3, 'Claude', 'Shields', 'Lavina.Feeney@hotmail.com', '$2a$10$9A/cU9iDF2PXLDl8r6gxuuODDm4x92lv.GJxvOMPYSp896aBBfZpC', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(4, 'Rolando', 'Nienow', 'Otilia59@gmail.com', '$2a$10$hd1Oek3X4HUf.CnfN5YgdOlEIC6nSoRr1/Tjf17ZUK5y.N.N0jGHi', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(5, 'Mariano', 'Lubowitz', 'Nannie.Marquardt49@yahoo.com', '$2a$10$SaY3J2pDWohgP9DoPP9rYO.u0r53f5eMilw2BCd2k5Y0KS0rAaZOS', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(6, 'Anna', 'Rodriguez', 'Dale_Nicolas54@gmail.com', '$2a$10$v2gZXz2soUCSOT3QuLjY3OY70rnDGYU6TGaBYJCWhzOVmRLisUnJK', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(7, 'Ford', 'Kerluke', 'Raegan_Lueilwitz92@gmail.com', '$2a$10$s9BFa89vJrl24cM./Hj89e5qFVaFm.wswpkKBmwnZNCjXQekKHwYK', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(8, 'Ned', 'Reinger', 'Amari_Waters51@hotmail.com', '$2a$10$1fHkF2.OfWF3OvJpARIxm.eGkTfUOwzQmoftb25JZC/3vVDcoQmkC', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(9, 'Raheem', 'Waelchi', 'Emily93@hotmail.com', '$2a$10$BrU1CxRfGESXoETGFgqrI.hk45eub3dYnuCHV6MmZNy4lU7OV4Ayu', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(10, 'Lola', 'Kuhlman', 'Scotty59@hotmail.com', '$2a$10$CdorUHOS4h5EblqWq.7bguxw5wO8pczcBHywFy7EifrhG0216YSLq', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57'),
(11, 'Adriana', 'Torp', 'Pansy.Prohaska@gmail.com', '$2a$10$v67/whI/jtOVPUgtbgYnHO/WnVjc2cqVU2iX6GYSI7et86LDMnnJi', '+62987676522', NULL, 'default.png', 2, '2020-01-27 14:30:57', '2020-01-27 14:30:57');

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `knex_migrations`
--
ALTER TABLE `knex_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
