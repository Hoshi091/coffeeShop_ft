-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 10.Jan 2024, 18:46
-- Verzia serveru: 10.4.28-MariaDB
-- Verzia PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `coffeeshop_ft`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(90) NOT NULL,
  `content` longtext NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `content`, `image`) VALUES
(1, 'title1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel tortor consectetur nisi semper sodales quis ut lectus. Cras aliquet sem sem, quis mollis neque efficitur at. Curabitur faucibus turpis sed condimentum gravida. Cras aliquam magna a sagittis rhoncus. Pellentesque sagittis enim in mauris rutrum venenatis. Ut vel nisi a orci iaculis elementum. Curabitur elementum est sit amet eros iaculis, sollicitudin elementum ante placerat. Phasellus maximus a risus sed ullamcorper. Nullam lectus diam, ultrices ut enim non, condimentum condimentum quam. Morbi ut dolor diam. Curabitur massa justo, semper cursus elementum et, aliquet id ligula. Curabitur luctus a mauris nec gravida. Pellentesque fringilla libero arcu, at ultricies libero consectetur consequat. Fusce dignissim dolor eget nibh convallis scelerisque. Phasellus at cursus diam.\r\n\r\nIn mollis risus at nulla accumsan malesuada. Proin vitae libero a lacus blandit mattis. Mauris eu mattis odio. Donec commodo augue in urna sollicitudin imperdiet. In at erat velit. Pellentesque blandit euismod magna. Sed euismod eu odio in ultrices.\r\n\r\nVestibulum nunc nisi, congue vel tortor facilisis, rhoncus laoreet libero. Pellentesque quis ex vel elit scelerisque facilisis. Fusce non aliquet mi. Nulla cursus lectus vel nisl condimentum, nec feugiat ipsum congue. Sed non odio nec lacus dictum interdum vitae porta nunc. Quisque gravida iaculis aliquet. Proin eu condimentum lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nNulla placerat dapibus vehicula. Integer sed libero ac felis ultricies pharetra eget at leo. Maecenas eros libero, efficitur at semper et, laoreet ac nibh. Maecenas ac metus congue, mollis arcu quis, tristique dolor. Quisque pretium rutrum nunc vel semper. Nullam fermentum dictum quam, vitae finibus metus commodo vitae. Donec mattis eros eget orci blandit, in vulputate justo venenatis.\r\n\r\nSed in libero pulvinar, auctor erat pellentesque, semper nisl. Nam arcu dui, maximus eget dolor et, sodales elementum enim. Maecenas quis suscipit mauris. Sed accumsan orci at placerat bibendum. Cras mollis faucibus sollicitudin. Fusce pulvinar molestie arcu. Nunc ornare nulla non urna porta, ut aliquet tellus semper. Donec in placerat lorem, et molestie velit. Proin pellentesque nibh malesuada risus viverra blandit.', 'https://rukminim2.flixcart.com/image/850/1000/l1dwknk0/plant-sapling/e/l/k/no-perennial-yes-coffee-tree-plant-1-elite-green-original-imagcyaqperggmxh.jpeg?q=90'),
(2, 'title2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a accumsan leo. Praesent a bibendum mi. Aliquam ac dui nec dui porta sagittis sit amet ac ex. Phasellus iaculis mauris diam, sed imperdiet odio dignissim nec. Vivamus dapibus nunc accumsan diam suscipit, nec ullamcorper erat volutpat. In at varius est. Aliquam eget erat vel velit porta sagittis.\r\n\r\nPellentesque finibus turpis id mi mollis fringilla. Sed congue imperdiet felis eget tincidunt. Fusce tortor tortor, laoreet at metus eu, accumsan bibendum augue. Curabitur nisi nulla, bibendum a euismod ut, commodo eu dolor. Aenean auctor auctor scelerisque. Nunc at quam at leo posuere commodo vitae id quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed id ex viverra, rhoncus augue eget, malesuada tortor.\r\n\r\nPhasellus ut aliquet sapien. Pellentesque congue enim urna, id aliquam mauris accumsan at. Phasellus suscipit finibus dui nec placerat. Pellentesque vulputate dolor vitae gravida luctus. Cras sit amet urna egestas, bibendum nisl nec, laoreet ipsum. Suspendisse posuere tincidunt interdum. Aliquam molestie felis nec neque viverra, at volutpat turpis laoreet. Praesent nisl erat, placerat nec magna id, laoreet luctus ipsum. Nunc quam sem, rutrum at lorem sit amet, euismod molestie lorem. Phasellus fringilla nulla purus, vel efficitur lectus efficitur vel.\r\n\r\nSed vel ultrices erat, nec dictum sapien. Vestibulum elementum et libero eu tempus. Donec dapibus non neque nec tempus. Suspendisse potenti. Nulla egestas vulputate nisi, sit amet varius ante ullamcorper at. Donec id est lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat imperdiet accumsan. In accumsan libero nulla, id gravida leo ullamcorper sed. Duis vitae turpis a tortor commodo venenatis. Curabitur sit amet finibus tellus, at aliquam nisl. Curabitur ultrices turpis iaculis, iaculis libero in, varius dolor. Nam mi erat, ornare ac euismod pulvinar, fringilla ac quam. Cras semper, odio in fermentum pretium, eros justo aliquam elit, a fringilla felis nulla a erat.\r\n\r\nProin diam est, sodales ut porttitor eu, luctus ac velit. Suspendisse convallis hendrerit nisi, vitae bibendum leo dapibus quis. Nulla non libero ipsum. Mauris porttitor sollicitudin dui, dapibus hendrerit mauris. Maecenas id euismod ipsum. Duis ac interdum tellus, a dapibus ex. In dapibus lacus ac nisl rutrum lobortis. Fusce id dui urna. Praesent vehicula feugiat ultricies. Vestibulum id mi imperdiet, malesuada lacus eu, ultricies nulla. Cras suscipit aliquet libero, a efficitur erat auctor ut.\r\n\r\nAliquam rhoncus quam eu enim aliquet, ut volutpat est ullamcorper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus venenatis dui rhoncus mi fermentum malesuada. In quis nunc eu ex consequat lobortis. Pellentesque consectetur sit amet ligula at condimentum. Sed lobortis ex urna, eu varius sem dapibus ultrices. Mauris in ligula at eros eleifend maximus et in quam. Donec rhoncus, risus quis tempor elementum, velit nunc luctus orci, id pulvinar ligula nisl vel neque.\r\n\r\nProin eu neque est. Fusce a justo vitae augue efficitur laoreet et sit amet urna. Integer in eleifend elit, ut condimentum nisi. Nam tristique purus a ultrices porta. Duis eu purus tellus. Vivamus varius risus facilisis commodo vestibulum. Praesent ultricies, lectus quis scelerisque placerat, urna neque porttitor libero, at imperdiet ligula nisl tempus sem. Integer et elit ex. Morbi vel pretium dui. Ut volutpat rhoncus orci, et vulputate quam blandit ut. Vestibulum vestibulum, ipsum ac sodales vestibulum, turpis diam accumsan nulla, eu consectetur magna augue varius lorem. Cras dignissim sem id purus pellentesque rutrum. Pellentesque euismod ipsum sit amet felis pharetra pellentesque. Aenean vitae venenatis arcu, sed gravida ante. In luctus ultrices feugiat.', 'https://www.ruralsprout.com/wp-content/uploads/2022/02/coffee-forest.jpg');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `description` longtext NOT NULL,
  `price` float NOT NULL,
  `is_available` tinyint(4) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `is_available`, `image`) VALUES
(1, 'Arabica', 'Smooth and aromatic coffee.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a accumsan leo. Praesent a bibendum mi. Aliquam ac dui nec dui porta sagittis sit amet ac ex. Phasellus iaculis mauris diam, sed imperdiet odio dignissim nec. Vivamus dapibus nunc accumsan diam suscipit, nec ullamcorper erat volutpat. In at varius est. Aliquam eget erat vel velit porta sagittis.', 9.99, 1, 'https://t4.ftcdn.net/jpg/01/05/90/77/360_F_105907729_4RzHYsHJ2UFt5koUI19fc6VzyFPEjeXe.jpg'),
(2, 'Robusta', 'Bold and strong flavor.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a accumsan leo. Praesent a bibendum mi. Aliquam ac dui nec dui porta sagittis sit amet ac ex. Phasellus iaculis mauris diam, sed imperdiet odio dignissim nec. Vivamus dapibus nunc accumsan diam suscipit, nec ullamcorper erat volutpat. In at varius est. Aliquam eget erat vel velit porta sagittis.', 12.99, 0, 'https://t4.ftcdn.net/jpg/01/05/90/77/360_F_105907729_4RzHYsHJ2UFt5koUI19fc6VzyFPEjeXe.jpg'),
(3, 'Ethiopian Yirgacheffe\r\n', 'Medium-bodied with fruity and floral notes.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a accumsan leo. Praesent a bibendum mi. Aliquam ac dui nec dui porta sagittis sit amet ac ex. Phasellus iaculis mauris diam, sed imperdiet odio dignissim nec. Vivamus dapibus nunc accumsan diam suscipit, nec ullamcorper erat volutpat. In at varius est. Aliquam eget erat vel velit porta sagittis.', 18.99, 1, 'https://zippypixels.com/wp-content/uploads/2018/03/White-coffee-bag-mockup.jpg'),
(4, 'Colombian Supremo\r\n', 'Rich and well-balanced with a hint of nuttiness.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a accumsan leo. Praesent a bibendum mi. Aliquam ac dui nec dui porta sagittis sit amet ac ex. Phasellus iaculis mauris diam, sed imperdiet odio dignissim nec. Vivamus dapibus nunc accumsan diam suscipit, nec ullamcorper erat volutpat. In at varius est. Aliquam eget erat vel velit porta sagittis.', 9.99, 1, 'https://zippypixels.com/wp-content/uploads/2018/03/White-coffee-bag-mockup.jpg'),
(5, 'Sumatra Mandheling\r\n', 'Full-bodied and earthy with low acidity.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a accumsan leo. Praesent a bibendum mi. Aliquam ac dui nec dui porta sagittis sit amet ac ex. Phasellus iaculis mauris diam, sed imperdiet odio dignissim nec. Vivamus dapibus nunc accumsan diam suscipit, nec ullamcorper erat volutpat. In at varius est. Aliquam eget erat vel velit porta sagittis.', 12.99, 1, 'https://zippypixels.com/wp-content/uploads/2018/03/White-coffee-bag-mockup.jpg');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `product_timestamp`
--

CREATE TABLE `product_timestamp` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `click_timestamp` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `product_timestamp`
--

INSERT INTO `product_timestamp` (`id`, `product_id`, `click_timestamp`) VALUES
(1, 1, '2024-01-09T15:52:09.100Z'),
(2, 2, '2024-01-09T16:04:14.471Z'),
(3, 4, '2024-01-09T16:04:32.371Z'),
(4, 2, '2024-01-10T09:13:11.857Z'),
(5, 1, '2024-01-10T09:20:27.269Z'),
(6, 3, '2024-01-10T09:20:39.515Z'),
(7, 2, '2024-01-10T11:34:20.643Z'),
(8, 4, '2024-01-10T11:41:34.757Z'),
(9, 4, '2024-01-10T11:45:12.354Z'),
(10, 1, '2024-01-10T11:45:16.635Z'),
(11, 3, '2024-01-10T11:45:21.684Z'),
(12, 4, '2024-01-10T11:45:26.216Z'),
(13, 3, '2024-01-10T14:04:04.640Z'),
(14, 3, '2024-01-10T16:03:20.289Z'),
(15, 3, '2024-01-10T16:03:52.583Z'),
(16, 4, '2024-01-10T16:24:48.336Z'),
(17, 4, '2024-01-10T16:27:13.105Z'),
(18, 4, '2024-01-10T16:28:26.738Z'),
(19, 2, '2024-01-10T16:37:52.174Z'),
(20, 1, '2024-01-10T16:40:36.698Z'),
(21, 5, '2024-01-10T16:45:08.484Z'),
(22, 2, '2024-01-10T17:08:13.228Z'),
(23, 2, '2024-01-10T17:08:16.638Z'),
(24, 1, '2024-01-10T17:17:57.178Z'),
(25, 1, '2024-01-10T17:18:03.629Z');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `product_timestamp`
--
ALTER TABLE `product_timestamp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pre tabuľku `product_timestamp`
--
ALTER TABLE `product_timestamp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
