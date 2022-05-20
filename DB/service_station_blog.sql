-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2022 at 04:57 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_station_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Обслуживание', 'service', '2022-05-07 08:54:45', '2022-05-07 08:54:45'),
(6, 'Магазин', 'shop', '2022-05-07 08:54:57', '2022-05-07 08:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2022_04_18_112346_create_categories_table', 1),
(10, '2022_04_18_112453_create_tags_table', 1),
(11, '2022_04_18_112530_create_posts_table', 1),
(12, '2022_04_18_112800_create_post_tag_table', 1),
(13, '2022_04_26_015122_alter_table_users_add_isadmin', 2),
(14, '2022_05_19_015908_alter_table_posts_add_title_index', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `category_id`, `views`, `thumbnail`, `created_at`, `updated_at`) VALUES
(4, 'Замена масла в двигателе своими руками', 'zamena-masla-v-dvigatele-svoimi-rukami', '<p>Если двигатель - сердце автомобиля, то масло - его кровь.</p>', '<p>Если двигатель - сердце автомобиля, то масло - его кровь. Оно смазывает трущиеся детали, предохраняет их от преждевременного износа, охлаждает и выносит продукты трения. Регулярная смена масла - необходимый элемент технического обслуживания любого автомобиля, а его несвоевременная замена - источник многих проблем для автомобилиста, приводящих к серьезному и дорогостоящему ремонту. Поэтому каждому начинающему автомобилисту следует знать, как производится замена масла&nbsp;в двигателе своими руками. В этой статье мы поговорим именно об этом.<br><br>Подготовка : замена масла в двигателе своими руками<br><br>Первым делом необходимо прогреть двигатель (масло имеет свойство загустевать от низких температур, слить его в таком случае будет куда сложнее, а заменить целиком практически невозможно - из-за высокой вязкости большое количество масла остается на агрегатах и деталях автомобиля). Рекомендуется даже немного проехаться - как говорилось выше, масло имеет свойство выносить взвешенные частицы. Если перед сливом масла автомобиль проедет пару километров - количество посторонних частиц в масле станет выше и двигатель после замены будет чище. Следом нужно немного подождать, чтобы масло остыло - в противном случае вы рискуете серьезно обжечься. Подготовьте емкости для слитого масла (например, старая канистра без горлышка).<br><br>Слив масла<br><br>Для того, чтобы слить масло, вам необходимо открутить пробку горловины, которая обычно располагается на днище автомобиля (на всякий случай сверьтесь с инструкцией по эксплуатации). Пробку следует первоначально ослабить при помощи гаечного ключа, а далее открутить ее руками - дело в том, что масло польется сразу и в больших количествах, пробку горловины немудрено потерять (помните также о том, что масло горячее - для защиты рук наденьте перчатки). Далее просто подставьте емкость для масла под ее струю и подождите, пока оно сольется (в среднем около пяти или семи минут). Помните о том, что некоторая часть масла - примерно 3-4 процента - останется на агрегатах автомобиля, поэтому количество слитого масла будет несколько меньше первоначально заливаемого объема.<br><br>Заливаем масло<br><br>Здесь все куда проще - после того, как масло слито,начинается замена масла своими руками. Вам необходимо закрутить пробку горловины, открутить пробку масляного бака и начать заливать новое масло. Будьте внимательны - слишком большое количество масла пусть и не так вредно для автомобиля, как масляное голодание, но тоже может привести к длинному списку неполадок. Долейте масло приблизительно до восьмидесяти процентов от первоначального объема, далее заливайте понемногу, проверяя показания на щупе. Окончательный уровень масла должен быть между верхней и нижней рисками на щупе, ближе к верхней.<br><br>Интервал замены масла<br><br>Обычно автолюбителям рекомендуют производить такую операцию, как <a href=\"https://oba.by/mashiny/24-polnaja-zamena-masla-v-akpp.html\">полная замена масла в акпп</a> через каждые 10-15 тысяч километров. Однако в первую очередь этот показатель зависит от того, в каких условиях эксплуатируется автомобиль. В условиях горной местности, повышенной влажности, жары или холода эту величину следует уменьшить примерно на четверть. Также не стоит забывать и о том, что постоянная работа двигателя на холостых оборотах, стояние в пробке и частые остановки на светофорах (словом, эксплуатация в современных городских условиях) также не идет двигателю на пользу и относится к тяжелым условиям эксплуатации.</p>', 5, 1, 'images/2022-05-07/6YYFaUbWeGXvVybvXO4xeoP1bLc3s2PLTaLdxXpA.jpg', '2022-05-07 09:17:58', '2022-05-16 18:46:56'),
(5, 'Замена шпильки задней ступицы Forester SG', 'zamena-shpilki-zadney-stupicy-forester-sg', '<p>Потребуется:<br>— шестигранник на 5,<br>— болт М8,<br>— шпилька<br>— гайка</p>', '<p>PS гайку ступицы откручивать не нужно, Фотки правил сразу исходники и возмоности исправить уже не оказалось.</p><figure class=\"image\"><img src=\"/public/ckfinder/userfiles/images/zamena_shpilki/1.jpg\"></figure><figure class=\"image\"><img src=\"/public/ckfinder/userfiles/images/zamena_shpilki/2.jpg\"></figure><figure class=\"image\"><img src=\"/public/ckfinder/userfiles/images/zamena_shpilki/3.jpg\"></figure><figure class=\"image\"><img src=\"/public/ckfinder/userfiles/images/zamena_shpilki/4.jpg\"></figure><figure class=\"image\"><img src=\"/public/ckfinder/userfiles/images/zamena_shpilki/5.jpg\"></figure>', 5, 4, 'images/2022-05-07/7TyM8of2sPGJavUa6uZ4pTILqYVA2sCJwdDNDsEr.jpg', '2022-05-07 10:04:02', '2022-05-16 19:02:23'),
(6, 'Как заменить ремень генератора', 'kak-zamenit-remen-generatora', '<p>Заменить ремень генератора может каждый.</p>', '<figure class=\"image\"><img src=\"/public/ckfinder/userfiles/images/1607789168_kak-zamenit-remen-generatora.jpg\"></figure><p>Заменить ремень генератора может каждый даже тот кто только начал изучать свой автомобиль. Автолюбитель старается сэкономить и поменять ремень самостоятельно. Но не всегда и в редких случаях удается сделать это самому. Это достаточно главный и важный элемент автомобиля по этому рано или поздно надо менять каждому из них.<br>Прежде чем менять ремень убедитесь, что он действительно требует замены. Если идет свист или какой-либо шум в автомобиле от самого генератора, то-есть при полной работе двигателя издает любой звук то может просто нужно подтянуть ремень если на нем нет никаких изъянов. При полной проверке все равно остался звук то замены не избежать увы.Т ак же гляньте нет ли на нем трещин или порывов.<br>Выбирая ремень для генератора они должны быть идентичны друг другу и подходить к вашей марке автомобиля и без единого дефекта. Замена ремня займет не много времени если полностью действовать инструкции его замены. Если избежать старого ремня не удалось то приступаем.<br>1)Освободите капот чтоб было достаточно места для ремонта, для смены понадобиться поднять переднюю часть машины, так будет удобнее работать под ней.<br>2)Взять обычный гаечный ключ который подходит к болту расположенному в генераторе. Возьмите карандаш и лист бумаги зарисуйте схему снятия ремня, чтоб проще было установить новый на то же место. Аккуратно ослабьте болт полностью не выкручивая его с генератора, крутите ключом в обе стороны для легкого снятия ремня.<br>Задаётесь вопросом, как заменить ремень генератора? Взять приобретенный новый ремень в магазине и установить по той схеме сделанную ранее. Когда работа полностью будет готова обязательно посмотрите правильно ли вы его правильно или нет. Он должен быть не перетянут и не свисать полностью. Чтоб проверить правильность замены заведите автомобиль и включите фары, печку и надавить на газ, если не слышите каких либо звуков ремень правильно установлен, но если какие помехи слышны он плохо натянут или наоборот ослаблен как он должен быть на самом деле. Затянуть или ослабление ремня можно сделать при помощи находившемся там болта вращайте его и регулируйте как требуются.<br>*старый не должен прогибаться до 0.5 см<br>*новый до .0.2 см приблизительные данные по натяжке генераторного ремня.<br>Если ремень натянут слабо это приведет к быстрому использованию. Так же каждый водитель должен иметь запасной ремень новый, потому что при его поломке машина не тронется с места. Так как аккумулятор сохраняет малое количество электроники в основном всю проблему берет на себя генератор и при его стертости или повреждении автомобиль не заведется.</p>', 5, 5, 'images/2022-05-07/2kwGtFdBeiJn2ptYkbgRMpVk7va9DAPEePgMjkJ4.jpg', '2022-05-07 10:10:26', '2022-05-17 19:53:30'),
(7, 'Выбор моторного масла', 'vybor-motornogo-masla', '<p>Если кратко,&nbsp;то использовать можно только моторные масла, которые <a href=\"https://www.zr.ru/content/articles/847112-vybiraem-motornoe-maslo-dorogoe-ili-podeshevle/\">рекомендованы</a> производителем автомобиля.</p>', '<h3>Вязкость и&nbsp;цифры</h3><p>О&nbsp;вязкости масла говорят самые заметные цифры на&nbsp;канистре или банке&nbsp;— это классификация вязкости по&nbsp;SAE. Два числа, разделенных буквой W, обозначают, что масло всесезонное. Именно всесезонные чаще всего и&nbsp;выпускают.</p><p>Первые цифры указывают на&nbsp;минимальную отрицательную температуру, при которой двигатель можно провернуть. Например, у&nbsp;масла 0W‑40 нижний температурный порог равен&nbsp;—35ºС, а&nbsp;у&nbsp;15W‑40&nbsp;он составляет&nbsp;—20ºС. Число после дефиса говорит о&nbsp;допустимом диапазоне изменения вязкости масла при 100ºС. Так, для&nbsp;«тридцатки» вязкость может меняться в&nbsp;диапазоне от&nbsp;9,3&nbsp;до 12,5&nbsp;сСт (сантистокс&nbsp;— единица измерения вязкости), для&nbsp;«сороковки»&nbsp;— от&nbsp;12,5&nbsp;до 16,3 сСт. Если производитель допускает вилку параметров (например, 5W‑30&nbsp;или 5W‑40),&nbsp;то для&nbsp;новых машин лучше брать 5W‑30: немножко выиграем в&nbsp;расходе топлива. А&nbsp;для&nbsp;пожилых&nbsp;— 5W‑40. Почему так? У&nbsp;новых двигателей нет износа, все зазоры минимальны, поэтому подшипники нормально работают и&nbsp;при меньшей вязкости. А&nbsp;вот при больших износах несущую способность компенсируют ростом вязкости.</p><h3>Качество и&nbsp;буквы</h3><p>О&nbsp;классе <a href=\"https://www.zr.ru/content/articles/826573-ekspertiza-chem-grozit-dvigatelyu-soyuz-importnogo-masla-s-nashim-benzinom/\">качества масла</a> говорят обозначения SM, SN, СJ, CF.</p><p>Так обозначают качество масел согласно американской классификации API. Этот индекс состоит из&nbsp;двух букв. Первая определяет тип двигателя: S (Service Station)&nbsp;— бензиновые двигатели, или C (Commercial)&nbsp;— дизели.</p><p>Вторая (от&nbsp;A&nbsp;до&nbsp;N) информирует об&nbsp;уровне эксплуатационных свойств. Обозначение может быть «дробью», тогда масло подходит для&nbsp;бензиновых и&nbsp;дизельных двигателей.</p><p>Чем дальше последняя буква от&nbsp;начала алфавита, тем лучше масло. Сегодня самый высокий класс&nbsp;— SN/СF. Это масло можно использовать вместо любого другого.</p>', 6, 3, 'images/2022-05-07/vpJ1YGWNwVEnUs7nCQHYoWGihbLFxJOeApt95AU6.jpg', '2022-05-07 10:16:48', '2022-05-17 20:01:35'),
(8, 'Масляный фильтр', 'maslyanyy-filtr', '<p>Диаметр: 80 мм</p><p>Длина: 75 мм</p>', '<p>Модель автомобиля:</p><p>Great Wall Wingle, Genesis G80, Hyundai i40, Hyundai Genesis Coupe, Hyundai i30, Hyundai H1, Hyundai Getz, Hyundai ix35, Hyundai Creta, Hyundai i20, Hyundai XG, Hyundai Tucson, Hyundai Accent, Hyundai Trajet, Hyundai Galloper, Hyundai Kona, Hyundai Matrix, Hyundai Grandeur, Hyundai Terracan, Hyundai Sonata, Hyundai Veloster, Hyundai ix20, Hyundai Porter, Hyundai Azera, Hyundai Elantra, Hyundai Santa Fe, Hyundai Solaris, Kia Optima, Kia Soul, Kia Stinger, Kia Venga, Kia Sorento, Kia Opirus, Kia Rio, Kia Carnival, Kia Sportage, Kia Cerato, Kia Niro, Kia Ceed, Isuzu Trooper, Isuzu D-Max, Kia Carens, Mazda B-Series, Mazda CX-7, Mazda 6, Mazda 626, Mazda 323, Mazda Premacy, Mazda 3, Mazda MPV, Mazda 5, Mitsubishi Lancer, Mitsubishi Outlander, Mitsubishi Colt, Mitsubishi Pajero Sport, Mitsubishi Pajero, Mitsubishi Grandis, Mitsubishi Galant, Mitsubishi Mirage, Mitsubishi L200, Mitsubishi Space Runner, Mitsubishi 3000 GT, Smart Forfour, Subaru Outback, Suzuki Vitara, Subaru Tribeca, Subaru Legacy</p>', 6, 6, 'images/2022-05-09/ZS9dIoc2YtJ5mPTnO4SdUL9MVXdidrcUgb656Znz.webp', '2022-05-09 01:19:30', '2022-05-17 19:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(8, 4, 4, '2022-05-07 09:17:58', '2022-05-07 09:17:58'),
(9, 5, 5, '2022-05-07 10:04:02', '2022-05-07 10:04:02'),
(10, 4, 6, '2022-05-07 10:10:26', '2022-05-07 10:10:26'),
(11, 4, 7, '2022-05-07 10:16:48', '2022-05-07 10:16:48'),
(12, 8, 7, '2022-05-07 10:16:48', '2022-05-07 10:16:48'),
(14, 4, 8, '2022-05-12 08:03:11', '2022-05-12 08:03:11'),
(15, 8, 8, '2022-05-12 08:03:11', '2022-05-12 08:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Двигатель', 'dvigatel', '2022-05-07 08:57:00', '2022-05-07 08:57:00'),
(5, 'Ходовая часть', 'hodovaya-chast', '2022-05-07 08:57:21', '2022-05-07 08:57:21'),
(6, 'Кузов', 'kuzov', '2022-05-07 08:57:41', '2022-05-07 08:57:41'),
(7, 'Салон', 'salon', '2022-05-07 08:58:07', '2022-05-07 08:58:07'),
(8, 'Трансмисия', 'transmisiya', '2022-05-07 09:01:26', '2022-05-07 09:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Admin', 'admin@mail.com', NULL, '$2y$10$KbzhANOK1Fs.JCwfQkBZyObjhNFUVDJwmg4AXg7KnZD18ZermwZTy', NULL, '2022-04-26 01:27:30', '2022-04-26 01:27:30', 1),
(3, 'User', 'user@mail.com', NULL, '$2y$10$Aq8BWwQ6M7UVci5deni1iu5k505BKhGmB4LJyDv9bFPbU3F/aki3q', NULL, '2022-04-26 01:32:56', '2022-04-26 01:32:56', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_title_index` (`title`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
