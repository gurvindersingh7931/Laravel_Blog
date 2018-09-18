-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 06:24 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress', '2018-09-11 10:42:11', '2018-09-11 10:42:11'),
(2, 'Laravel', '2018-09-11 10:42:22', '2018-09-11 10:42:22'),
(3, 'Ruby on Rails', '2018-09-11 10:42:34', '2018-09-11 10:42:34'),
(4, 'Tutorials', '2018-09-11 10:43:05', '2018-09-11 10:43:05'),
(5, 'Career', '2018-09-11 10:58:27', '2018-09-11 10:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(65, '2014_10_12_000000_create_users_table', 1),
(66, '2014_10_12_100000_create_password_resets_table', 1),
(67, '2018_09_06_141926_create_posts_table', 1),
(68, '2018_09_06_162229_create_categories_table', 1),
(69, '2018_09_09_045155_create_tags_table', 1),
(70, '2018_09_09_050813_create_post_tag_table', 1),
(71, '2018_09_09_143955_create_profiles_table', 1),
(72, '2018_09_11_094958_create_settings_table', 1),
(73, '2018_09_16_110209_insert_user_id_column', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Working with a lot of effort', 'working-with-a-lot-of-effort', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut egestas tellus. Nam finibus auctor neque at consectetur. Fusce sodales venenatis pretium. Morbi fermentum ligula at nisl sodales, at aliquet magna consequat. Aenean luctus, urna id accumsan condimentum, urna orci sagittis elit, a volutpat lorem elit eu mi. Cras eget est nec velit efficitur efficitur vel eget sapien. Mauris gravida at lorem eu ultricies. Vestibulum vehicula aliquam nisl, ut vestibulum felis suscipit in. Pellentesque felis massa, ultrices a volutpat maximus, molestie eget nibh. Nam odio augue, porttitor a egestas eu, hendrerit ut quam. Sed ultrices accumsan est non consequat. Integer sit amet pretium ipsum. Sed malesuada purus non est accumsan, sit amet blandit eros molestie.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Phasellus dolor erat, accumsan eu arcu a, lobortis rutrum arcu. Nunc quis lectus sed nibh laoreet facilisis in in tellus. Cras nunc leo, varius vitae ante eget, elementum euismod dolor. Nulla placerat massa non velit dictum, nec gravida ex ornare. Etiam eleifend risus at velit porttitor, vel iaculis dolor suscipit. Nulla tincidunt dolor ex, a sagittis turpis semper in. Suspendisse sit amet laoreet enim. Sed fringilla, enim sit amet faucibus sollicitudin, tortor risus consectetur mauris, in euismod felis nisl et elit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Integer ut sagittis dui, vel sagittis sapien. Suspendisse feugiat odio risus, vel ullamcorper ex dictum in. Integer vehicula pellentesque luctus. Etiam in hendrerit turpis. Donec vehicula lectus faucibus sapien blandit suscipit eu quis est. Cras magna eros, blandit a rhoncus et, tristique a dui. Mauris vel magna quis odio commodo blandit ut vitae diam. Sed velit nisi, elementum et gravida ut, auctor in nulla. Quisque ac euismod lectus. Duis at bibendum enim. Duis placerat ac sapien in eleifend. In vehicula facilisis dui, eu accumsan lorem maximus et. Nunc ligula ex, condimentum sed enim in, dictum eleifend ipsum. Phasellus ornare mi et ultricies porttitor. Proin semper diam pellentesque felis viverra ultrices sed elementum felis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Etiam fermentum bibendum efficitur. Maecenas et arcu ipsum. Phasellus vulputate convallis justo, vel aliquet odio. Sed eget purus turpis. Integer suscipit ligula quis gravida egestas. Fusce feugiat arcu vitae quam hendrerit, vel ullamcorper justo dictum. Vestibulum mauris elit, viverra vitae purus vitae, pellentesque pretium arcu.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed tempor auctor turpis, eu vehicula lacus hendrerit feugiat. Nunc gravida purus nec erat interdum interdum. In malesuada ante vitae euismod ultrices. Proin vitae molestie lectus. Nunc vestibulum dictum leo vel faucibus. Nulla ut ipsum interdum, molestie ex ut, facilisis est. Suspendisse dictum felis risus, vel finibus sem laoreet at.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nullam libero ligula, sodales vel metus mattis, pellentesque ultrices massa. Aliquam quis condimentum enim. Integer hendrerit erat vitae lacinia ultricies. Praesent purus mi, efficitur id erat et, finibus ultricies augue. Praesent lectus justo, iaculis non consequat sollicitudin, condimentum sit amet sem. Duis cursus magna nec semper condimentum. Maecenas non pulvinar lorem, at blandit tortor. Maecenas suscipit lacinia velit, at eleifend dui tristique sed. Donec commodo maximus nibh ac venenatis. Donec ex est, elementum non tempus eu, ultrices ut massa.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pellentesque commodo, ipsum nec finibus mattis, nibh massa mattis risus, molestie ullamcorper neque purus id dui. Nunc lobortis fringilla urna, a ornare risus mattis nec. Sed aliquet, tellus a scelerisque ullamcorper, urna mi varius nisl, a blandit augue diam quis enim. Phasellus sit amet pulvinar ipsum. In sed odio euismod, commodo mauris vitae, egestas nibh. Maecenas pellentesque interdum blandit. Proin sit amet cursus nisl. Proin consectetur scelerisque arcu, convallis pretium augue ultricies nec. Duis tincidunt dignissim odio.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Phasellus vehicula, nibh at ullamcorper bibendum, dolor mi imperdiet quam, consequat luctus massa quam et est. Nulla lacus eros, pharetra at dolor sit amet, pharetra tempus tellus. Ut porttitor metus mattis elit mollis, a bibendum augue cursus. Fusce nec fermentum mi. Donec ultricies odio quis ante consequat, eget eleifend quam lacinia. Integer posuere ornare luctus. Donec et elementum enim. Cras tempor vel elit rhoncus blandit.</p>', 5, 'uploads/posts/1536683832blur-close-up-focus-574285-min.jpg', NULL, '2018-09-11 11:07:12', '2018-09-11 11:07:12', 1),
(2, 'Installing new plugins into wordpress', 'installing-new-plugins-into-wordpress', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut egestas tellus. Nam finibus auctor neque at consectetur. Fusce sodales venenatis pretium. Morbi fermentum ligula at nisl sodales, at aliquet magna consequat. Aenean luctus, urna id accumsan condimentum, urna orci sagittis elit, a volutpat lorem elit eu mi. Cras eget est nec velit efficitur efficitur vel eget sapien. Mauris gravida at lorem eu ultricies. Vestibulum vehicula aliquam nisl, ut vestibulum felis suscipit in. Pellentesque felis massa, ultrices a volutpat maximus, molestie eget nibh. Nam odio augue, porttitor a egestas eu, hendrerit ut quam. Sed ultrices accumsan est non consequat. Integer sit amet pretium ipsum. Sed malesuada purus non est accumsan, sit amet blandit eros molestie.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Phasellus dolor erat, accumsan eu arcu a, lobortis rutrum arcu. Nunc quis lectus sed nibh laoreet facilisis in in tellus. Cras nunc leo, varius vitae ante eget, elementum euismod dolor. Nulla placerat massa non velit dictum, nec gravida ex ornare. Etiam eleifend risus at velit porttitor, vel iaculis dolor suscipit. Nulla tincidunt dolor ex, a sagittis turpis semper in. Suspendisse sit amet laoreet enim. Sed fringilla, enim sit amet faucibus sollicitudin, tortor risus consectetur mauris, in euismod felis nisl et elit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Integer ut sagittis dui, vel sagittis sapien. Suspendisse feugiat odio risus, vel ullamcorper ex dictum in. Integer vehicula pellentesque luctus. Etiam in hendrerit turpis. Donec vehicula lectus faucibus sapien blandit suscipit eu quis est. Cras magna eros, blandit a rhoncus et, tristique a dui. Mauris vel magna quis odio commodo blandit ut vitae diam. Sed velit nisi, elementum et gravida ut, auctor in nulla. Quisque ac euismod lectus. Duis at bibendum enim. Duis placerat ac sapien in eleifend. In vehicula facilisis dui, eu accumsan lorem maximus et. Nunc ligula ex, condimentum sed enim in, dictum eleifend ipsum. Phasellus ornare mi et ultricies porttitor. Proin semper diam pellentesque felis viverra ultrices sed elementum felis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Etiam fermentum bibendum efficitur. Maecenas et arcu ipsum. Phasellus vulputate convallis justo, vel aliquet odio. Sed eget purus turpis. Integer suscipit ligula quis gravida egestas. Fusce feugiat arcu vitae quam hendrerit, vel ullamcorper justo dictum. Vestibulum mauris elit, viverra vitae purus vitae, pellentesque pretium arcu.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed tempor auctor turpis, eu vehicula lacus hendrerit feugiat. Nunc gravida purus nec erat interdum interdum. In malesuada ante vitae euismod ultrices. Proin vitae molestie lectus. Nunc vestibulum dictum leo vel faucibus. Nulla ut ipsum interdum, molestie ex ut, facilisis est. Suspendisse dictum felis risus, vel finibus sem laoreet at.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nullam libero ligula, sodales vel metus mattis, pellentesque ultrices massa. Aliquam quis condimentum enim. Integer hendrerit erat vitae lacinia ultricies. Praesent purus mi, efficitur id erat et, finibus ultricies augue. Praesent lectus justo, iaculis non consequat sollicitudin, condimentum sit amet sem. Duis cursus magna nec semper condimentum. Maecenas non pulvinar lorem, at blandit tortor. Maecenas suscipit lacinia velit, at eleifend dui tristique sed. Donec commodo maximus nibh ac venenatis. Donec ex est, elementum non tempus eu, ultrices ut massa.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pellentesque commodo, ipsum nec finibus mattis, nibh massa mattis risus, molestie ullamcorper neque purus id dui. Nunc lobortis fringilla urna, a ornare risus mattis nec. Sed aliquet, tellus a scelerisque ullamcorper, urna mi varius nisl, a blandit augue diam quis enim. Phasellus sit amet pulvinar ipsum. In sed odio euismod, commodo mauris vitae, egestas nibh. Maecenas pellentesque interdum blandit. Proin sit amet cursus nisl. Proin consectetur scelerisque arcu, convallis pretium augue ultricies nec. Duis tincidunt dignissim odio.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Phasellus vehicula, nibh at ullamcorper bibendum, dolor mi imperdiet quam, consequat luctus massa quam et est. Nulla lacus eros, pharetra at dolor sit amet, pharetra tempus tellus. Ut porttitor metus mattis elit mollis, a bibendum augue cursus. Fusce nec fermentum mi. Donec ultricies odio quis ante consequat, eget eleifend quam lacinia. Integer posuere ornare luctus. Donec et elementum enim. Cras tempor vel elit rhoncus blandit.</p>', 5, 'uploads/posts/1536684037webdesign-3411373_1280.jpg', NULL, '2018-09-11 11:10:37', '2018-09-11 11:10:37', 1),
(3, 'Laravel and vuejs in action', 'laravel-and-vuejs-in-action', '<div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; font-family: \"Open Sans\", Arial, sans-serif; text-align: center;\"><div class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both;\"><div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li><li style=\"margin: 0px; padding: 0px;\">Proin ac libero eget diam rhoncus consequat ac at ipsum.</li><li style=\"margin: 0px; padding: 0px;\">Duis non ante ac nisi maximus viverra.</li><li style=\"margin: 0px; padding: 0px;\">Sed cursus magna vitae mauris lobortis, eget sodales nulla rutrum.</li><li style=\"margin: 0px; padding: 0px;\">Proin scelerisque turpis non purus tincidunt viverra.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Aliquam sit amet risus maximus, tempor nunc interdum, blandit tortor.</li><li style=\"margin: 0px; padding: 0px;\">Praesent sit amet ante eleifend, rutrum mi a, facilisis ante.</li><li style=\"margin: 0px; padding: 0px;\">Duis a neque consequat, hendrerit eros sed, interdum lectus.</li><li style=\"margin: 0px; padding: 0px;\">Nulla sagittis augue sit amet leo placerat feugiat.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Ut pulvinar urna non mi bibendum tincidunt.</li><li style=\"margin: 0px; padding: 0px;\">Donec molestie orci molestie ex dapibus ultrices.</li><li style=\"margin: 0px; padding: 0px;\">Suspendisse ac massa a magna lacinia iaculis id quis nibh.</li><li style=\"margin: 0px; padding: 0px;\">Proin volutpat augue ut lobortis aliquet.</li><li style=\"margin: 0px; padding: 0px;\">Suspendisse non mi et leo mollis suscipit.</li><li style=\"margin: 0px; padding: 0px;\">Integer pellentesque augue sit amet lectus semper auctor.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Donec bibendum augue non justo tincidunt auctor.</li><li style=\"margin: 0px; padding: 0px;\">Vivamus sed nunc congue, commodo elit ut, porta risus.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Pellentesque fringilla ante quis nulla accumsan porttitor.</li><li style=\"margin: 0px; padding: 0px;\">Morbi imperdiet sem consectetur molestie ullamcorper.</li><li style=\"margin: 0px; padding: 0px;\">Sed vehicula lectus in leo scelerisque tristique.</li><li style=\"margin: 0px; padding: 0px;\">Donec sed mauris at ex fermentum varius.</li><li style=\"margin: 0px; padding: 0px;\">Curabitur vulputate massa fermentum nulla rutrum, sit amet scelerisque erat lobortis.</li></ul></div></div></div>', 2, 'uploads/posts/1536687236programmer-1653351_1280.png', NULL, '2018-09-11 11:30:21', '2018-09-11 12:03:56', 1),
(4, 'Laravel and vuejs in action', 'laravel-and-vuejs-in-action', '<div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\"><div class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both;\"><div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li><li style=\"margin: 0px; padding: 0px;\">Proin ac libero eget diam rhoncus consequat ac at ipsum.</li><li style=\"margin: 0px; padding: 0px;\">Duis non ante ac nisi maximus viverra.</li><li style=\"margin: 0px; padding: 0px;\">Sed cursus magna vitae mauris lobortis, eget sodales nulla rutrum.</li><li style=\"margin: 0px; padding: 0px;\">Proin scelerisque turpis non purus tincidunt viverra.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Aliquam sit amet risus maximus, tempor nunc interdum, blandit tortor.</li><li style=\"margin: 0px; padding: 0px;\">Praesent sit amet ante eleifend, rutrum mi a, facilisis ante.</li><li style=\"margin: 0px; padding: 0px;\">Duis a neque consequat, hendrerit eros sed, interdum lectus.</li><li style=\"margin: 0px; padding: 0px;\">Nulla sagittis augue sit amet leo placerat feugiat.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Ut pulvinar urna non mi bibendum tincidunt.</li><li style=\"margin: 0px; padding: 0px;\">Donec molestie orci molestie ex dapibus ultrices.</li><li style=\"margin: 0px; padding: 0px;\">Suspendisse ac massa a magna lacinia iaculis id quis nibh.</li><li style=\"margin: 0px; padding: 0px;\">Proin volutpat augue ut lobortis aliquet.</li><li style=\"margin: 0px; padding: 0px;\">Suspendisse non mi et leo mollis suscipit.</li><li style=\"margin: 0px; padding: 0px;\">Integer pellentesque augue sit amet lectus semper auctor.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Donec bibendum augue non justo tincidunt auctor.</li><li style=\"margin: 0px; padding: 0px;\">Vivamus sed nunc congue, commodo elit ut, porta risus.</li></ul><p style=\"margin-bottom: 15px; padding: 0px;\"></p><p style=\"margin-bottom: 15px; padding: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Pellentesque fringilla ante quis nulla accumsan porttitor.</li><li style=\"margin: 0px; padding: 0px;\">Morbi imperdiet sem consectetur molestie ullamcorper.</li><li style=\"margin: 0px; padding: 0px;\">Sed vehicula lectus in leo scelerisque tristique.</li><li style=\"margin: 0px; padding: 0px;\">Donec sed mauris at ex fermentum varius.</li><li style=\"margin: 0px; padding: 0px;\">Curabitur vulputate massa fermentum nulla rutrum, sit amet scelerisque erat lobortis.</li></ul></div></div></div>', 2, 'uploads/posts/1536685221web-design-2038872_1280.jpg', NULL, '2018-09-11 11:30:21', '2018-09-14 12:47:26', 2),
(5, 'Learn Wordpress in 2 days', 'learn-wordpress-in-2-days', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus hendrerit augue, rutrum interdum nisl fringilla a. In sapien odio, vehicula id gravida id, molestie nec libero. Integer at rhoncus diam. Curabitur in ante pulvinar, facilisis velit fermentum, fermentum quam. Nunc scelerisque et arcu vel lobortis. Sed rutrum semper quam. Donec commodo, lorem sit amet volutpat commodo, felis nisl eleifend erat, in commodo purus libero vel est. In in condimentum ante, non rhoncus urna. Nullam luctus vestibulum facilisis. Duis non porta arcu, pellentesque feugiat est. Maecenas tristique ligula nec quam luctus consequat. Fusce cursus congue massa, eget tincidunt erat vestibulum fringilla. Donec ipsum risus, lobortis vestibulum purus eu, dignissim tempus velit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Suspendisse et volutpat leo. Nam hendrerit risus at sapien venenatis, in finibus felis aliquet. Duis sit amet aliquet turpis, eget aliquet diam. Fusce ac imperdiet metus. Sed in ex in justo egestas lobortis non et diam. Integer lacus ligula, placerat eget convallis ac, sagittis at justo. Maecenas fermentum, justo vel rhoncus blandit, lacus neque bibendum mi, et ultricies dui ligula at libero. Nam imperdiet, odio sit amet gravida mollis, dui dolor bibendum est, hendrerit rutrum sem arcu rutrum lacus.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Morbi sollicitudin porttitor lacus, ut condimentum justo congue nec. Nullam eu lacus consequat, convallis felis id, sollicitudin augue. Morbi ac tincidunt nunc. Pellentesque eget mauris blandit, venenatis dui eu, pellentesque augue. Suspendisse dolor nisl, hendrerit sit amet lacus semper, blandit scelerisque ligula. Vestibulum dignissim et ex vel tincidunt. Nunc odio magna, efficitur non ullamcorper fermentum, facilisis a dolor. Nam id sapien in ligula egestas placerat quis eget sapien. Sed ac euismod elit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">In at mollis nisl, id tempus sapien. Etiam scelerisque interdum dui ut blandit. Maecenas non tincidunt odio. Fusce egestas a orci et scelerisque. Proin malesuada tellus id dapibus mattis. Pellentesque ultrices purus a quam finibus pharetra. Donec imperdiet egestas elit, eu lacinia libero dignissim sed. Donec sit amet leo viverra, rutrum odio ut, euismod ligula. Cras dapibus, odio in facilisis commodo, diam est dapibus velit, efficitur finibus nunc odio vitae urna. Nullam bibendum sed felis id faucibus. Fusce nec pharetra magna. Mauris id aliquam ipsum. Mauris pharetra eu ligula in lacinia. Fusce tempus, mi ac dapibus pellentesque, felis nulla vulputate elit, a volutpat quam nisl in felis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Suspendisse placerat suscipit quam, vitae gravida magna pharetra sed. Phasellus vitae dolor tincidunt risus convallis elementum tempus et libero. Etiam et nulla quis est pellentesque varius sit amet nec turpis. Maecenas convallis ac ipsum sit amet auctor. Pellentesque id vehicula justo. Donec suscipit ipsum erat, eu convallis ipsum accumsan ut. Nullam pharetra diam vulputate nibh sollicitudin, ut fermentum massa porta.</p>', 1, 'uploads/posts/1536946752web-design-2038872_1280.jpg', NULL, '2018-09-14 12:09:12', '2018-09-14 12:09:12', 2),
(6, 'Laravel Video Tutorial', 'laravel-video-tutorial', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus hendrerit augue, rutrum interdum nisl fringilla a. In sapien odio, vehicula id gravida id, molestie nec libero. Integer at rhoncus diam. Curabitur in ante pulvinar, facilisis velit fermentum, fermentum quam. Nunc scelerisque et arcu vel lobortis. Sed rutrum semper quam. Donec commodo, lorem sit amet volutpat commodo, felis nisl eleifend erat, in commodo purus libero vel est. In in condimentum ante, non rhoncus urna. Nullam luctus vestibulum facilisis. Duis non porta arcu, pellentesque feugiat est. Maecenas tristique ligula nec quam luctus consequat. Fusce cursus congue massa, eget tincidunt erat vestibulum fringilla. Donec ipsum risus, lobortis vestibulum purus eu, dignissim tempus velit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Suspendisse et volutpat leo. Nam hendrerit risus at sapien venenatis, in finibus felis aliquet. Duis sit amet aliquet turpis, eget aliquet diam. Fusce ac imperdiet metus. Sed in ex in justo egestas lobortis non et diam. Integer lacus ligula, placerat eget convallis ac, sagittis at justo. Maecenas fermentum, justo vel rhoncus blandit, lacus neque bibendum mi, et ultricies dui ligula at libero. Nam imperdiet, odio sit amet gravida mollis, dui dolor bibendum est, hendrerit rutrum sem arcu rutrum lacus.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Morbi sollicitudin porttitor lacus, ut condimentum justo congue nec. Nullam eu lacus consequat, convallis felis id, sollicitudin augue. Morbi ac tincidunt nunc. Pellentesque eget mauris blandit, venenatis dui eu, pellentesque augue. Suspendisse dolor nisl, hendrerit sit amet lacus semper, blandit scelerisque ligula. Vestibulum dignissim et ex vel tincidunt. Nunc odio magna, efficitur non ullamcorper fermentum, facilisis a dolor. Nam id sapien in ligula egestas placerat quis eget sapien. Sed ac euismod elit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">In at mollis nisl, id tempus sapien. Etiam scelerisque interdum dui ut blandit. Maecenas non tincidunt odio. Fusce egestas a orci et scelerisque. Proin malesuada tellus id dapibus mattis. Pellentesque ultrices purus a quam finibus pharetra. Donec imperdiet egestas elit, eu lacinia libero dignissim sed. Donec sit amet leo viverra, rutrum odio ut, euismod ligula. Cras dapibus, odio in facilisis commodo, diam est dapibus velit, efficitur finibus nunc odio vitae urna. Nullam bibendum sed felis id faucibus. Fusce nec pharetra magna. Mauris id aliquam ipsum. Mauris pharetra eu ligula in lacinia. Fusce tempus, mi ac dapibus pellentesque, felis nulla vulputate elit, a volutpat quam nisl in felis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Suspendisse placerat suscipit quam, vitae gravida magna pharetra sed. Phasellus vitae dolor tincidunt risus convallis elementum tempus et libero. Etiam et nulla quis est pellentesque varius sit amet nec turpis. Maecenas convallis ac ipsum sit amet auctor. Pellentesque id vehicula justo. Donec suscipit ipsum erat, eu convallis ipsum accumsan ut. Nullam pharetra diam vulputate nibh sollicitudin, ut fermentum massa porta.</p>', 4, 'uploads/posts/1536946812developer-3461405_1280.png', NULL, '2018-09-14 12:10:12', '2018-09-14 12:10:12', 1),
(7, 'Future scope of Laravel', 'future-scope-of-laravel', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus hendrerit augue, rutrum interdum nisl fringilla a. In sapien odio, vehicula id gravida id, molestie nec libero. Integer at rhoncus diam. Curabitur in ante pulvinar, facilisis velit fermentum, fermentum quam. Nunc scelerisque et arcu vel lobortis. Sed rutrum semper quam. Donec commodo, lorem sit amet volutpat commodo, felis nisl eleifend erat, in commodo purus libero vel est. In in condimentum ante, non rhoncus urna. Nullam luctus vestibulum facilisis. Duis non porta arcu, pellentesque feugiat est. Maecenas tristique ligula nec quam luctus consequat. Fusce cursus congue massa, eget tincidunt erat vestibulum fringilla. Donec ipsum risus, lobortis vestibulum purus eu, dignissim tempus velit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Suspendisse et volutpat leo. Nam hendrerit risus at sapien venenatis, in finibus felis aliquet. Duis sit amet aliquet turpis, eget aliquet diam. Fusce ac imperdiet metus. Sed in ex in justo egestas lobortis non et diam. Integer lacus ligula, placerat eget convallis ac, sagittis at justo. Maecenas fermentum, justo vel rhoncus blandit, lacus neque bibendum mi, et ultricies dui ligula at libero. Nam imperdiet, odio sit amet gravida mollis, dui dolor bibendum est, hendrerit rutrum sem arcu rutrum lacus.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Morbi sollicitudin porttitor lacus, ut condimentum justo congue nec. Nullam eu lacus consequat, convallis felis id, sollicitudin augue. Morbi ac tincidunt nunc. Pellentesque eget mauris blandit, venenatis dui eu, pellentesque augue. Suspendisse dolor nisl, hendrerit sit amet lacus semper, blandit scelerisque ligula. Vestibulum dignissim et ex vel tincidunt. Nunc odio magna, efficitur non ullamcorper fermentum, facilisis a dolor. Nam id sapien in ligula egestas placerat quis eget sapien. Sed ac euismod elit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">In at mollis nisl, id tempus sapien. Etiam scelerisque interdum dui ut blandit. Maecenas non tincidunt odio. Fusce egestas a orci et scelerisque. Proin malesuada tellus id dapibus mattis. Pellentesque ultrices purus a quam finibus pharetra. Donec imperdiet egestas elit, eu lacinia libero dignissim sed. Donec sit amet leo viverra, rutrum odio ut, euismod ligula. Cras dapibus, odio in facilisis commodo, diam est dapibus velit, efficitur finibus nunc odio vitae urna. Nullam bibendum sed felis id faucibus. Fusce nec pharetra magna. Mauris id aliquam ipsum. Mauris pharetra eu ligula in lacinia. Fusce tempus, mi ac dapibus pellentesque, felis nulla vulputate elit, a volutpat quam nisl in felis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Suspendisse placerat suscipit quam, vitae gravida magna pharetra sed. Phasellus vitae dolor tincidunt risus convallis elementum tempus et libero. Etiam et nulla quis est pellentesque varius sit amet nec turpis. Maecenas convallis ac ipsum sit amet auctor. Pellentesque id vehicula justo. Donec suscipit ipsum erat, eu convallis ipsum accumsan ut. Nullam pharetra diam vulputate nibh sollicitudin, ut fermentum massa porta.</p>', 5, 'uploads/posts/1536948035notebook-336634_1280.jpg', NULL, '2018-09-14 12:29:22', '2018-09-14 12:30:35', 2),
(8, 'Laravel 5.7 features you must know about', 'laravel-57-features-you-must-know-about', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', 2, 'uploads/posts/1536949350laptop-3190194_1280.jpg', NULL, '2018-09-14 12:50:32', '2018-09-14 12:52:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1.png', '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis temporibus alias maiores sit error, consequuntur non, laboriosam corporis laborum ipsam facilis at adipisci neque accusamus suscipit dolor est iusto qui!', 'https://www.facebook.com', 'https://www.youtube.com', '2018-09-11 05:14:11', '2018-09-11 05:14:11'),
(2, 'uploads/avatars/1.png', '2', NULL, NULL, NULL, '2018-09-16 05:40:40', '2018-09-16 05:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Laravel\'s Blog', '842 787 7302', 'info@laravelblog.com', 'Chandigarh, India.', '2018-09-11 05:13:06', '2018-09-11 10:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress 4.7', '2018-09-11 11:05:49', '2018-09-11 11:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gurvinder Singh', 'guribhullar8@gmail.com', '$2y$10$ZaVObywgWLr4lE/XFtW8duqkMBS7PaPapdz0RU8Wlv.RhSi6NFRfu', 1, 'HXRTLMAY63deoUE9Obpx6QF0fe1DnKnMwKwvyVnBnmFcblllFO5tVxPV8gIE', '2018-09-11 05:14:11', '2018-09-11 05:14:11'),
(2, 'Gurnam', 'gsb@gmail.com', '$2y$10$H0ru2QzEGaCOuDuxqz.sp.aT4MgHPr6KAxAe7caQIfD6hGsmz/oOq', 0, NULL, '2018-09-16 05:40:40', '2018-09-16 05:40:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
