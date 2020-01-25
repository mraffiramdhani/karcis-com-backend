-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2020 at 03:47 AM
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
(2, 2, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(3, 3, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(4, 4, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(5, 5, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(6, 6, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(7, 7, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(8, 8, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(9, 9, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(10, 10, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26'),
(11, 11, '1000.00', '2020-01-26 03:46:26', '2020-01-26 03:46:26');

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
(1, 'Wolff Group', 'Placeat ut ex debitis aut et dignissimos excepturi ut sunt. Eum illum et id incidunt libero qui est tempore rerum. Dolores a exercitationem consequatur itaque natus nobis ex. Ab dolores ducimus harum quae velit non. Nobis sit quia sequi eos earum. Tempore amet et nihil culpa quibusdam consectetur quia assumenda eveniet.', '900 Rupert Ferry Suite 734', 3, 1, '60.4429', '-115.2055', 1),
(2, 'Jacobson LLC', 'In placeat occaecati dolores aspernatur veniam minima. Aut assumenda nam voluptatem sit commodi enim non. Harum modi voluptas. In hic eaque optio in unde sed aspernatur commodi est.', '41905 Kris Trail Suite 417', 3, 1, '38.9811', '-76.3452', 1),
(3, 'Stanton - Rohan', 'Voluptas aut sed quia. Voluptas impedit deserunt quisquam. Suscipit magnam quam tempore. Animi quis in.', '30129 Keira Trail Suite 843', 2, 1, '-59.6537', '-167.5241', 1),
(4, 'Champlin - Stroman', 'Aperiam rem voluptatem. Esse odit aut pariatur voluptatem officiis voluptatum nulla facere aliquid. Quam exercitationem inventore fuga est. Iure impedit eligendi in corporis. Modi autem vel dolorem unde ad quam voluptas cupiditate voluptatem. Eos voluptas ratione explicabo inventore.', '964 Julien Fields Apt. 841', 0, 1, '-32.4391', '-65.6317', 1),
(5, 'Adams Inc', 'Rerum in aut nostrum qui velit quia eum quidem. Perferendis autem doloremque nesciunt. Omnis quam optio et ut ipsum maiores blanditiis et aut. Aut ut quaerat placeat voluptas animi voluptatem neque magnam voluptate.', '225 Thompson Springs Apt. 134', 3, 1, '-41.6104', '-175.7857', 1),
(6, 'Deckow Inc', 'Dolorem est amet repudiandae voluptatem quam veniam molestiae. Delectus vel autem dicta natus quod aliquam numquam et. Ad pariatur sit omnis neque quia praesentium.', '18833 Little Wall Apt. 212', 3, 1, '-89.0990', '164.9109', 1),
(7, 'Reilly Group', 'Magni at tempore officiis esse harum libero voluptas. Iure mollitia assumenda ullam. Unde quibusdam numquam dicta vel labore quaerat exercitationem qui iure. Ut quo qui. Rerum quis consequuntur. Aut non labore dolor.', '76974 Lehner Crossroad Apt. 313', 0, 1, '38.1792', '-19.9674', 1),
(8, 'Hagenes LLC', 'Deleniti fuga nihil sequi beatae iure maxime perspiciatis rerum sequi. Enim in ipsum quia minus aut nostrum quo molestiae. Expedita voluptatem dolorem. Officiis quis aperiam sed reprehenderit perspiciatis ipsa numquam dolorem rerum.', '4226 Geraldine Cape Suite 276', 2, 1, '-10.4599', '-28.0967', 1),
(9, 'Zboncak LLC', 'Et suscipit eius consequatur ut. Dolores distinctio ipsum suscipit quisquam voluptatum minima. Deserunt et aut aut ipsum.', '6356 Stacey Village Apt. 163', 1, 1, '-70.6129', '93.7270', 1),
(10, 'Wehner and Sons', 'Ipsum accusantium eos rerum qui dolorem. Architecto iste atque aut. Veritatis dolor totam quia facilis eaque nobis eos sed. Quia et qui harum dolorem molestiae velit molestias expedita.', '11757 Hassie Alley Apt. 673', 2, 1, '-54.5022', '-146.5181', 1);

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
(1, 2),
(2, 2),
(4, 1),
(4, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
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
(1, 1, 'default.png', '2020-01-26 03:46:23'),
(2, 2, 'default.png', '2020-01-26 03:46:23'),
(3, 3, 'default.png', '2020-01-26 03:46:23'),
(4, 4, 'default.png', '2020-01-26 03:46:23'),
(5, 5, 'default.png', '2020-01-26 03:46:23'),
(6, 6, 'default.png', '2020-01-26 03:46:23'),
(7, 7, 'default.png', '2020-01-26 03:46:23'),
(8, 8, 'default.png', '2020-01-26 03:46:23'),
(9, 9, 'default.png', '2020-01-26 03:46:23'),
(10, 10, 'default.png', '2020-01-26 03:46:23');

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
(1, 1, '1513464.00', 2, 'Ab cum rerum. Voluptatem sequi architecto quisquam quis voluptates rem. Qui veritatis dolore quo maiores. Illo labore enim libero quo sequi blanditiis.'),
(2, 1, '354037.00', 2, 'Dolore possimus dignissimos nesciunt. Voluptatem nam quo aspernatur. Qui et pariatur rem qui.'),
(5, 1, '1487002.00', 2, 'Perferendis iusto ipsum quia voluptas tenetur aut. Quod voluptas architecto. Sed et nihil dolor explicabo est sit placeat reiciendis. Consequatur dicta aut vitae minima animi consequatur. Maiores minima et qui dolorem. Illum laborum labore debitis molestias.'),
(1, 2, '221183.00', 2, 'Excepturi laboriosam quas architecto quis nihil inventore. Voluptatem eaque qui. Iure doloribus non repellat consequatur. Qui ab esse quod minima aut ipsum quisquam.'),
(2, 2, '343208.00', 2, 'Suscipit magnam quidem autem id. Illum necessitatibus sint iste laudantium asperiores autem. Ut consequuntur nam est ut nostrum a quisquam repellat repudiandae.'),
(4, 2, '1077085.00', 2, 'Doloribus provident quae dolorum ab asperiores. Dolor quam accusantium. Blanditiis ullam consectetur quas sequi neque debitis reiciendis laborum magni. Asperiores deserunt et molestias sed. Et est quo ipsum. Dolorem ut reiciendis omnis quia itaque.'),
(2, 3, '1837810.00', 2, 'Omnis iure eum impedit voluptatem dolores optio. Aperiam sed natus sit aspernatur eum. Corrupti illo porro veritatis ut. Nulla iure maiores aut. Voluptatem ipsam sunt vero rerum.'),
(3, 2, '1434575.00', 2, 'Illum recusandae id libero est qui. Sequi perspiciatis iusto. Repudiandae natus voluptatem et. Id autem nihil placeat nobis corrupti. Dolores consequatur reiciendis suscipit maxime ipsam. Qui tempore harum qui distinctio perspiciatis et ipsum.'),
(1, 3, '1262635.00', 2, 'Aut voluptatem dolorum rem aut reprehenderit est dignissimos consequuntur. Et ullam aut mollitia itaque. Quas distinctio veritatis dolore quos excepturi deserunt qui.'),
(4, 1, '1025904.00', 2, 'Corrupti velit quia. Voluptate ipsa velit dolorum. Eligendi quos commodi veritatis omnis delectus eligendi. Velit consectetur ut quasi harum quia omnis praesentium quia.'),
(5, 2, '1910286.00', 2, 'Inventore rerum consequuntur. Ut odio quis veniam earum illo. Voluptate magnam nisi qui nihil corporis accusamus iste. Quis expedita consectetur atque est. Repudiandae consequatur quia.'),
(3, 1, '657226.00', 2, 'Ratione esse est tempora et amet numquam dolores qui. Praesentium blanditiis et ut consectetur rerum consequuntur ut labore. Nobis consequuntur cupiditate explicabo qui laboriosam fugiat sed fugit beatae. Et voluptas error reprehenderit nulla rem culpa. Sit non vitae omnis eius vitae. Dolor non minus ea atque nihil officiis et.'),
(3, 3, '122489.00', 2, 'Numquam est veritatis ut velit blanditiis quia. Et dolorem voluptatem nisi. Enim totam tempore dolores sed voluptas suscipit.'),
(4, 3, '1917255.00', 2, 'Rerum ratione occaecati libero sed. Laborum est veritatis. Itaque officia et molestiae quo.'),
(5, 3, '644687.00', 2, 'Laudantium in aut error voluptas sit nemo. Non porro delectus officiis perspiciatis ut. Maiores reiciendis voluptas accusantium adipisci eaque. Blanditiis architecto quos esse deserunt sunt.'),
(1, 4, '1202252.00', 2, 'Maxime totam quo. Aspernatur et illo similique. Qui in culpa.'),
(2, 4, '1570756.00', 2, 'Beatae provident vitae molestiae esse libero. Quod odit occaecati rerum earum sapiente qui. Fugiat enim debitis et ut quaerat qui vel debitis debitis. Magni est nobis labore nemo quae delectus repudiandae veniam.'),
(3, 4, '1319242.00', 2, 'Eos dolorum itaque qui eum suscipit et aperiam. Facilis sunt sint excepturi totam ipsa velit nisi. Assumenda voluptatibus nihil eum et ipsa vero. Qui in ea necessitatibus ipsam. Ullam a hic et et quia id. Eum quia a.'),
(4, 4, '914761.00', 2, 'Velit optio reprehenderit sequi hic voluptatem rem eos aliquam enim. Maxime odio nulla. Aliquam magni qui et. At quidem occaecati eos.'),
(5, 4, '881899.00', 2, 'Repudiandae nostrum aut sint quo fugit doloribus recusandae. Saepe eum similique porro minima ipsum. Sit aut modi magnam aut.'),
(1, 5, '1234351.00', 2, 'Quos et corporis ea ut ducimus aut et hic quis. Sed omnis enim placeat sapiente voluptatum quia sunt. Pariatur nam non quia est et consectetur. Voluptatibus qui non. Eligendi sapiente vel dolore. Itaque ducimus qui libero.'),
(2, 5, '1955249.00', 2, 'Aperiam quisquam qui voluptatem. Illo assumenda ea enim voluptatem. Eius in quo est est natus ex. Porro rerum cumque nihil aperiam maxime veritatis ut quae error. Neque autem aut alias molestias est officiis dicta quis. Ut qui tempore unde qui repudiandae minus ab.'),
(3, 5, '1854684.00', 2, 'Dolores ut facere aut et ad sit mollitia et doloribus. Accusantium sit et temporibus ullam et fuga consequatur non dolorem. In beatae id alias. Nihil omnis quo modi voluptatem velit ex ab quo. Cupiditate corporis optio natus nam.'),
(4, 5, '650761.00', 2, 'Expedita eaque neque fugit. Quis in dolorum ut laborum non sunt ab voluptatibus minus. Hic eum nostrum minima quia cum nisi facere quidem qui. In quam nihil. Quia voluptatem similique vero a earum est. Nostrum sit hic enim enim.'),
(5, 5, '276283.00', 2, 'Iusto ut id assumenda delectus. Sit voluptatem dolore ut commodi ipsa facilis ratione. Ullam delectus reiciendis quam velit quia corrupti.'),
(1, 6, '1851679.00', 2, 'Eum fuga ut occaecati. Rerum quia deserunt aut saepe qui. Temporibus provident voluptas error praesentium aut qui molestiae sed. Provident sed doloremque voluptatibus ad sequi qui sunt et.'),
(2, 6, '678447.00', 2, 'Omnis omnis hic ut. Illo iusto aut eaque doloribus recusandae in. Perspiciatis qui tenetur ut sapiente sit ut illum.'),
(3, 6, '133103.00', 2, 'Nulla harum ducimus sapiente aut amet quisquam culpa. Ut dolor quo qui nisi rerum et sint natus. Ad eum fugiat. Et quidem pariatur autem. Numquam libero quae eveniet eveniet numquam iste commodi et aspernatur. Aut et voluptas aut.'),
(4, 6, '1491028.00', 2, 'Reprehenderit deserunt rerum. Sit sit et qui ea laboriosam. Voluptas numquam at. Excepturi a quod soluta aliquid aliquid nobis. Aut et eveniet eum quas rem voluptates est ut.'),
(5, 6, '861180.00', 2, 'Et velit corporis ut enim deleniti illo reprehenderit maiores. Iusto occaecati aliquam sit quibusdam veniam doloribus non. Quod est nemo omnis omnis quia. Et sed ut omnis est ut voluptatum. Nesciunt sed sit aut velit.'),
(1, 7, '1911419.00', 2, 'Perferendis ullam at nam quia eius sit dignissimos et cupiditate. Autem praesentium illo culpa sit et esse voluptatem placeat. Repellendus deleniti voluptatem. Sed adipisci placeat earum quia. Enim vero repellendus deleniti molestiae.'),
(2, 7, '789598.00', 2, 'Eveniet nihil excepturi voluptate quia et et. Hic maxime illo fugit. Dolore dignissimos vel magni neque quo dolorem autem.'),
(3, 7, '1579261.00', 2, 'Eos voluptatum iure optio. Commodi odit inventore tempore unde voluptatem deleniti itaque. Tenetur est eligendi qui porro sit. Sapiente similique qui rerum nesciunt corrupti mollitia in pariatur. Quae sed doloremque molestiae architecto perferendis.'),
(4, 7, '154635.00', 2, 'Aut expedita dolor quibusdam ut nostrum. Quaerat accusamus modi beatae ea rerum voluptatem. Porro corrupti eos excepturi nulla omnis repudiandae assumenda blanditiis dolor. Alias sequi magnam voluptates ad.'),
(5, 7, '129797.00', 2, 'In recusandae ipsam. Fugiat eligendi magni expedita nulla. Quia aut fugiat. Omnis aspernatur autem quia cum voluptatem sit quo.'),
(1, 8, '94318.00', 2, 'Harum quod maiores doloribus perferendis quia voluptatem vero et sed. Excepturi similique pariatur molestiae. Totam dolores animi perferendis beatae eos recusandae laborum porro iste. Qui vitae cupiditate non tenetur pariatur sit laborum porro. Veniam sapiente eius fugit aut consequuntur mollitia.'),
(2, 8, '27054.00', 2, 'Quia sit eos itaque vel. Explicabo et et suscipit. Est neque aperiam non. Et et nostrum dolorem. Ullam ut officiis sit aspernatur facere alias.'),
(3, 8, '429925.00', 2, 'Aut error placeat omnis blanditiis aut maxime aut qui deleniti. Voluptatem inventore vitae tempora tempora architecto at doloribus enim. Quisquam ab voluptas repellendus ut. Et et natus esse est. Repellendus voluptas ipsum deserunt accusamus eum et. At hic velit numquam mollitia tenetur quis quis quod.'),
(4, 8, '633356.00', 2, 'Nihil et dolorum at tempore animi. Eos quia doloremque ea aperiam debitis sequi accusantium et. Eligendi assumenda ut quas. Et quae autem cupiditate.'),
(5, 8, '87012.00', 2, 'Omnis veniam dolor sint at voluptas quis est accusantium. Aut nam illo est. Repudiandae provident nam laborum. Id sit non et accusantium non exercitationem sunt.'),
(1, 9, '608028.00', 2, 'Ab esse placeat nisi sint facere consequatur dolor harum ut. Sit omnis pariatur non dolor dolorem quia iste sed doloribus. Qui autem et laboriosam ex esse harum. Cum neque dignissimos non distinctio reprehenderit.'),
(2, 9, '787131.00', 2, 'Aut natus voluptas fugiat laborum eos sint et. Ea eius enim autem. Et explicabo ducimus temporibus nulla quo tempore. Ut reprehenderit quasi ad. Sequi vel aut natus non voluptas iure.'),
(3, 9, '367822.00', 2, 'Distinctio dolore ab veniam quasi suscipit praesentium enim enim voluptas. Ut nobis corrupti. Nihil perspiciatis sit enim culpa ut. Earum cum debitis voluptatem placeat dolorum. Asperiores cupiditate vitae.'),
(4, 9, '1516409.00', 2, 'Qui nihil suscipit ut est distinctio unde error. Amet veritatis aut officiis rerum. Rerum reprehenderit quaerat ex odio est incidunt debitis voluptatum ut. Vel quo numquam occaecati placeat temporibus ut rerum. Aut ut deleniti id beatae officia et.'),
(5, 9, '1322042.00', 2, 'Unde accusantium debitis rerum. Sit sequi enim illo nihil. Et aliquam voluptas quam non est corporis omnis ratione accusamus.'),
(1, 10, '197511.00', 2, 'Esse hic id iusto odit est facere totam quidem. Aspernatur iste amet quia quos dicta rerum corrupti. Itaque deleniti eligendi odio eos neque nobis blanditiis. Voluptate atque adipisci architecto quo laborum libero. Quod est doloremque asperiores architecto quisquam totam ea molestias. Eum ut et aut voluptas.'),
(2, 10, '197238.00', 2, 'Id voluptatem sint eum perferendis harum labore et iusto aperiam. Est architecto sit quas id. Aperiam aut quo nisi maiores impedit id.'),
(3, 10, '1336809.00', 2, 'Dolor libero quidem est delectus. Voluptatem eius facere. Quaerat iusto temporibus unde quis officia quod debitis distinctio. Maiores veniam fugiat dolorum adipisci rem blanditiis quisquam exercitationem quos.'),
(4, 10, '1435205.00', 2, 'Error asperiores et dolorem autem tempore quis atque eaque minima. Totam incidunt debitis itaque. Neque quia quasi accusamus ab et eum repellendus reprehenderit rerum. Reiciendis dolor autem sunt odit quas inventore amet cupiditate. Voluptas rerum molestiae minima non vel dolorem.'),
(5, 10, '1992272.00', 2, 'Corporis labore est ipsa. Est nam repellat totam vitae aut. Velit quo distinctio deleniti. Laudantium debitis ut culpa reprehenderit. Aut quis et.');

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
(39, '20200116023106_roles.js', 1, '2020-01-25 20:46:06'),
(40, '20200121190637_users.js', 1, '2020-01-25 20:46:07'),
(41, '20200121203733_province.js', 1, '2020-01-25 20:46:07'),
(42, '20200121204111_city.js', 1, '2020-01-25 20:46:07'),
(43, '20200121211255_hotels.js', 1, '2020-01-25 20:46:07'),
(44, '20200121212131_amenities.js', 1, '2020-01-25 20:46:07'),
(45, '20200121212309_hotel_amenities.js', 1, '2020-01-25 20:46:08'),
(46, '20200121212540_room_types.js', 1, '2020-01-25 20:46:08'),
(47, '20200121212700_hotel_rooms.js', 1, '2020-01-25 20:46:08'),
(48, '20200121213027_room_amenities.js', 1, '2020-01-25 20:46:09'),
(49, '20200121214154_room_ratings.js', 1, '2020-01-25 20:46:09'),
(50, '20200121215225_room_costs.js', 1, '2020-01-25 20:46:10'),
(51, '20200121230655_revoked_token.js', 1, '2020-01-25 20:46:10'),
(52, '20200122042142_otp_codes.js', 1, '2020-01-25 20:46:10'),
(53, '20200122202037_hotel_images.js', 1, '2020-01-25 20:46:10'),
(54, '20200122202431_room_images.js', 1, '2020-01-25 20:46:10'),
(55, '20200123163221_balance.js', 1, '2020-01-25 20:46:10'),
(56, '20200123163350_balance_history.js', 1, '2020-01-25 20:46:11'),
(57, '20200125022252_orders.js', 1, '2020-01-25 20:46:11');

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
(1, 1, 1, 1, '25184.00'),
(2, 2, 1, 1, '42930.00'),
(3, 4, 1, 3, '61040.00'),
(4, 3, 1, 3, '16413.00'),
(5, 3, 1, 1, '46744.00'),
(6, 4, 1, 1, '40107.00'),
(7, 2, 1, 3, '37224.00'),
(8, 2, 1, 2, '28955.00'),
(9, 4, 1, 2, '51514.00'),
(10, 3, 1, 2, '37332.00'),
(11, 1, 1, 3, '72976.00'),
(12, 1, 1, 2, '73427.00'),
(13, 1, 1, 4, '39584.00'),
(14, 2, 1, 4, '50430.00'),
(15, 3, 1, 4, '50698.00'),
(16, 4, 1, 4, '11389.00'),
(17, 1, 1, 5, '70230.00'),
(18, 2, 1, 5, '16768.00'),
(19, 3, 1, 5, '12770.00'),
(20, 4, 1, 5, '29181.00'),
(21, 1, 2, 1, '50339.00'),
(22, 2, 2, 1, '9946.00'),
(23, 3, 2, 1, '96028.00'),
(24, 4, 2, 1, '21115.00'),
(25, 1, 2, 2, '77891.00'),
(26, 2, 2, 2, '11205.00'),
(27, 3, 2, 2, '88567.00'),
(28, 4, 2, 2, '80883.00'),
(29, 1, 2, 3, '30716.00'),
(30, 2, 2, 3, '43378.00'),
(31, 3, 2, 3, '35550.00'),
(32, 4, 2, 3, '98908.00'),
(33, 1, 2, 4, '85484.00'),
(34, 2, 2, 4, '35483.00'),
(35, 3, 2, 4, '99768.00'),
(36, 4, 2, 4, '70628.00'),
(37, 1, 2, 5, '63430.00'),
(38, 2, 2, 5, '86182.00'),
(39, 3, 2, 5, '36747.00'),
(40, 4, 2, 5, '92612.00'),
(41, 1, 3, 1, '44619.00'),
(42, 2, 3, 1, '18215.00'),
(43, 3, 3, 1, '32493.00'),
(44, 4, 3, 1, '24634.00'),
(45, 1, 3, 2, '697.00'),
(46, 2, 3, 2, '54390.00'),
(47, 3, 3, 2, '4125.00'),
(48, 4, 3, 2, '3291.00'),
(49, 1, 3, 3, '76494.00'),
(50, 2, 3, 3, '10308.00'),
(51, 3, 3, 3, '5995.00'),
(52, 4, 3, 3, '36984.00'),
(53, 1, 3, 4, '79688.00'),
(54, 2, 3, 4, '26022.00'),
(55, 3, 3, 4, '20529.00'),
(56, 4, 3, 4, '99802.00'),
(57, 1, 3, 5, '73014.00'),
(58, 2, 3, 5, '2543.00'),
(59, 3, 3, 5, '22947.00'),
(60, 4, 3, 5, '59141.00'),
(61, 1, 4, 1, '82791.00'),
(62, 2, 4, 1, '34816.00'),
(63, 3, 4, 1, '16527.00'),
(64, 4, 4, 1, '84137.00'),
(65, 1, 4, 2, '99309.00'),
(66, 2, 4, 2, '88906.00'),
(67, 3, 4, 2, '59966.00'),
(68, 4, 4, 2, '56571.00'),
(69, 1, 4, 3, '53922.00'),
(70, 2, 4, 3, '70122.00'),
(71, 3, 4, 3, '99803.00'),
(72, 4, 4, 3, '67506.00'),
(73, 1, 4, 4, '54114.00'),
(74, 2, 4, 4, '31356.00'),
(75, 3, 4, 4, '7717.00'),
(76, 4, 4, 4, '4661.00'),
(77, 1, 4, 5, '67855.00'),
(78, 2, 4, 5, '21944.00'),
(79, 3, 4, 5, '1303.00'),
(80, 4, 4, 5, '15445.00'),
(81, 1, 5, 1, '72304.00'),
(82, 2, 5, 1, '64809.00'),
(83, 3, 5, 1, '13773.00'),
(84, 4, 5, 1, '2363.00'),
(85, 2, 5, 2, '42862.00'),
(86, 1, 5, 2, '86300.00'),
(87, 3, 5, 2, '37828.00'),
(88, 4, 5, 2, '87653.00'),
(89, 1, 5, 3, '70214.00'),
(90, 2, 5, 3, '99892.00'),
(91, 3, 5, 3, '39825.00'),
(92, 4, 5, 3, '31394.00'),
(93, 1, 5, 4, '22721.00'),
(94, 2, 5, 4, '45149.00'),
(95, 4, 5, 4, '23423.00'),
(96, 3, 5, 4, '96806.00'),
(97, 1, 5, 5, '87005.00'),
(98, 2, 5, 5, '91780.00'),
(99, 3, 5, 5, '26201.00'),
(100, 4, 5, 5, '62905.00'),
(101, 1, 6, 1, '73115.00'),
(102, 2, 6, 1, '77869.00'),
(103, 3, 6, 1, '72617.00'),
(104, 4, 6, 1, '91509.00'),
(105, 1, 6, 2, '86342.00'),
(106, 2, 6, 2, '5603.00'),
(107, 3, 6, 2, '7494.00'),
(108, 4, 6, 2, '69984.00'),
(109, 1, 6, 3, '26568.00'),
(110, 2, 6, 3, '15485.00'),
(111, 3, 6, 3, '47493.00'),
(112, 4, 6, 3, '80309.00'),
(113, 1, 6, 4, '21728.00'),
(114, 2, 6, 4, '88052.00'),
(115, 3, 6, 4, '61112.00'),
(116, 4, 6, 4, '86670.00'),
(117, 1, 6, 5, '85479.00'),
(118, 2, 6, 5, '49538.00'),
(119, 3, 6, 5, '83860.00'),
(120, 4, 6, 5, '49418.00'),
(121, 1, 7, 1, '19693.00'),
(122, 2, 7, 1, '40419.00'),
(123, 3, 7, 1, '24218.00'),
(124, 4, 7, 1, '38356.00'),
(125, 1, 7, 2, '83187.00'),
(126, 2, 7, 2, '23303.00'),
(127, 3, 7, 2, '21460.00'),
(128, 4, 7, 2, '63065.00'),
(129, 1, 7, 3, '72968.00'),
(130, 2, 7, 3, '64644.00'),
(131, 3, 7, 3, '91830.00'),
(132, 4, 7, 3, '32150.00'),
(133, 1, 7, 4, '3432.00'),
(134, 2, 7, 4, '36510.00'),
(135, 3, 7, 4, '16104.00'),
(136, 4, 7, 4, '92434.00'),
(137, 1, 7, 5, '69901.00'),
(138, 2, 7, 5, '44989.00'),
(139, 3, 7, 5, '9760.00'),
(140, 4, 7, 5, '85816.00'),
(141, 1, 8, 1, '94308.00'),
(142, 2, 8, 1, '31314.00'),
(143, 3, 8, 1, '83685.00'),
(144, 4, 8, 1, '34001.00'),
(145, 1, 8, 2, '72859.00'),
(146, 2, 8, 2, '72822.00'),
(147, 3, 8, 2, '13085.00'),
(148, 4, 8, 2, '85340.00'),
(149, 1, 8, 3, '46130.00'),
(150, 2, 8, 3, '2136.00'),
(151, 3, 8, 3, '44127.00'),
(152, 4, 8, 3, '6642.00'),
(153, 1, 8, 4, '31369.00'),
(154, 2, 8, 4, '96380.00'),
(155, 3, 8, 4, '20613.00'),
(156, 4, 8, 4, '81903.00'),
(157, 1, 8, 5, '10073.00'),
(158, 2, 8, 5, '82141.00'),
(159, 3, 8, 5, '26318.00'),
(160, 4, 8, 5, '10073.00'),
(161, 1, 9, 1, '53899.00'),
(162, 2, 9, 1, '9316.00'),
(163, 3, 9, 1, '54754.00'),
(164, 4, 9, 1, '31322.00'),
(165, 1, 9, 2, '3662.00'),
(166, 2, 9, 2, '8060.00'),
(167, 3, 9, 2, '43263.00'),
(168, 4, 9, 2, '77619.00'),
(169, 1, 9, 3, '52658.00'),
(170, 2, 9, 3, '44909.00'),
(171, 3, 9, 3, '62718.00'),
(172, 4, 9, 3, '18233.00'),
(173, 1, 9, 4, '37065.00'),
(174, 2, 9, 4, '27115.00'),
(175, 3, 9, 4, '74098.00'),
(176, 4, 9, 4, '31067.00'),
(177, 1, 9, 5, '49969.00'),
(178, 2, 9, 5, '58673.00'),
(179, 4, 9, 5, '62680.00'),
(180, 3, 9, 5, '32753.00'),
(181, 1, 10, 1, '53362.00'),
(182, 2, 10, 1, '38164.00'),
(183, 3, 10, 1, '46247.00'),
(184, 4, 10, 1, '1587.00'),
(185, 1, 10, 2, '4097.00'),
(186, 3, 10, 2, '27201.00'),
(187, 2, 10, 2, '29596.00'),
(188, 4, 10, 2, '17602.00'),
(189, 1, 10, 3, '80617.00'),
(190, 2, 10, 3, '94794.00'),
(191, 3, 10, 3, '64042.00'),
(192, 4, 10, 3, '32034.00'),
(193, 1, 10, 4, '47010.00'),
(194, 2, 10, 4, '21364.00'),
(195, 3, 10, 4, '90401.00'),
(196, 4, 10, 4, '14856.00'),
(197, 1, 10, 5, '40683.00'),
(198, 2, 10, 5, '76005.00'),
(199, 3, 10, 5, '44086.00'),
(200, 4, 10, 5, '79195.00');

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
(1, 1, 1, '622095.00', 3.0, '39505.00'),
(2, 1, 2, '881532.00', 83.0, '75899.00'),
(3, 3, 1, '1256900.00', 54.0, '16695.00'),
(4, 3, 2, '218433.00', 25.0, '35147.00'),
(5, 2, 4, '1802345.00', 65.0, '71322.00'),
(6, 2, 3, '998822.00', 9.0, '75885.00'),
(7, 2, 5, '1151159.00', 6.0, '24024.00'),
(8, 2, 2, '835811.00', 66.0, '19306.00'),
(9, 1, 3, '202246.00', 88.0, '28275.00'),
(10, 1, 4, '589755.00', 62.0, '42178.00'),
(11, 2, 1, '554231.00', 59.0, '21876.00'),
(12, 1, 5, '204834.00', 21.0, '13972.00'),
(13, 3, 3, '809312.00', 89.0, '52075.00'),
(14, 3, 4, '1593472.00', 44.0, '68448.00'),
(15, 3, 5, '807377.00', 98.0, '3411.00'),
(16, 4, 1, '860329.00', 37.0, '45479.00'),
(17, 4, 2, '267054.00', 22.0, '36889.00'),
(18, 4, 3, '99647.00', 28.0, '56849.00'),
(19, 4, 4, '498876.00', 62.0, '30602.00'),
(20, 4, 5, '1200899.00', 6.0, '54884.00'),
(21, 5, 1, '1969630.00', 43.0, '37998.00'),
(22, 5, 2, '733902.00', 95.0, '33184.00'),
(23, 5, 3, '1217689.00', 11.0, '27988.00'),
(24, 5, 4, '1451668.00', 85.0, '62535.00'),
(25, 5, 5, '1312349.00', 40.0, '51290.00'),
(26, 6, 1, '1433261.00', 64.0, '28565.00'),
(27, 6, 2, '1664073.00', 7.0, '84612.00'),
(28, 6, 3, '1809742.00', 95.0, '43830.00'),
(29, 6, 4, '1404659.00', 39.0, '43412.00'),
(30, 6, 5, '1833711.00', 97.0, '14943.00'),
(31, 7, 1, '1480818.00', 65.0, '98561.00'),
(32, 7, 2, '201107.00', 70.0, '83290.00'),
(33, 7, 3, '1549908.00', 34.0, '55488.00'),
(34, 7, 4, '1502637.00', 9.0, '26533.00'),
(35, 7, 5, '784050.00', 100.0, '85175.00'),
(36, 8, 1, '1491592.00', 80.0, '69470.00'),
(37, 8, 2, '1246223.00', 5.0, '23096.00'),
(38, 8, 3, '1874982.00', 38.0, '53125.00'),
(39, 8, 4, '680998.00', 78.0, '28873.00'),
(40, 8, 5, '376802.00', 98.0, '98699.00'),
(41, 9, 1, '30129.00', 72.0, '63990.00'),
(42, 9, 2, '1485388.00', 44.0, '71670.00'),
(43, 9, 3, '1857191.00', 47.0, '505.00'),
(44, 9, 4, '1640376.00', 80.0, '85279.00'),
(45, 9, 5, '1953886.00', 74.0, '34945.00'),
(46, 10, 1, '1047625.00', 83.0, '41713.00'),
(47, 10, 2, '750960.00', 67.0, '82448.00'),
(48, 10, 3, '976092.00', 85.0, '37407.00'),
(49, 10, 4, '1552117.00', 95.0, '23779.00'),
(50, 10, 5, '942330.00', 85.0, '13887.00');

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
(1, 1, 1, 'default.png', '2020-01-26 03:46:24'),
(2, 1, 2, 'default.png', '2020-01-26 03:46:24'),
(3, 3, 1, 'default.png', '2020-01-26 03:46:24'),
(4, 3, 2, 'default.png', '2020-01-26 03:46:24'),
(5, 1, 5, 'default.png', '2020-01-26 03:46:24'),
(6, 2, 1, 'default.png', '2020-01-26 03:46:24'),
(7, 2, 4, 'default.png', '2020-01-26 03:46:24'),
(8, 2, 3, 'default.png', '2020-01-26 03:46:24'),
(9, 2, 2, 'default.png', '2020-01-26 03:46:24'),
(10, 1, 4, 'default.png', '2020-01-26 03:46:24'),
(11, 2, 5, 'default.png', '2020-01-26 03:46:24'),
(12, 1, 3, 'default.png', '2020-01-26 03:46:24'),
(13, 3, 3, 'default.png', '2020-01-26 03:46:24'),
(14, 3, 4, 'default.png', '2020-01-26 03:46:24'),
(15, 3, 5, 'default.png', '2020-01-26 03:46:24'),
(16, 4, 1, 'default.png', '2020-01-26 03:46:24'),
(17, 4, 2, 'default.png', '2020-01-26 03:46:24'),
(18, 4, 3, 'default.png', '2020-01-26 03:46:24'),
(19, 4, 4, 'default.png', '2020-01-26 03:46:24'),
(20, 4, 5, 'default.png', '2020-01-26 03:46:24'),
(21, 5, 1, 'default.png', '2020-01-26 03:46:24'),
(22, 5, 2, 'default.png', '2020-01-26 03:46:24'),
(23, 5, 3, 'default.png', '2020-01-26 03:46:24'),
(24, 5, 4, 'default.png', '2020-01-26 03:46:24'),
(25, 5, 5, 'default.png', '2020-01-26 03:46:24'),
(26, 6, 1, 'default.png', '2020-01-26 03:46:24'),
(27, 6, 2, 'default.png', '2020-01-26 03:46:24'),
(28, 6, 3, 'default.png', '2020-01-26 03:46:24'),
(29, 6, 4, 'default.png', '2020-01-26 03:46:24'),
(30, 6, 5, 'default.png', '2020-01-26 03:46:24'),
(31, 7, 1, 'default.png', '2020-01-26 03:46:24'),
(32, 7, 2, 'default.png', '2020-01-26 03:46:24'),
(33, 7, 3, 'default.png', '2020-01-26 03:46:24'),
(34, 7, 4, 'default.png', '2020-01-26 03:46:24'),
(35, 7, 5, 'default.png', '2020-01-26 03:46:24'),
(36, 8, 1, 'default.png', '2020-01-26 03:46:24'),
(37, 8, 2, 'default.png', '2020-01-26 03:46:24'),
(38, 8, 3, 'default.png', '2020-01-26 03:46:24'),
(39, 8, 4, 'default.png', '2020-01-26 03:46:24'),
(40, 8, 5, 'default.png', '2020-01-26 03:46:24'),
(41, 9, 1, 'default.png', '2020-01-26 03:46:24'),
(42, 9, 2, 'default.png', '2020-01-26 03:46:24'),
(43, 9, 3, 'default.png', '2020-01-26 03:46:24'),
(44, 9, 4, 'default.png', '2020-01-26 03:46:24'),
(45, 9, 5, 'default.png', '2020-01-26 03:46:24'),
(46, 10, 1, 'default.png', '2020-01-26 03:46:24'),
(47, 10, 2, 'default.png', '2020-01-26 03:46:24'),
(48, 10, 3, 'default.png', '2020-01-26 03:46:24'),
(49, 10, 4, 'default.png', '2020-01-26 03:46:24'),
(50, 10, 5, 'default.png', '2020-01-26 03:46:24');

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
(3, 1, 2, 2, 5.0),
(4, 1, 2, 3, 0.0),
(5, 1, 1, 5, 0.0),
(6, 1, 1, 7, 3.0),
(7, 1, 1, 8, 1.0),
(8, 1, 1, 6, 2.0),
(9, 1, 1, 9, 0.0),
(10, 1, 1, 4, 3.0),
(11, 1, 1, 11, 0.0),
(12, 1, 1, 10, 1.0),
(13, 1, 2, 4, 2.0),
(14, 1, 2, 5, 2.0),
(15, 1, 2, 6, 4.0),
(16, 1, 2, 7, 5.0),
(17, 1, 2, 8, 4.0),
(18, 1, 2, 9, 3.0),
(19, 1, 2, 10, 2.0),
(20, 1, 2, 11, 3.0),
(21, 1, 3, 2, 2.0),
(22, 1, 3, 3, 2.0),
(23, 1, 3, 4, 4.0),
(24, 1, 3, 5, 2.0),
(25, 1, 3, 6, 5.0),
(26, 1, 3, 7, 0.0),
(27, 1, 3, 8, 3.0),
(28, 1, 3, 9, 2.0),
(29, 1, 3, 10, 4.0),
(30, 1, 3, 11, 4.0),
(31, 1, 4, 2, 1.0),
(32, 1, 4, 3, 5.0),
(33, 1, 4, 4, 0.0),
(34, 1, 4, 5, 3.0),
(35, 1, 4, 6, 1.0),
(36, 1, 4, 7, 4.0),
(37, 1, 4, 8, 0.0),
(38, 1, 4, 10, 0.0),
(39, 1, 4, 9, 0.0),
(40, 1, 4, 11, 0.0),
(41, 1, 5, 2, 1.0),
(42, 1, 5, 3, 2.0),
(43, 1, 5, 4, 2.0),
(44, 1, 5, 5, 0.0),
(45, 1, 5, 6, 2.0),
(46, 1, 5, 7, 1.0),
(47, 1, 5, 8, 0.0),
(48, 1, 5, 9, 3.0),
(49, 1, 5, 10, 5.0),
(50, 1, 5, 11, 5.0),
(51, 2, 1, 2, 3.0),
(52, 2, 1, 3, 4.0),
(53, 2, 1, 4, 1.0),
(54, 2, 1, 5, 4.0),
(55, 2, 1, 6, 5.0),
(56, 2, 1, 7, 3.0),
(57, 2, 1, 8, 0.0),
(58, 2, 1, 9, 0.0),
(59, 2, 1, 10, 5.0),
(60, 2, 1, 11, 3.0),
(61, 2, 2, 2, 5.0),
(62, 2, 2, 3, 0.0),
(63, 2, 2, 4, 5.0),
(64, 2, 2, 5, 2.0),
(65, 2, 2, 6, 1.0),
(66, 2, 2, 7, 0.0),
(67, 2, 2, 8, 4.0),
(68, 2, 2, 9, 1.0),
(69, 2, 2, 10, 5.0),
(70, 2, 3, 2, 3.0),
(71, 2, 2, 11, 1.0),
(72, 2, 3, 3, 4.0),
(73, 2, 3, 4, 5.0),
(74, 2, 3, 5, 5.0),
(75, 2, 3, 6, 4.0),
(76, 2, 3, 7, 1.0),
(77, 2, 3, 8, 1.0),
(78, 2, 3, 9, 0.0),
(79, 2, 3, 10, 1.0),
(80, 2, 3, 11, 2.0),
(81, 2, 4, 2, 3.0),
(82, 2, 4, 3, 5.0),
(83, 2, 4, 4, 4.0),
(84, 2, 4, 5, 5.0),
(85, 2, 4, 6, 4.0),
(86, 2, 4, 7, 2.0),
(87, 2, 4, 8, 3.0),
(88, 2, 4, 9, 4.0),
(89, 2, 4, 10, 5.0),
(90, 2, 4, 11, 1.0),
(91, 2, 5, 2, 4.0),
(92, 2, 5, 3, 4.0),
(93, 2, 5, 4, 2.0),
(94, 2, 5, 5, 0.0),
(95, 2, 5, 6, 0.0),
(96, 2, 5, 7, 4.0),
(97, 2, 5, 8, 0.0),
(98, 2, 5, 9, 2.0),
(99, 2, 5, 10, 2.0),
(100, 2, 5, 11, 1.0),
(101, 3, 1, 2, 1.0),
(102, 3, 1, 3, 5.0),
(103, 3, 1, 4, 4.0),
(104, 3, 1, 5, 4.0),
(105, 3, 1, 6, 4.0),
(106, 3, 1, 7, 5.0),
(107, 3, 1, 8, 3.0),
(108, 3, 1, 9, 3.0),
(109, 3, 1, 10, 2.0),
(110, 3, 1, 11, 2.0),
(111, 3, 2, 2, 1.0),
(112, 3, 2, 3, 2.0),
(113, 3, 2, 4, 2.0),
(114, 3, 2, 5, 0.0),
(115, 3, 2, 6, 4.0),
(116, 3, 2, 7, 0.0),
(117, 3, 2, 8, 1.0),
(118, 3, 2, 9, 2.0),
(119, 3, 2, 10, 1.0),
(120, 3, 2, 11, 4.0),
(121, 3, 3, 2, 4.0),
(122, 3, 3, 3, 2.0),
(123, 3, 3, 4, 2.0),
(124, 3, 3, 5, 3.0),
(125, 3, 3, 6, 5.0),
(126, 3, 3, 7, 2.0),
(127, 3, 3, 8, 5.0),
(128, 3, 3, 9, 3.0),
(129, 3, 3, 10, 4.0),
(130, 3, 3, 11, 0.0),
(131, 3, 4, 2, 5.0),
(132, 3, 4, 3, 3.0),
(133, 3, 4, 4, 5.0),
(134, 3, 4, 5, 4.0),
(135, 3, 4, 6, 2.0),
(136, 3, 4, 7, 4.0),
(137, 3, 4, 8, 0.0),
(138, 3, 4, 9, 4.0),
(139, 3, 4, 10, 4.0),
(140, 3, 4, 11, 5.0),
(141, 3, 5, 2, 5.0),
(142, 3, 5, 3, 5.0),
(143, 3, 5, 4, 1.0),
(144, 3, 5, 5, 3.0),
(145, 3, 5, 6, 2.0),
(146, 3, 5, 7, 0.0),
(147, 3, 5, 8, 3.0),
(148, 3, 5, 9, 1.0),
(149, 3, 5, 10, 2.0),
(150, 3, 5, 11, 0.0),
(151, 4, 1, 2, 5.0),
(152, 4, 1, 3, 2.0),
(153, 4, 1, 4, 1.0),
(154, 4, 1, 5, 1.0),
(155, 4, 1, 6, 5.0),
(156, 4, 1, 7, 3.0),
(157, 4, 1, 8, 3.0),
(158, 4, 1, 9, 4.0),
(159, 4, 1, 10, 2.0),
(160, 4, 1, 11, 2.0),
(161, 4, 2, 2, 0.0),
(162, 4, 2, 3, 1.0),
(163, 4, 2, 4, 4.0),
(164, 4, 2, 5, 1.0),
(165, 4, 2, 6, 5.0),
(166, 4, 2, 7, 1.0),
(167, 4, 2, 8, 4.0),
(168, 4, 2, 9, 4.0),
(169, 4, 2, 10, 1.0),
(170, 4, 2, 11, 0.0),
(171, 4, 3, 2, 4.0),
(172, 4, 3, 3, 0.0),
(173, 4, 3, 4, 1.0),
(174, 4, 3, 5, 4.0),
(175, 4, 3, 6, 3.0),
(176, 4, 3, 7, 1.0),
(177, 4, 3, 8, 1.0),
(178, 4, 3, 9, 2.0),
(179, 4, 3, 10, 4.0),
(180, 4, 3, 11, 3.0),
(181, 4, 4, 2, 2.0),
(182, 4, 4, 3, 0.0),
(183, 4, 4, 4, 0.0),
(184, 4, 4, 5, 3.0),
(185, 4, 4, 6, 4.0),
(186, 4, 4, 7, 4.0),
(187, 4, 4, 8, 3.0),
(188, 4, 4, 9, 5.0),
(189, 4, 4, 10, 0.0),
(190, 4, 4, 11, 2.0),
(191, 4, 5, 2, 3.0),
(192, 4, 5, 3, 2.0),
(193, 4, 5, 4, 3.0),
(194, 4, 5, 5, 1.0),
(195, 4, 5, 6, 2.0),
(196, 4, 5, 8, 5.0),
(197, 4, 5, 7, 5.0),
(198, 4, 5, 9, 4.0),
(199, 4, 5, 10, 5.0),
(200, 4, 5, 11, 0.0),
(201, 5, 1, 2, 5.0),
(202, 5, 1, 3, 3.0),
(203, 5, 1, 4, 5.0),
(204, 5, 1, 5, 1.0),
(205, 5, 1, 6, 2.0),
(206, 5, 1, 7, 5.0),
(207, 5, 1, 8, 0.0),
(208, 5, 1, 9, 2.0),
(209, 5, 1, 10, 4.0),
(210, 5, 1, 11, 0.0),
(211, 5, 2, 2, 4.0),
(212, 5, 2, 3, 5.0),
(213, 5, 2, 4, 0.0),
(214, 5, 2, 5, 3.0),
(215, 5, 2, 6, 0.0),
(216, 5, 2, 7, 4.0),
(217, 5, 2, 8, 5.0),
(218, 5, 2, 9, 2.0),
(219, 5, 2, 10, 0.0),
(220, 5, 2, 11, 4.0),
(221, 5, 3, 2, 2.0),
(222, 5, 3, 3, 0.0),
(223, 5, 3, 4, 3.0),
(224, 5, 3, 5, 5.0),
(225, 5, 3, 6, 4.0),
(226, 5, 3, 7, 3.0),
(227, 5, 3, 8, 0.0),
(228, 5, 3, 9, 2.0),
(229, 5, 3, 10, 4.0),
(230, 5, 3, 11, 3.0),
(231, 5, 4, 2, 3.0),
(232, 5, 4, 3, 2.0),
(233, 5, 4, 4, 5.0),
(234, 5, 4, 5, 4.0),
(235, 5, 4, 6, 1.0),
(236, 5, 4, 7, 2.0),
(237, 5, 4, 8, 5.0),
(238, 5, 4, 9, 3.0),
(239, 5, 4, 10, 3.0),
(240, 5, 4, 11, 2.0),
(241, 5, 5, 2, 4.0),
(242, 5, 5, 3, 4.0),
(243, 5, 5, 4, 0.0),
(244, 5, 5, 5, 1.0),
(245, 5, 5, 6, 5.0),
(246, 5, 5, 7, 4.0),
(247, 5, 5, 8, 0.0),
(248, 5, 5, 9, 4.0),
(249, 5, 5, 10, 3.0),
(250, 5, 5, 11, 3.0),
(251, 6, 1, 2, 4.0),
(252, 6, 1, 3, 3.0),
(253, 6, 1, 4, 1.0),
(254, 6, 1, 5, 4.0),
(255, 6, 1, 6, 2.0),
(256, 6, 1, 7, 1.0),
(257, 6, 1, 8, 4.0),
(258, 6, 1, 9, 3.0),
(259, 6, 1, 10, 3.0),
(260, 6, 1, 11, 0.0),
(261, 6, 2, 2, 5.0),
(262, 6, 2, 3, 2.0),
(263, 6, 2, 4, 3.0),
(264, 6, 2, 5, 1.0),
(265, 6, 2, 6, 0.0),
(266, 6, 2, 7, 1.0),
(267, 6, 2, 8, 0.0),
(268, 6, 2, 9, 5.0),
(269, 6, 2, 10, 2.0),
(270, 6, 2, 11, 4.0),
(271, 6, 3, 2, 5.0),
(272, 6, 3, 3, 3.0),
(273, 6, 3, 4, 2.0),
(274, 6, 3, 5, 1.0),
(275, 6, 3, 6, 1.0),
(276, 6, 3, 7, 5.0),
(277, 6, 3, 8, 0.0),
(278, 6, 3, 9, 2.0),
(279, 6, 3, 10, 4.0),
(280, 6, 3, 11, 4.0),
(281, 6, 4, 4, 3.0),
(282, 6, 4, 2, 4.0),
(283, 6, 4, 3, 1.0),
(284, 6, 4, 5, 4.0),
(285, 6, 4, 6, 4.0),
(286, 6, 4, 7, 3.0),
(287, 6, 4, 8, 1.0),
(288, 6, 4, 9, 4.0),
(289, 6, 4, 10, 5.0),
(290, 6, 4, 11, 5.0),
(291, 6, 5, 2, 5.0),
(292, 6, 5, 3, 3.0),
(293, 6, 5, 4, 3.0),
(294, 6, 5, 5, 4.0),
(295, 6, 5, 6, 4.0),
(296, 6, 5, 7, 0.0),
(297, 6, 5, 8, 3.0),
(298, 6, 5, 9, 4.0),
(299, 6, 5, 10, 4.0),
(300, 6, 5, 11, 3.0),
(301, 7, 1, 2, 4.0),
(302, 7, 1, 3, 5.0),
(303, 7, 1, 4, 5.0),
(304, 7, 1, 5, 2.0),
(305, 7, 1, 6, 0.0),
(306, 7, 1, 7, 4.0),
(307, 7, 1, 8, 4.0),
(308, 7, 1, 9, 3.0),
(309, 7, 1, 10, 1.0),
(310, 7, 1, 11, 4.0),
(311, 7, 2, 2, 0.0),
(312, 7, 2, 3, 0.0),
(313, 7, 2, 4, 3.0),
(314, 7, 2, 5, 2.0),
(315, 7, 2, 6, 5.0),
(316, 7, 2, 7, 4.0),
(317, 7, 2, 8, 1.0),
(318, 7, 2, 9, 5.0),
(319, 7, 2, 10, 4.0),
(320, 7, 2, 11, 5.0),
(321, 7, 3, 2, 3.0),
(322, 7, 3, 3, 1.0),
(323, 7, 3, 4, 0.0),
(324, 7, 3, 5, 3.0),
(325, 7, 3, 6, 5.0),
(326, 7, 3, 7, 4.0),
(327, 7, 3, 9, 1.0),
(328, 7, 3, 8, 4.0),
(329, 7, 3, 10, 4.0),
(330, 7, 3, 11, 5.0),
(331, 7, 4, 2, 3.0),
(332, 7, 4, 3, 1.0),
(333, 7, 4, 4, 3.0),
(334, 7, 4, 5, 0.0),
(335, 7, 4, 6, 1.0),
(336, 7, 4, 7, 5.0),
(337, 7, 4, 8, 1.0),
(338, 7, 4, 9, 0.0),
(339, 7, 4, 10, 2.0),
(340, 7, 4, 11, 3.0),
(341, 7, 5, 2, 0.0),
(342, 7, 5, 3, 5.0),
(343, 7, 5, 4, 0.0),
(344, 7, 5, 5, 4.0),
(345, 7, 5, 6, 0.0),
(346, 7, 5, 7, 4.0),
(347, 7, 5, 8, 3.0),
(348, 7, 5, 9, 1.0),
(349, 7, 5, 10, 5.0),
(350, 7, 5, 11, 3.0),
(351, 8, 1, 2, 1.0),
(352, 8, 1, 3, 0.0),
(353, 8, 1, 4, 0.0),
(354, 8, 1, 5, 0.0),
(355, 8, 1, 6, 1.0),
(356, 8, 1, 7, 2.0),
(357, 8, 1, 8, 4.0),
(358, 8, 1, 9, 5.0),
(359, 8, 1, 10, 2.0),
(360, 8, 1, 11, 2.0),
(361, 8, 2, 2, 4.0),
(362, 8, 2, 3, 0.0),
(363, 8, 2, 4, 3.0),
(364, 8, 2, 5, 4.0),
(365, 8, 2, 6, 3.0),
(366, 8, 2, 7, 4.0),
(367, 8, 2, 8, 1.0),
(368, 8, 2, 9, 4.0),
(369, 8, 2, 10, 3.0),
(370, 8, 2, 11, 4.0),
(371, 8, 3, 2, 2.0),
(372, 8, 3, 5, 0.0),
(373, 8, 3, 6, 0.0),
(374, 8, 3, 3, 0.0),
(375, 8, 3, 4, 5.0),
(376, 8, 3, 7, 3.0),
(377, 8, 3, 8, 3.0),
(378, 8, 3, 9, 5.0),
(379, 8, 3, 10, 4.0),
(380, 8, 3, 11, 3.0),
(381, 8, 4, 2, 0.0),
(382, 8, 4, 3, 1.0),
(383, 8, 4, 4, 3.0),
(384, 8, 4, 5, 5.0),
(385, 8, 4, 6, 5.0),
(386, 8, 4, 7, 3.0),
(387, 8, 4, 8, 5.0),
(388, 8, 4, 9, 4.0),
(389, 8, 4, 10, 5.0),
(390, 8, 4, 11, 1.0),
(391, 8, 5, 2, 3.0),
(392, 8, 5, 3, 1.0),
(393, 8, 5, 4, 3.0),
(394, 8, 5, 5, 4.0),
(395, 8, 5, 6, 5.0),
(396, 8, 5, 7, 1.0),
(397, 8, 5, 8, 1.0),
(398, 8, 5, 9, 0.0),
(399, 8, 5, 10, 3.0),
(400, 8, 5, 11, 3.0),
(401, 9, 1, 2, 0.0),
(402, 9, 1, 3, 2.0),
(403, 9, 1, 4, 5.0),
(404, 9, 1, 5, 2.0),
(405, 9, 1, 6, 3.0),
(406, 9, 1, 7, 2.0),
(407, 9, 1, 8, 4.0),
(408, 9, 1, 9, 1.0),
(409, 9, 1, 10, 5.0),
(410, 9, 1, 11, 3.0),
(411, 9, 2, 2, 2.0),
(412, 9, 2, 3, 2.0),
(413, 9, 2, 4, 0.0),
(414, 9, 2, 5, 5.0),
(415, 9, 2, 6, 5.0),
(416, 9, 2, 7, 0.0),
(417, 9, 2, 8, 5.0),
(418, 9, 2, 9, 1.0),
(419, 9, 2, 10, 0.0),
(420, 9, 2, 11, 4.0),
(421, 9, 3, 2, 1.0),
(422, 9, 3, 3, 1.0),
(423, 9, 3, 4, 3.0),
(424, 9, 3, 5, 3.0),
(425, 9, 3, 6, 3.0),
(426, 9, 3, 7, 5.0),
(427, 9, 3, 8, 5.0),
(428, 9, 3, 9, 1.0),
(429, 9, 3, 10, 3.0),
(430, 9, 3, 11, 4.0),
(431, 9, 4, 2, 5.0),
(432, 9, 4, 3, 4.0),
(433, 9, 4, 4, 2.0),
(434, 9, 4, 5, 1.0),
(435, 9, 4, 6, 1.0),
(436, 9, 4, 7, 4.0),
(437, 9, 4, 8, 0.0),
(438, 9, 4, 9, 5.0),
(439, 9, 4, 10, 3.0),
(440, 9, 4, 11, 2.0),
(441, 9, 5, 2, 0.0),
(442, 9, 5, 3, 2.0),
(443, 9, 5, 4, 0.0),
(444, 9, 5, 5, 5.0),
(445, 9, 5, 6, 2.0),
(446, 9, 5, 7, 5.0),
(447, 9, 5, 8, 1.0),
(448, 9, 5, 9, 4.0),
(449, 9, 5, 10, 2.0),
(450, 9, 5, 11, 4.0),
(451, 10, 1, 2, 2.0),
(452, 10, 1, 3, 4.0),
(453, 10, 1, 4, 5.0),
(454, 10, 1, 5, 4.0),
(455, 10, 1, 6, 5.0),
(456, 10, 1, 7, 3.0),
(457, 10, 1, 8, 3.0),
(458, 10, 1, 9, 2.0),
(459, 10, 1, 10, 1.0),
(460, 10, 1, 11, 1.0),
(461, 10, 2, 2, 1.0),
(462, 10, 2, 3, 3.0),
(463, 10, 2, 4, 3.0),
(464, 10, 2, 5, 1.0),
(465, 10, 2, 6, 4.0),
(466, 10, 2, 7, 5.0),
(467, 10, 2, 8, 3.0),
(468, 10, 2, 9, 4.0),
(469, 10, 2, 10, 2.0),
(470, 10, 2, 11, 1.0),
(471, 10, 3, 2, 2.0),
(472, 10, 3, 3, 3.0),
(473, 10, 3, 4, 3.0),
(474, 10, 3, 5, 3.0),
(475, 10, 3, 6, 4.0),
(476, 10, 3, 7, 2.0),
(477, 10, 3, 9, 2.0),
(478, 10, 3, 8, 5.0),
(479, 10, 3, 10, 5.0),
(480, 10, 3, 11, 4.0),
(481, 10, 4, 2, 2.0),
(482, 10, 4, 3, 2.0),
(483, 10, 4, 4, 1.0),
(484, 10, 4, 5, 5.0),
(485, 10, 4, 6, 4.0),
(486, 10, 4, 7, 5.0),
(487, 10, 4, 8, 1.0),
(488, 10, 4, 9, 4.0),
(489, 10, 4, 10, 4.0),
(490, 10, 4, 11, 1.0),
(491, 10, 5, 2, 4.0),
(492, 10, 5, 3, 1.0),
(493, 10, 5, 4, 3.0),
(494, 10, 5, 5, 3.0),
(495, 10, 5, 6, 1.0),
(496, 10, 5, 7, 4.0),
(497, 10, 5, 8, 0.0),
(498, 10, 5, 9, 3.0),
(499, 10, 5, 10, 0.0),
(500, 10, 5, 11, 5.0);

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
(1, 'Et accusantium natus quod repudiandae.', 'Error voluptatibus aliquam nesciunt temporibus animi et harum. At quae veniam totam magnam excepturi. Eaque non voluptatem nihil facere occaecati officia et.'),
(2, 'Sed nobis aut sit laudantium iste.', 'Sint fugit et numquam cum optio vitae corporis voluptate. Nostrum voluptas dolores quia culpa quasi dolores perspiciatis. Reprehenderit quidem consequatur reprehenderit est labore.'),
(3, 'Voluptas molestias ipsam iusto error quas.', 'Animi reiciendis pariatur et. Consequatur aut et voluptatem id non sit. Repellat ut rerum impedit non et minus vel non et. Et eius amet et molestiae quod sint quia.'),
(4, 'Ex consequatur ipsum tempora in est est odio hic.', 'Non modi dolorem est optio velit ex minus. Quos minima esse cumque libero blanditiis velit quidem. Doloremque sed esse sed eos aut sed nesciunt consequuntur ducimus. Doloremque possimus veritatis nihil reprehenderit maiores.'),
(5, 'Maxime sapiente dignissimos tempora ipsum dolorum harum alias et.', 'Et ad deleniti qui reiciendis amet. Accusantium perferendis minima optio cupiditate maxime reprehenderit quis. Voluptatem quaerat alias qui ut tempora et et minima nostrum. Nemo eum vel tempore rerum animi repellat repudiandae sint. Perspiciatis consequatur dolores enim perferendis commodi.');

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
(1, 'admin', '', 'admin@karcis.com', '$2a$10$7tFppvmmMwU0F3N/doonB.w0ptu03QtsCBgllbLhUzM1UlvD5z1im', '+62987676522', NULL, 'default.png', 1, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(2, 'Jameson', 'Hartmann', 'Alphonso.Zemlak44@hotmail.com', '$2a$10$veczVlnDquwDlJQbLuCyg.Oz0u.tqJeHgiC3B6yqCzTwe0giJ3YOq', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(3, 'Vivian', 'Luettgen', 'Adalberto_Rutherford30@gmail.com', '$2a$10$qFtc5cwfWdXySj29lt6QVeSwUV9codw6ovpfdUlSoHMjW/xavEi6a', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(4, 'Amaya', 'Gislason', 'Haskell_Langworth9@gmail.com', '$2a$10$QlMcrDKMXK9C55AcU83DcuDod7ZXj8QjKoFyRWZFmWou/Fnu9XjMC', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(5, 'Catharine', 'O\'Hara', 'Chesley.Mueller@hotmail.com', '$2a$10$Zqz.2uGNWtf.JYHRbZaaHO/QGaFcJxdXfV1PqoJKRRRS7wgreB7iO', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(6, 'Rosalinda', 'Gusikowski', 'Delphine35@hotmail.com', '$2a$10$jZtOK358WG3Y3BI9Un3umuC54Me/n2q3/W0uem7jswN1jcxCgble.', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(7, 'Malinda', 'Gibson', 'Keeley.Breitenberg@yahoo.com', '$2a$10$25ycTHa/XKg0m87Z8xzgxerYkP2X7ihNyf6Kih043GDVh5Ed1zst6', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(8, 'Caroline', 'Kris', 'Breana.Ankunding77@yahoo.com', '$2a$10$BDJCeM30TQB0XgRim8Mylu2ztBOXvBVIiHed5JhCioqgsD2Yoqm9G', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(9, 'Felicita', 'Kunze', 'Kailey2@gmail.com', '$2a$10$wbnTRUMNC8lZepgrAxAL6udSfid/qeDlGjhNGcHsEOlZapVYKwh5O', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(10, 'Noemy', 'Jones', 'Doris62@gmail.com', '$2a$10$Gdc4qUh7V5DoTNAPkzGLv.LDYT770MLD3X6ToX3THOXLA18H3i3HO', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22'),
(11, 'Connie', 'Senger', 'Cali_Mraz@hotmail.com', '$2a$10$eJhm1d7EkBz3m4KKOe2xHuDwLqGR3Dof7MAMD5h/kL2P.CLkJkUo2', '+62987676522', NULL, 'default.png', 2, '2020-01-26 03:46:22', '2020-01-26 03:46:22');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
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
