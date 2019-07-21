-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лип 21 2019 р., 12:22
-- Версія сервера: 10.1.36-MariaDB
-- Версія PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `project`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'meat'),
(2, 'walk'),
(3, 'use');

-- --------------------------------------------------------

--
-- Структура таблиці `form`
--

CREATE TABLE `form` (
  `name_1` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `form`
--

INSERT INTO `form` (`name_1`, `email`, `comment`) VALUES
('dfgdfg', 'dfgdg@dfgdgf', 'dfgdfgdfgdg'),
('ergege', 'feketiko2.0@gmail.com', 'egfegeg'),
('ergege', 'feketiko2.0@gmail.com', 'egfegeg'),
('ergegee', 'feketiko2.0@gmail.com', 'egfegeg'),
('ergegee', 'feketiko2.0@gmail.com', 'egfegeg'),
('ergerg', 'feketiko2.0@gmail.com', 'fgfgh'),
('sdfsdf', 'feketiko2.0@gmail.com', 'fdhdfgdgd'),
('sdfsdf', 'feketiko2.0@gmail.com', 'fdhdfgdgd'),
('sdfsdf', 'feketiko2.0@gmail.com', 'fdhdfgdgd'),
('SDFSF', 'feketiko2.0@gmail.com', 'DFG'),
('ergergdd', 'feketiko2.0@gmail.com', 'fgfgh'),
('SDFSF', 'feketiko2.0@gmail.com', 'DFG'),
('sdfsdf', 'feketiko2.0@gmail.com', 'dfgdfgdfg  vcvcvbc  cvbcv'),
('sdfsdfs', 'feketiko2.0@gmail.com', 'dfgdd ddfd dddddddd'),
('zczxc', 'zxczxcz@xdfg', 'zdgdg'),
('dfvdv', 'feketiko2.0@gmail.com', 'dfvdv'),
('sdfsdf', 'feketiko2.0@gmail.com', 'fdhdfgdgd'),
('fff', 'feketiko2.0@gmail.com', 'fff'),
('sss', 'sss@sss', 'ssss'),
('ggg', 'feketiko2.0@gmail.com', 'fffff'),
('di', 'dfsdf@sdfds', 'sdfsd'),
('marichka', 'marichkakovalchyn@gmail.com', 'love dianka'),
('kfjdgdkjgfhdg', 'dgdfgd@dflkgdl.com', 'dfgodjgdfjg'),
('dfosiudpif', 'dkfjhgkdfjhg@ldfjgdfj', 'ldfjgodufgogdgf'),
('maria', 'mariafedoseeva@fkjksjf', 'hello');

-- --------------------------------------------------------

--
-- Структура таблиці `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `content`, `datetime`) VALUES
(1, 'fkjhkdhkdhgkdhfkg', 'css/img/bg.img', '<p>kjkdfhgkdfjhgkjdfhg</p>', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `reserves`
--

CREATE TABLE `reserves` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `reserves`
--

INSERT INTO `reserves` (`id`, `title`, `description`, `image`) VALUES
(1, '<h2>Lewa Wildlife Conservancy</h2>', '<p> It is the sanctuary of the African black rhinoceros, and it is one of Kenya’s most important reserves. Over the years, thanks to conservation and protection policies, the population of black rhinos has increased by 6 per cent. The park is also home to the largest population of Grévy’s zebras (380 individuals), of which there are 3,000 globally.</p>', '\"css/img/reserves/1.jpg\"'),
(2, '<h2>Gran Paradiso National Park </h2>', '<p>According to the IUCN, it is one of the world’s most important protected areas. It is Italy’s oldest park, established in 1922 (along with the National Park of Abruzzo). Its iconic animal is the ibex, but mountains chamois, marmots and eagles can also be admired. </p>', '\"css/img/reserves/2.jpg\"'),
(3, '<h2>Zhangjiajie National Park</h2>', '<p>It is one of China’s most famous parks, and it is widely known all over the world for its stunning landscapes. It is a UNESCO World Heritage Site and has inspired many painters, poets and directors, including James Cameron. In fact, Pandora’s peaks take inspiration from these mountains.</p>', '\"css/img/reserves/3.jpg\"'),
(4, '<h2>American Praire Reserve</h2>', '<p>It is one of the last pristine prairies in the world. This reserve takes you back in time, when the first explorers went to the West, finding millions of bison and tens of indigenous tribes. Today, a ten-year project is being carried out to restore bison populations, which today count as little as a few thousands of individuals in the wild.</p>', '\"css/img/reserves/4.jpg\"'),
(5, '<h2>Tchindzoulou Island</h2>', '<p>The rehabilitation centre founded by Jane Goodall has already turned twenty. It is a sanctuary for chimpanzees, home to 150 individuals, many of which are orphans. Visiting the centre means having a direct contact with the crucial labour carried out by the ethologist over the years, a landmark for primates conservation all over the world.</p>', '\"css/img/reserves/5.jpg\"'),
(6, '<h2>Fjallabak Nature Reserve</h2>', '<p>Iceland’s landscape is wild, ancient, and noble. The region is named after the numerous peaks and its modelled and coloured landscapes. The reserve is home to hundreds of vegetable species.</p>', '\"css/img/reserves/6.jpg\"'),
(7, '<h2>Bialowieza Forest</h2>', '<p>It is the last large European forest. It is thousands year old, ancient, and home to vegetable and animals species that are already extinct in the rest of the old continent. The forest extends between north-east Poland and Belorussia. It is home to centuries-old trees and European bison, wolves, moose and beavers.</p>', '\"css/img/reserves/7.jpg\"'),
(8, '<h2>The Australian Great Barrier Reef</h2>', '<p> It is the world’s largest marine reserve. 2,600 kilometres long, it extends for over 340,000 square kilometres. It is a World Heritage Site, and is home and shelter to thousands of animal and vegetable species. Despite climate change is affecting this Pacific Ocean area, it remains a real ark of biodiversity. </p>', '\"css/img/reserves/8.jpg\"'),
(9, '<h2>Gorgona Island</h2>', '<p>Twenty kilometres off the Colombian coast, in the Pacific Ocean, this island was declared a protected reserve in 1985. Formerly inhabited by pre-Colombian civilisations, today it remains uninhabited. People can visit it only by booking through the Colombian tourist office. It is a tropical island, exactly like the first places visited by Spanish conquistadores.</p>', '\"css/img/reserves/9.jpg\"'),
(10, '<h2>Northeast Greenland National Park</h2>', '<p>It is the world’s largest nature reserve with 900,000 square kilometres, most of them covered by perennial ice. It is inhabited by the Inuit, ancient inhabitants of this harsh land. The link with nature is still deep andancestral, and the only way to survive.</p>', '\"css/img/reserves/10.jpg\"');

-- --------------------------------------------------------

--
-- Структура таблиці `solutions`
--

CREATE TABLE `solutions` (
  `id` int(11) NOT NULL,
  `category` varchar(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `solutions`
--

INSERT INTO `solutions` (`id`, `category`, `title`, `description`, `content`, `img`) VALUES
(0, '1', 'What Is Veganism?', 'Veganism is a type of vegetarian diet that excludes meat, eggs, dairy products and all other animal-derived ingredients. Many vegans also do not eat foods that are processed using animal products, such as refined white sugar and some wines. ', '\r\n\r\n<p>Vegan refers to either a person who follows this way of eating or to the diet itself. That is, the word vegan can be an adjective used to describe a food item, as in, \"This curry is vegan\", or, it can be used as a noun, as in, \"Vegans like cookies, too.\"</p>\r\n\r\n<p>Although there is some debate as to whether certain foods, such as honey, fit into a vegan diet, if you are cooking for other vegans, it is best to err on the side of caution and avoid these foods. Most vegans extend the definition of veganism to go beyond just food and will also avoid the use of all personal and household products tested on animals, and avoid purchasing and using all animal-derived, non-food products, such as leather, fur, and wool. There is some debate as to whether second-hand animal products, such as a leather jacket from a thrift store, can be included in a cruelty-free vegan lifestyle or not.</p>\r\n', '\"css/img/solutions/1.jpg\"\r\n'),
(1, '1', 'What Do Vegans Eat? ', 'This is perhaps the most common question about veganism. A vegan diet includes all grains, beans, legumes, vegetables and fruits, and the nearly infinite number of foods made by combining them. ', '\r\n\r\n<p>In addition, many vegan versions of familiar foods are available, so you can eat vegan hot dogs, ice cream, cheese, non-dairy yogurt and vegan mayonnaise along with the more familiar veggie burgers and other meat substitute products. Many foods are associated with veganism, such as soy milk, non-dairy milk substitutes, and tofu, but many non-vegans also enjoy tofu. You certainly don\'t have to like tofu in order to eat vegan.</p>\r\n\r\n<p>Vegans also eat many of the same common and familiar everyday foods that everyone else does, such as a green salad, spaghetti, peanut butter sandwiches, and chips and salsa. For example, foods such as a vegetarian burrito without cheese or sour cream would be vegan. A vegetarian Thai curry made from coconut milk is vegan. Pasta with tomato sauce or another non-meat and non-dairy sauce is vegan. Most bread is vegan as well. </p>\r\n', '\"css/img/solutions/2.jpg\"'),
(2, '2', '7 Reasons Why You Need to Walk More', 'You might already be walking regularly, even daily, but are you actually moving enough? Movement expert Katy Bowman points out that even if you exercise for an hour per day, that’s still only just over 4% of your day spent moving — not great if the rest of your time is spent sedentary (shifting from an office chair to the couch post-workout). Bowman’s prescription? Move more.', '<h3>1. LOWER YOUR BODY FAT</h3>\r\n\r\n<p>The Lancet Diabetes & Endocrinology Journal recently published a study that surveyed commuters who walked or biked versus drove and found — no surprise here — that adults who commute via human power (walking or riding) have a lower body-fat percentage and body mass index. If you’ve struggled with lowering that number on the scale with your daily run, adding some walking may actually help shift the numbers in the right direction. A little extra walking means you’ll burn calories without much need for repair — and you don’t need a recovery shake after a mile-long walk!</p>\r\n\r\n<h3>. LOWER YOUR RISK OF HEART DISEASE </h3>\r\n<p>Even active people can be at risk for heart disease, but regular walking can help ease that. Regular walks will keep you much healthier than sitting on the couch whether you’re recovering from an injury, trying to lose weight to get to a point where you can run or just taking an extended recovery period after a hard season of running. Researchers at the Friedman School of Nutrition Science and Policy at Tufts University recently studied a large group of older Americans. Their research showed that as these participants aged, those with a higher rate of regular moderate physical activity like walking (especially brisk-paced walking) had a lower risk of cardiovascular disease.\r\n</p>\r\n<h3>3. LOWER YOUR BLOOD PRESSURE</h3>\r\n\r\n<p>It’s not exactly news that walking can help lower your risk of high blood pressure, high cholesterol and diabetes, but it is surprising that a brisk walk can do just as much good as running, according to findings reported in the American Heart Association journal Arteriosclerosis, Thrombosis and Vascular Biology. In the study, researchers analyzed 33,060 runners in the National Runners’ Health Study and 15,045 walkers in the National Walkers’ Health Study. The results showed that over six years, there were similar reductions in risk for high blood pressure, high cholesterol and diabetes in both groups. So even if you have to skip a run for a few days, try to add extra blocks of walking to keep the same health benefits, if not the caloric burn.<p>\r\n\r\n\"<img src=\"css/img/solutions/4.jpg\">\"\r\n\r\n\r\n<h3>4. NEGATE AIR POLLUTION</h3>\r\n\r\n<p>According to a recent study led by researchers from the Centre for Diet and Activity Research and the University of Cambridge, the health benefits of walking easily outweigh the negative effects on health of air pollution. So the rationalization that you shouldn’t walk in a busy city for fear of breathing in polluted air is pretty weak. Plus, by walking more and driving less, you’re helping the environment and reducing your carbon footprint.</p>\r\n\r\n<h3>5. SAVE MONEY</h3>\r\n\r\n<p>Similarly, if you walk errands, you’re saving money on gas for your car, while also spending time in nature — and possibly time with friends if you find neighbors to walk with, says Bowman. This could also save money because as you try to convert errands from driving to walking, you quickly begin to pare down what you actually need. For example: Instead of impulse buying at the grocery store, you’re limited by how much you can carry. (Pro tip: Carrying groceries adds a bonus strength-training element to your walk!)</p>\r\n\r\n<h3>6. MAKE LIFE HARD AGAIN</h3>\r\n\r\n<p>Even if you’re walking to the grocery store and not into the forest to forage for dinner (though that’s certainly an awesome option!), Bowman writes in her most recent book “Movement Matters,” that we should strive to make life more challenging. We have it too easy: fast food, grocery delivery, cars and even strollers — all make life a lot less physically taxing, and a lot less healthy. She recommends that people try to build as much movement as possible into their day: Walking to buy groceries to make dinner, carrying kids instead of putting them in the stroller for the whole walk, and generally adding more physical challenge to your day. You’ll be stronger, healthier and happier for it.</p>\r\n\r\n<h3>7. EASE DEPRESSION AND BOOST MOOD</h3>\r\n\r\n<p>Getting outside in nature boosts our mood. As runners, we certainly know this already. But studies have backed this up, and even added that a walk in nature might be enough to help cure or ease some of the effects of major depression. Marc Berman, a post-doctoral fellow at Baycrest’s Rotman Research Institute in Toronto, with partners from the University of Michigan and Stanford University, led a massive study now published in the Journal of Affective Disorders that showed walking in nature, compared with walking in a busy urban environment, actually improved memory performance for study participants suffering from clinical depression. While it’s not a miracle cure, if you can ease the stress of a bad day by taking a quick walk in the park, that’s pretty great news  — and an easy, healthy fix. </p>', '\"css/img/solutions/3.jpg\"'),
(3, '2', 'Walking with health conditions', 'If you have problems with your health, or if you\'ve had them in the past, it can be hard to stay active.\r\nBut walking could make all the difference. It\'s a low impact exercise, so it\'s easy for you to get involved - even if you\'re not feeling your best. In fact, walking could help you feel great again!', '<p>But walking could make all the difference. It\'s a low impact exercise, so it\'s easy for you to get involved - even if you\'re not feeling your best. In fact, walking could help you feel great again!</p>\r\n \r\n<p>Joining one of our walks with a trained walk leader could help you feel more confident about taking those first steps to a more active lifestyle. And for people with certain health conditions, there\'s some helpful information here too:</p>', '\"css/img/solutions/5.jpg\"'),
(4, '3', 'The First ‘R’ – Reduce', 'The concept of reducing what is produced and what is consumed is essential to the waste hierarchy. The logic behind it is simple to understand – if there is less waste, then there is less to recycle or reuse. The process of reducing begins with an examination of what you are using, and what it is used for. There are three simple steps to assessing the reduction value of an item or process', '\r\n   <p> Is there something else that can be used for this purpose? Using multi-use items is essential to beginning reduction. One example would be a coffeepot and a cappuccino maker. Both of them do distinctly different things, but you can buy a coffeepot that has a steaming attachment on it so it can do both. The purchase of the one item means that you don’t use two. It reduces the amount of production, and the amount of waste packaging material that will be generated.</p>\r\n\r\n   <p> Is this something that needs to be done? A lot of our waste material comes from items that are considered to be “disposable.” Not in the sense that you use something once and then throw it away, that can actually be a part of environmental responsibility when you are working with medical items – disposable in this sense means whether or not what the item allows you to do has any real meaning or purpose.</p>\r\n\r\n   <p> Is the item a part of something that you need to do, or want to do in your life? There is a limit to what you need to be prepared for in life. Chances are you won’t need a car that is equipped to handle a sandstorm in the desert. Buying one encourages production, wastes your resources and creates more generative waste than you can imagine. Always make sure that what you consume, or keep in your life as preparation – matches the reality of potential opportunity in your life.</p>\r\n', '\"css/img/solutions/6.jpg\"');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `reserves`
--
ALTER TABLE `reserves`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `reserves`
--
ALTER TABLE `reserves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
