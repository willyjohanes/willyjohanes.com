-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2023 at 01:55 PM
-- Server version: 10.6.14-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1574086_willyjohanes.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `biblestudies`
--

CREATE TABLE `biblestudies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Systematic Theology', 'systematic-theology', '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(2, 'Biblical Theology', 'biblical-theology', '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(3, 'Historical Theology', 'historical-theology', '2023-06-06 22:36:17', '2023-06-06 22:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_22_102833_create_biblestudies_table', 1),
(6, '2023_05_29_154225_create_posts_table', 1),
(7, '2023_06_02_003203_create_categories_table', 1),
(8, '2023_06_08_021751_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Quia itaque tempora voluptatem voluptatem reprehenderit.', 'earum-quasi-quidem-sint-et-provident-eum', NULL, 'Et ut illum eum nihil. At deserunt voluptas qui architecto assumenda sunt id. Sit dolores dolores odit natus sint vero.', '<p>Accusamus non molestiae est et et qui. Id neque deleniti sequi dolor. Tempore vel enim facere quam dolor vel. Consequatur sit rerum ut vel.</p><p>Aperiam corrupti eveniet quam sed. Est et aut est id modi modi qui. Nostrum repudiandae magni et corrupti. Id nobis omnis eaque a aut aut.</p><p>Sit ut a quia recusandae vitae ea. Ut nam omnis quis dolores at. Recusandae voluptas occaecati voluptatem impedit velit doloribus odio perferendis. Totam ut magnam repellendus et sapiente sint.</p><p>Nisi ipsam aut in animi eligendi temporibus. Voluptatum beatae dignissimos est laudantium. Quia nesciunt distinctio in unde porro necessitatibus quo. Et qui non nesciunt eos ipsam. Perferendis impedit qui quia.</p><p>Tenetur quidem rerum et labore dignissimos et. Qui aperiam assumenda aut voluptate. Vero exercitationem explicabo minus repellat consectetur sed. Ad hic iure architecto aut voluptatem est.</p><p>Et et ullam voluptatum ea architecto illum ut. Eos repellat fugiat quas deserunt voluptatum sit iure. Velit ut architecto qui totam quidem expedita.</p><p>Omnis ea blanditiis ea autem et. Quia commodi sunt ducimus ipsum perspiciatis. Distinctio tempora dolores dolorem iusto.</p><p>Quas eaque aperiam reiciendis quia nam sunt. Iusto ex nostrum qui mollitia ut tempora voluptas quo. Dolor repellat veritatis ab alias tempore inventore. Consequuntur minima aspernatur sequi qui.</p><p>Consequatur mollitia quo fuga magni animi distinctio recusandae autem. Quam delectus qui ut neque. Explicabo optio ad qui.</p><p>Esse et explicabo ut quo. Placeat vel ipsum id eum reiciendis ipsum quaerat. Magnam aut consequuntur qui ratione labore. Sunt earum cum ipsa omnis tempora magni error.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(2, 2, 1, 'Asperiores molestiae ad cum ex.', 'perspiciatis-maiores-officiis-occaecati-animi', NULL, 'Maiores repellat debitis sit sint in. Porro recusandae voluptatum id facilis eaque et voluptatem. Accusamus quam architecto quis non ducimus.', '<p>Earum totam recusandae omnis earum sint. Autem aperiam cupiditate nobis nihil molestias voluptates.</p><p>Reprehenderit et qui magnam magnam magnam facere. Consectetur illum earum iste in cumque. Iure facere fugit dolorem sunt.</p><p>Quis enim omnis natus corrupti eum laboriosam. Distinctio suscipit voluptas mollitia et sequi. Labore et est qui at tenetur eius.</p><p>Exercitationem vitae suscipit incidunt culpa enim. Voluptatum iste necessitatibus quis voluptas. Expedita quisquam sint accusantium.</p><p>Iusto qui repudiandae neque totam eligendi recusandae. Autem qui dicta quo quaerat itaque illum dolores. Sed perferendis odio sit consequuntur expedita sed. Vitae porro a vel nostrum.</p><p>Commodi optio alias maiores rem. Rerum doloremque omnis nulla corrupti rerum. Sed eum quisquam enim alias nesciunt est alias nobis.</p><p>Sunt ullam molestiae hic facilis sit et. Qui et molestiae delectus dolor et quasi. Ea esse quidem ducimus consequatur.</p><p>Omnis molestiae non fugit aut qui voluptates. Molestias reiciendis consequatur aut nihil. Quia eveniet voluptate repudiandae. Vero et reprehenderit quia ratione sit repudiandae.</p><p>Omnis fugit itaque a consequuntur soluta. Distinctio aperiam rerum amet quae occaecati. Aperiam sit in nostrum cupiditate sed dolores. Nisi voluptatum et aut vitae sit.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(3, 1, 3, 'Dicta illum vero minus dicta.', 'natus-aspernatur-vero-culpa-eaque-beatae-magni-inventore', NULL, 'Amet voluptate consequatur fugiat qui officia. Fugit ratione accusantium dignissimos quaerat. Voluptates qui eum eum earum soluta.', '<p>Quos placeat ea veritatis doloremque aspernatur. Aut nisi eius voluptatum nobis. Aspernatur illum qui blanditiis qui ut.</p><p>Numquam aspernatur autem nihil quas minima esse ut. Quidem magni aliquam impedit animi tempora quis consequuntur eveniet.</p><p>Itaque eius nihil ea similique dolorum sit. Sapiente aut pariatur animi sint molestiae. Assumenda omnis dolorem exercitationem aut et.</p><p>Sit ut atque excepturi voluptate. Omnis eveniet soluta quo ullam et voluptatem perferendis. Est labore doloremque modi aut. Perferendis a sed ratione laudantium eos earum occaecati.</p><p>Cum commodi optio ut praesentium asperiores quia. Dignissimos quis odit porro veniam dolores quis et. Dolorem architecto aut quia blanditiis. Et et cupiditate adipisci occaecati porro.</p><p>Ea quia odio libero dolore fuga. Commodi velit commodi quos rerum voluptate expedita ut accusamus. Occaecati qui perspiciatis nihil soluta. Numquam quaerat reprehenderit voluptatum provident ut.</p><p>Eveniet ad maxime sit deserunt neque enim cupiditate maiores. Qui atque perferendis sed enim et enim eos. Libero enim qui qui distinctio.</p><p>Veniam error ut omnis. Modi quas voluptas vel doloribus dolorum. Tenetur ipsum incidunt sapiente consectetur.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(4, 2, 2, 'Enim ut consequuntur at voluptas.', 'labore-ut-adipisci-accusamus-at', NULL, 'Vitae ipsam eaque maxime tempore neque inventore. Et fugiat numquam nisi similique fugiat dolores corporis. Iusto adipisci praesentium est omnis. Culpa omnis optio eum corrupti non.', '<p>Odio vel possimus a. A quidem eligendi autem voluptas fuga in maxime. Sit ut exercitationem temporibus consequuntur id porro.</p><p>Itaque est ipsum perspiciatis. Expedita vero hic omnis. Quis vitae voluptatem earum quo et perferendis ipsum. Accusamus ut repudiandae dolor.</p><p>Assumenda quod labore non ut deleniti architecto architecto. Aliquam sint alias laboriosam est aliquid. Sed sequi ipsum nihil sunt quia vel. Ratione et et nihil consequatur dolores alias ut.</p><p>Velit inventore nostrum voluptas rerum debitis tempora. Optio hic accusamus deleniti consequatur dicta adipisci quis similique. Vel fugit dignissimos veniam possimus.</p><p>Ut accusamus velit minus sint. Ut id voluptate iure suscipit consequatur est. Voluptas quo amet aliquid. Nostrum voluptate nobis maiores.</p><p>Facere est quos rerum sed corporis nobis dolores. Inventore atque explicabo fugiat quis. Esse explicabo non aut assumenda et.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(5, 2, 3, 'Eos nihil possimus distinctio ipsa blanditiis ipsam.', 'nesciunt-deserunt-aut-vitae-placeat-quia', NULL, 'Neque dicta tenetur error consequatur omnis. Molestias natus repudiandae libero recusandae rerum. Sequi laborum quis ea aut. Veniam dolorem officia rerum aut consequuntur ex. Voluptatem quia reiciendis eum eligendi.', '<p>Rerum aspernatur ratione aut quasi. Quia sunt velit ex. A ut voluptatem quod repellat architecto est. Voluptatem rerum repellat dolorem et rerum. Ipsa quasi sed iste voluptates.</p><p>Quia soluta consectetur est ad. Et id doloribus ullam. Rerum consectetur sed unde aliquid nam.</p><p>Culpa rem alias modi fuga laudantium perspiciatis. Culpa mollitia ipsum quidem magni sequi. Doloremque quo et optio dolorem odio officiis.</p><p>Sit praesentium voluptas veritatis occaecati quod. Vel itaque et est aut reprehenderit a. Iusto aut enim ut et inventore delectus quae. Quaerat omnis error voluptates minima magni laborum.</p><p>Id veritatis qui corrupti voluptas optio. Rerum ducimus enim iusto voluptas. Necessitatibus mollitia eum aut molestiae et ut laudantium.</p><p>Quaerat corrupti doloremque consequatur aut totam. Ut rem aut blanditiis eum quam. Aut accusamus reprehenderit repellat rem voluptatum debitis.</p><p>Minus iure doloribus consequatur vitae illo incidunt. Nisi et natus nesciunt amet. Temporibus incidunt qui sint. Iste officiis minima hic harum possimus ut modi.</p><p>Autem placeat dolorem fuga corporis perspiciatis fuga nam. Inventore facilis cumque maxime modi. Est neque aut omnis aut delectus dolore odio nulla.</p><p>Error rerum tempore sequi hic nobis consequatur et doloremque. Quasi et illo aliquid facilis. Enim esse et qui et vero cupiditate assumenda doloribus.</p><p>Maiores eaque atque iste. Cum dignissimos ratione nisi quis. Voluptas consequatur ab eos molestiae. Doloribus fugit et sit sed corrupti mollitia numquam. Cupiditate est eveniet id ut.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(6, 1, 3, 'Quis asperiores qui.', 'sit-fugit-fuga-rem-alias-rerum', NULL, 'Fuga labore et cum maxime nisi et. Autem id ea et quia. Et et asperiores molestiae voluptas quibusdam.', '<p>Aperiam at eos mollitia quod doloribus et. Cum atque dolorum nulla quae sit incidunt. Sunt impedit illum quam aut aliquam facilis quod. Qui magni reprehenderit corporis provident nesciunt necessitatibus.</p><p>Earum eos sint laudantium sed est. Quia at labore placeat ut ullam cumque. Nostrum est ut quod doloribus ut ducimus. Et quod accusamus velit porro distinctio porro. Rem debitis voluptatibus sed sapiente porro labore.</p><p>Dolores suscipit eligendi illum voluptas velit enim amet dolores. Vel magni ut ipsa ab harum. Odit vel non aut rem et et.</p><p>Quisquam laboriosam soluta eum recusandae voluptatem quia. In ex cumque consequatur et sunt. Tempore id voluptatem nihil.</p><p>Dignissimos omnis et ut deleniti similique. Cumque quis itaque voluptatibus quos omnis qui. Veniam officia saepe incidunt aut aut adipisci ullam.</p><p>Molestiae beatae non eum voluptates. Velit et excepturi quaerat et sint repellendus.</p><p>Nesciunt cupiditate earum omnis ratione accusamus cupiditate dolores. Animi voluptas et nobis asperiores quaerat occaecati et qui. Aut est nihil suscipit deserunt voluptatem alias officiis.</p><p>Architecto occaecati aut dolore laborum et. Iusto exercitationem et vel. Porro aliquam et odit harum facilis id non.</p><p>Magni cum in beatae sunt sint minus praesentium doloribus. Nam accusantium quaerat sit iure earum neque. Laboriosam adipisci officiis dolor voluptas consequuntur aut. A et velit in quam.</p><p>Vero quibusdam aspernatur et est est. Et ipsum quo harum nihil eos. Minima soluta expedita quia sed dolorem.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(7, 3, 3, 'Eveniet mollitia.', 'libero-mollitia-quis-est-dignissimos-aspernatur', NULL, 'Laborum est quibusdam qui sit consectetur mollitia. Aut rem accusantium dolores nihil. Dolore debitis earum dolores voluptas. Deserunt eligendi temporibus neque qui.', '<p>Ullam aut similique laboriosam dolorum. Provident labore eum ut ut. Libero unde mollitia repudiandae ullam. Modi sequi praesentium dolores nihil eligendi. Officia enim assumenda atque quis odit.</p><p>Repudiandae magni perspiciatis veritatis. Placeat odit quia dolor modi non et. Et voluptates modi maiores ea suscipit. Voluptas a commodi amet ab. Nisi consectetur fugit vel.</p><p>Eos dolore similique expedita velit odit sint quis. Culpa et temporibus voluptatum quis. Voluptatem explicabo veritatis aspernatur molestias eum vel.</p><p>Necessitatibus culpa ut ex qui repellat. Nisi enim quas magnam magnam sed exercitationem et. Deserunt voluptas nam voluptatibus mollitia exercitationem. Corporis earum est perspiciatis modi molestias a.</p><p>Debitis facere repellat facere. Aut voluptatem non est eveniet. Asperiores doloremque numquam libero quia asperiores rerum.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(8, 2, 1, 'Numquam et quia et.', 'magnam-error-aut-animi-quo', NULL, 'Sequi asperiores quo aut praesentium. Et error eius distinctio. Quo et qui maxime esse. Consequatur suscipit aut enim labore praesentium qui.', '<p>Recusandae laudantium ab recusandae molestiae laboriosam. Laborum totam enim illo eligendi voluptas. Aut sapiente et laborum dolores et quasi.</p><p>Labore iure explicabo repellendus omnis. Commodi aut maxime nemo dignissimos eos sunt. Explicabo in corrupti amet ipsam. Ratione autem ipsa libero odit omnis. Fugit sint aut saepe omnis ipsa qui dolorem.</p><p>Animi odio quae recusandae aut ea. Reiciendis assumenda in velit minima. Error modi quidem et dolorum ad. Veritatis hic provident amet maxime sit.</p><p>Officia dolorem ut laudantium ut quis sit. Et pariatur illum officia perspiciatis sint. Veritatis sit magnam alias ut non sed labore.</p><p>Perferendis ratione nisi laborum ut dolores voluptas quia. Quo nostrum at quod eos. Aut est et vel recusandae occaecati.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(9, 3, 3, 'Aut doloribus iste explicabo omnis sit reiciendis adipisci.', 'ea-commodi-nihil-nam-officiis-nobis', NULL, 'Nisi in ipsum repellat cumque repudiandae modi exercitationem commodi. Illum consequatur vitae optio esse quod quod.', '<p>Iure dicta doloremque qui voluptas. Voluptates id accusamus officiis saepe. Omnis ducimus quis quia ex qui.</p><p>Dolor enim sequi quis veritatis deleniti. Rerum est aperiam magni at velit.</p><p>Nam reprehenderit eligendi dolores laboriosam impedit. Eum nulla fugiat qui molestiae aut. Consectetur quia dolorem dolorem iusto similique sed.</p><p>Debitis dolore rerum quia pariatur sed. Rerum voluptates optio a modi. Minima non facilis earum recusandae quo. Aut et velit provident occaecati temporibus ipsam eligendi. Debitis ullam magni nesciunt natus.</p><p>Aperiam doloribus aut sint aut fugit et. Voluptas autem illum et illo consequatur odit suscipit.</p><p>Dolores est qui aut odit dolor. Consequatur dolores dolorem corrupti esse. Et veniam autem sint repudiandae exercitationem animi.</p><p>Eos et enim et explicabo. Ut minus aut minus. Et ipsa qui quas id placeat eum. Voluptatem laborum rem in ea officia tempora.</p><p>Natus quod sint omnis vero sunt repudiandae cupiditate. Labore aut fuga eaque modi mollitia. Fuga impedit dicta ratione sed cum est maiores eius. Tempora accusamus quas et delectus reiciendis eum dolor.</p><p>Provident cupiditate iure rerum pariatur sint accusantium labore. Nulla et commodi enim. Vero delectus suscipit aut et ipsum autem sunt. Natus et voluptates aperiam quis.</p><p>Quam nam et qui qui nam dolorem debitis. Sunt ipsam impedit quia. Ab id nisi at ut.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(10, 2, 2, 'Ut quae autem dolores sit temporibus.', 'voluptatem-expedita-quis-veritatis-non-aut', NULL, 'Nulla eveniet cupiditate occaecati quod. Voluptate eum nulla error et iusto libero optio dolores. Repudiandae non et ut. Saepe odit sed porro reprehenderit est sit et.', '<p>Deserunt dolor natus veniam delectus. Minus et dolores et sed est. Velit veritatis temporibus exercitationem quo natus.</p><p>Sequi temporibus blanditiis id ullam dignissimos est. Placeat magnam nostrum ut.</p><p>Quia praesentium velit voluptas deleniti. Sed sit unde laudantium quis. Voluptatum vitae molestias minima suscipit vitae. Quaerat quas provident aut inventore asperiores.</p><p>Fuga modi incidunt et architecto sapiente ut. Tempora nobis iste et est omnis fugiat. Perferendis omnis minus velit sequi. Dicta repudiandae molestiae sequi quas debitis vel reiciendis.</p><p>Dolorem ipsam dolorem minus nemo quo. Omnis quo voluptas aut omnis et dignissimos. Omnis eligendi necessitatibus necessitatibus vel libero omnis officiis quae.</p><p>Itaque itaque autem laboriosam quasi vel. Atque earum ducimus eaque sed aut fugit cumque sit. Vel magni ipsa velit et molestiae eum placeat. Voluptatem facere veniam dolorum ducimus maiores.</p><p>Asperiores cupiditate unde dolorum consequatur aut repellendus. Est delectus iure explicabo porro autem dolor. Eaque incidunt illo mollitia quidem mollitia natus. Dolores exercitationem consequatur nihil sit.</p><p>Numquam quasi aut aut eveniet. Quisquam molestiae incidunt delectus sit. Consequatur non perspiciatis rerum quisquam ut esse laboriosam omnis.</p><p>Nisi facilis esse ea id beatae dolore porro. Voluptatem omnis explicabo accusamus sed. Aut qui quisquam reprehenderit.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(11, 1, 1, 'Sed illum dolores quibusdam.', 'voluptatem-soluta-tempora-sint-earum-non-doloremque', NULL, 'Cupiditate alias quisquam eos. Ut id placeat fugit dolores dolorum temporibus. Doloribus qui voluptatem velit ipsum ratione dolores. Rerum nam ea repellendus esse dolorem.', '<p>Eius alias tempore nemo et quia. Et vitae est sed molestiae.</p><p>Vel aut dolor enim ducimus illum. Odit aut qui autem provident voluptatem. Aut veritatis itaque et accusantium minima odit culpa et. Voluptatem autem aspernatur in tenetur velit est illum.</p><p>Laudantium repellendus quibusdam atque occaecati eius voluptas dolorum. Ut eum quia suscipit odit. Ut et beatae architecto fugit dolor omnis.</p><p>Neque dolorem dolores excepturi quas voluptate quia voluptates iste. Expedita et consequatur hic et nihil. Doloribus cupiditate reiciendis praesentium quis eius in minima.</p><p>Distinctio cupiditate est exercitationem dolore suscipit quidem veniam aperiam. Sunt dolor eum aut commodi autem quasi perspiciatis. Dignissimos ad voluptas dolorum quibusdam illum quo.</p><p>Id ea est quae fuga iusto occaecati. Tempora laborum quo explicabo dolores. Hic cum amet animi iste neque accusantium. Necessitatibus laudantium perferendis excepturi aut aperiam impedit.</p><p>Fugit velit aspernatur quia rem atque voluptatem accusamus. Magni corporis labore laborum deleniti. Et alias corrupti doloribus aperiam. Minus velit fugiat culpa sit ipsa fuga ut labore.</p><p>Ut magnam id maxime error odio non. Et labore in est omnis eum debitis.</p><p>Sit vitae neque molestias ullam qui dolor minus. Porro hic occaecati ut odit magnam consequuntur ea. Odio temporibus quia voluptatem possimus dignissimos.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(12, 3, 2, 'Occaecati adipisci voluptates quibusdam voluptas distinctio alias.', 'quaerat-amet-similique-maiores-excepturi-porro-sed', NULL, 'Iure aut repudiandae consectetur aut laboriosam. Dolores neque sint sint corporis. Consequuntur aut eos sint.', '<p>Quaerat quo doloribus similique ut cum odit. Vel quasi reiciendis in fugiat. Et blanditiis qui qui recusandae odio est. Error et repellendus voluptatem ipsum.</p><p>Velit magni culpa rerum aut. Aperiam voluptatem corporis nulla. Tenetur blanditiis qui dolore reiciendis ex. Sint aut ducimus voluptatem ut voluptas provident voluptatum.</p><p>Eos et magni magni vitae. Deleniti voluptatem iure voluptatibus assumenda asperiores quia. Unde pariatur saepe corporis ut accusantium.</p><p>Est repudiandae quisquam totam inventore cumque ullam delectus ducimus. Dolor enim perspiciatis quisquam et culpa. Porro dolorem officia dicta.</p><p>Ea iure impedit sed et corrupti quia. Officia modi qui voluptate veritatis dolores. Ut eum est est commodi in est.</p><p>Quia in aut sed dolor sit. Cupiditate possimus soluta pariatur et laboriosam. Velit tempora iste voluptatem repudiandae quia sint. Temporibus voluptates saepe sit error voluptatibus.</p><p>Rem nobis in rerum asperiores aut dolorum aperiam. Iste harum nisi aut. Sunt quia vel dolor provident non omnis maxime. Aliquid repudiandae sequi sed tempore aperiam.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(13, 1, 1, 'Vel vitae accusamus.', 'laborum-provident-quod-quis-sunt-dicta-a', NULL, 'Doloremque possimus error nesciunt ab illum explicabo. Adipisci perspiciatis nam qui iure dolorem et aliquid architecto. Nemo modi labore hic minima et et. Nemo velit quidem harum similique unde.', '<p>Sed consectetur perferendis in et nulla unde vitae. Sit voluptas sunt harum nesciunt. Ut qui saepe quisquam voluptas iure veniam. Exercitationem sint officiis suscipit ex aspernatur perspiciatis corporis.</p><p>Eos aut velit exercitationem sed id. Nihil placeat odit esse atque similique sed tempora. Excepturi voluptatibus unde quisquam est qui quibusdam ut. Necessitatibus repudiandae et consequatur maxime.</p><p>Perferendis magnam eum recusandae consectetur. Qui ratione corporis cupiditate exercitationem ab voluptas aut.</p><p>Voluptatem voluptate alias aut veritatis temporibus at. Labore velit non non iusto. Est excepturi doloremque doloremque architecto.</p><p>Incidunt natus doloremque commodi eveniet expedita quidem doloribus dolorem. Ut exercitationem laboriosam quia aut dignissimos. Occaecati quod voluptas sed non.</p><p>Enim consequatur corporis et non consequatur. Maiores at est possimus eum minima quis architecto. Placeat aut quia expedita dolor velit vel aut assumenda. Quae sit repudiandae doloremque.</p><p>Asperiores autem blanditiis nihil voluptatem in fugiat magni. Exercitationem deleniti voluptas non exercitationem. Enim delectus accusamus sunt aut autem quia iure id. Totam vel sint dolorum et. Sit repellat dolore dolor aut saepe odio.</p><p>Quo corporis consequatur id at quibusdam. Quod inventore ut exercitationem vitae sunt exercitationem sit. Mollitia distinctio delectus dignissimos voluptate consequatur et consequuntur. Nisi cupiditate omnis est quis nobis enim. Est ab assumenda molestiae quo atque laboriosam vero cumque.</p><p>Aliquam vero nesciunt id ipsam tenetur modi. Nostrum dolores dolor porro quo maxime tempora vel. Quo ab est consequuntur omnis quo ex commodi.</p><p>Aut ipsum autem voluptate ea. Rerum debitis quae deserunt. Tenetur quia corporis perspiciatis facilis incidunt. Hic iste est et minima incidunt molestias ipsum ullam.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(14, 3, 3, 'Dolorem doloremque incidunt optio qui.', 'corrupti-quo-consectetur-officia-non-sed-rem-quia', NULL, 'Rerum architecto iure porro aut. Voluptatibus ratione ea est atque nulla aperiam rerum. Debitis ipsam cum et distinctio repellendus dolorem.', '<p>Perferendis alias vitae aliquid eos. Atque sed qui nisi quas a. Ad atque mollitia est at.</p><p>Magni mollitia ullam architecto ea blanditiis voluptatem. Modi facere quia odit in aspernatur praesentium voluptas. Veniam ea blanditiis architecto et. Pariatur tempore unde veniam iure.</p><p>Eos dignissimos est sequi officiis. Vitae suscipit sit ut nostrum aut voluptatem. Libero sed dolor explicabo id quos commodi aut saepe.</p><p>Non in voluptas magnam quis cum autem. Fugiat atque ea saepe sunt dicta itaque accusamus. Ducimus dolorem sint est omnis repudiandae officiis et. Dolores minus vero inventore nulla quasi.</p><p>Incidunt laborum ea et molestiae. Corporis nihil sint autem id quis architecto ipsum. Et et ea blanditiis aut sint exercitationem.</p><p>Ratione aut recusandae laborum quia debitis et sunt. Quo et voluptatem deleniti et. Iusto deleniti doloremque perspiciatis facere.</p><p>Et voluptates non sed sint facilis ullam. Facere in aliquam provident doloremque vitae corrupti ut. Qui laborum nobis laudantium est ut soluta. Eum et earum et perferendis dicta quaerat.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(15, 1, 1, 'Quisquam facere id voluptatem.', 'sequi-exercitationem-repudiandae-libero-ea', NULL, 'Maxime ut nam aut modi iste deserunt vero nulla. Eum temporibus est voluptatem et aut veniam voluptates. Rerum assumenda iure nam.', '<p>Et dolore repellat quas ullam dignissimos. Facere delectus sequi ratione cum. Odit quisquam nam nobis necessitatibus exercitationem. Repellendus qui deleniti atque qui omnis et.</p><p>Sit aliquid non culpa aliquam. Veritatis et neque explicabo est nam quam. Vel accusantium cumque ex voluptates veritatis magni dolores.</p><p>Ut accusantium eligendi quo ea vero repellat consequatur. Aut inventore ipsam maxime nam dolores. Et qui ipsum quibusdam fugiat nihil. Blanditiis est autem iure sit. Facere laboriosam quis harum animi officia fugit a.</p><p>Quas voluptatem labore qui totam quibusdam consequatur porro. Debitis doloremque rem eaque iste ipsa. Dolorem quo qui quis asperiores et sequi sint.</p><p>Praesentium architecto provident quis. Officia ratione delectus dolores molestias. Dolores ut ipsam at est qui ab ipsam. Natus quae distinctio voluptate et harum repellat.</p><p>Cupiditate velit illum dolor cupiditate voluptatum fugiat. Cum cupiditate reprehenderit corporis earum repellat. Mollitia provident maxime minus et. Nemo deserunt aut sed ad iste.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(16, 2, 1, 'Odio alias alias consequuntur itaque consequatur nesciunt mollitia.', 'quia-magnam-eius-voluptates-sed-at-natus-qui', NULL, 'Accusamus corporis earum omnis cupiditate unde repellendus explicabo. Accusamus voluptatem quia beatae natus vel. Assumenda ipsam excepturi perferendis ut.', '<p>Id nihil fugiat ratione debitis. Dolores voluptas vel dolores quaerat maxime quos similique.</p><p>Dolore modi qui voluptas commodi ab dicta. Et voluptatem quas eos sed sed omnis autem. Animi qui et cum ut quasi quia provident.</p><p>Aut autem qui assumenda a expedita non. Earum laborum neque est officiis ut. Incidunt repudiandae explicabo quae necessitatibus impedit ex.</p><p>Cum quos consectetur aut sapiente. Voluptatem dolores non praesentium explicabo repellendus voluptatem. Earum doloribus ipsum reiciendis dolor. Magni dolor numquam repellendus atque eum facilis quas.</p><p>Architecto saepe ea suscipit eveniet consequatur nesciunt est incidunt. Aliquam sed sit aut vitae voluptatum. Recusandae libero eveniet laudantium nemo ab alias occaecati. Sapiente ratione voluptate odio harum harum aut nihil molestiae.</p><p>Cumque sapiente quisquam molestiae recusandae dolore doloribus doloribus. Laborum pariatur eligendi rerum commodi rerum quam velit. Enim molestiae et aperiam non temporibus ex nobis perferendis. Dolorem nam qui et officia ea officia iusto mollitia.</p><p>Perferendis explicabo quo labore qui et omnis consectetur. Repellat dolorem ut molestias ipsam et enim. Porro velit aut cupiditate dicta ipsa eligendi natus molestiae.</p><p>Autem incidunt omnis expedita repudiandae rerum. Voluptates sed molestiae quia molestias qui incidunt et. Atque quaerat nostrum quibusdam eos eaque. Similique facere aut est exercitationem explicabo porro vel. Id delectus error quidem consequatur doloremque unde.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(17, 3, 3, 'Aperiam dolores rem repellendus nostrum omnis totam.', 'non-voluptates-dolor-architecto-excepturi-voluptates-omnis', NULL, 'Quisquam voluptatem a quia corporis magnam atque tempore. Non quas ad aliquam magnam voluptatem optio ex laboriosam. Corporis odio sed nesciunt amet. Consectetur autem voluptate aut est.', '<p>Corrupti cum eum ipsa dolores impedit. Ut aut expedita eligendi consequatur. Nesciunt repellendus ut eveniet qui sint pariatur.</p><p>Voluptatibus id nemo consequatur hic ex adipisci perspiciatis. Animi dolorum molestias ex molestias. Aut vero aut voluptas sint non nobis autem.</p><p>Veritatis aut omnis eveniet eius non. Aut voluptate sed neque at odio animi. Aut officiis architecto ea et et tempore rerum. Earum alias optio omnis deserunt sit architecto quibusdam.</p><p>At porro et autem porro. Optio quibusdam totam debitis repudiandae.</p><p>Iste libero non cupiditate et voluptatem mollitia est. Rerum voluptate sed id eligendi nemo molestiae doloremque eos. Quisquam cupiditate est quibusdam asperiores.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(18, 2, 3, 'Velit a velit ea sit harum est id.', 'labore-autem-optio-ut-rerum-iste-molestiae-omnis', NULL, 'Inventore voluptatem consequatur ipsam animi ex et. Placeat pariatur eum libero quia possimus.', '<p>Autem eum expedita voluptatum est iste esse. Nostrum reprehenderit praesentium sapiente est repudiandae excepturi. Nesciunt repellat impedit sit et. Autem excepturi sint reprehenderit blanditiis atque excepturi minima.</p><p>Nam iste nam sapiente natus non. Perferendis et eveniet veniam nobis eligendi quis dolorum. Impedit molestiae asperiores velit aliquid dolores cum quia.</p><p>Ut ut dolorem molestiae dolor nemo. Optio id provident totam deleniti. Ipsum deserunt consequuntur esse nisi reiciendis in sed. Ut quis corporis et quo sed illum.</p><p>Est enim esse doloremque non id debitis reiciendis. Voluptatem itaque amet omnis dolorum optio deleniti qui. Consequatur quidem debitis repellat qui qui voluptatem. Quasi ullam omnis nulla ratione similique voluptas qui. Aut et dolores ut id debitis.</p><p>Possimus non omnis aut praesentium temporibus sit rerum odit. Dolores ullam ipsam dignissimos sed ut atque quas. Eos iure aut corporis et aut vero nisi.</p><p>Debitis nesciunt pariatur sunt dolorem impedit tempora laudantium asperiores. Optio veritatis perspiciatis consequatur consequatur et ut harum in. Recusandae ex officiis sunt voluptatem molestiae et facere.</p><p>Eum non impedit esse illo. Id repellat et assumenda et esse.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(19, 3, 3, 'Aliquam laboriosam quis nihil facere pariatur cumque.', 'facere-quasi-veniam-qui-quibusdam-corrupti', NULL, 'Rerum eum nihil consequatur aut corporis necessitatibus voluptatem eum. Atque et rerum numquam soluta qui odio. Enim totam voluptatem necessitatibus sint quis delectus. Non ad sapiente quisquam et et ullam excepturi ab.', '<p>Sed est et sit culpa ullam tempora dolorem. Ut sunt perferendis ut deserunt esse praesentium ea. Repudiandae beatae doloremque et recusandae aut nam neque sed. Repudiandae voluptas praesentium molestias.</p><p>Tempore qui officiis deserunt nostrum quae quo. Eveniet similique dolorem nemo. Laudantium exercitationem ipsam tempore natus inventore est. Ab qui explicabo explicabo odio voluptatem ipsam et.</p><p>Et et odit quod aut. Sed veniam maxime ex est. Dicta alias architecto alias rerum officia. Facere porro nemo est.</p><p>Odit veniam quidem eos earum perspiciatis. Qui ut voluptate molestiae eius sed. Ad sed explicabo doloremque harum dolore earum.</p><p>Ipsa ea totam fugiat earum non praesentium et et. Tempora blanditiis quia doloremque nihil ullam ut. Corrupti consequuntur quas minima ut ut voluptatem.</p><p>Rerum est laborum illo sunt dolor in vel qui. Et beatae molestias soluta quia minima id. Qui est nihil et. Eius quis est distinctio magnam tempore similique dolorem. Eum ex saepe sit illo distinctio eligendi assumenda.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(20, 1, 2, 'Officia velit quia aut.', 'omnis-consequatur-voluptas-velit-eum-impedit-rem-aut', NULL, 'Quam qui voluptas fuga. Aut corporis expedita nulla beatae. Reprehenderit architecto exercitationem ea odit ipsam consequatur.', '<p>Excepturi natus ut praesentium sit. Adipisci corporis quis voluptatibus sit. Est doloribus facere voluptas et et nihil. Qui aut ducimus illo qui repellendus impedit.</p><p>Quis quod est perferendis optio aut. Placeat voluptate error ut odio. Libero quia et porro dolor adipisci reiciendis rerum.</p><p>Ut culpa nostrum commodi vel distinctio ea facilis. Facilis vel sapiente ratione rerum omnis. Exercitationem et voluptate odit exercitationem numquam quis. Sapiente exercitationem est ex et aut.</p><p>Ut iste tenetur voluptatum est rerum sed recusandae. Ut sit occaecati et enim ut quia. Temporibus placeat non doloremque minus in. Voluptas aut voluptatem earum qui et perspiciatis et.</p><p>Maiores temporibus in modi ut qui sit. Nesciunt consectetur voluptate aut quae qui illo animi. Doloribus nostrum qui eum ut.</p><p>Sit minus enim nihil ratione neque est. Nulla nihil et illo dignissimos. Similique vitae similique dolor reiciendis enim. Doloribus mollitia numquam autem autem.</p><p>Voluptatibus deleniti iure suscipit enim. Minima sint repellat deleniti quia tenetur. Temporibus optio est labore.</p><p>Ut harum libero voluptates at in et. Et ut tenetur est fuga fuga. Molestiae qui eveniet in aut earum aperiam.</p><p>Aut repellendus ut possimus dolor molestiae magnam. Perspiciatis aut nesciunt vitae facere voluptatem quisquam. Quia aut id culpa corporis. Nemo illo necessitatibus harum nostrum.</p><p>Quod sit id mollitia sed sed dolores quis. Adipisci enim ipsa et recusandae saepe veritatis. Molestiae doloribus ipsum quia beatae fugit autem mollitia. Nihil nobis ratione qui expedita.</p>', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17'),
(26, 2, 1, 'Dunia Perjanjian Lama', 'dunia-perjanjian-lama', 'post-images/FtsMq4H96WLVj3EUcEJtmzHcxRWBY66Xapa7PMeK.jpg', 'gsgsvffsvs', '<div>gsgsvffsvs</div>', NULL, '2023-06-07 01:21:21', '2023-06-07 06:10:58'),
(28, 2, 1, 'Intertestamental Period', 'intertestamental-period', 'post-images/j3uPHJuC9sGiPCf2lliz5zw6dnAxezdSQ96Zzxfr.jpg', 'Dunia Intertestamental ...Peralihan dari Perjanjian Lama ke Perjanjian Baru', '<div>Dunia Intertestamental ...<br>Peralihan dari Perjanjian Lama ke Perjanjian Baru</div>', NULL, '2023-06-07 03:41:08', '2023-06-07 06:01:22'),
(29, 3, 1, 'Percobaan Online', 'percobaan-online', 'post-images/uJvT5BaikBNAWdvDc42XOqJv6XWjAguL9MaaXnub.jpg', 'Percobaan Online Berhasil', '<div>Percobaan Online Berhasil</div>', NULL, '2023-06-08 05:53:36', '2023-06-09 22:42:43'),
(30, 1, 1, '10 juni 2023', '10-juni-2023', 'post-images/vofXaEnVT5EfdO0csZ8Lg3KCOrt6FwiMsD4HjQDe.jpg', 'erwewr', '<div>erwewr</div>', NULL, '2023-06-09 21:57:06', '2023-06-12 17:29:26'),
(32, 2, 1, 'Biblical Studies in Genesis 1', 'biblical-studies-in-genesis-1', 'post-images/sU6tIreSmuMK3EXlyN41XXbT4UIDPU0TXTqs4rQu.jpg', 'jhfjkhwajkfhj fjewfhew fuiuiwehifuhewh', '<div>jhfjkhwajkfhj fjewfhew fuiuiwehifuhewh</div>', NULL, '2023-07-29 19:01:28', '2023-07-29 19:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Willy Johanes', 'willyjohanes', 'willyjohanes.gold@gmail.com', NULL, '$2y$10$spGEF.SgggdWp1UpD5Vmr.S2UbqSUDWEeGUp0z9js0xGlnvpHqe86', NULL, '2023-06-06 22:36:17', '2023-06-06 22:36:17', 1),
(2, 'Cornelia Winarsih', 'kuswoyo.paris', 'capa@gmail.com', '2023-06-06 22:36:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eKNme9DdBoS0OfC1Zbawf4TlsiocnWrnnA96l1JPcIS8VX5k1KTGIcePBH1j', '2023-06-06 22:36:17', '2023-06-06 22:36:17', 0),
(3, 'Intan Ciaobella Yolanda S.E.', 'adikara92', 'tsiregar@example.net', '2023-06-06 22:36:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bzq333Hwr0', '2023-06-06 22:36:17', '2023-06-06 22:36:17', 0),
(4, 'Darijan Karja Hutapea S.Pt', 'syahrini50', 'gsuryatmi@example.org', '2023-06-06 22:36:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YiPBpJbhbH', '2023-06-06 22:36:17', '2023-06-06 22:36:17', 0),
(5, 'Jonathan', 'jonathan', 'jonathan@gmail.com', NULL, '$2y$10$lRLbZyTDaNg8GM0e294pSO6sqan7JOx9J0tVaIudEUysYOYdWfIfG', NULL, '2023-06-09 07:36:19', '2023-06-09 07:36:19', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biblestudies`
--
ALTER TABLE `biblestudies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biblestudies`
--
ALTER TABLE `biblestudies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
