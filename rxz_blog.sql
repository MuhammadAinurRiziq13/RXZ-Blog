-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Feb 2024 pada 16.41
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rxz_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2024-01-15 20:01:30', '2024-01-15 20:01:30'),
(2, 'Mobile Programming', 'mobile-programming', '2024-01-15 20:01:30', '2024-01-15 20:01:30'),
(3, 'Personal', 'personal', '2024-01-15 20:01:30', '2024-01-15 20:01:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_06_051500_create_posts_table', 1),
(6, '2024_01_07_022136_create_categories_table', 1),
(7, '2024_01_22_070055_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
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
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Tempore et sequi cumque illum aut.', 'atque-vitae-tempore-ducimus-nulla-sit-explicabo-corporis-sed', NULL, 'Magnam qui iste ducimus possimus quos magni non numquam amet voluptatem id delectus rem sint corrupti non corporis voluptas id laudantium.', '<p>Eos nam sit placeat magnam qui. Quo dignissimos id ut facilis quasi fugit. Voluptate asperiores reprehenderit delectus culpa odit. Autem facilis enim vel unde dignissimos.</p><p>Qui non et possimus eius beatae. Id sequi eligendi blanditiis in nulla. Id ipsa aut delectus fugit fugit eos nihil.</p><p>Quia eos unde optio. Est distinctio dolor quam sequi in libero soluta. Perspiciatis temporibus dolore sapiente quam est ex eos sit. Voluptatem magnam tenetur placeat et rerum voluptatum.</p><p>Laudantium beatae pariatur rerum quis tenetur. Omnis voluptates sint et soluta eveniet asperiores. Et nam est repudiandae similique dolorem quia doloremque. Provident quia aperiam nobis asperiores modi. Asperiores laborum ut architecto assumenda.</p><p>Reiciendis ut quaerat id at. Tempore delectus voluptates nemo cumque id. Illo mollitia veniam quam omnis corrupti eum voluptatem.</p><p>Sunt maiores culpa doloribus vitae. Corrupti pariatur eius quia rem quis atque. Architecto sit doloribus et deserunt corrupti. Beatae culpa non omnis nam eveniet aperiam.</p><p>Aut error harum rem dolor architecto minima explicabo. Et officia et doloremque sit corrupti deleniti. Ipsam rerum neque qui eum dolore. Vitae repellat incidunt soluta excepturi.</p><p>Et et dignissimos et sed incidunt. Aliquam autem aut sit in et. Dolores ipsa voluptates quae ab tempora quos praesentium. Qui velit qui soluta voluptatibus reprehenderit beatae assumenda.</p><p>Vel deleniti rem quae eaque hic sit. Laudantium et earum dolores quae. Distinctio animi nemo tenetur aperiam quibusdam.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(2, 2, 1, 'Sapiente dolorem suscipit repudiandae quo aut.', 'laboriosam-qui-modi-et-dolorem-sit', NULL, 'Tempore laborum fugiat consectetur quia perspiciatis et voluptates cum eos et amet est.', '<p>Incidunt voluptatem officia sed ipsa. Neque deserunt omnis et rerum dolorem sequi. Voluptas et incidunt rerum totam ab et autem.</p><p>Saepe quaerat quae est minus fugiat amet dolorem. Neque vero soluta alias quia. Enim odio qui modi dicta earum. Occaecati veniam vitae voluptas sint.</p><p>Perspiciatis eaque quidem cum qui id ipsa. Et ut eligendi et et sed illo debitis. Cum hic ducimus fugiat. Autem suscipit et praesentium laborum et ut itaque dolor.</p><p>Odit id expedita qui accusamus corporis at. Recusandae quibusdam aut a eum. Atque aut itaque quaerat quidem sunt officiis in. Sunt non impedit sequi quibusdam. Aut vel iusto illum consequatur ea omnis a.</p><p>Accusamus voluptatibus sed et. Unde et autem nam ullam. Distinctio quaerat asperiores voluptatem. Qui neque itaque non alias velit sint ut.</p><p>Dolorem recusandae totam nostrum nihil sit molestiae. Iusto dolores eum inventore ut. Laudantium excepturi quas quasi qui doloribus.</p><p>Sint non ad suscipit qui facilis pariatur. Praesentium suscipit accusantium in dolores vitae nam. Nihil voluptas iste vero.</p><p>Officiis labore adipisci et assumenda rem. Modi accusamus voluptatem voluptatem blanditiis. Ut dicta et repellendus fuga velit. Quia voluptate eos tenetur.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(3, 3, 4, 'Blanditiis voluptatem unde.', 'sapiente-aut-rem-rerum-vitae', NULL, 'Odit saepe et sunt sed temporibus ut dolore rem officia voluptatem corrupti dolorem.', '<p>Recusandae voluptatem excepturi tempora eligendi. Est odio qui vitae rerum omnis aut ut ipsum.</p><p>Repudiandae magni ut error minima eius non autem ea. Fugit aut commodi quia facilis debitis voluptas non. Nostrum deserunt quasi repellendus facilis eligendi.</p><p>Deserunt ut est quo eum incidunt quidem ut. Aliquam hic architecto voluptatem modi. Quis ducimus repudiandae delectus qui enim. Ut est non accusantium dolores.</p><p>Sint asperiores est est ullam qui vero ratione. Dolores nisi voluptatem praesentium molestias velit.</p><p>Exercitationem velit qui nihil itaque tempora voluptatum eius. Laborum unde provident praesentium unde eaque modi. Architecto veniam porro cumque delectus ex ipsum. Quia sit ea asperiores ut accusamus itaque aut ut.</p><p>Veniam nihil molestias quaerat fugiat. Amet nesciunt quisquam officia neque rem. Nobis corrupti suscipit similique delectus doloribus tempore. Ut aliquid earum voluptatem recusandae.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(4, 1, 4, 'Voluptatem nisi recusandae.', 'sunt-sit-et-placeat', NULL, 'Maxime quis voluptas ut laboriosam nihil dolorem ducimus occaecati reiciendis error et et iure qui eaque provident quas voluptas dolore impedit corrupti veritatis repellat aut quis eos aut accusantium.', '<p>Incidunt quaerat dolorum asperiores numquam. Est debitis suscipit voluptas laboriosam. Sed ut ullam aliquid ut minus quia.</p><p>Perspiciatis earum excepturi est a dolor rerum. Nesciunt itaque in qui neque ipsam illum quis. Et corporis nihil tempora illo id dolorem magnam officiis.</p><p>Voluptatem ut voluptates perspiciatis sint nesciunt. Mollitia repellat sit iste in dolor esse. Quos ipsam odit voluptatem nulla ipsum fugit facere. Et iusto delectus omnis autem dicta reiciendis et sunt. Qui eum facilis qui aut harum quibusdam vel.</p><p>Porro quis et eos. Dolorum omnis quam quas non. Fugit voluptas veniam atque nihil fuga rerum veritatis.</p><p>Ipsa reiciendis porro minima aperiam. Accusantium magni ex voluptatum qui voluptas est voluptas necessitatibus. Amet id dicta voluptas rerum numquam officia. Dignissimos aliquam vitae sit repellendus ipsam est architecto. Tempora voluptas nisi labore architecto voluptate veniam.</p><p>Recusandae ducimus mollitia nisi. Illo reprehenderit voluptatum dolore minus natus quas laudantium. Illo rerum ipsam sed.</p><p>Qui alias ut ut. Nesciunt voluptatem consectetur placeat voluptas reprehenderit aliquid.</p><p>Quisquam voluptate sit quibusdam ut alias. Et voluptate nostrum non eos tempore dignissimos. Expedita molestias suscipit aspernatur error accusantium. Atque adipisci unde mollitia odit quo et.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(5, 3, 2, 'Dolor quos nostrum.', 'magni-voluptatum-similique-sit-facilis-ipsa', NULL, 'Vel ipsa animi nemo eum mollitia molestiae distinctio et eos a sed totam doloremque optio sit sit ducimus animi molestias blanditiis est sequi corrupti et in amet.', '<p>Quos quibusdam repellendus similique aspernatur. Id quia illum vel aperiam eum sit. Quis magnam nobis amet suscipit. Quaerat modi aperiam nihil magni.</p><p>Id optio eligendi saepe natus facilis aspernatur. Occaecati molestias et esse enim ut omnis quia. Et facere consequatur enim qui. Repellendus quis aut dolorem quia voluptate.</p><p>Inventore quas magni labore quis nesciunt eos. Mollitia ut non accusantium voluptas ducimus. Tempore minima odio qui eius non et distinctio. Nam nulla sint aut autem.</p><p>Repellendus non nostrum exercitationem quia. Consectetur exercitationem eaque ex eveniet temporibus ipsa quasi. Qui est atque autem.</p><p>Inventore asperiores molestiae hic non quasi ducimus. Eligendi cupiditate nam consequatur et quo.</p><p>Non itaque dolorum unde velit ad. Alias accusantium laudantium voluptatem autem molestias et.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(6, 2, 3, 'Earum et cupiditate tempore tenetur et.', 'porro-nobis-harum-qui-deleniti', NULL, 'Sit eos sunt et nihil iste rerum explicabo id.', '<p>Harum laboriosam autem ut nisi. Et occaecati quia quis ea a. Et id consequatur in totam accusamus.</p><p>Optio soluta et dolorem aspernatur velit laboriosam fuga recusandae. Sunt ad eveniet id quam. Neque hic quia totam rerum enim sapiente. Iusto expedita tenetur voluptatibus necessitatibus incidunt dolorem rerum. Est eum amet quidem omnis.</p><p>Nulla quasi ut in quas. Quibusdam omnis ab aut quibusdam beatae. Accusamus magnam aut maiores quia voluptate reprehenderit. Incidunt natus dolorem aut facilis earum.</p><p>Sunt sint deleniti sit omnis a non voluptates reiciendis. Quia alias iste itaque tempore et. Alias soluta illum quam eos a et. Ut aut sed dolorem laboriosam.</p><p>Quidem et nostrum consequatur possimus repudiandae mollitia qui. Consequatur officiis nobis officiis eum et commodi. Minus mollitia assumenda ex in iusto fugit.</p><p>Aut inventore ut est atque quia ad quaerat. Veniam asperiores tempore et quas aliquid eum. Soluta minima recusandae ad esse sit. Occaecati inventore libero saepe ut.</p><p>Et dolorem iste totam magnam deserunt voluptatem hic. Quam nobis nemo placeat autem labore quis quo et. Fugiat saepe placeat delectus cum fuga eum labore unde.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(7, 2, 1, 'Corrupti laboriosam incidunt ab.', 'eum-eligendi-doloribus-in-corrupti-dicta', NULL, 'In provident voluptatem cumque totam dolorem minima qui.', '<p>Minima sit vitae exercitationem a voluptates laudantium ut. Aperiam aliquid et aliquam impedit. Odit vero beatae corrupti ut ducimus.</p><p>Optio quaerat velit ea unde nostrum possimus. Ut deleniti id aut numquam. Omnis molestiae numquam rerum perferendis rerum voluptatibus. Ut eos in in laboriosam ipsa quaerat.</p><p>Amet ea ea fugiat corrupti laboriosam eos blanditiis. Ut dolorem voluptatum quas. Accusantium saepe optio voluptatem et modi sit.</p><p>Rerum sequi odit optio cupiditate. Iure voluptatem aut voluptatum eum et exercitationem. Sed non impedit necessitatibus harum.</p><p>Et asperiores sed amet quasi est voluptatem. Dolorem dolorem dolor consequuntur in nesciunt.</p><p>Illum adipisci officia dolore accusantium. Molestiae blanditiis provident nam incidunt. Voluptas ipsa voluptatem tempore quisquam eaque qui. Sit ducimus neque commodi sit.</p><p>Non ullam omnis ut expedita assumenda voluptatum. Quasi fugit neque hic dolor amet laudantium qui. Dolor aspernatur quidem ducimus rem autem quas eius ratione. Magni provident corrupti occaecati maxime ipsum laborum ut quia.</p><p>Occaecati aut quia amet architecto facere vero. Ea asperiores modi voluptas aut. Numquam aut rerum non consequuntur. Voluptatem non dolor tempora officia.</p><p>Molestiae repellat voluptas aliquid voluptatem tenetur facere. Sint labore in ipsa quia ut. Aut autem voluptatibus vero eos. Sit sunt est qui iure inventore neque. Voluptas laborum voluptas illum excepturi ea.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(8, 1, 1, 'Quos animi excepturi sapiente hic.', 'esse-rerum-dignissimos-minus-illum-officiis-sint', NULL, 'Aut aut doloribus beatae labore et accusantium facilis eos eaque eligendi maxime id enim necessitatibus dolorem non ex molestias illo corporis.', '<p>Aliquid necessitatibus repellat rem ut aperiam et. Illum molestiae aut fugiat ducimus quam sint. Dignissimos quia ad et aut commodi vitae.</p><p>Aut labore ut sequi corrupti. Repellat cumque et nihil. Impedit reprehenderit aut nesciunt consequatur aspernatur quis.</p><p>Delectus veritatis molestias vero odio dolor facere. Esse dolor mollitia officia qui quisquam. Voluptatibus id quisquam est consequatur.</p><p>Autem voluptatem porro enim non. Voluptatibus repellendus id voluptas reprehenderit in. Corrupti eos consequatur nam beatae vero odit. Repellat deserunt aliquid velit accusantium.</p><p>Ad nihil doloribus eos tempore iste. Vero aliquam aut placeat tenetur sint et. Quod et harum iusto ut et blanditiis.</p><p>Deserunt at aut molestiae. Ipsam quaerat voluptatem dolores eius ex voluptatem recusandae. Aut cupiditate omnis culpa quis ea omnis.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(9, 1, 2, 'Vel libero omnis enim.', 'occaecati-laborum-sint-qui', NULL, 'Voluptatem vel repellendus aut quis sint ut eius aut consequatur.', '<p>Qui inventore dicta quisquam asperiores. Ratione ad qui sunt possimus animi quod. Quo amet amet nam laboriosam voluptatem et. Non possimus earum sit dolorem odit ut sunt.</p><p>Doloribus laborum in asperiores. Qui placeat assumenda consectetur tenetur modi nesciunt illo. Voluptatum a officia repellat quibusdam sit non incidunt. Eum ea quis aspernatur sit omnis voluptates.</p><p>Est fugit consectetur occaecati. Dolores ducimus deleniti sit magnam quia est iste. Vel cumque rem dolorem vel aliquid aut veniam.</p><p>Debitis quis officia dolor. Est sint et perspiciatis cumque a ipsum quod. Quasi officia sint quia atque magnam atque nobis. Et molestias perferendis nostrum deserunt eaque.</p><p>Et sapiente nobis asperiores eveniet. Deserunt non culpa a dolorum voluptatem. Error quas voluptate aliquam enim aspernatur.</p><p>Illo nihil voluptate quaerat voluptatem architecto repellat ipsum. Eligendi doloribus qui dolorum corrupti. Nihil assumenda sunt rem ea quae deleniti.</p><p>Veritatis aut eos labore eum. Ut recusandae et sequi nemo veritatis facilis dolorum. Dignissimos deleniti ea possimus numquam. Laudantium qui sit voluptate quas enim dignissimos.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(10, 3, 1, 'Aliquam qui dolorem.', 'ipsa-harum-qui-assumenda-vel-deserunt-sit-asperiores-dolores', NULL, 'Illum quia placeat laudantium ullam odio numquam excepturi vero voluptatem enim dolor et voluptas est eum est quasi et cum ut ut quae quo mollitia ut non repellat quia deleniti.', '<p>Quia veniam voluptatem voluptas culpa est odio. Veritatis ut cupiditate natus sint.</p><p>Est animi laboriosam qui necessitatibus. Exercitationem ex eum est quibusdam dolorum. Voluptatem vitae rerum porro suscipit.</p><p>Id illo dolores soluta est. Itaque omnis sequi vel placeat quia aliquam ut aspernatur. Aut beatae excepturi occaecati sapiente id aut. Quis in eveniet fuga repellat laboriosam dolor impedit illo.</p><p>Aliquam cumque voluptas totam tenetur et tempora sit. Placeat enim nemo earum alias repellendus rerum sequi. Quasi est repellat facere adipisci soluta.</p><p>Ut aut alias beatae provident similique accusantium enim. Dolorum velit minima veritatis enim modi. Eos placeat et ipsa possimus.</p><p>Et qui non natus facilis quidem est cupiditate. Corporis quae corporis sint aliquam vero. Quasi autem sed id ut sit. Iure aut dolores amet esse culpa.</p><p>Inventore cumque amet dolores et. Totam a sequi libero animi exercitationem odio ad. Harum maiores voluptatibus enim maiores in. Qui doloremque culpa rem sunt.</p><p>Et neque repudiandae beatae. Accusamus repellat qui non consequatur. Ipsum qui ut natus.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(11, 3, 1, 'Libero aut pariatur nam est ex dolore eum.', 'quod-sunt-et-quibusdam-dolorem', NULL, 'Provident beatae eveniet in et consequuntur vel qui dignissimos ea aut et voluptas.', '<p>Voluptatem ut veniam facilis corrupti quis sit. Earum consequatur omnis nihil ipsum corporis. Consequatur est ut nobis tempora cum recusandae aut atque.</p><p>Distinctio hic nihil doloremque dolor quos a aut. Autem perspiciatis odit eius enim recusandae. Qui unde sequi rerum. Neque ullam est deleniti autem dolore minus.</p><p>Necessitatibus velit repudiandae alias voluptatem. Dolor qui tempora odit fugit. Suscipit odit delectus quia nesciunt.</p><p>Quia incidunt omnis iusto et porro consectetur. Asperiores sed aliquid ipsam quas delectus sint dolorum. Quibusdam officia ut repellat eius. Ut dolores iste explicabo rem distinctio ab explicabo.</p><p>Perspiciatis delectus illum sit velit vel. Saepe occaecati mollitia sapiente similique qui consectetur distinctio. Ab et nisi nisi veritatis fugiat. Alias debitis aut et ipsam est recusandae quo.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(12, 1, 3, 'Aut et maxime numquam odio consectetur amet rerum cupiditate dolorem.', 'et-rem-quo-consequatur-et-vel', NULL, 'Cum officiis est ut aspernatur consequuntur enim perspiciatis facilis rem excepturi autem odio neque.', '<p>Sit omnis voluptatem placeat ea cum et. Temporibus et tenetur omnis qui et autem. Ut deleniti perferendis qui et corrupti ratione eveniet.</p><p>Iure et voluptas occaecati voluptatibus est aspernatur. Quia voluptas eum impedit odio temporibus. Iste nesciunt inventore totam.</p><p>Et quam nesciunt numquam minima quisquam adipisci. Rerum commodi at voluptatem nobis voluptatum illum ab. Odit quo qui officia sequi quasi non. Ad occaecati nihil accusantium velit minus.</p><p>Dicta debitis nobis est neque aut harum odit. Vel aliquam earum sunt labore sunt ut et sint. Maiores voluptas qui officiis et suscipit itaque. Veniam cumque eligendi id nam error vitae.</p><p>Assumenda officiis amet commodi corrupti praesentium omnis sit. Dignissimos fugit autem laboriosam quia modi mollitia autem. Et numquam enim illum est impedit.</p><p>Aut consequuntur architecto officiis adipisci. Voluptas consequatur quae et explicabo id exercitationem tempore. Dolor vel ut voluptatem qui nihil pariatur sed.</p><p>Placeat facilis voluptatem ex numquam nemo repellat quia debitis. Sit quis beatae tempora maxime harum quisquam omnis assumenda. Quasi qui veniam veniam qui eos blanditiis.</p><p>Provident voluptatem incidunt totam et quia consequatur. Iusto temporibus est consectetur ducimus atque vero dolor et. Doloribus ea tempore velit autem deleniti.</p><p>Ab qui error magni sit dolorem quis. Ipsum qui explicabo veniam deleniti maiores ut.</p><p>Nemo omnis cumque dolores. Saepe corporis quibusdam ipsam voluptatum doloremque. Tenetur repellat consequatur ut.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(13, 3, 4, 'Officiis doloribus voluptatem ratione quas dolore rem et et.', 'labore-porro-illum-quaerat-cupiditate-sit-qui', NULL, 'Impedit quia in dolor voluptatem animi corrupti perferendis voluptas consequatur eaque modi.', '<p>Nam inventore eum vel id qui quisquam nihil. Et et sint quia sapiente similique quidem rerum. Quisquam aut et ratione inventore similique nihil. Quia quia eius qui at non consequatur.</p><p>Maxime quia odio eum ut illo. Rem fugiat ab id animi est tempora corporis occaecati. Occaecati deserunt ut aliquam rerum.</p><p>Molestiae porro labore et ut minima qui. Occaecati beatae blanditiis repellendus aspernatur impedit iusto. Non excepturi saepe modi modi explicabo aut et. Aliquam quod voluptatum iure ut rem tempora quas asperiores.</p><p>Illo at ad et quia. Est distinctio placeat consectetur quia. Autem laboriosam quia quo et soluta. Quia quasi error perspiciatis iusto neque in.</p><p>Qui qui voluptatibus facere provident aut corporis doloribus voluptas. Culpa rem praesentium necessitatibus ab. Reprehenderit vero suscipit modi minus tenetur. Aut porro et illum et sit asperiores exercitationem exercitationem.</p><p>Amet assumenda occaecati atque amet dolorem atque aut. Qui perferendis suscipit odio. Amet magnam qui voluptatem ratione qui quibusdam.</p><p>Dolorem et enim fugit velit aspernatur nobis. Maxime dolores aliquid ut aut suscipit. Nulla quaerat reprehenderit qui et aspernatur dignissimos facere voluptatem. At in nulla exercitationem quasi.</p><p>Voluptates illo maiores commodi accusantium dolorum nobis. Possimus reiciendis molestiae laudantium cupiditate. Voluptatem blanditiis quia dolores et odio aspernatur. Consectetur vero dolores vel non voluptatem quidem.</p><p>Consequatur qui provident totam provident reprehenderit inventore. Facere autem rerum pariatur. Eos illum soluta quos perspiciatis. Quia voluptatem quia atque dignissimos.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(14, 2, 3, 'Eum maiores et unde ut.', 'porro-hic-sit-cumque-deserunt', NULL, 'Et deserunt voluptatem sit quod occaecati fuga non fuga recusandae quisquam aut veniam est voluptas voluptatem odio.', '<p>In ad necessitatibus debitis ea. Repudiandae nesciunt sunt veritatis placeat amet architecto. Ea ut beatae eligendi quo perspiciatis laborum voluptatem.</p><p>Voluptatem vero perspiciatis vel architecto voluptatibus. Quam molestiae provident assumenda eum est laborum. Iste ut harum ipsam ut vel. Et vel qui nobis beatae.</p><p>Aliquid quis sunt maiores a. Et rerum aliquam est assumenda officiis. Fugiat ipsum nihil sed. Nihil est aut suscipit quo repellat.</p><p>Veritatis sit eaque et voluptates impedit eaque. Ex repellat labore ad numquam architecto.</p><p>Omnis ullam laborum illum omnis ex. Sed quis impedit voluptatum et cumque at. Quibusdam aut in id veniam reprehenderit perspiciatis. Ut odit quos ipsam earum.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(15, 3, 2, 'Est id eveniet eveniet.', 'porro-ducimus-et-et-aut-saepe-qui-sunt', NULL, 'Odit ut corrupti sequi quisquam et ea voluptas et numquam neque provident molestias.', '<p>Sunt ut vitae quasi sint fugiat iusto. Doloremque voluptas nihil ab. Beatae incidunt ipsam delectus.</p><p>Accusantium in ut officia expedita laudantium quis ea. Sed enim cumque id qui sapiente ut animi. Incidunt officiis sit molestias. Iusto excepturi voluptatem necessitatibus consequatur.</p><p>Et nihil repellat pariatur harum qui porro animi. Impedit excepturi quo et natus quam.</p><p>Magnam explicabo cupiditate temporibus quia dolores eum quia. Nobis modi sit consequatur sint nihil ea. Veniam dolores qui non reiciendis.</p><p>Corporis quis dignissimos ipsam qui culpa inventore magni accusantium. Excepturi voluptates consequatur illum harum omnis vero. Et aut odit quisquam nisi soluta qui enim qui. Aspernatur unde porro dolor et alias facere.</p><p>Excepturi atque delectus quia et voluptates sequi numquam. Sint modi ipsum commodi voluptates labore quia. Ut reprehenderit illum a quis. Tempore ad fuga possimus rerum tempore.</p><p>Quaerat vel velit ut illo. Et aut qui ea eum totam sed. In quia expedita mollitia ut non.</p><p>Et voluptates exercitationem rerum modi illum non aut aut. Et doloribus similique non nostrum et atque. Eos omnis delectus assumenda fuga est.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(16, 3, 4, 'Consequatur eaque sit.', 'libero-dolorum-ex-in-quod-incidunt', NULL, 'Iste dolor aliquid est illum vitae quo qui id consequatur aliquam aut sunt voluptas ut neque quia omnis quia commodi sit quaerat magni delectus esse.', '<p>Fugit qui et qui qui fugit exercitationem dignissimos. Omnis labore id eaque id id quis. Iusto odio eaque amet vel iste eaque.</p><p>Quae delectus tempore facere consequatur vel quia qui. Quod quis dolorem amet. Molestiae aut illum aut. Aut occaecati ducimus omnis inventore corrupti nisi ut.</p><p>Quibusdam labore nihil quis dolore. Quas atque sed doloribus qui vel voluptatibus consectetur quia. Suscipit ducimus molestias hic. Tenetur qui architecto magni dolore animi error exercitationem esse.</p><p>Eveniet autem blanditiis ut vitae amet omnis. Et ducimus totam aut quisquam consequatur. Nesciunt et consequatur velit sunt cum saepe a.</p><p>Esse blanditiis nobis et voluptatem exercitationem repellendus. Inventore quidem laboriosam doloribus ut. Architecto quo veritatis sed reiciendis sunt voluptatem aspernatur a.</p><p>Autem et animi molestias et eaque deleniti error. Aliquam impedit recusandae distinctio qui.</p><p>Et voluptas accusamus officia praesentium. In quis possimus similique distinctio alias. In corrupti est nostrum consequatur qui architecto. Natus est et animi dolorem quisquam facere.</p><p>Commodi quo eos praesentium fugiat consectetur. Quo enim quia nulla tempore voluptas aut commodi. Sequi illo necessitatibus aut vero accusantium.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(17, 2, 3, 'Optio ad reiciendis.', 'autem-numquam-veniam-ducimus-est-temporibus-exercitationem', NULL, 'Voluptas occaecati ut autem nihil molestias impedit magni a vero veritatis provident similique aut voluptates cupiditate omnis omnis odio voluptate repudiandae.', '<p>Delectus est officia enim neque. Reiciendis ducimus molestiae modi culpa. Culpa fugiat dolores et corporis. Ipsam eius repellendus dolores labore magnam nostrum. Unde rerum est sit ducimus.</p><p>Est esse optio officia quis sint dolores rem voluptatem. Excepturi saepe ex maiores sequi commodi. Perferendis perferendis earum asperiores cupiditate laudantium consequatur nam. Sed porro ex delectus sit perferendis eius placeat amet.</p><p>Similique delectus aut sint mollitia. Rerum beatae quaerat provident asperiores aut voluptatem. Quam deleniti corrupti eveniet aut porro ea ut. Impedit fugiat occaecati consectetur in et. Tempora vel maiores et vel ratione et.</p><p>Animi voluptatem accusantium suscipit tempore harum. Et nulla et neque et incidunt ut minus voluptatibus. Quam ex quo minus id. Corporis assumenda aut aut doloribus illum vel magni.</p><p>Vitae sit enim nesciunt ducimus sunt aut. Deserunt doloribus ullam nam officia id. Voluptas veritatis aliquam eius voluptatem aut. Temporibus cumque omnis et.</p><p>Dolores qui quae itaque aut praesentium sequi nam. Sed veniam facilis quo ut et quasi magni aliquid.</p><p>Et modi dolor pariatur corporis nisi maxime ullam. Soluta veniam hic corporis dignissimos optio qui. Expedita quae totam eveniet aut. Id iure perspiciatis voluptatum alias occaecati.</p><p>Quas omnis omnis facilis eos cupiditate et voluptates. Dolor quis rerum dolores ea aut ab. Qui eveniet maxime enim omnis veniam ea. Impedit voluptas repellendus voluptas voluptas eveniet ab quas.</p><p>Veritatis dolor atque beatae accusamus est id qui. Accusamus velit qui quidem sed. Quia harum nihil aut nisi occaecati. Ea nam magni cupiditate et nam blanditiis.</p><p>Eos sint aliquid cumque excepturi. Impedit autem voluptatem doloribus sit et optio. Tempore quia voluptas accusamus excepturi et.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(18, 3, 4, 'Autem qui et quisquam rerum.', 'nam-et-aspernatur-expedita', NULL, 'Facilis quibusdam perspiciatis dicta officia ut et accusantium numquam quia cum ut quo maxime est qui accusantium et omnis dolore rem temporibus provident vero.', '<p>Qui est quas quia asperiores et libero. Eos asperiores quia rem possimus odit sint autem eos. Doloribus ut accusantium ipsum ullam. Fuga odio id nam molestias autem est.</p><p>Vel commodi possimus qui voluptas. Fugiat maiores voluptatem laudantium nesciunt aut tempora.</p><p>Dolor et et cum unde. Dolorem aliquam quae qui qui. Quod sed cum pariatur voluptatem ea. Totam veniam iste blanditiis porro error excepturi.</p><p>Fuga et est quisquam tempore corrupti. Accusantium aperiam nostrum libero recusandae atque. Autem officia eaque et aut.</p><p>Et laboriosam consequatur similique. Quis pariatur voluptatem molestiae fugit rem voluptas. Recusandae et eaque minus omnis culpa. Voluptate et molestiae quisquam quos laudantium aliquid magni.</p><p>Blanditiis voluptates est odio molestiae accusantium excepturi. Est id quis rerum sit pariatur. Vel similique molestiae dolor qui soluta non labore. Aut distinctio iste unde et.</p><p>Laborum aliquid ullam dicta est dolorem. Sint ut expedita nihil. Id quis qui nihil modi vero cupiditate et. Molestiae velit sit eos corporis.</p><p>Tenetur exercitationem commodi id dolore natus sit neque sapiente. Quidem autem aut ut molestias. Earum qui aut qui nihil.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(19, 3, 4, 'Natus harum at.', 'animi-dolorem-minima-dolor-quis', NULL, 'Possimus delectus omnis totam dolores tempore tempore ut unde sed.', '<p>Sint ut et enim aut dolorem sunt explicabo. Sed necessitatibus eligendi aut possimus.</p><p>Excepturi ipsa sint repudiandae voluptatibus aut. Voluptatibus id aliquam quo libero quas consequatur ut. Et cumque voluptas voluptatum id consectetur tenetur et. Repellat mollitia et dolorum. Qui voluptatum eaque officia ipsum.</p><p>Magnam dolor ipsam nemo. Laboriosam voluptas velit dolorem reiciendis ea cumque soluta vel. Itaque omnis et voluptatem reiciendis repellat quam.</p><p>Corrupti sit fugit et ut corrupti sit. Atque quaerat id qui non. Corrupti a mollitia saepe porro id.</p><p>Veniam voluptatem dolorem consequuntur vel autem. Deserunt deserunt ut nam at ea assumenda. Harum voluptas explicabo sint corrupti. Nesciunt sit laudantium tenetur doloremque praesentium ab voluptatum. Aut veniam aperiam odit praesentium.</p><p>Aut quis rem recusandae sunt dolor quisquam aperiam. Quae rem necessitatibus voluptatem voluptate fuga autem est. Odit doloribus aperiam natus illo fugit laborum perferendis. Voluptate doloribus consequatur numquam.</p><p>Voluptatem ab distinctio dolores distinctio modi tenetur. Voluptatibus dolores in vero. Voluptas voluptatem id est non vero dolores. Ea quod dolores eum quo consequuntur quia soluta vitae.</p><p>Modi itaque occaecati ea ipsa cum. Ut officiis dolores suscipit quia distinctio praesentium. Nihil atque doloribus et sunt ut saepe. Illo dolorum sint rem at culpa nemo.</p><p>Quos laboriosam sunt quae vero nam fugiat unde. Est harum ut voluptatem delectus. Est nobis eligendi labore et suscipit. Sunt autem amet omnis hic.</p><p>Vel sint impedit qui. Ea omnis vel quia ab eius dolor. Fugiat inventore dolore voluptatibus qui. Earum debitis aperiam officia repellendus enim rerum.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32'),
(20, 1, 3, 'Optio est non expedita quis.', 'magni-reprehenderit-dolorem-quo-rerum-ea-voluptatem', NULL, 'Magnam nulla recusandae velit tempora debitis expedita ducimus illo illo error sit quidem veritatis modi.', '<p>Pariatur perferendis est cum ut repudiandae voluptates dolores inventore. Rerum et assumenda reiciendis. Repellendus corporis possimus est quidem quidem necessitatibus. Modi dolor blanditiis eum minima et reprehenderit. Sit delectus non expedita.</p><p>Magnam accusantium placeat sit eos voluptatem. Voluptas iure et ut asperiores. Molestias repellendus eos dolorum. Eius quo et possimus ex blanditiis ab non.</p><p>Accusantium est nemo sapiente molestias provident voluptatem eligendi. Est enim consequatur deserunt accusamus consequuntur. Tempora iure nesciunt eos voluptatem ipsum quo.</p><p>Perspiciatis eum reprehenderit placeat dolorem. Et aut quos nam quaerat veniam distinctio. Commodi sequi eos eius consequatur ut consequatur.</p><p>Enim iusto et qui cumque perferendis cumque. Vero repellendus omnis illo quos. Qui et id modi placeat. Eaque rem facere saepe architecto consequatur.</p><p>Libero voluptate quidem temporibus et. Temporibus sunt eligendi et dignissimos quo nulla. Pariatur maiores blanditiis ut. Saepe iusto esse maiores atque recusandae ex blanditiis. Saepe commodi quo quisquam doloribus.</p><p>Illum et enim omnis at occaecati. Dolore et asperiores tempora aut eaque. Ipsa et amet omnis est.</p>', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Hafshah Namaga', 'tmahendra', 'tari.novitasari@example.org', '2024-01-15 20:01:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j1UWVUXXCunlr4RQ0jdtyJ6Ism5Q3V5v9pj7nEO7C8OCIe7vK6hVyOU32dvL', '2024-01-15 20:01:31', '2024-01-15 20:01:31', 0),
(2, 'Mujur Aditya Iswahyudi', 'outami', 'hrajasa@example.net', '2024-01-15 20:01:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z1Pi99yijx', '2024-01-15 20:01:31', '2024-01-15 20:01:31', 0),
(3, 'Daru Halim', 'kmaryati', 'ana99@example.net', '2024-01-15 20:01:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '27c4H3WyYV', '2024-01-15 20:01:31', '2024-01-15 20:01:31', 0),
(4, 'M Ainur Riziq', 'ainurriziq', 'aziganteng26@gmail.com', NULL, '$2y$10$SaszhdKZGxcZaWUZnjRyoeQVTfU5ftbWOb2EXkYwInNjPbPyyxRym', NULL, '2024-01-15 20:01:32', '2024-01-15 20:01:32', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
