-- -------------------------------------------------------------
-- TablePlus 6.1.2(568)
--
-- https://tableplus.com/
--
-- Database: laravel
-- Generation Time: 2024-07-16 01:11:09.6540
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_04_084453_create_penyewas_table', 1),
(6, '2022_09_04_144344_create_motors_table', 1),
(7, '2022_09_06_150022_create_sewas_table', 1),
(8, '2022_09_06_164749_add_status_bayar_to_sewas_table', 1),
(9, '2022_09_08_072722_add_denda_to_sewas_table', 1);

INSERT INTO `motors` (`id`, `mtruid`, `image_motor`, `nama`, `kategori`, `catatan`, `harga`, `no_polisi`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'mtr-1', 'assets/image_motor/Pi3X1m0ejyc8LtzzVJ4fKBDNs4n8s0tAf8W1LdDI.jpg', 'KLX', 'Matik', 'keren', 1000, '6666', 1, '2024-07-15 18:03:58', '2024-07-15 17:50:22', '2024-07-15 18:03:58'),
(2, 'mtr-2', 'assets/image_motor/ElhniklVSQi8V2iP3gWWL181UqJBaHlmb6Z6bdO0.jpg', 'Vespa Bobrok', 'Bebek', 'Motor klasik 2 tak', 150000, 'T 2019 AB', 1, NULL, '2024-07-15 18:04:51', '2024-07-15 18:10:15'),
(3, 'mtr-3', 'assets/image_motor/nW8a3vDmZj14OEfBqJhzhkZFLx36JO5TYg3sFf2Q.jpg', 'Yamaha R15', 'Bebek', 'Motor Racing 4 Tak', 200000, 'T 0291 VA', 0, NULL, '2024-07-15 18:05:28', '2024-07-15 18:05:28'),
(4, 'mtr-4', 'assets/image_motor/xkzc9Eb96xw3JSBOjfWyEhBBXksm6aS8MV2ziZxj.jpg', 'Aerox 2022', 'Matik', 'Motor Yamaha Aerox 150cc', 210000, 'B 0291 KA', 0, NULL, '2024-07-15 18:06:30', '2024-07-15 18:06:30'),
(5, 'mtr-5', 'assets/image_motor/Cdx9ItE503Sl1eGt4UlfqK05eBwdya8NaUOrGijh.jpg', 'Scoopy', 'Matik', 'Scoopy The Nuruls', 241000, 'KT 1329 AM', 0, NULL, '2024-07-15 18:07:09', '2024-07-15 18:07:09'),
(6, 'mtr-6', 'assets/image_motor/kkjMcXSrwYOV5XQfOp2pZUJCnVayyDVjMm0iIzlV.png', 'Yamaha XMAX', 'Matik', 'Yamaha XMAX Turbo', 300000, 'D 20S2 KC', 0, NULL, '2024-07-15 18:07:43', '2024-07-15 18:07:43');

INSERT INTO `penyewas` (`id`, `no_identitas`, `nama_penyewa`, `gender`, `no_hp`, `alamat`, `restuid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KTP-231231', 'ASDASD', 'Pria', '0812412', 'ADSASDDAS', 'rent-1', '2024-07-15 17:50:39', '2024-07-15 18:07:50', '2024-07-15 18:07:50'),
(2, 'KTP-259120501', 'Alfa Rizki', 'Pria', '08210259109', 'Kp Cisantri RW 666 / RT 666, Desa CIjaya', 'rent-2', '2024-07-15 18:08:20', '2024-07-15 18:08:20', NULL);

INSERT INTO `sewas` (`id`, `sewa_uuid`, `penyewa_id`, `motor_id`, `tanggal_sewa`, `tanggal_kembali`, `total_biaya`, `catatan`, `status`, `deleted_at`, `created_at`, `updated_at`, `status_bayar`, `denda`) VALUES
(1, 'sewa-1', 1, 1, '2024-07-16', '2024-07-18', 3000, 'DDD', 0, '2024-07-15 18:03:58', '2024-07-15 17:51:13', '2024-07-15 18:03:58', 1, NULL),
(2, 'sewa-2', 2, 2, '2024-07-17', '2024-07-18', 300000, '2 HARI', 0, NULL, '2024-07-15 18:10:15', '2024-07-15 18:10:21', 1, NULL);

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'John Doe', 'johndoe@example.com', NULL, '$2y$10$CLHwmeJY.gpjib5frOJfUOtx5KbhK4lJiTWt7t5AaF2l.zx0uqGku', NULL, '2024-07-15 17:49:11', '2024-07-15 17:49:11', NULL),
(5, 'Admin', 'admin@email.com', NULL, '$2y$10$ISxzzMlKNJDS3qn4wd4bFesFxmXqfKMgxP3YcoCJIcJM760t3KfwO', NULL, '2024-07-15 18:09:35', '2024-07-15 18:09:35', NULL);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;