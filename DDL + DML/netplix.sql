-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 06:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netplix`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actor_id` char(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `name`, `image_url`) VALUES
('ACT001', 'Timothée Chalamet', 'https://image.tmdb.org/t/p/w500/8jNFfNmqHVqLHnGnxgu7y8xgRIa.jpg'),
('ACT002', 'Rebecca Ferguson', 'https://image.tmdb.org/t/p/w500/6NRlV9oUipeak7r00V6k73Jb7we.jpg'),
('ACT003', 'Oscar Isaac', 'https://image.tmdb.org/t/p/w500/dW5U5yrIIPmMjRThR9KT2xH6nTz.jpg'),
('ACT004', 'Tom Hardy', 'https://image.tmdb.org/t/p/w500/sGMA6pA2D6X0gun49igJT3piHs3.jpg'),
('ACT005', 'Woody Harrelson', 'https://image.tmdb.org/t/p/w500/igxYDQBbTEdAqaJxaW6ffqswmUU.jpg'),
('ACT006', 'Michelle Williams', 'https://image.tmdb.org/t/p/w500/sXTP6wlqIDz1tDGLU3DFbklSTpq.jpg'),
('ACT007', 'Jamie Lee Curtis', 'https://image.tmdb.org/t/p/w500/5o4tpG9UB6Z39g41utbPcACDSUK.jpg'),
('ACT008', 'Judy Greer', 'https://image.tmdb.org/t/p/w500/1vS2nz4VnUtOJCAeCzZlKf5DnK7.jpg'),
('ACT009', 'Andi Matichak', 'https://image.tmdb.org/t/p/w500/8XGIcVo5flyPKIbaEQiw8cMXgBj.jpg'),
('ACT010', 'Ryan Reynolds', 'https://image.tmdb.org/t/p/w500/4SYTH5FdB0dAORV98Nwg3llgVnY.jpg'),
('ACT011', 'Jodie Comer', 'https://image.tmdb.org/t/p/w500/va8pcuzXodVLYUQLjB1USZVB6gz.jpg'),
('ACT012', 'Lil Rel Howery', 'https://image.tmdb.org/t/p/w500/9MDi35Fy6ym7SYbO3B04vf1vBnm.jpg'),
('ACT013', 'Freddie Highmore', 'https://image.tmdb.org/t/p/w500/4haqYYQJFhFe9Poqb26Xpuj1VJk.jpg'),
('ACT014', 'Astrid Bergès-Frisbey', 'https://image.tmdb.org/t/p/w500/wfiBo3Xeqnl2qBbKi47kHrxs0xI.jpg'),
('ACT015', 'Sam Riley', 'https://image.tmdb.org/t/p/w500/qe9ygdMjwEZyagyjGAo7uuvmNUE.jpg'),
('ACT016', 'Henry Golding', 'https://image.tmdb.org/t/p/w500/iiTLFGXgMrobajYvgpvZxQNqFvy.jpg'),
('ACT017', 'Andrew Koji', 'https://image.tmdb.org/t/p/w500/oU53nWLQ6wFHzERwSi1fD53LxZB.jpg'),
('ACT018', 'Haruka Abe', 'https://image.tmdb.org/t/p/w500/9PAgEXZqh2mstkDk79ykMsPbsJN.jpg'),
('ACT019', 'Charlize Theron', 'https://image.tmdb.org/t/p/w500/gd7ShD0yt4bsR2STeQ19KQ6hvXL.jpg'),
('ACT020', 'Javon \'Wanna\' Walton', 'https://image.tmdb.org/t/p/w500/u9fx8Z5MGjfDmD0kbxhrio0ZOh3.jpg'),
('ACT021', 'Michael Keaton', 'https://image.tmdb.org/t/p/w500/baeHNv3qrVsnApuKbZXiJOhqMnw.jpg'),
('ACT022', 'Maggie Q', 'https://image.tmdb.org/t/p/w500/1Z0A8axunWqZrskGkfANv6W5qCl.jpg'),
('ACT023', 'Samuel L. Jackson', 'https://image.tmdb.org/t/p/w500/mXN4Gw9tZJVKrLJHde2IcUHmV3P.jpg'),
('ACT024', 'Yılmaz Erdoğan', 'https://image.tmdb.org/t/p/w500/e16Q5H7nRGzLCUk8JQSpp5166ko.jpg'),
('ACT025', 'Ahmet Mümtaz Taylan', 'https://image.tmdb.org/t/p/w500/zLf8XKuIKJbjqUzHjUFS98Ast7t.jpg'),
('ACT026', 'Cem Yiğit Üzümoğlu', 'https://image.tmdb.org/t/p/w500/auqXftFUJZQGilSHzDWEWxYhREC.jpg'),
('ACT027', 'Rica Matsumoto', 'https://image.tmdb.org/t/p/w500/ykm6ZpLcX5wblCNp7rOAoZpCh3L.jpg'),
('ACT028', 'Ikue Otani', 'https://image.tmdb.org/t/p/w500/my8LBLQ4MsK4hRz1PAATIqtieaI.jpg'),
('ACT029', 'Moka Kamishiraishi', 'https://image.tmdb.org/t/p/w500/aBF4RdFWZbxyYVnQslgl3F5uCzR.jpg'),
('ACT030', 'Brad Dourif', 'https://image.tmdb.org/t/p/w500/z2LYR7Ickql7g5hnWJSIAWMPD4o.jpg'),
('ACT031', 'Zackary Arthur', 'https://image.tmdb.org/t/p/w500/52Xse0tzUuzO8xmDFBCtALBGe7o.jpg'),
('ACT032', 'Teo Briones', 'https://image.tmdb.org/t/p/w500/pHvQGSRqdDr7ibmlvnSNDHkqgAH.jpg'),
('ACT033', 'Lee Jung-jae', 'https://image.tmdb.org/t/p/w500/s3Sv4bZORQ5DuZJahgU2X0RgMUQ.jpg'),
('ACT034', 'Park Hae-soo', 'https://image.tmdb.org/t/p/w500/hfejrQ8gjRWCheiKpJANajXT0xi.jpg'),
('ACT035', 'Jung Ho-yeon', 'https://image.tmdb.org/t/p/w500/2nKZaOgwpJbJXegDISQIdfsfnm0.jpg'),
('ACT036', 'Rachael Ray', 'https://image.tmdb.org/t/p/w500/dA1ig6TLanb4JzjygPvSvvop5se.jpg'),
('ACT037', 'Ashi Singh', 'https://image.tmdb.org/t/p/w500/2VUcBy81op9DlS9RDmIotMVLolL.jpg'),
('ACT038', 'Abha Parmar', 'https://image.tmdb.org/t/p/w500/8a2bqGLT43QSFYg7gT88E8YShcS.jpg'),
('ACT039', 'Penn Badgley', 'https://image.tmdb.org/t/p/w500/cWvqsJyD8wLZ9GXs2DqqepBIfdD.jpg'),
('ACT040', 'Victoria Pedretti', 'https://www.themoviedb.org/t/p/original/ysYzRGNqYXWj0bl9b2zr0w9i2yD.jpg'),
('ACT041', 'Saffron Burrows', 'https://image.tmdb.org/t/p/w500/2qMLZh9XWquBt7TZF9wmDiOtJdm.jpg'),
('ACT042', 'Tom Ellis', 'https://image.tmdb.org/t/p/w500/zhjIyqpk5bsYgxsh5bSeS6VZtHm.jpg'),
('ACT043', 'Lauren German', 'https://image.tmdb.org/t/p/w500/wlfew4J9O6fOhizjjQtqUeT36Jb.jpg'),
('ACT044', 'Kevin Alejandro', 'https://image.tmdb.org/t/p/w500/bh4aQqP7kJzL2Ls9tj5OmhsBlqi.jpg'),
('ACT045', 'Alex Trebek', 'https://image.tmdb.org/t/p/w500/wRUDQpssSwgj0R39XrHFrU3Myf.jpg'),
('ACT046', 'Asa Butterfield', 'https://image.tmdb.org/t/p/w500/hMDIBO0QcOydD0UtfeDjTR7mhi6.jpg'),
('ACT047', 'Gillian Anderson', 'https://image.tmdb.org/t/p/w500/60fOJNhmfEmyskQDmHStSMHRjgK.jpg'),
('ACT048', 'Ncuti Gatwa', 'https://image.tmdb.org/t/p/w500/zc7x4xSaSUb85PBYUj7sXu17NvT.jpg'),
('ACT049', 'Richard Schiff', 'https://image.tmdb.org/t/p/w500/cHYHhPvyznOJrw0yEqndhYK2GnQ.jpg'),
('ACT050', 'Hill Harper', 'https://image.tmdb.org/t/p/w500/bUzVvgD066zYGJ9amJzgoGivlqD.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `show_id` char(6) NOT NULL,
  `actor_id` char(6) NOT NULL,
  `character_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`show_id`, `actor_id`, `character_name`) VALUES
('SHW001', 'ACT001', 'Paul Atreides'),
('SHW001', 'ACT002', 'Lady Jessica'),
('SHW001', 'ACT003', 'Duke Leto Atreides'),
('SHW002', 'ACT004', 'Eddie Brock / Venom'),
('SHW002', 'ACT005', 'Cletus Kasady / Carnage'),
('SHW002', 'ACT006', 'Anne Weying'),
('SHW003', 'ACT007', 'Laurie Strode'),
('SHW003', 'ACT008', 'Karen Nelson'),
('SHW003', 'ACT009', 'Allyson Nelson'),
('SHW004', 'ACT010', 'Guy'),
('SHW004', 'ACT011', 'Millie Rusk / Molotov Girl'),
('SHW004', 'ACT012', 'Buddy'),
('SHW005', 'ACT013', 'Thom Laybrick'),
('SHW005', 'ACT014', 'Lorraine'),
('SHW005', 'ACT015', 'James'),
('SHW006', 'ACT016', 'Snake Eyes'),
('SHW006', 'ACT017', 'Tommy / Storm Shadow'),
('SHW006', 'ACT018', 'Akiko'),
('SHW007', 'ACT003', 'Gomez Addams (voice)'),
('SHW007', 'ACT019', 'Morticia Addams (voice)'),
('SHW007', 'ACT020', 'Pugsley Addams (voice)'),
('SHW008', 'ACT021', 'Rembrandt'),
('SHW008', 'ACT022', 'Anna'),
('SHW008', 'ACT023', 'Moody'),
('SHW009', 'ACT024', 'Harun'),
('SHW009', 'ACT025', 'Cevat'),
('SHW009', 'ACT026', 'Tuncay'),
('SHW010', 'ACT027', 'Satoshi (voice)'),
('SHW010', 'ACT028', 'Pikachu (voice)'),
('SHW010', 'ACT029', 'Coco (voice)'),
('SHW011', 'ACT030', 'Chucky (voice)'),
('SHW011', 'ACT031', 'Jake Webber'),
('SHW011', 'ACT032', 'Junior Webber'),
('SHW012', 'ACT033', 'Seong Gi-hun / \"No. 456\"'),
('SHW012', 'ACT034', 'Cho Sang-woo / \"No. 218\"'),
('SHW012', 'ACT035', 'Kang Sae-byeok / \"No. 067\"'),
('SHW013', 'ACT036', 'Self - Host'),
('SHW015', 'ACT037', 'Meet Hooda'),
('SHW015', 'ACT038', 'Amma'),
('SHW016', 'ACT039', 'Joe Goldberg'),
('SHW016', 'ACT040', 'Love Quinn'),
('SHW016', 'ACT041', 'Dottie Quinn'),
('SHW017', 'ACT042', 'Lucifer Morningstar / Michael'),
('SHW017', 'ACT043', 'Chloe Decker'),
('SHW017', 'ACT044', 'Dan Espinoza'),
('SHW018', 'ACT045', 'Alex Trebek'),
('SHW019', 'ACT046', 'Otis Milburn'),
('SHW019', 'ACT047', 'Jean Milburn'),
('SHW019', 'ACT048', 'Eric Effiong'),
('SHW020', 'ACT013', 'Shaun Murphy'),
('SHW020', 'ACT049', 'Aaron Glassman'),
('SHW020', 'ACT050', 'Marcus Andrews');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` char(6) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
('GEN011', 'Action'),
('GEN005', 'Adventure'),
('GEN010', 'Animation'),
('GEN007', 'Comedy'),
('GEN014', 'Crime'),
('GEN009', 'Drama'),
('GEN012', 'Family'),
('GEN003', 'Fantasy'),
('GEN001', 'Horror'),
('GEN002', 'Mystery'),
('GEN008', 'Science Fiction'),
('GEN006', 'Soap'),
('GEN013', 'Talk'),
('GEN004', 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `show_id` char(6) NOT NULL,
  `user_id` char(6) NOT NULL,
  `rating` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`show_id`, `user_id`, `rating`, `body`, `review_date`) VALUES
('SHW001', 'USR005', 9, 'This is a great show', '2021-10-26'),
('SHW002', 'USR013', 5, 'this is michael review', '2021-12-14'),
('SHW003', 'USR004', 6, 'Quite good', '2021-10-26'),
('SHW004', 'USR008', 3, 'This is a bad show', '2021-10-26'),
('SHW004', 'USR011', 8, 'vey awesome movie', '2021-12-16'),
('SHW005', 'USR002', 10, 'I really like this show. It\'s very interesting', '2021-10-26'),
('SHW006', 'USR011', 5, 'Filmnya bagus bangedssss', '2021-12-14'),
('SHW007', 'USR003', 8, 'Wow. Amazing show!', '2021-10-26'),
('SHW008', 'USR010', 5, 'Bad!', '2021-10-26'),
('SHW008', 'USR011', 5, 'Good review', '2021-12-12'),
('SHW009', 'USR006', 6, 'Watching this show with your friends and family', '2021-10-26'),
('SHW010', 'USR001', 5, 'I don\'t like show like this', '2021-10-26'),
('SHW011', 'USR005', 4, 'What a bad show!', '2021-10-26'),
('SHW014', 'USR011', 5, 'test review', '2021-12-12'),
('SHW015', 'USR004', 7, 'You can watch this show. It\'s really cool', '2021-10-26'),
('SHW016', 'USR011', 5, 'Hello this is my review', '2021-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `show`
--

CREATE TABLE `show` (
  `show_id` char(6) NOT NULL,
  `category_id` char(6) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `director` varchar(50) NOT NULL,
  `release_date` date NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `bg_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show`
--

INSERT INTO `show` (`show_id`, `category_id`, `title`, `description`, `director`, `release_date`, `image_url`, `bg_url`) VALUES
('SHW001', 'SHC001', 'Dune', 'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet\'s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity\'s greatest potential-only those who can conquer their fear will survive.', 'Denis Villeneuve', '2021-09-15', 'https://image.tmdb.org/t/p/w500/d5NXSklXo0qyIYkgV94XAgMIckC.jpg', 'https://image.tmdb.org/t/p/w500/eeijXm3553xvuFbkPFkDG6CLCbQ.jpg'),
('SHW002', 'SHC001', 'Venom: Let There Be Carnage', 'After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.', 'Andy Serkis', '2021-09-30', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1MJNcPZy46hIy2CmSqOeru0yr5C.jpg', 'https://image.tmdb.org/t/p/w500/lNyLSOKMMeUPr1RsL4KcRuIXwHt.jpg'),
('SHW003', 'SHC001', 'Halloween Kills', 'Minutes after Laurie Strode, her daughter Karen and granddaughter Allyson left masked monster Michael Myers caged and burning in Laurie\'s basement, Laurie is rushed to the hospital with life-threatening injuries, believing she finally killed her lifelong tormentor. But when Michael manages to free himself from Laurie\'s trap, his ritual bloodbath resumes. As Laurie fights her pain and prepares to defend herself against him, she inspires all of Haddonfield to rise up against their unstoppable monster. The Strode women join a group of other survivors of Michael\'s first rampage who decide to take matters into their own hands, forming a vigilante mob that sets out to hunt Michael down, once and for all.', 'David Gordon Green', '2021-10-14', 'https://image.tmdb.org/t/p/w500/qmJGd5IfURq8iPQ9KF3les47vFS.jpg', 'https://image.tmdb.org/t/p/w500/tDYwYktjFmpj92S2Qn4T3BcRgL.jpg'),
('SHW004', 'SHC001', 'Free Guy', 'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.', 'Shawn Levy', '2021-08-11', 'https://image.tmdb.org/t/p/w500/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg', 'https://image.tmdb.org/t/p/w500/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg'),
('SHW005', 'SHC001', 'The Vault', 'When an engineer learns of a mysterious, impenetrable fortress hidden under The Bank of Spain, he joins a crew of master thieves who plan to steal the legendary lost treasure locked inside while the whole country is distracted by Spain\'s World Cup Final. With thousands of soccer fans cheering in the streets, and security forces closing in, the crew have just minutes to pull off the score of a lifetime.', 'Jaume Balagueró', '2021-03-03', 'https://image.tmdb.org/t/p/w500/kWhXubAiIcHW0xn5GThflqaKZqh.jpg', 'https://image.tmdb.org/t/p/w500/eBGKU0ZLJmxtVtzESTB1mfllX1J.jpg'),
('SHW006', 'SHC001', 'Snake Eyes: G.I. Joe Origins', 'After saving the life of their heir apparent, tenacious loner Snake Eyes is welcomed into an ancient Japanese clan called the Arashikage where he is taught the ways of the ninja warrior. But, when secrets from his past are revealed, Snake Eyes\' honor and allegiance will be tested – even if that means losing the trust of those closest to him.', 'Robert Schwentke', '2021-07-22', 'https://image.tmdb.org/t/p/w500/uIXF0sQGXOxQhbaEaKOi2VYlIL0.jpg', 'https://image.tmdb.org/t/p/w500/aO9Nnv9GdwiPdkNO79TISlQ5bbG.jpg'),
('SHW007', 'SHC001', 'The Addams Family 2', 'The Addams get tangled up in more wacky adventures and find themselves involved in hilarious run-ins with all sorts of unsuspecting characters.', 'Conrad Vernon', '2021-10-01', 'https://image.tmdb.org/t/p/w500/ld7YB9vBRp1GM1DT3KmFWSmtBPB.jpg', 'https://image.tmdb.org/t/p/w500/wfrfxivLOBtGMC98tIr2LSOeKSe.jpg'),
('SHW008', 'SHC001', 'The Protégé', 'Rescued as a child by the legendary assassin Moody and trained in the family business, Anna is the world’s most skilled contract killer. When Moody, the man who was like a father to her and taught her everything she needs to know about trust and survival, is brutally killed, Anna vows revenge. As she becomes entangled with an enigmatic killer whose attraction to her goes way beyond cat and mouse, their confrontation turns deadly and the loose ends of a life spent killing will weave themselves ever tighter.', 'Martin Campbell', '2021-08-19', 'https://image.tmdb.org/t/p/w500/o9FY8N5c8CXf22q8s4CmRRjAQJx.jpg', 'https://image.tmdb.org/t/p/w500/4O40vu2KOgnFfxvrZgzBG6havQ.jpg'),
('SHW009', 'SHC001', 'Kin', 'Ahead of a promotion, a police chief becomes entangled in a deadly incident and uncovers an intrigue fueled by grudge that threatens his colleagues.', 'Türkan Derya', '2021-10-08', 'https://image.tmdb.org/t/p/w500/xSqtHT2DWbWBZ4dUvvMs6z1OfFK.jpg', 'https://image.tmdb.org/t/p/w500/ux6gkGSKNFtp2NFYxwYFxVWdnGa.jpg'),
('SHW010', 'SHC001', '劇場版ポケットモンスター ココ', 'In the Forest of Okoya, Koko is a feral child who has been raised as a Pokémon by the Mythical Pokémon Zarude. Koko has grown up never doubting that he is a Pokémon even though he can\'t really use any sort of moves. Ash Ketchum and Pikachu meet Koko and help him protect the Great Tree from the crooked scientist Dr. Zed.', 'Tetsuo Yajima', '2020-12-25', 'https://image.tmdb.org/t/p/w500/vGcHyV9s1N2I7bJLSBODvqHTYLL.jpg', 'https://image.tmdb.org/t/p/w500/4KpNHvQIjyg1YFovRAoUXoFrGnR.jpg'),
('SHW011', 'SHC002', 'Chucky', 'After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.', 'David Kirschner', '2021-10-12', 'https://image.tmdb.org/t/p/w500/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg', 'https://image.tmdb.org/t/p/w500/xAKMj134XHQVNHLC6rWsccLMenG.jpg'),
('SHW012', 'SHC002', 'Squid Game', 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games—with high stakes. But, a tempting prize awaits the victor.', 'Hwang Dong-hyuk', '2021-09-17', 'https://image.tmdb.org/t/p/w500/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg', 'https://image.tmdb.org/t/p/w500/qw3J9cNeLioOLoR68WX7z79aCdK.jpg'),
('SHW013', 'SHC002', 'Rachael Ray', 'Rachael Ray, also known as The Rachael Ray Show, is an American talk show starring Rachael Ray that debuted in syndication in the United States and Canada on September 18, 2006. It is filmed at Chelsea Television Studios in New York City. The show\'s 8th season premiered on September 9, 2013, and became the last Harpo show in syndication to switch to HD with a revamped studio. In January 2012, CBS Television Distribution announced a two-year renewal for the show, taking it through the 2013–14 season.', '-', '2006-09-18', 'https://image.tmdb.org/t/p/w500/dsAJhCLYX1fiNRoiiJqR6Up4aJ.jpg', 'https://image.tmdb.org/t/p/w500/oC9SgtJTDCEpWnTBtVGoAvjl5hb.jpg'),
('SHW014', 'SHC002', 'Haireta mou ton Platano', 'The small Greek village of Platanos (Plane Tree) buries the elderly recluse Vangelas and notifies the deceased\'s estranged children and grandchildren about his death. Vangela\'s will leaves 3 million euros to his family, but requires them to move to the village and obey certain terms in order to inherit.', 'Andreas Morfonios', '2020-10-12', 'https://image.tmdb.org/t/p/w500/vAu6or1W4G1q7wJxQfDmATtnIg.jpg', 'https://image.tmdb.org/t/p/w780/5OVpESIS06U4cSpAyLuaUiwTtqf.jpg'),
('SHW015', 'SHC002', 'Meet', 'Despite her efforts to provide for her family, Meets disregard for societal gender norms and her nonconformist job as a delivery agent make her an unsuitable girl in the eyes of her family.', 'Shashi Mittal', '2021-08-23', 'https://image.tmdb.org/t/p/w500/9X7FovF5n8NQUHUPJYYfxRlF3yp.jpg', 'https://image.tmdb.org/t/p/w500/fCgTw8Tpe6R5SyB1UnLad2gPbq4.jpg'),
('SHW016', 'SHC002', 'You', 'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.', 'Greg Berlanti', '2018-09-09', 'https://image.tmdb.org/t/p/w500/yxIdKGEjagaLs5kMjw92kAHmopH.jpg', 'https://image.tmdb.org/t/p/w500/e92qfYRVYUL602ztyEoujUtXlS1.jpg'),
('SHW017', 'SHC002', 'Lucifer', 'Bored and unhappy as the Lord of Hell, Lucifer Morningstar abandoned his throne and retired to Los Angeles, where he has teamed up with LAPD detective Chloe Decker to take down criminals. But the longer he\'s away from the underworld, the greater the threat that the worst of humanity could escape.', 'Tom Kapinos', '2016-01-25', 'https://image.tmdb.org/t/p/w500/ekZobS8isE6mA53RAiGDG93hBxL.jpg', 'https://image.tmdb.org/t/p/w500/ccaZ3yyyC6rcMAQrlLZ51FpahNO.jpg'),
('SHW018', 'SHC002', 'Jeopardy!', 'America\'s favorite quiz show where contestants are presented with general knowledge clues in the form of answers, and must phrase their responses in question form.', 'Merv Griffin', '1984-09-10', 'https://image.tmdb.org/t/p/w500/11rWvQOEZBouD7wet0sWHwu7NDs.jpg', 'https://image.tmdb.org/t/p/w500/pLn4lsSBtGUY1whHyCoEJhgziaP.jpg'),
('SHW019', 'SHC002', 'Sex Education', 'Inexperienced Otis channels his sex therapist mom when he teams up with rebellious Maeve to set up an underground sex therapy clinic at school.', 'Laurie Nunn', '2019-01-11', 'https://image.tmdb.org/t/p/w500/8j12tohv1NBZNmpU93f47sAKBbw.jpg', 'https://image.tmdb.org/t/p/w500/bxU79lpl8ZQAVJ72155kqWkuqMu.jpg'),
('SHW020', 'SHC002', 'The Good Doctor', 'Shaun Murphy, a young surgeon with autism and savant syndrome, relocates from a quiet country life to join a prestigious hospital\'s surgical unit. Unable to personally connect with those around him, Shaun uses his extraordinary medical gifts to save lives and challenge the skepticism of his colleagues.', 'David Shore', '2017-09-25', 'https://image.tmdb.org/t/p/w500/cXUqtadGsIcZDWUTrfnbDjAy8eN.jpg', 'https://image.tmdb.org/t/p/w500/9OYu6oDLIidSOocW3JTGtd2Oyqy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `showcategory`
--

CREATE TABLE `showcategory` (
  `category_id` char(6) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showcategory`
--

INSERT INTO `showcategory` (`category_id`, `name`) VALUES
('SHC001', 'Movie'),
('SHC002', 'TV');

-- --------------------------------------------------------

--
-- Table structure for table `showgenre`
--

CREATE TABLE `showgenre` (
  `show_id` char(6) NOT NULL,
  `genre_id` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showgenre`
--

INSERT INTO `showgenre` (`show_id`, `genre_id`) VALUES
('SHW001', 'GEN005'),
('SHW001', 'GEN008'),
('SHW001', 'GEN009'),
('SHW001', 'GEN011'),
('SHW002', 'GEN008'),
('SHW002', 'GEN011'),
('SHW003', 'GEN001'),
('SHW003', 'GEN004'),
('SHW004', 'GEN005'),
('SHW004', 'GEN007'),
('SHW004', 'GEN008'),
('SHW004', 'GEN011'),
('SHW005', 'GEN004'),
('SHW005', 'GEN011'),
('SHW005', 'GEN014'),
('SHW006', 'GEN005'),
('SHW006', 'GEN011'),
('SHW007', 'GEN007'),
('SHW007', 'GEN010'),
('SHW007', 'GEN012'),
('SHW008', 'GEN004'),
('SHW008', 'GEN011'),
('SHW008', 'GEN014'),
('SHW009', 'GEN004'),
('SHW009', 'GEN009'),
('SHW009', 'GEN014'),
('SHW010', 'GEN005'),
('SHW010', 'GEN010'),
('SHW011', 'GEN003'),
('SHW011', 'GEN007'),
('SHW011', 'GEN008'),
('SHW011', 'GEN014'),
('SHW012', 'GEN002'),
('SHW012', 'GEN005'),
('SHW012', 'GEN009'),
('SHW012', 'GEN011'),
('SHW013', 'GEN013'),
('SHW014', 'GEN007'),
('SHW015', 'GEN006'),
('SHW015', 'GEN007'),
('SHW015', 'GEN009'),
('SHW016', 'GEN002'),
('SHW016', 'GEN009'),
('SHW016', 'GEN014'),
('SHW017', 'GEN003'),
('SHW017', 'GEN008'),
('SHW017', 'GEN014'),
('SHW018', 'GEN013'),
('SHW019', 'GEN007'),
('SHW019', 'GEN009'),
('SHW020', 'GEN009');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` char(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `date_joined` date NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `id`, `name`, `email`, `password`, `dob`, `date_joined`, `phone`, `image_url`) VALUES
('USR000', 0, 'admin', 'admin@admin.com', '$2y$10$VUP5cYgFw0cHnDtivLy/XOAVqI/ckUWh8ZgkEPOrCtQ/uIqNFROOe', '1990-10-10', '2020-01-10', '084942916507', NULL),
('USR001', 1, 'Timothy Riley', 'timotheerailee@hotmail.com', '$2y$10$GyxdoB5b4qx9qqZ.nZKHaeRTkYNTSoqpLCRZTI0dVk.8hPUmUgL..', '1928-05-22', '2020-02-14', '0807609134', 'https://randomuser.me/api/portraits/men/74.jpg'),
('USR002', 2, 'Dawn Allen', 'dawnhascome@allen.info', '$2y$10$7f5q09rstc2prJUALmT4aOHAw5oAr9DQY6AD7LePIsBI0xAVHrLWS', '1910-07-04', '2020-03-15', '08776174368', 'https://randomuser.me/api/portraits/women/72.jpg'),
('USR003', 3, 'Sara Cox', 'saracox189@gmail.com', '$2y$10$B7vCPsmYZfgs4mmslbZmUuh7qGfYn5hscOJemp0N33dWA30LyRExS', '2001-10-10', '2020-05-30', '0821504128', 'https://randomuser.me/api/portraits/women/4.jpg'),
('USR004', 4, 'Matthew Miller', 'matthew125@miller.com', '$2y$10$QlUIWAWXarx90/VAKu2Zy.fHkUWFPBdbB3sEyiqBpClP3lzOB6hbG', '1968-12-14', '2021-02-10', '081900569303', 'https://randomuser.me/api/portraits/men/11.jpg'),
('USR005', 5, 'Sean Taylor', 'sean@taylor.biz', '$2y$10$RwCvQOh1s9wRJoH/DR8A9O4SkFfE3OLvsvebENRkuelSk1hc0P4iC', '1994-04-26', '2021-02-12', '0866099825', 'https://randomuser.me/api/portraits/men/14.jpg'),
('USR006', 6, 'Andrew Malone', 'andrewmalone@gmail.com', '$2y$10$oD3NqBhVRFLxhfq/TZBxvOo7YGSzcF5sz7/3WNLzVS2V.v8o5juES', '1978-04-23', '2021-02-22', '08545776862', 'https://randomuser.me/api/portraits/men/37.jpg'),
('USR007', 7, 'Madeline Price', 'madeline@price.com', '$2y$10$tL/OM36ILhNlfKtzB1lZaOQqOXNORWMnCSLPpl8DLcRKL1gFuNwoy', '1937-03-07', '2021-04-22', '0878943116', 'https://randomuser.me/api/portraits/women/24.jpg'),
('USR008', 8, 'Tyler Thompson', 'tylerthompson@hotmail.com', '$2y$10$Gv64rLghm/gIyKZoaaSG7.fqyk7phMJ8hhDp80p0uo3Pqi4z/9K2y', '1987-02-24', '2021-08-31', '0845416381', 'https://randomuser.me/api/portraits/men/66.jpg'),
('USR009', 9, 'Selena Jackson', 'selenajackson@hotmail.com', '$2y$10$quLlUeYuaaSwP472QwtcfuzQLzw2MNR45loxL.D65fVitnjjm8GB6', '1996-12-27', '2021-09-25', '083605566316', 'https://randomuser.me/api/portraits/women/9.jpg'),
('USR010', 10, 'Michael Williams', 'michael@williams.com', '$2y$10$WcaFbhKOZ0W5DhyIblmLx.mq1ApO9Xh9KmK.x8BrAbrvKirRmu1w6', '1953-08-12', '2021-10-10', '0878348763', 'https://randomuser.me/api/portraits/men/10.jpg'),
('USR011', 11, 'hans0221', 'hansgeovani@gmail.com', '$2y$10$r1v2LsBJYBbvzEB9L8orqu6orJVi0RxG1ydZEuxTvu0BBF2D5jBZm', '2002-10-02', '2021-12-11', '081572059272', 'https://images-ext-1.discordapp.net/external/3ed5GnsfHp5_lx76fQdf74pQ39WZhSj9B1r_u5H7Rac/https/media.npr.org/assets/img/2017/06/03/gettyimages-453879976-59801bc8f1f6bda5175c3098bb0d9a28696394be.jpg?width=894&height=670'),
('USR012', 12, 'rynef', 'ryneFerdinand@mail.com', '$2y$10$GSmB2gc1XmX.ufWMz3FL9.1KachBnJ.WH/QZ5QvBIxxXMWRpillYS', NULL, '2021-12-14', NULL, NULL),
('USR013', 13, 'michaelth', 'michaelth@mail.com', '$2y$10$GgTV3C4QdZrPACCD7xiPeeAIyuqvpSQMJVCrDwOZhoyv0X.HT46Sa', NULL, '2021-12-14', NULL, 'https://cdn.idntimes.com/content-images/community/2021/07/nezuko-after-emerging-from-the-box-56965fbaa68adf470a17cc45ea5d328d-003b722ff1440ff9da4783675e7a7da1_600x400.png');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `show_id` char(6) NOT NULL,
  `user_id` char(6) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`show_id`, `user_id`, `status`) VALUES
('SHW001', 'USR001', 'Watching'),
('SHW002', 'USR010', 'Completed'),
('SHW002', 'USR011', 'Finished'),
('SHW003', 'USR008', 'Planning'),
('SHW003', 'USR011', 'Planning'),
('SHW004', 'USR005', 'Watching'),
('SHW004', 'USR011', 'Planning'),
('SHW005', 'USR003', 'Watching'),
('SHW005', 'USR013', 'Planning'),
('SHW006', 'USR004', 'Planning'),
('SHW006', 'USR011', 'Watching'),
('SHW006', 'USR013', 'Planning'),
('SHW007', 'USR007', 'Completed'),
('SHW007', 'USR011', 'Planning'),
('SHW008', 'USR006', 'Completed'),
('SHW008', 'USR011', 'Planning'),
('SHW009', 'USR004', 'Watching'),
('SHW009', 'USR011', 'Planning'),
('SHW009', 'USR013', 'Planning'),
('SHW010', 'USR002', 'Planning'),
('SHW012', 'USR013', 'Planning'),
('SHW013', 'USR013', 'Planning'),
('SHW014', 'USR011', 'Planning'),
('SHW014', 'USR013', 'Planning'),
('SHW015', 'USR011', 'Planning'),
('SHW016', 'USR011', 'Planning'),
('SHW017', 'USR011', 'Planning'),
('SHW018', 'USR011', 'Planning'),
('SHW019', 'USR013', 'Planning'),
('SHW020', 'USR011', 'Planning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`show_id`,`actor_id`),
  ADD KEY `FK_cast_actor` (`actor_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`show_id`,`user_id`),
  ADD KEY `FK_review_user` (`user_id`);

--
-- Indexes for table `show`
--
ALTER TABLE `show`
  ADD PRIMARY KEY (`show_id`),
  ADD KEY `FK_show_showcategory` (`category_id`);

--
-- Indexes for table `showcategory`
--
ALTER TABLE `showcategory`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `showgenre`
--
ALTER TABLE `showgenre`
  ADD PRIMARY KEY (`show_id`,`genre_id`),
  ADD KEY `FK_showgenre_genre` (`genre_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `image_url` (`image_url`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`show_id`,`user_id`),
  ADD KEY `FK_watchlist_user` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `FK_cast_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cast_show` FOREIGN KEY (`show_id`) REFERENCES `show` (`show_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_review_show` FOREIGN KEY (`show_id`) REFERENCES `show` (`show_id`),
  ADD CONSTRAINT `FK_review_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `show`
--
ALTER TABLE `show`
  ADD CONSTRAINT `FK_show_showcategory` FOREIGN KEY (`category_id`) REFERENCES `showcategory` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `showgenre`
--
ALTER TABLE `showgenre`
  ADD CONSTRAINT `FK_showgenre_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_showgenre_show` FOREIGN KEY (`show_id`) REFERENCES `show` (`show_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `FK_watchlist_show` FOREIGN KEY (`show_id`) REFERENCES `show` (`show_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_watchlist_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
