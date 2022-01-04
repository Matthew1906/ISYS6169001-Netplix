-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 06:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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
  `dob` date NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `popularity` double NOT NULL,
  `biography` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `name`, `dob`, `image_url`, `place_of_birth`, `gender`, `popularity`, `biography`) VALUES
('ACT001', 'Tom Holland', '1996-06-01', 'https://image.tmdb.org/t/p/w500/2qhIDp44cAqP2clOgt2afQI07X8.jpg', 'Surrey, England, UK', 'Male', 135.488, 'Thomas \"Tom\" Stanley Holland is an English actor and dancer. He is best known for playing Peter Parker / Spider-Man in the Marvel Cinematic Universe and has appeared as the character in six films: Captain America: Civil War (2016), Spider-Man: Homecoming (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), Spider-Man: Far From Home (2019), and Spider-Man: No Way Home (2021). He is also known for playing the title role in Billy Elliot the Musical at the Victoria Palace Theatre, London, as well as for starring in the 2012 film The Impossible.'),
('ACT002', 'Zendaya', '1996-09-01', 'https://image.tmdb.org/t/p/w500/jHWlWOasiqKS8JI40g9GDH5X6AL.jpg', 'Oakland, California, USA', 'Female', 57.107, 'Zendaya Maree Stoermer Coleman (born September 1, 1996) is an American actress and singer. She began her career as a child model and backup dancer. She rose to mainstream prominence for her role as Rocky Blue on the Disney Channel sitcom Shake It Up (2010–2013). In 2013, Zendaya was a contestant on the 16th season of the dance competition series Dancing with the Stars. She produced and starred as the titular spy, K.C. Cooper, in the sitcom K.C. Undercover (2015–2018). Her performance as a struggling, drug addict teenager in the HBO drama series Euphoria (2019–present) made her the youngest recipient of the Primetime Emmy Award for Outstanding Lead Actress in a Drama Series. Her film roles include the musical drama The Greatest Showman (2017), the superhero film Spider-Man: Homecoming (2017) and its sequels, the computer-animated musical comedy Smallfoot (2018), the romantic drama Malcolm & Marie (2021), the live-action/animation hybrid sports comedy Space Jam: A New Legacy (2021), and the science fiction epic Dune (2021).'),
('ACT003', 'Benedict Cumberbatch', '1976-07-19', 'https://image.tmdb.org/t/p/w500/fBEucxECxGLKVHBznO0qHtCGiMO.jpg', ' London, England, UK', 'Male', 34.786, 'Benedict Timothy Carlton Cumberbatch (born 19 July 1976) is an English actor. He first performed at the Open Air Theatre, Regent\'s Park in Shakespearean productions, and made his West End debut in Richard Eyre\'s revival of Hedda Gabler in 2005. Since then, he has starred in the Royal National Theatre productions After the Dance (2010) and Frankenstein (2011). In 2015, he played the title role in Hamlet at the Barbican Theatre.  His television work includes appearances in Silent Witness (2002) and Fortysomething (2003) before playing Stephen Hawking in the television film Hawking (2004). He has starred as Sherlock Holmes in the series Sherlock since 2010. He has also headlined Tom Stoppard\'s adaptation of Parade\'s End (2012), The Hollow Crown: The Wars of the Roses (2016), and Patrick Melrose (2018). In the film, he has starred in Amazing Grace (2006), Star Trek Into Darkness (2013), 12 Years a Slave (2013), The Fifth Estate (2013), and The Imitation Game (2014). He also made a brief appearance in 1917 (2019). From 2012 to 2014, through voice and motion capture, he played the characters of Smaug and the Necromancer in The Hobbit film series. In superhero films set in the Marvel Cinematic Universe, he has played Dr. Stephen Strange in Doctor Strange (2016), Thor: Ragnarok (2017), Avengers: Infinity War (2018), and Avengers: Endgame (2019).  He has received numerous accolades, including the Laurence Olivier Award for Best Actor for Frankenstein, and the Primetime Emmy Award for Outstanding Lead Actor in a Miniseries or a Movie for Sherlock. His performance in The Imitation Game earned him a nomination for the Academy Award for Best Actor. In 2015, he was appointed a CBE in the 2015 Birthday Honours for services to the performing arts and to charity.  The description above is from the Wikipedia article Benedict Cumberbatch, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT004', 'Jacob Batalon', '1996-06-06', 'https://image.tmdb.org/t/p/w500/53YhaL4xw4Sb1ssoHkeSSBaO29c.jpg', 'Honolulu, Hawaii, USA', 'Male', 24.467, 'Jacob Batalon is an American actor, best known for his role as Ned Leeds in the Marvel Cinematic Universe films Spider-Man: Homecoming, Avengers: Infinity War, Avengers: Endgame, Spider-Man: Far From Home, and the upcoming third Spider-Man film.'),
('ACT005', 'Jon Favreau', '1966-10-19', 'https://image.tmdb.org/t/p/w500/8MtRRnEHaBSw8Ztdl8saXiw1egP.jpg', 'Queens, New York, USA', 'Male', 13.416, 'Jonathan Kolia Favreau (/ˈfævroʊ/; born October 19, 1966) is an American actor, director, producer and screenwriter.  As an actor, Favreau has appeared in the films Rudy (1993), PCU (1994), Swingers (1996), Very Bad Things (1998), The Replacements (2000), Daredevil (2003), The Break-Up (2006), Couples Retreat (2009), I Love You, Man (2009), The Wolf of Wall Street (2013), and Chef (2014).  As a filmmaker, Favreau has been significantly involved with the Marvel Comics franchise, particularly in collaboration with Robert Downey Jr. He directed, produced, and appeared as Happy Hogan in the films Iron Man (2008) and Iron Man 2 (2010). He also served as an executive producer for, and/or appeared as the character in, the films The Avengers (2012), Iron Man 3 (2013), Avengers: Age of Ultron (2015), Spider-Man: Homecoming (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), and Spider-Man: Far From Home (2019).  As a director, he worked on the films Elf (2003), Zathura: A Space Adventure (2005), Cowboys & Aliens (2011), Chef (2014), The Jungle Book (2016) and The Lion King (2019). Favreau is the creator of the Star Wars Disney+ original series The Mandalorian (2019–present) as well as one of its executive producers and directors. He also serves as a director and executive producer for its spin-off series The Book of Boba Fett. He produces films under his production company banner, Fairview Entertainment, and also presents the television cooking series The Chef Show.  Description above is from the Wikipedia article Jon Favreau, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT006', 'Stephanie Beatriz', '1981-02-10', 'https://image.tmdb.org/t/p/w500/pGo7zMGsMXOMSMZc68Xi3LvzeP0.jpg', 'Neuquén, Argentina', 'Female', 18.002, 'Stephanie Beatriz Bischoff Alvizuri (born 10 February 1981) is an American actress and model. She is best known for playing Detective Rosa Diaz in the NBC comedy series Brooklyn Nine-Nine and Jessica in the independent drama Short Term 12 (2013).  Description above from the Wikipedia article Stephanie Beatriz, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT007', 'María Cecilia Botero', '1955-05-13', 'https://image.tmdb.org/t/p/w500/nH6eBBgv1PI9J6Ftkn01ny1TMt1.jpg', 'Medellín, Colombia', 'Female', 13.8, 'María Cecilia Botero Cadavid (Medellín Antioquia, May 13, 1955) is a Colombian actress, presenter and journalist.'),
('ACT008', 'John Leguizamo', '1964-07-22', 'https://image.tmdb.org/t/p/w500/2P0LTIKMUZn7BG1q9S9e5FZFZkn.jpg', ' Bogotá, Colombia', 'Male', 6.437, 'John Leguizamo (born July 22, 1964) is a Colombian-American actor, comedian, voice artist, and producer. Leguizamo is of Puerto Rican and Colombian descent.'),
('ACT009', 'Mauro Castillo', '1978-06-06', 'https://image.tmdb.org/t/p/w500/qGNGBRyy9LumdFw32M7elnHP4IJ.jpg', 'Cali, Colombia', 'Male', 2.068, 'Mauricio Castillo Rivas (Cali, June 6, 1978) is a Colombian singer, composer, trombonist, actor and music producer. He became known mainly for his role as \"Wilson Manyoma\" in the soap opera El Joe, la leyenda and for being a former singer of Grupo Niche. He has a successful career in the musical and interpretative field in Colombia, Ecuador, Mexico and other Latin American countries. He has prepared songs for Oscar D\' León, Joe Arroyo and Naty Botero.'),
('ACT010', 'Jessica Darrow', '1995-01-07', 'https://image.tmdb.org/t/p/w500/rJojc1ZUasEnUxSk7lL42RxyQbP.jpg', 'None', 'Female', 3.826, ''),
('ACT011', 'Keanu Reeves', '1964-09-02', 'https://image.tmdb.org/t/p/w500/rRdru6REr9i3WIHv2mntpcgxnoY.jpg', 'Beirut, Lebanon', 'Male', 123.653, 'Keanu Charles Reeves is a Canadian actor. Reeves is known for his roles in Bill & Ted\'s Excellent Adventure, Speed, Point Break, and The Matrix trilogy as Neo. He has collaborated with major directors such as Stephen Frears (in the 1988 period drama Dangerous Liaisons); Gus Van Sant (in the 1991 independent film My Own Private Idaho); and Bernardo Bertolucci (in the 1993 film Little Buddha). Referring to his 1991 film releases, The New York Times\' critic, Janet Maslin, praised Reeves\' versatility, saying that he \"displays considerable discipline and range. He moves easily between the buttoned-down demeanor that suits a police procedural story and the loose-jointed manner of his comic roles.\" A repeated theme in roles he has portrayed is that of saving the world, including the characters of Ted Logan, Buddha, Neo, Johnny Mnemonic, John Constantine and Klaatu.'),
('ACT012', 'Carrie-Anne Moss', '1967-08-21', 'https://image.tmdb.org/t/p/w500/xD4jTA3KmVp5Rq3aHcymL9DUGjD.jpg', 'Burnaby, British Columbia, Canada', 'Female', 119.627, 'Carrie-Anne Moss is a Canadian film and television actress, best known for playing character Trinity in the feature film trilogy \"The Matrix\". She\'s a graduate of the American Academy of Dramatic Arts, Los Angeles, California, USA.'),
('ACT013', 'Yahya Abdul-Mateen II', '1987-06-15', 'https://image.tmdb.org/t/p/w500/aBDebGZs2pAucyaK4EhHVJGm0Xu.jpg', 'New Orleans, Louisiana, USA', 'Male', 21.5, 'Yahya Abdul-Mateen II (born July 15, 1986) is an American actor. He is best known for portraying David Kane/Black Manta in the DC Extended Universe superhero film Aquaman (2018), Bobby Seale in the Netflix historical legal drama Trial of the Chicago 7 (2020) and Cal Abar in the HBO limited series Watchmen (2019). For the latter, he won a Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or Movie.  After starring in the Netflix musical drama series The Get Down (2016–2017), Abdul-Mateen appeared in numerous films, including Baywatch (2017), The Greatest Showman (2017), and Us (2019).  Description above from the Wikipedia article Yahya Abdul-Mateen II, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT014', 'Jonathan Groff', '1985-03-26', 'https://image.tmdb.org/t/p/w500/3kmnYKAzSc3Lp7iK5pcj97Hx9Cm.jpg', 'Lancaster, Pennsylvania, USA', 'Male', 13.788, 'Jonathan Drew Groff (born March 26, 1985) is an American actor and singer known for his performances on stage, screen, and television. Groff is the recipient of a Grammy Award and has been nominated for two Tony Awards, two Drama League Awards, and a Drama Desk Award and an Emmy Award.  Groff rose to prominence in 2006 for his performance in the lead role of Melchior Gabor in the original Broadway production of Spring Awakening, for which he received widespread acclaim and was nominated for a 2007 Tony Award for Best Actor in a Leading Role in a Musical, becoming one of the youngest nominees for the award, at age 22. He returned to Broadway in 2015 to play the role of King George III of the United Kingdom in Hamilton, a performance for which he earned a nomination for a 2016 Tony Award for Best Actor in a Featured Role in a Musical. He also appeared on the cast recording, for which he received a 2016 Grammy Award for Best Musical Theater Album.  Groff is also known for his roles in television and film. He was a recurring guest star in the Fox musical-comedy series Glee (2009–2015) as Jesse St. James, and he was featured on four of its soundtrack albums, also making a special appearance in the concert tour Glee Live! In Concert! in 2010. He voiced the roles of Kristoff and Sven in the Disney animated films Frozen (2013) and Frozen II (2019), two of the highest-grossing films of all time. Groff starred as Patrick Murray in the HBO comedy-drama series Looking (2014–2015), often credited as one of the network\'s first gay TV series, and its subsequent series finale television film, Looking: The Movie (2016). Groff is also known for his starring role as FBI Special Agent Holden Ford in the critically-acclaimed Netflix period crime drama Mindhunter (2017–2019), produced by David Fincher. In 2021, he received a nomination for a Primetime Emmy Award for Outstanding Actor in a Supporting Role in a Limited Series or Movie for his performance in the Disney+ live stage recording of Hamilton which was released in 2020. In 2021, he guest starred on Invincible.  Groff stars in 2021\'s The Matrix Resurrections. Other upcoming projects include Molly and the Moon, and Lost Ollie.'),
('ACT015', 'Jessica Henwick', '1992-08-30', 'https://image.tmdb.org/t/p/w500/qPkDgznJkUK8ZxbqnVgQ7zJlfQT.jpg', 'Surrey, England', 'Female', 63.407, 'Jessica Yu Li Henwick (玉李) (born 30 August 1992) is an English actress. She is the first actress of East Asian descent to play the lead role in a British television series, having starred in the children\'s show Spirit Warriors. She is also known for her roles as Nymeria Sand in HBO series Game of Thrones, X-wing pilot Jessika Pava in the 2015 film Star Wars: The Force Awakens, and Colleen Wing in the Marvel Cinematic Universe, making her debut in the Netflix television series Iron Fist.'),
('ACT016', 'Tom Hardy', '1977-09-15', 'https://image.tmdb.org/t/p/w500/9bXUMLOBCcnhcUGtfw0pdqbvpiH.jpg', 'Hammersmith, London, England, UK', 'Male', 34.588, 'Edward Thomas \"Tom\" Hardy (born 15 September 1977) is an English actor. He is best known for playing the title character in the 2009 British film Bronson, and for his roles in the films Star Trek Nemesis, RocknRolla, and Inception. He has been cast in the Christopher Nolan film The Dark Knight Rises as Bane.'),
('ACT017', 'Woody Harrelson', '1961-07-23', 'https://image.tmdb.org/t/p/w500/igxYDQBbTEdAqaJxaW6ffqswmUU.jpg', 'Midland, Texas, USA', 'Male', 13.092, 'Academy Award-nominated and Emmy Award-winning actor Woodrow Tracy Harrelson was born on July 23, 1961 in Midland, Texas, to Diane Lou (Oswald) and Charles Harrelson. He grew up in Lebanon, Ohio, where his mother was from. After receiving degrees in theater arts and English from Hanover College, he had a brief stint in New York theater. He was soon cast as Woody on TV series Cheers (1982), which wound up being one of the most-popular TV shows ever and also earned Harrelson an Emmy for his performance in 1989.  While he dabbled in film during his time on Cheers (1982), that area of his career didn\'t fully take off until towards the end of the show\'s run. In 1991, Doc Hollywood (1991) gave him his first widely-seen movie role, and he followed that up with White Men Can\'t Jump (1992), Indecent Proposal (1993) and Natural Born Killers (1994). More recently, Harrelson was seen in No Country for Old Men (2007), Zombieland (2009), 2012 (2009), and Friends with Benefits (2011), along with the acclaimed HBO movie Game Change (2012).  In 2011, Harrelson snagged the coveted role of fan-favorite drunk Haymitch Abernathy in the big-screen adaptation of The Hunger Games (2012), which ended up being one of the highest-grossing movies ever at the domestic box office. Harrelson is set to reprise that role for the sequels, which are scheduled for release in November 2013, 2014 and 2015. Harrelson has received two Academy Award nominations, first for his role as controversial Hustler founder Larry Flynt in The People vs. Larry Flynt (1996) and then for a role in The Messenger (2009). He also received Golden Globe nominations for both of these parts. In 2016, he had a stand-out role as a wise teacher in the teen drama The Edge of Seventeen (2016).  Harrelson was briefly married to Nancy Simon in the 80s, and later married his former assistant, Laura Louie, with whom he has three daughters.'),
('ACT018', 'Michelle Williams', '1980-09-09', 'https://image.tmdb.org/t/p/w500/mfgKyigaQLI0NtZsaJRVlbUiMdX.jpg', 'Kalispell, Montana, USA', 'Female', 10.118, 'Michelle Ingrid Williams (born September 9, 1980) is an American actress. Known for her roles in small-scale independent productions with dark or tragic themes, Williams is the recipient of several accolades, including two Golden Globe Awards, a Primetime Emmy Award, and nominations for four Academy Awards, and a Tony Award.  Daughter of the politician and trader Larry R. Williams, she was raised in Kalispell and San Diego. She began her career with television guest appearances and made her film debut in the family film Lassie in 1994. At 15, she gained emancipation from her parents, and soon achieved recognition for her leading role in the television teen drama series Dawson\'s Creek (1998–2003). This was followed by low-profile films, before having her breakthrough with the drama film Brokeback Mountain (2005), for which she received a nomination for the Academy Award for Best Supporting Actress.  Williams went on to gain critical acclaim for playing emotionally troubled women coping with loss or loneliness in the independent dramas Wendy and Lucy (2008), Blue Valentine (2010), and Manchester by the Sea (2016). For the last two of these she received nominations for the Academy Award for Best Actress and the Academy Award for Best Supporting Actress, respectively. She won two Golden Globes for portraying Marilyn Monroe in the drama My Week with Marilyn (2011) and Gwen Verdon in the miniseries Fosse/Verdon (2019), in addition to a Primetime Emmy Award for Outstanding Lead Actress for the latter. Her highest-grossing releases came with the thriller Shutter Island (2010), the fantasy film Oz the Great and Powerful (2013), the musical The Greatest Showman (2017), and the superhero film Venom (2018). On Broadway, she starred in revivals of the musical Cabaret in 2014 and the drama Blackbird in 2016, for which she received a nomination for the Tony Award for Best Actress in a Play.  Williams is an advocate for equal pay. She is reticent about her personal life; she has a daughter from her relationship with the late actor Heath Ledger, and was briefly married to the musician Phil Elverum. She is married to theater director Thomas Kail, with whom she has a child.  Description above from the Wikipedia article Michelle Williams (actress), licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT019', 'Naomie Harris', '1976-09-06', 'https://image.tmdb.org/t/p/w500/pDFs4gSeKSyIF8PditvtHqAq687.jpg', 'Islington, London, England, UK', 'Female', 10.171, 'Naomie Melanie Harris (born 6 September 1976) is an English screen actress known for her breakout starring role as Selena in 28 Days Later, her supporting turns as Tia Dalma in the second and third Pirates of the Caribbean films and her portrayal of Eve Moneypenny in the James Bond franchise. In 2016, she received a nomination for the Academy Award for Best Supporting Actress for her performance in Moonlight'),
('ACT020', 'Reid Scott', '1977-11-19', 'https://image.tmdb.org/t/p/w500/kBAeDUDA7XJRXFLGNALlpE5d3lA.jpg', 'Albany, New York, USA', 'Male', 3.484, ''),
('ACT021', 'Kaya Scodelario', '1992-03-13', 'https://image.tmdb.org/t/p/w500/oKsGrXKGrcVoQJQ6pbjZDPOQJcM.jpg', 'London, England, U.K.', 'Female', 32.381, 'An English actress (Born March 13, 1992). She is best known for her roles as Effy Stonem on the E4 teen drama Skins (2007-2010; 2012), Catherine Earnshaw in Andrea Arnold\'s Wuthering Heights (2011), Teresa Agnes in The Maze Runner film series and Carina Smyth in Pirates of the Caribbean: Dead Men Tell No Tales (2017).'),
('ACT022', 'Robbie Amell', '1988-04-21', 'https://image.tmdb.org/t/p/w500/5MPx1TEdgPs9UEXV65nd80JikSH.jpg', 'Toronto, Ontario,  Canada', 'Male', 14.645, 'Robbie Amell (born April 21, 1988) is a Canadian actor, who is best known for his roles in Resident Evil: Welcome to Raccoon City, True Jackson, VP and Picture This as well as Fred Jones in Scooby-Doo! The Mystery Begins and Scooby-Doo! Curse of the Lake Monster.'),
('ACT023', 'Hannah John-Kamen', '1989-09-07', 'https://image.tmdb.org/t/p/w500/2dWMAk6l0KavjxZpR1P4ln7bxYg.jpg', 'Anlaby, East Yorkshire, England', 'Female', 15.051, 'Hannah Dominique E. John-Kamen (born 7 September 1989) is an English actress. She is known for her roles as Yalena \"Dutch\" Yardeen in Killjoys (2015–2019), Ornela in Game of Thrones (2016), F\'Nale Zandor in Ready Player One (2018), Ava Starr / Ghost in the MCU film Ant-Man and the Wasp (2018), and the title character in The Stranger (2020).  She began her career in 2011, providing voice work for the video game Dark Souls. She went on to make appearances in episodes of television series Misfits (2011), Black Mirror (2016), Whitechapel (2012), The Syndicate (2012), The Midnight Beast (2012), and The Hour (2012). From 2012 to 2013, she took the lead role of Viva in the Spice Girls-themed West End musical Viva Forever!  In 2015, she had a starring role in the SyFy series Killjoys. In 2016, she had a guest-star role on the HBO series Game of Thrones. That year, she appeared in the Black Mirror episode \"Playtest\" and an episode of \"The Tunnel\". In 2018, she starred in Ready Player One and Ant-Man and the Wasp.  Description above is from the Wikipedia article Hannah John-Kamen, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT024', 'Tom Hopper', '1985-01-28', 'https://image.tmdb.org/t/p/w500/e6vEDfJasTCLH8LY8kifEwQxySl.jpg', 'Coalville, Leicestershire, England, UK', 'Male', 9.311, 'Tom Hopper (born 28 January 1985 in Coalville, Leicestershire) is an English actor who has appeared in several television programmes and films including Merlin, Doctor Who, Casualty and Tormented.'),
('ACT025', 'Avan Jogia', '1992-02-09', 'https://image.tmdb.org/t/p/w500/7BX0Lg39bHlgtvWZpszTr1YjTAW.jpg', 'Vancouver, British Columbia, Canada', 'Male', 10.994, 'Avan Jogia (born February 9, 1992) is a Canadian actor and singer best known for playing Beck Oliver on Victorious\'Although he is from Vancouver, he spends most of his time between Vancouver and Los Angeles.  Description above from the Wikipedia article Avan Jogia, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT026', 'Darby Camp', '2007-07-14', 'https://image.tmdb.org/t/p/w500/bhke7AjdmRdhW7Gw7X6fCBeYwNs.jpg', 'None', 'Female', 6.18, 'Darby Eliza Camp is an American actress, known for her roles in the Netflix holiday film The Christmas Chronicles and the HBO television series Big Little Lies.'),
('ACT027', 'Jack Whitehall', '1988-07-07', 'https://image.tmdb.org/t/p/w500/8xRKz1tiVyjLxIMuD0ckOmF3xMY.jpg', 'London, England, UK', 'Male', 14.181, 'An English comedian, television presenter, actor and writer. He is best known for his stand up comedy, for starring as JP in the TV series Fresh Meat (2011–2016), and for playing Alfie Wickers in the TV series Bad Education (2012–2014) and the spin-off film The Bad Education Movie (2015), both of which he also co-wrote. He has also starred in Frozen in the role of Gothi the Troll. From 2012 to 2018, Whitehall was a regular panellist on the game show A League of Their Own. In 2017, Whitehall appeared with his father, Michael, in the Netflix comedy documentary series Jack Whitehall: Travels with My Father and starred in the television series Decline and Fall. Since 2018, Whitehall has been the host of the BRIT Awards.'),
('ACT028', 'Izaac Wang', '2007-10-22', 'https://image.tmdb.org/t/p/w500/bzvi6adMl3zmzC7gWhS4cmO61S4.jpg', '	Minnesota, USA', 'Male', 1.469, ''),
('ACT029', 'John Cleese', '1939-10-27', 'https://image.tmdb.org/t/p/w500/kg63gNYQtGPi2fSNIvCnVAclCbi.jpg', 'Weston-Super-Mare, Somerset, England, UK', 'Male', 6.054, 'John Marwood Cleese (born 27 October 1939) is an English actor, comedian, writer and film producer. He achieved success at the Edinburgh Festival Fringe, and as a scriptwriter and performer on The Frost Report. In the late 1960s he became a member of Monty Python, the comedy troupe responsible for the sketch show Monty Python\'s Flying Circus and the four Monty Python films: And Now for Something Completely Different, Holy Grail, Life of Brian and The Meaning of Life. In the mid 1970s, Cleese and his first wife Connie Booth, co-wrote and starred in the British sitcom Fawlty Towers. Later, he co-starred with Kevin Kline, Jamie Lee Curtis and former Python colleague Michael Palin in A Fish Called Wanda and Fierce Creatures. He also starred in Clockwise, and has appeared in many other films, including two James Bond films, two Harry Potter films, and three Shrek films. With Yes Minister writer Antony Jay he co-founded the production company Video Arts, responsible for making entertaining training films. Description above from the Wikipedia article John Cleese, licensed under CC-BY-SA, full list of contributors on Wikipedia'),
('ACT030', 'Tony Hale', '1970-09-30', 'https://image.tmdb.org/t/p/w500/ar4uapp4w5wMkThZcqWUNMSTO8z.jpg', 'West Point, New York, USA', 'Male', 7.973, 'Tony Hale (born September 30, 1970) is an American two time Emmy Award-winning film and television actor and author, best known for playing neurotic Byron \"Buster\" Bluth on FOX\'s comedy series Arrested Development, as well as Gary Walsh, the downtrodden personal aide to Julia Louis-Dreyfus\'s Vice President Selina Meyers on HBO\'s Emmy Award-winning political comedy, Veep.'),
('ACT031', 'Riz Ahmed', '1982-12-01', 'https://image.tmdb.org/t/p/w500/1uP9RaX7BGVx7XGTEmwObBJJzsC.jpg', 'Wembley, London, England, UK', 'Male', 5.685, 'Rizwan \"Riz\" Ahmed (born 1 December 1982), also known as Riz MC, is a British actor and rapper. As an actor, he was initially known for his work in independent films such as The Road to Guantanamo, Shifty, Four Lions, Trishna, and Ill Manors, before his breakout role in Nightcrawler. Since then, he has appeared in the films Una, Jason Bourne, and the first Star Wars Anthology film, Rogue One. He also starred in the HBO miniseries The Night Of as Nasir Khan; the show and his performance were critically lauded, earning him Golden Globe and SAG nominations.'),
('ACT032', 'Octavia Spencer', '1972-05-25', 'https://image.tmdb.org/t/p/w500/jnQTP4RRkoWnyO3yL2PgRHZi0tK.jpg', 'Montgomery, Alabama, USA', 'Female', 7.393, 'Octavia Lenora Spencer is an American actress, author, and producer. She is the recipient of several accolades, including an Academy Award, a British Academy Film Award, a Golden Globe Award, and three Screen Actors Guild Awards. She is one of two black actresses to have received three Academy Award nominations, the first black actress to receive two consecutive Academy Award nominations in back-to-back years, and the first black actress to receive an Academy Award nomination after previously winning.'),
('ACT033', 'Rory Cochrane', '1972-02-28', 'https://image.tmdb.org/t/p/w500/pKcfuI1Tg0nQ4xoQ0DA2r65oT4K.jpg', 'Syracuse, New York, USA', 'Male', 5.454, 'Rory Cochrane (born February 28, 1972) is an American actor.  He is known for playing Ron Slater in Dazed and Confused, Lucas in Empire Records, and Tim Speedle in CSI: Miami.'),
('ACT034', 'Janina Gavankar', '1980-11-29', 'https://image.tmdb.org/t/p/w500/3lj5jZFvjjc4XD6pdykMdgyPREp.jpg', 'Joliet, Illinois, USA', 'Female', 5.199, 'Janina Zione Gavankar (born November 29, 1983) is an American actress and musician of mixed Indian and Dutch descent. Gavankar is also trained as a pianist, vocalist, and orchestral percussionist. She majored in Theatre Performance at the University of Illinois at Chicago. Gavankar\'s is known for her more notable roles as Papi, a promiscuous lesbian in The L Word, Leigh Turner, a cop with a big secret on \"The Gates\", and Ms. Dewey, the personification of a Microsoft branded search engine who comments about the user\'s searches. Gavankar has appeared in theatre, commercials, short films, independent films, as well as Barbershop and its sequel, Barbershop 2: Back in Business.  Description above from the Wikipedia article Janina Gavankar, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT035', 'Misha Collins', '1974-08-20', 'https://image.tmdb.org/t/p/w500/kplIxo3cQrEMEYz8YqZOgKDQjgB.jpg', 'Boston, Massachusetts, USA', 'Male', 2.795, 'Misha Collins (born Dmitri Tippens Krushnic on August 20, 1974) is an American actor, producer, director and New York Times Best Seller author. He is best known for his role as the angel Castiel on the CW television series Supernatural and for his activism and philanthropy. He is the co-founder and board president of Random Acts, a non-profit organization, as well as the founder of GISH, The Greatest International Scavenger Hunt, known for their charity donations. His most recent projects include a poetry book titled \'Some Things I Still Can\'t Tell You\', being the host of the PBS show \'Roadfood: Discovering America One Dish at a Time\',  and the fiction podcast \'Bridgewater\', where he stars as Jeremy Bradshaw, besides being one of the executive producers.'),
('ACT036', 'Matthew McConaughey', '1969-11-04', 'https://image.tmdb.org/t/p/w500/wJiGedOCZhwMx9DezY8uwbNxmAY.jpg', 'Uvalde, Texas, USA', 'Male', 15.079, 'Matthew David McConaughey (born November 4, 1969) is an American actor. After a series of minor roles in the early 1990s, McConaughey gained notice for his breakout role in Dazed and Confused (1993). It was in this role that he first conceived the idea of his catch-phrase \"Well alright, alright.\" He then appeared in films such as A Time to Kill, Contact, U-571, Tiptoes, Sahara, and We Are Marshall. McConaughey is best known more recently for his performances as a leading man in the romantic comedies The Wedding Planner, How to Lose a Guy in 10 Days, Failure to Launch, Ghosts of Girlfriends Past and Fool\'s Gold.  Description above from the Wikipedia article Matthew McConaughey, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT037', 'Reese Witherspoon', '1976-03-22', 'https://image.tmdb.org/t/p/w500/hN2PiGapyp3zxMGXSk5Tk9pOo6T.jpg', '美国,路易斯安那州,新奥尔良', 'Female', 7.322, 'Laura Jeanne Reese Witherspoon (born March 22, 1976) is an American actress, producer, and entrepreneur.  Born in New Orleans, Louisiana, and raised in Nashville, Tennessee, Witherspoon began her career as a teenager, making her screen debut in The Man in the Moon (1991). Following a leading role opposite Mark Wahlberg in Fear (1996), her breakthrough came in 1999 with a supporting role in Cruel Intentions, and for her portrayal of Tracy Flick in the black comedy Election. She gained wider recognition for her role as Elle Woods in the comedy Legally Blonde (2001) and its 2003 sequel, and for her starring role in the romantic comedy Sweet Home Alabama (2002). In 2005, she garnered critical acclaim for her portrayal of June Carter Cash in the biographical musical film Walk the Line, which won her the Academy Award for Best Actress.  Witherspoon then starred in several critically and commercially unsuccessful comedies, during which her sole box-office success was the romantic drama Water for Elephants (2011). She made a comeback by producing and starring as Cheryl Strayed in the drama Wild (2014), which earned her a second nomination for Best Actress at the Academy Awards. Witherspoon has since begun work in television, by producing and starring in the HBO drama series Big Little Lies (2017–2019), the Apple TV+ drama series The Morning Show (2019–present), and the Hulu miniseries Little Fires Everywhere (2020). Witherspoon\'s various accolades include an Academy Award, two Golden Globe Awards, a British Academy Film Award, a Screen Actors Guild Award, and a Primetime Emmy Award for Big Little Lies. She is one of the highest-paid actresses in the world as of 2019. Time magazine named her one of the 100 most influential people in the world in 2006 and 2015, and Forbes listed her among the World\'s 100 Most Powerful Women in 2019.  Outside of acting, Witherspoon also owns a clothing company, Draper James, and she is actively involved in children\'s and women\'s advocacy organizations. She serves on the board of the Children\'s Defense Fund (CDF) and was named Global Ambassador of Avon Products in 2007, serving as honorary chair of the charitable Avon Foundation dedicated to women\'s causes. In 2000, she co-founded production company Type A Films, which has since merged with Hello Sunshine, a media firm which Witherspoon also co-founded in 2016. Hello Sunshine, focused on female-led stories, has produced many films and television series.  Description above from the Wikipedia article Reese Witherspoon, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT038', 'Scarlett Johansson', '1984-11-22', 'https://image.tmdb.org/t/p/w500/6NsMbJXRlDZuDzatN2akFdGuTvx.jpg', 'New York City, New York, USA', 'Female', 22.632, 'Scarlett Ingrid Johansson (born November 22, 1984) is an American actress. She was the world\'s highest-paid actress in 2018 and 2019, and has featured multiple times on the Forbes Celebrity 100 list. Her films have grossed over $14.3 billion worldwide, making Johansson the ninth-highest-grossing box office star of all time. She is the recipient of various accolades, including a Tony Award and a British Academy Film Award, in addition to nominations for two Academy Awards and five Golden Globe Awards.  Born and raised in Manhattan, New York City, Johansson aspired to be an actress from an early age and first appeared on stage in an Off-Broadway play as a child actor. She made her film debut in the fantasy comedy North (1994), and gained early recognition for her roles in Manny & Lo (1996), The Horse Whisperer (1998), and Ghost World (2001). Johansson shifted to adult roles in 2003 with her performances in Sofia Coppola\'s Lost in Translation, which won her a BAFTA Award for Best Actress, and Girl with a Pearl Earring. She was nominated for Golden Globe Awards for these films, and for playing a troubled teenager in the drama A Love Song for Bobby Long (2004), and a seductress in Woody Allen\'s psychological thriller Match Point (2005). Other works during this period include Christopher Nolan\'s The Prestige (2006) and Allen\'s Vicky Cristina Barcelona (2008), and the albums Anywhere I Lay My Head (2008) and Break Up (2009), both of which charted on the Billboard 200.  In 2010, Johansson debuted on Broadway in a revival of A View from the Bridge, which won her a Tony Award for Best Featured Actress, and began portraying Black Widow in the Marvel Cinematic Universe, a role for which she received critical acclaim and global recognition, beginning with Iron Man 2 (2010) through to the death of the character in Avengers: Endgame (2019) and most recently with Black Widow (2021). The latter being set before the death of Black Widow. Johansson went on to star in the science fiction films Her (2013), Under the Skin (2013), Lucy (2014), and Ghost in the Shell (2017). She received critical acclaim and two simultaneous Academy Award nominations for playing an actress going through a divorce in Noah Baumbach\'s drama Marriage Story, and a single mother in Nazi Germany in Taika Waititi\'s satire Jojo Rabbit (both 2019).  As a public figure, Johansson is a prominent brand endorser and supports various charities. Labeled a Hollywood sex symbol, Johansson has been cited as one of the world\'s most attractive women by several media outlets. Divorced from actor Ryan Reynolds and businessman Romain Dauriac, Johansson has been married to comedian Colin Jost since 2020. She has two children, one with Dauriac and another with Jost.  Description above from the Wikipedia article Scarlett Johansson, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT039', 'Taron Egerton', '1989-11-10', 'https://image.tmdb.org/t/p/w500/xFaGAbslcfwYUziyJBkWTfWPlHK.jpg', 'Birkenhead, Merseyside, England, UK', 'Male', 6.388, 'Taron David Egerton (born 10 November 1989) is an English-born Welsh actor. He gained recognition for starring as Gary \"Eggsy\" Unwin in the action comedy film Kingsman: The Secret Service (2014) and its sequel Kingsman: The Golden Circle (2017). He has also starred in several biopics, portraying Edward Brittain in the drama Testament of Youth (2014), Edward \"Mad Teddy\" Smith in the crime thriller Legend (2015), Eddie \"The Eagle\" Edwards in the sports film Eddie the Eagle (2016), and singer-songwriter Elton John in the musical Rocketman (2019).  Although born in England with only one Welsh grandparent, Egerton, having lived in Wales since childhood, considers himself to be Welsh \"through and through\" and is bilingual, speaking both Welsh and English.'),
('ACT040', 'Bobby Cannavale', '1970-05-03', 'https://image.tmdb.org/t/p/w500/gYQwTbEj5IBPYKLGKgrsNGrWAMl.jpg', 'Union City, New Jersey, USA', 'Male', 7.749, 'Robert M. \"Bobby\" Cannavale (born May 3, 1970) is an American actor noted for his leading role as Bobby Caffey in the first two seasons of the critically acclaimed television series Third Watch. He also had a popular recurring role as Officer Vince D\'Angelo on the comedy series Will & Grace.'),
('ACT041', 'Matt Damon', '1970-10-08', 'https://image.tmdb.org/t/p/w500/lL1bN9lszEqcUDD73560cc64wO2.jpg', 'Boston, Massachusetts, USA', 'Male', 21.861, 'Matthew Paige Damon (born October 8, 1970) is an American actor, film producer, screenwriter, and environmentalist. He is ranked among Forbes magazine\'s most bankable stars and is one of the highest-grossing actors of all time. Damon has received various accolades, including an Academy Award from five nominations, two Golden Globe Awards from eight nominations, and has been nominated for three British Academy Film Awards and seven Emmy Awards.  Born and raised in Cambridge, Massachusetts, Damon began his acting career by appearing in high school theater productions. He made his professional acting debut in the film Mystic Pizza (1988). He came to prominence in 1997, when he wrote and starred in Good Will Hunting, alongside Ben Affleck, which won them the Academy and Golden Globe awards for Best Screenplay and earned Damon a nomination for the Academy Award for Best Actor. He continued to garner praise from critics for his roles as the eponymous character in Saving Private Ryan (1998), the antihero in The Talented Mr. Ripley (1999), a fallen angel in Dogma (1999) and Jay and Silent Bob Reboot (2019), an energy analyst in Syriana (2005), and a corrupt Irish-American police officer in The Departed (2006). In 2019 he starred as race car driver and designer Carroll Shelby in James Mangold\'s Ford v Ferrari.  Damon is also known for his starring roles as Jason Bourne in the Bourne franchise (2002–2016) and as a con man in the Ocean\'s trilogy (2001–2007). For his supporting role as the rugby player Francois Pienaar in Invictus (2009) and his leading role as an astronaut stranded on Mars in The Martian (2015), Damon received Academy Award nominations for Best Supporting Actor and Best Actor, respectively. The latter also won him a Golden Globe Award for Best Actor. Damon has received Emmy Award nominations for his portrayal of Scott Thorson in the biopic Behind the Candelabra (2013) and for producing the reality series Project Greenlight. He also received an Academy Award nomination for producing Manchester by the Sea (2016).  Description above from the Wikipedia article Matt Damon, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT042', 'Adam Driver', '1983-11-19', 'https://image.tmdb.org/t/p/w500/fsbGQ1eZFgdsG1XnKlhNSvHsiGo.jpg', 'San Diego, California, USA', 'Male', 14.341, 'Adam Douglas Driver (born November 19, 1983) is an American actor. He rose to prominence in the supporting role of Adam Sackler in the HBO comedy-drama series Girls (2012–2017), for which he received three consecutive nominations for the Primetime Emmy Award for Outstanding Supporting Actor in a Comedy Series. He made his Broadway debut in Mrs. Warren\'s Profession (2010). In 2011, he returned to Broadway in Man and Boy and made his feature film debut in J. Edgar.  Driver has appeared in supporting roles in a wide range of films, including Lincoln (2012), Frances Ha (2012) and Inside Llewyn Davis (2013). He starred in While We\'re Young (2014) and won the Volpi Cup for his role in Hungry Hearts (2014), as well as several best actor awards for his performance in Jim Jarmusch\'s Paterson (2016). Driver also appeared in Spike Lee\'s BlacKkKlansman (2018), which earned him an Academy Award for Best Supporting Actor nomination.  Driver gained worldwide attention and acclaim for playing the villain Kylo Ren in Star Wars: The Force Awakens (2015), a role which he reprised in Star Wars: The Last Jedi (2017).  He is also the founder of Arts in the Armed Forces (AITAF), a nonprofit that performs theater for all branches of the military, both in the US and abroad.'),
('ACT043', 'Jodie Comer', '1993-03-11', 'https://image.tmdb.org/t/p/w500/va8pcuzXodVLYUQLjB1USZVB6gz.jpg', 'Liverpool, England, UK', 'Female', 20.663, 'Jodie Comer is a British actress who rose to prominence in 2011 when she played the role of Sharna in BBC One drama Justice. Other TV credits include the BAFTA-nominated British comedy-drama series My Mad Fat Diary, Thirteen, Dr Foster and Killing Eve. Her film credits include the Morrissey biopic England is Mine.'),
('ACT044', 'Harriet Walter', '1950-09-24', 'https://image.tmdb.org/t/p/w500/pMBIjsM2U5xPMJ09k5X7XQZspwn.jpg', 'London, England, UK', 'Female', 5.116, 'Dame Harriet Walter is a British film and television actress.  ​'),
('ACT045', 'Ben Affleck', '1972-08-15', 'https://image.tmdb.org/t/p/w500/aTcqu8cI4wMohU17xTdqmXKTGrw.jpg', 'Berkeley, California, USA', 'Male', 12.349, 'Ben Affleck (born August 15, 1972) is an American actor, film director, writer, and producer. He became known in the mid-1990s with his performance in the Kevin Smith films Mallrats (1995) and Chasing Amy (1997). Affleck is an Academy Award as well as a Golden Globe Award winner, along with Matt Damon, for their collaborative screenplay for the 1997 film Good Will Hunting. He established himself as a Hollywood leading man, having starred in several big budget films, such as Armageddon (1998), Pearl Harbor (2001), Changing Lanes (2002), The Sum of All Fears (2002), and Daredevil (2003). Affleck also portrays Bruce Wayne/Batman in the DC Extended Universe. He has portrayed the character in Batman vs Superman: Dawn of Justice (2016), Suicide Squad (2016), and Justice League (2017). He will reprise the role in 2021’s new version of Zack Snyder’s Justice League. Affleck has drawn critical acclaim for his work as a filmmaker, directing Gone Baby Gone (2007) and The Town (2010), and playing the lead role in the latter. He has worked with his younger brother, actor Casey Affleck, on several projects, including Good Will Hunting and Gone Baby Gone.  After a high profile relationship with actress Gwyneth Paltrow in 1998, his relationship with actress/singer Jennifer Lopez attracted worldwide media attention in which Affleck and Lopez were dubbed \"Bennifer\". Following their breakup in 2004, he began dating Jennifer Garner. The two married in June 2005 and have two daughters, Violet Anne, born December 2005, and Seraphina Rose Elizabeth, born January 2009.  Affleck has been actively involved in politics and charitable causes. He and Matt Damon also founded the production company LivePlanet.  ​From Wikipedia, the free encyclopedia'),
('ACT046', 'Isla Fisher', '1976-02-03', 'https://image.tmdb.org/t/p/w500/zNKTzzuyMYaCGEZKhwhqV1K8ffo.jpg', 'Muscat, Oman', 'Female', 11.074, 'Isla Lang Fisher (born February 3, 1976) is an actress and author. She began acting on Australian television, on the short-lived soap opera Paradise Beach before playing Shannon Reed on the soap opera Home and Away. She has since been known for her comedic roles in Wedding Crashers (2005), Hot Rod (2007), Definitely, Maybe (2008), and Confessions of a Shopaholic (2009).  Fisher was born in Muscat, Oman, to Scottish parents from Bathgate and Stranraer, and was raised in Perth, Western Australia. They resided in Muscat because of her father\'s job as a banker for the United Nations. Her name, after the Scottish island of Islay, is pronounced eye-la; she has four brothers. Fisher spent her early years in Bathgate before moving with her family to Perth, Western Australia, when she was six years old. Fisher has said that she had a \"great\" upbringing in Perth with a \"very outdoorsy life\". She began appearing in commercials on Australian television at the age of nine, before going on to win roles in popular children\'s television shows Bay City and Paradise Beach. She attended Methodist Ladies\' College and appeared in lead roles in school productions. At the age of 18, with the help of her mother, she published two teen novels, Bewitched and Seduced by Fame. From 1994 to 1997 she played the role of Shannon Reed on the Australian soap opera Home and Away. After leaving the soap, Fisher enrolled at L\'École Internationale de Théâtre Jacques Lecoq, a theatre and arts training school in Paris and went on to appear in pantomime in the United Kingdom. She also toured with Darren Day in the musical Summer Holiday and appeared in the London theatre production, Così.  In 2002 she had a part in the film version of Scooby-Doo as Mary Jane, Shaggy\'s love interest (wearing a blonde wig) who is allergic to dogs. Subsequently, Fisher was taken on by an American agent. A larger role in Wedding Crashers, alongside Vince Vaughn and Owen Wilson, in 2005 won her the Breakthrough Performance Award at the MTV Movie Awards. While promoting Wedding Crashers, she was officially crowned the 1000th guest on Australian talk show Rove on 2 August 2005. She entered the set ahead of Owen Wilson, winning the title by two metres. In 2006, Fisher starred as Becca, a Manhattan party host, in the relationship drama London co-starring Jessica Biel, Chris Evans, and Jason Statham. She starred in Wedding Daze with Jason Biggs. In 2007, she appeared in The Lookout, a thriller film co-starring Joseph Gordon-Levitt and Matthew Goode, and Hot Rod, opposite Andy Samberg. She was scheduled to appear in The Simpsons Movie, although her appearance was cut from the final version. In 2008, she starred in Definitely, Maybe, with Ryan Reynolds, Elizabeth Banks, Rachel Weisz, and Abigail Breslin, and had a voice role in Horton Hears a Who! Fisher has also co-written a script entitled Groupies with Amy Poehler, as well as another project entitled The Cookie Queen. She starred in the movie adaptation of the book Confessions of a Shopaholic, which opened on February 13, 2009. In the film, Fisher played a college graduate who works as a financial journalist in New York City to support her shopping addiction. Fisher has spoken out against the lack of opportunities for comediennes in Hollywood. In 2010, she stars in the black comedy Burke and Hare.'),
('ACT047', 'Tim Minchin', '1975-07-10', 'https://image.tmdb.org/t/p/w500/jIf1rJYaoJgB73iGPYu4U6Ce93.jpg', 'Northampton, England, UK', 'Male', 1.918, 'Tim Minchin is an Australian musician, actor, comedian and writer. He has been performing his unique brand of musical comedy in front of appropriately excitable and ever growing audiences since starting out in South Melbourne’s Butterfly Club in 2005. He won the Director’s Award at the Melbourne International Comedy Festival for his break-out show Darkside, and followed this later the same year with one of the most successful debut acts ever at the Edinburgh Fringe – winning the  Perrier Award for Best Newcomer. Without wanting to go on and on about it, he’s done some pretty successful live shows since then, often in Australia or the UK, but also on the North American continent (yes that includes you too Canada). But not you Guatemala. Maybe one day.  His current songs span topics such as environmentalism, rationalism, prejudice(ism) and his amour de boobs(ism). In fact it would hardly be over the top to say that his love of boobs would be up there in the back of Plato’s cave in the bit that’s carved out for the most perfect and complete example of the love of boobs. But not in a weird way. During his shows he plays the piano, always nicely and oftentimes wildly and excitingly, whilst looking wonderfully athletic, in a pair of delightfully uncomfortable skinny jeans.  Tim has made many TV appearances: most recently on Good News Week in Australia and Friday Night with Jonathan Ross in the UK. He’s also performed on radio; his most recent project being Strings, a brand new comedy sitcom pilot for BBC Radio 2, which he both wrote and starred in. His acclaimed 9-minute beat poem, Storm, is being animated for release in October. Tim is currently writing the music and lyrics for the musical Matilda with the Royal Shakespeare Company. This adaptation of the Roald Dahl classic opens in Stratford-upon-Avon in November 2010.  Tim, his wife and two young children, now live in London.');
INSERT INTO `actor` (`actor_id`, `name`, `dob`, `image_url`, `place_of_birth`, `gender`, `popularity`, `biography`) VALUES
('ACT048', 'Eric Bana', '1968-08-09', 'https://image.tmdb.org/t/p/w500/dOiOKNdshTMQ0KfdhaAqDlT80Rn.jpg', 'Melbourne, Australia', 'Male', 5.847, 'Eric Bana is an Australian film and television actor. He began his career as a comedian in the sketch comedy series Full Frontal before gaining critical recognition in the biopic Chopper (2000). After a decade of roles in Australian TV shows and films, Bana gained Hollywood\'s attention by playing the role of American Delta Force Sergeant Norm \"Hoot\" Hooten in Black Hawk Down (2001), the lead role as Bruce Banner in the Ang Lee directed film Hulk (2003), Prince Hector in the movie Troy (2004), the lead in Steven Spielberg\'s Munich (2005), and the villain Nero in the science-fiction film Star Trek (2009).  An accomplished dramatic actor and comedian, he received Australia\'s highest film and television awards for his performances in Chopper, Full Frontal and Romulus, My Father. Bana performs predominantly in leading roles in a variety of low-budget and major studio films, ranging from romantic comedies and drama to science fiction and action thrillers.  Eric Bana was the younger of two children; he has a brother, Anthony. He is of Croatian ancestry on his father\'s side. Bana\'s paternal grandfather, Mate Banadinović, fled to Argentina after the Second World War, and Bana\'s paternal grandmother emigrated to Germany and then to Australia in the 1950s with her son, Ivan (Bana\'s father). His father was a logistics manager for Caterpillar, Inc., and his German-born mother, Eleanor, was a hairdresser. Bana grew up in Melbourne\'s Tullamarine, a suburban area on the western edge of the city, near the main airport. In a cover story for The Mail on Sunday, he told author Antonella Gambotto-Burke that his family had suffered from racist taunts, and that it had distressed him. \"Wog is such a terrible word,\" he said. He has stated: \"I have always been proud of my origin, which had a big influence on my upbringing. I have always been in the company of people of European origin\".  Showing acting skill early in life, Bana began doing impressions of family members at the age of six or seven, first mimicking his grandfather\'s walk, voice and mannerisms. In school, he mimicked his teachers as a means to get out of trouble. As a teen, he watched the Mel Gibson film Mad Max (1979), and decided he wanted to become an actor. However, he did not seriously consider a career in the performing arts until 1991 when he was persuaded to try stand-up comedy while working as a barman at Melbourne\'s Castle Hotel. His stand-up gigs in inner-city pubs did not provide him with enough income to support himself, so he continued his work as a barman and bussing tables.'),
('ACT049', 'Guy Pearce', '1967-10-05', 'https://image.tmdb.org/t/p/w500/vTqk6Nh3WgqPubkS23eOlMAwmwa.jpg', 'Ely, Cambridgeshire, England, UK', 'Male', 9.009, 'Guy Edward Pearce (born 5 October 1967) is an English-born Australian actor and musician, known for his roles as Leonard Shelby in Christopher Nolan\'s Memento, Lieutenant Ed Exley in the film L.A. Confidential, a drag queen in the cult film The Adventures of Priscilla, Queen of the Desert, Mike Young in the popular Australian television series Neighbours and King Edward VIII (\"David\") in the 2010 Best Picture Oscar winner The King\'s Speech.'),
('ACT050', 'Miranda Tapsell', '1987-12-11', 'https://image.tmdb.org/t/p/w500/2AlEvyXLzwAgD8SOMvovktC7qAL.jpg', 'None', 'Female', 1.253, ''),
('ACT051', 'Jeremy Renner', '1971-01-07', 'https://image.tmdb.org/t/p/w500/pGE3KiHxx7iRCs4yKP9wSFsVCyh.jpg', 'Modesto, California, USA', 'Male', 17.34, 'Jeremy Lee Renner (born January 7, 1971, height 5\' 10\" (1,78 m)) is an American actor and musician. Renner appeared in films throughout the 2000s, mostly in supporting roles. He came to prominence in films such as Dahmer (2002), S.W.A.T. (2003), Neo Ned (2005), 28 Weeks Later (2007), The Town (2010), and was nominated for an Academy Award for Best Actor for his starring role in the 2009 Best Picture-winning war thriller The Hurt Locker.  The following year he appeared in the critically acclaimed film The Town. His work as \"James Coughlin\" in that film received a nomination for the 2010 Academy Award for Best Supporting Actor plus nominations in the Supporting Actor category at the SAG Awards and the Golden Globes.  Renner has portrayed Clint Barton/Hawkeye in the Marvel Cinematic Universe, appearing in 5 films so far as the character- Thor (2011), The Avengers (2012), Avengers: Age of Ultron (2015), Captain America: Civil War (2016), and Avengers: Endgame (2019). Renner will appear as Hawkeye again in a Disney+ series about the character.  Description above from the Wikipedia article Jeremy Renner, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT052', 'Hailee Steinfeld', '1996-12-11', 'https://image.tmdb.org/t/p/w500/dxSDWkiVaC6JYjrV3XRAZI7HOSS.jpg', 'Tarzana, Los Angeles, California, USA', 'Female', 31.029, 'Hailee Steinfeld (born December 11, 1996) is an American actress, singer and model. She had her breakthrough with the western drama film True Grit (2010), which earned her nominations for the Academy Award, BAFTA Award and the SAG Award for Best Supporting Actress.  Steinfeld rose to mainstream prominence for her lead roles in Ender\'s Game (2013), Romeo & Juliet (2013), Begin Again (2013), and 3 Days to Kill (2014). She received critical acclaim for her roles in the Pitch Perfect film series (2015–2017) and the coming-of-age comedy-drama film The Edge of Seventeen (2016), the latter of which earned her a Golden Globe Award and Critics\' Choice Movie Award nomination. Steinfeld subsequently provided the voice of Gwen Stacy / Spider-Woman in the animated film Spider-Man: Into the Spider-Verse (2018), and starred as Charlie Watson in the action film Bumblebee (2018). She currently plays Emily Dickinson in the Apple TV+ comedy-drama series Dickinson (2019–present), and is set to play Kate Bishop / Hawkeye in the upcoming 2021 Disney+ series Hawkeye, set in the Marvel Cinematic Universe.  Steinfeld gained recognition in music after performing \"Flashlight\" in Pitch Perfect 2 (2015). She signed with Republic Records soon after and released her debut single, \"Love Myself\", followed by her debut extended play Haiz (2015). She went on to release a series of singles, including the collaboration \"Starving\", which peaked at number 12 on the Billboard Hot 100 chart, and \"Let Me Go\" with Alesso, Florida Georgia Line and Watt, which peaked at number two on the US Dance songs chart. In May 2020, she released her second extended play, Half Written Story, supported by the singles \"Wrong Direction\" and \"I Love You\'s\".  Description above from the Wikipedia articleHailee Steinfeld, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT053', 'Tony Dalton', '1975-02-13', 'https://image.tmdb.org/t/p/w500/k7iCyv4BjiFZS7RaLJFoeKzOJ7f.jpg', 'Texas, USA', 'Male', 10.059, 'Álvaro Luis Bernat \"Tony\" Dalton (born February 13, 1975) is a Mexican-American actor, screenwriter and producer, best known in the United States for his role as cartel operator Lalo Salamanca in Better Call Saul (2018–present).'),
('ACT054', 'Alaqua Cox', '1997-01-01', 'https://image.tmdb.org/t/p/w500/pJfMFpvtiqpMwY7KtxtcZTLdkXe.jpg', 'Wisconsin, USA', 'Female', 14.438, 'Alaqua Cox is a deaf Menominee Native American actress, known for Hawkeye (2021).'),
('ACT055', 'Fra Fee', '1987-05-20', 'https://image.tmdb.org/t/p/w500/fPZr9YeGxVQRbBZWd8Cdxf8VIa9.jpg', 'Dungannon, County Tyrone, Northern Ireland, United Kingdom', 'Male', 2.839, ''),
('ACT056', 'Rosamund Pike', '1979-01-27', 'https://image.tmdb.org/t/p/w500/4rDIOWe3Sy8bpilHOfIjR2zfqQR.jpg', 'Hammersmith, London, England, UK', 'Female', 17.168, 'Rosamund Mary Ellen Pike (born 27 January 1979) is an English actress who began her acting career by appearing in stage productions such as Romeo and Juliet and Skylight. After her screen debut in the television film A Rather English Marriage (1998) and television roles in Wives and Daughters (1999) and Love in a Cold Climate (2001), she received international recognition for her film debut as Bond girl Miranda Frost in Die Another Day (2002), for which she received the Empire Award for Best Newcomer. Following her breakthrough, she won the BIFA Award for Best Supporting Actress for The Libertine (2004) and portrayed Jane Bennet in Pride and Prejudice (2005).  Pike had film appearances in the sci-fi film Doom (2005), the crime-mystery thriller film Fracture (2007), the drama film Fugitive Pieces (2007), and the coming-of-age drama An Education (2009), for which she was nominated for the London Film Critics Circle Award for British Supporting Actress of the Year. She also received British Independent Film Award nominations for An Education, Made in Dagenham (2010), and was nominated for a Genie Award for Barney\'s Version (2010).  In 2014, her performance in the psychological thriller film Gone Girl was met with critical acclaim and she was awarded the Saturn Award for Best Actress and was nominated for the Academy Award for Best Actress, the BAFTA Award for Best Actress in a Leading Role, and the Golden Globe Award for Best Actress – Motion Picture Drama.  Description above from the Wikipedia article Rosamund Pike, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT057', 'Daniel Henney', '1979-11-28', 'https://image.tmdb.org/t/p/w500/4cxNfiABrndn6izXAt6TsjFfYBZ.jpg', 'Carson City, Michigan, USA', 'Male', 5.785, 'Daniel Henney was born in Carson City, Michigan, to a Korean adoptee mother and Philip Henney, his American father of Irish descent. Daniel Henney started modeling in the U.S. in 2001 and worked in France, Italy, Hong Kong and Taiwan while attending college. After his debut in South Korea with an advertisement for the Amore Pacific\'s cosmetic \"Odyssey Sunrise\", he became a spokesperson for commercials with Jun Ji-hyun for Olympus cameras and Kim Tae-hee for Daewoo Electronics\'s Klasse air conditioners. Despite speaking no Korean, Henney became a household name through the South Korean hit TV drama, My Lovely Sam Soon, aka My Name is Kim Sam Soon. He played the role of Dr. Henry Kim, a surgeon who is devotedly in love with Hee-jin (played by Jung Ryeo-won). Sam Soon was the most popular Korean drama in 2005; although Henney was starring as the supporting actor, his performance and look was widely noticed. Henney then starred in another drama “Spring Waltz” in 2006. He later learned the language and appeared on a few variety shows, such as Family Outing. Henney was a part of an academic scandal in which many sources stated that he had an Economics degree from the University of Illinois at Chicago, while in actuality he had no college degree. Henney starred in his first feature film in Korea, \"Seducing Mr. Perfect.\" His second film, \"My Father,\" won multiple awards in South Korea and was actually the first time in that country\'s history that a foreigner swept all the major cinema awards in the Best New Actor category. In 2009, he portrayed Agent Zero in the film X-Men Origins: Wolverine. In the fall season of 2009, he played \"Dr. David Lee\" in the CBS television drama Three Rivers. In 2010, Henney returned to South Korea television for KBS2\'s The Fugitive: Plan B, alongside Rain and actress Lee Na-young. Henney is signed with DNA Models in New York under the celebrity-division.'),
('ACT058', 'Zoe Robins', '1993-02-19', 'https://image.tmdb.org/t/p/w500/9vHQhbUZnaPxmNHtbQBN2oMTbff.jpg', 'Wellington, New Zealand', 'Female', 7.57, ''),
('ACT059', 'Madeleine Madden', '1997-01-29', 'https://image.tmdb.org/t/p/w500/oOZ1EJeq2DHxNNLAkLEyYYOlqlM.jpg', 'Australia', 'Female', 28.149, 'From Wikipedia, the free encyclopedia  Madeleine Madden (born 29 January 1997) is an Australian actress.  In 2010, at age 13, Madden became the first teenager in Australia to deliver an address to the nation, when she delivered a two-minute speech on the future of Indigenous Australians. It was broadcast to 6 million viewers on every free-to-air television network in Australia. She said she grew up in a very political family; she is the great-granddaughter of Arrernte elder Hetty Perkins, the granddaughter of activist and soccer player Charles Perkins, and the daughter of art curator and writer Hetti Perkins. Her aunt is director Rachel Perkins.  Madden starred in Australia\'s first indigenous teen drama, Ready for This, and in the critically applauded Redfern Now. She has also starred in The Moodys, Jack Irish, My Place and The Code. In 2016 she starred in the miniseries Tomorrow, When the War Began which is based on the John Marsden series of young adult books. In 2018 she played Marion Quade in the miniseries Picnic at Hanging Rock, Crystal Swan in the TV miniseries Mystery Road and Immy DuPain in the series Pine Gap. She has been cast as Egwene al\'Vere in Amazon\'s upcoming adaptation of The Wheel of Time novels.  Madden has starred in short films by Deborah Mailman, and Meryl Tankard and co-starred with Christina Ricci and Jack Thompson in Around the Block. Her first film acting job was at 8 years old. She aims to become a director in the future.  When she was 21, Madden made her big Hollywood debut as Sammy in the 2019 Nickelodeon film Dora and the Lost City of Gold.'),
('ACT060', 'Josha Stradowski', '1995-01-01', 'https://image.tmdb.org/t/p/w500/uCbfm39Gad32j2z0vOOh3oa5GEH.jpg', 'Rotterdam, Netherlands', 'Male', 12.791, 'Josha Stradowski is a Dutch actor. He is known for his performance in the Dutch film Just Friends (2018) and the American television series The Wheel of Time (2021).'),
('ACT061', 'Brad Dourif', '1950-03-18', 'https://image.tmdb.org/t/p/w500/z2LYR7Ickql7g5hnWJSIAWMPD4o.jpg', 'Huntington, West Virginia, USA', 'Male', 8.037, 'From Wikipedia, the free encyclopedia  Bradford Claude \"Brad\" Dourif (born March 18, 1950) is an American film and television actor who gained early fame for his portrayal of Billy Bibbit in One Flew Over the Cuckoo\'s Nest, and has since appeared in a number of memorable roles, including the voice of Chucky in the Child\'s Play franchise, Younger Brother in Ragtime, the mentat Piter De Vries in David Lynch\'s Dune, Gríma Wormtongue in The Lord of the Rings, the homicidal Betazoid Lon Suder in the TV series Star Trek: Voyager, serial killer Charles Dexter/Brother Edward in the acclaimed science fiction television series Babylon 5, and Doc Cochran in the HBO television series Deadwood. Dourif has also worked with renowned film director Werner Herzog at many occasions, appearing in Scream of Stone, The Wild Blue Yonder, Bad Lieutenant: Port of Call New Orleans and My Son, My Son, What Have Ye Done?'),
('ACT062', 'Zackary Arthur', '2006-09-12', 'https://image.tmdb.org/t/p/w500/bHNxWDhEsxvEHWhh8oA9ArIo3AI.jpg', 'None', 'Male', 4.421, ''),
('ACT063', 'Teo Briones', '2005-01-11', 'https://image.tmdb.org/t/p/w500/1eDVJ9pzBQ5hWQv0pfRjWq2h7go.jpg', 'Oxford, England, UK', 'Male', 8.793, ''),
('ACT064', 'Alyvia Alyn Lind', '2007-07-27', 'https://image.tmdb.org/t/p/w500/PFIrlblnKm41ECLUVBX4xohcRr.jpg', 'California, U.S.', 'Female', 5.957, 'Alyvia Alyn Lind is an actress.'),
('ACT065', 'Bjorgvin Arnarson', '2005-11-24', 'https://image.tmdb.org/t/p/w500/sMEdiovTsgk0E6KDirZrnQlHN2E.jpg', 'None', 'Unknown', 4.225, ''),
('ACT066', 'Henry Cavill', '1983-05-05', 'https://image.tmdb.org/t/p/w500/iWdKjMry5Pt7vmxU7bmOQsIUyHa.jpg', 'Jersey, Channel Islands, UK', 'Male', 28.834, 'Henry William Dalgliesh Cavill (born 5 May 1983) is a British actor. He is known for his portrayal of Charles Brandon in Showtime\'s The Tudors (2007–2010), DC Comics character Superman in the DC Extended Universe, Geralt of Rivia in the Netflix fantasy series The Witcher (2019–present), as well as Sherlock Holmes in the Netflix film Enola Holmes (2020).  Cavill began his career with roles in the feature adaptations of The Count of Monte Cristo (2002) and I Capture the Castle (2003). He later portrayed supporting roles in several television series, including BBC\'s The Inspector Lynley Mysteries, ITV\'s Midsomer Murders, and Showtime\'s The Tudors. He has since appeared in numerous major studio films, such as Tristan & Isolde (2006), Stardust (2007), Blood Creek (2009), Immortals (2011), The Cold Light of Day (2012), Sand Castle (2017) and Night Hunter (2018).  Cavill gained international recognition with his role as Superman in the DC Extended Universe superhero films Man of Steel (2013), Batman v Superman: Dawn of Justice (2016) and Justice League (2017).[1][2] He also starred in the action spy films The Man from U.N.C.L.E. (2015) and Mission: Impossible – Fallout (2018).'),
('ACT067', 'Anya Chalotra', '1996-07-21', 'https://image.tmdb.org/t/p/w500/r4Ss6bZAZR77wQmD5s7G35weLrm.jpg', 'Wolverhampton, England', 'Female', 39.528, 'Anya Chalotra is an actress who has appeared in Wanderlust (2018) and The ABC Murders (2018). Anya trained at Guildhall School of Music and Drama.  Her talent was developed as a pupil at St Dominic’s Brewood, which in 2017 became St Dominic’s Grammar School and has introduced the 11-plus exam for its preparatory pupils. She worked with Carol Molin, the school’s head of expressive arts, and starred on stage in many of the school’s productions. After leaving St Dominic’s sixth form, with Theatre Studies among her three A Levels, Anya trained first at the London Academy of Music and Dramatic Art and then at The Guildhall School of Music and Drama.'),
('ACT068', 'Freya Allan', '2001-09-06', 'https://image.tmdb.org/t/p/w500/xq33JCqUjBzPz3drN48N2N7ySKI.jpg', 'Oxfordshire, England, UK', 'Female', 28.816, 'Freya Allan (born 6 September 2001) is an English actress, known for her role as Princess Cirilla of Cintra in the Netflix series The Witcher.'),
('ACT069', 'Mimi Ndiweni', '1991-08-31', 'https://image.tmdb.org/t/p/w500/kfwWaxcovzkahqDDhhJwPrGbnny.jpg', 'None', 'Female', 9.392, ''),
('ACT070', 'Janine Gutierrez', '1989-10-02', 'https://image.tmdb.org/t/p/w500/2RBw9fF4VJwAF2JBjJqbjQ02PT3.jpg', '	Quezon City, Philippines', 'Female', 1.194, 'Janine Marie Elizabeth Olson Gutierrez (born October 2, 1989) known professionally as Janine Gutierrez, is a Filipina actress, television host and commercial model. In 2016, she received her first Gawad Urian nomination for Best Supporting Actress for her role in Dagsin (2016). In 2020, she won the FAMAS award for Best Actress and the Gawad Urian for Best Actress for her role in Babae at Baril (2019).'),
('ACT071', 'Paulo Avelino', '1988-05-13', 'https://image.tmdb.org/t/p/w500/xJqRbGjLh6q4UGWgKMsCBaRi6kS.jpg', 'Baguio City, Benguet, Philippines', 'Male', 1.784, ''),
('ACT072', 'Sunshine Dizon', '1983-07-03', 'https://image.tmdb.org/t/p/w500/dr5zmwGKof2wRxbb7SwdGRpR7Kz.jpg', 'None', 'Female', 0.98, ''),
('ACT073', 'Cherry Pie Picache', '1970-05-27', 'https://image.tmdb.org/t/p/w500/rKMoeZIUsSrVEbA4oMeq8zZ00RN.jpg', 'None', 'Female', 1.646, ''),
('ACT074', 'Edu Manzano', '1955-09-14', 'https://image.tmdb.org/t/p/w500/UPnYyRhgbgvX08nNUE5jL44dDm.jpg', 'San Francisco, California, USA', 'Male', 1.653, ''),
('ACT075', 'Zhou Xun', '1974-10-18', 'https://image.tmdb.org/t/p/w500/oXpUBTfcOafc4wD54Qa2uItAok9.jpg', 'Quzhou, Zhejiang Province, China', 'Female', 4.484, 'Zhou Xun is a Chinese film actress and singer.'),
('ACT076', 'Huang Lei', '1971-12-06', 'https://image.tmdb.org/t/p/w500/kXHwAAvQnYY4g2mDyLaUr8Crb6z.jpg', 'Nanchang, Jiangxi Province, China', 'Male', 2.317, ''),
('ACT077', 'Tang Yixin', '1989-12-09', 'https://image.tmdb.org/t/p/w500/sQzDVRmdyUOQFIJapee1NQuYOAk.jpg', 'Suining，Sichuan Province，China', 'Female', 4.659, ''),
('ACT078', 'Tu Song-yan', '1976-10-06', 'https://image.tmdb.org/t/p/w500/fOi0OHmimSlX8BV1pJKWYxvXQZI.jpg', 'Beijing, China', 'Male', 3.297, ''),
('ACT079', 'Liu Li-li', '1958-07-16', 'https://image.tmdb.org/t/p/w500/z42wx8LJqW8YVMJR5HxRIWW7Jai.jpg', 'Anhui, China', 'Female', 0.98, 'Liu Li Li is a Chinese actress born in Beijing. She graduated from the People\'s Liberation Army Academy of Arts, Department of Performing.  She used to be a professional dancer working under the 66th Army Art Troupe but had to quit her dancing career after an accident during a rehearsal.  In 2013, she won the Best Actress Award for her role in the film \"Mother.\"'),
('ACT080', 'Kevin Costner', '1955-01-18', 'https://image.tmdb.org/t/p/w500/bykmxJHLfbFM3NT05RZXhx8YTzF.jpg', ' Lynwood, California, USA', 'Male', 35.201, 'Kevin Michael Costner is an American actor, singer, musician, producer, director, and businessman. He has been nominated for three BAFTA (British Academy of Film and Television Arts) Awards, won two Academy Awards, and two Golden Globe Awards. Costner\'s roles include Lt. John J. Dunbar in the film Dances with Wolves, Jim Garrison in JFK, Ray Kinsella in Field of Dreams, Robin Hood in Robin Hood: Prince of Thieves, Crash Davis in Bull Durham, Robert \"Butch\" Haynes in A Perfect World and Eliot Ness in The Untouchables. Costner also founded the band Modern West, and has performed with the band since 2007.'),
('ACT081', 'Kelly Reilly', '1977-07-18', 'https://image.tmdb.org/t/p/w500/l8aQsryOQvxgX6SdZ4XtzU8KEXn.jpg', 'Surrey, England, UK', 'Female', 99.736, 'Kelly Reilly (born 18 July 1977) is an English actress. Reilly\'s performance in After Miss Julie at the Donmar Warehouse made her a star of the London stage and earned her a nomination for a Laurence Olivier Theatre Award for Best Actress of 2003. Aged 26, she\'s the youngest person ever nominated for that award. And, in 2005, she won Best Newcomer Award at the Cannes Film Festival for her role as Wendy in The Russian Dolls (Les Poupées Russes).'),
('ACT082', 'Luke Grimes', '1984-01-21', 'https://image.tmdb.org/t/p/w500/52KsHFCu0LToakebnxqC4VeRixl.jpg', ' Dayton, Ohio, USA', 'Male', 52.611, 'Luke Timothy Grimes (born January 21, 1984) is an American actor, born in Dayton, Ohio as the youngest of four children. Luke graduated from Dayton Christian High School in 2002. He moved to New York City to study acting at the American Academy of Dramatic Arts.  Grimes has appeared in All the Boys Love Mandy Lane, War Eagle, Arkansas, and Assassination of a High School President, which received a limited release in March 2009. He also appeared in the ABC drama Brothers & Sisters, as Ryan Lafferty, the illegitimate son of William Walker, patriarch of the show\'s family. Beginning with Season 4, he became a series regular.  Description above from the Wikipedia article Luke Grimes, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT083', 'Wes Bentley', '1978-09-04', 'https://image.tmdb.org/t/p/w500/qwFi0SsOqm7feN4ps7cAiQDTNHL.jpg', 'Jonesboro, Arkansas, USA', 'Male', 30.717, 'Wesley Cook \"Wes\" Bentley (born September 4, 1978) is an American film actor known for his roles as Ricky Fitts in American Beauty (1999) and Seneca Crane in The Hunger Games (2012). Bentley was one of four subjects in the documentary My Big Break (2009), which covered his fame after American Beauty and struggles with substance abuse. Rebuilding his career, he starred in the premier of Venus in Fur by David Ives in the off-Broadway production in 2010, whose run was extended.  Description above from the Wikipedia article Wes Bentley, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT084', 'Kelsey Asbille', '1991-09-09', 'https://image.tmdb.org/t/p/w500/8mXqxKaPc6FpAnLeZlPaaUaJHdC.jpg', 'Columbia, South Carolina, USA', 'Female', 60.144, 'Kelsey Asbille Chow (born September 9, 1991) is an American actress. She is known for her role as Mikayla in the Disney XD sitcom Pair of Kings. From 2005 to 2009, she had a recurring role as Gigi Silveri on the drama One Tree Hill. She portrayed Tracy Stewart in MTV\'s Teen Wolf from 2015-2016. Chow was born to a Chinese father, and an American mother in Columbia, South Carolina. Her father is the son of Chinese immigrants and her mother is descendants of White and Indigenous Americans. She stated in 2010 that she wanted to be able to speak more fluently in Mandarin Chinese as well as be able to read traditional Chinese characters. She has two younger siblings: a brother who is two years younger and a sister who is eight years younger. She attended Hammond School for high school, located in Columbia, SC. Kelsey Chow\'s residence is in Los Angeles, California, but she lives in New York City where she attends Columbia University.'),
('ACT085', 'Lee Jung-jae', '1973-03-15', 'https://image.tmdb.org/t/p/w500/3h5Cfm0X8ohWn7psZkqdNWqXAHH.jpg', 'Seoul, South Korea', 'Male', 10.312, 'Lee Jung-jae (이정재) is a South Korean actor. Born on March 15, 1973, he began modeling in 1993 before getting his first acting roles the film The Young Man (1994) and the TV series Feelings (1994) and Sandglass (1995), which is one of the highest rated Korean dramas of all time with a peak rating of 64.5%. But his real breakthrough was with leading roles in award-winning films The Affair (1998) and City of the Rising Sun (1999). The latter of which earned him the Best Actor award at the prestigious Blue Dragon film awards.  This was followed by a series of critical hits like Il Mare (2000) and commercial successes including Last Present (2001), The Last Witness (2001), Oh Brothers (2003), and the blockbuster Typhoon (2005). After a brief career slump of flop movies and tv shows, he returned with the critical and commercial hit The Housemaid (2010), which is a remake of the 1960 film of the same name. Since then, he went on to cement himself as one of Korea\'s biggest movie stars with a string of some of the biggest blockbusters in Korean history including The Thieves (2012), New World (2013), The Face Reader (2013), Assassination (2015), Operation Chromite (2016), and the Along with the Gods films (2017-2018). Most of these films did north of 12 million admissions at the domestic box-office, with The Thieves (2012) and Along with the Gods (2017) becoming the #2 biggest Korean hit in history at their respective time of release. He received a number of awards and nominations for these works including a Popularity Award at the prestigious Grand Bell awards.  His most recent blockbuster is Deliver Us From Evil (2020) in which he reunited with his New World (2013) co-star Hwang Jung-min. It crossed 4 million admissions domestically and was the second biggest hit of the year in Korea.'),
('ACT086', 'Park Hae-soo', '1981-11-21', 'https://image.tmdb.org/t/p/w500/hfejrQ8gjRWCheiKpJANajXT0xi.jpg', 'South Korea', 'Male', 8.02, ''),
('ACT087', 'Jung Ho-yeon', '1994-06-23', 'https://image.tmdb.org/t/p/w500/qPjweqtBeZp6S4dMDkXFsQw0eEH.jpg', 'Seoul, South Korea', 'Female', 6.079, 'HoYeon Jung is a South Korean fashion model. Vogue has dubbed her as “Korea’s next top model”, and she appeared on the namesake show’s 4th season (where she was placed second). She currently ranks as one of the “Top 50” fashion models by models.com.'),
('ACT088', 'Wi Ha-joon', '1991-08-05', 'https://image.tmdb.org/t/p/w500/8QxfBE2tWYuFeGknZxEGhEQXspe.jpg', 'Wando, South Jeolla, South Korea', 'Male', 5.948, ''),
('ACT089', 'Oh Yeong-su', '1944-10-19', 'https://image.tmdb.org/t/p/w500/kUzd955UTVnac2sVG0tYmt9w5jb.jpg', 'South Korea', 'Male', 7.548, ''),
('ACT090', 'Grant Gustin', '1990-01-14', 'https://image.tmdb.org/t/p/w500/kEGU1gGySIe63lyL7AnwXEw4rQn.jpg', 'Norfolk, Virginia, USA', 'Male', 7.759, 'Thomas Grant Gustin (born January 14, 1990) is an American actor and singer. He is best known for his roles as Barry Allen / The Flash on the CW series The Flash as part of the Arrowverse television franchise, and for his role as Sebastian Smythe on the Fox series Glee.  Description above from the Wikipedia article Grant Gustin, licensed under CC-BY-SA, full list of contributors on Wikipedia.'),
('ACT091', 'Candice Patton', '1988-06-24', 'https://image.tmdb.org/t/p/w500/7HUcygrInxDKrRbwCV3jpVwC75c.jpg', 'Jackson, Mississippi, USA', 'Female', 5.907, 'Raised in Plano, Texas, Candice continued her childhood dream of becoming an actress by attending Southern Methodist University in Dallas where she graduated Summa Cum Laude with a B.F.A in Theatre. It was here that she was scouted by The Young and the Restless for a CBS Soap Star Contest and flew out to Los Angeles to briefly join the cast. Candice finished her college education at SMU and moved to Los Angeles shortly after.'),
('ACT092', 'Danielle Panabaker', '1987-09-19', 'https://image.tmdb.org/t/p/w500/dpX6WMQjJDD93YYaC9Wd6tgucuZ.jpg', 'Augusta, Georgia, USA', 'Female', 16.93, 'Danielle Panabaker (born September 19, 1987) is an American actress. She was a cast member on Shark, and appeared in the films Mr. Brooks, Sky High, and Friday the 13th.'),
('ACT093', 'Jesse L. Martin', '1969-01-18', 'https://image.tmdb.org/t/p/w500/enyC1P8DQThh1huqFQlVfdRuji1.jpg', 'Rocky Mount, Virginia, USA', 'Male', 1.809, 'Jesse Lamont Martin (né Watkins; January 18, 1969) is an American actor and singer. He originated the role of Tom Collins on Broadway in the musical Rent and performed on television as NYPD Detective Ed Green on Law & Order and Captain Joe West on The Flash.'),
('ACT094', 'Kayla Compton', '1990-02-03', 'https://image.tmdb.org/t/p/w500/s5DQrvszZeLUIGdD9ryl1aMsGQv.jpg', 'Salinas, California, United States', 'Female', 6.688, 'Kayla Compton moved to Los Angeles to pursue her longtime dream of acting and singing. She quickly had success and played Monica on the HBO hit, \"Entourage.\" She also appeared on TNT\'s \"Perception.\" In KING\'S FAITH, she plays Natalie, the popular high school cheerleader with a past she is trying to hide. Raised in Jacksonville, Florida, Kayla has wanted to be a performer since she was a young girl. Singing was her main passion until her drama teacher in high school told her she should really look into acting, a craft she quickly fell in love with.'),
('ACT095', 'Helen Mirren', '1945-07-26', 'https://image.tmdb.org/t/p/w500/1reKRrsdsHXJaRVHVyOEg4oPTcZ.jpg', 'Hammersmith, London, England, UK', 'Female', 14.65, 'Dame Helen Lydia Mirren DBE (née Mironoff) is an English actor. Mirren began her acting career with the Royal Shakespeare Company in 1967, and is one of the few performers who have achieved the Triple Crown of Acting, having won the Academy Award for Best Actress in 2007, after two previous nominations, for her performance as Queen Elizabeth II in The Queen. In 2015 she won the Tony Award for Best Actress in a Play, after two previous nominations, for her performance in The Audience, in which she also portrayed Elizabeth II. The Audience was written by Peter Morgan, who also wrote The Queen. Mirren won her first of several Emmy Awards in 1996 for her performance as police detective Jane Tennison on the acclaimed ITV series Prime Suspect, which ran for a total of seven seasons between 1991 and 2006.  Some of her other notable film roles include Marcella in the 1984 film Cal, for which she won the Cannes Film Festival Award for Best Actress, 2010 (1984), The Cook, the Thief, His Wife & Her Lover (1989), The Madness of King George (1994), Teaching Mrs. Tingle (1999), Gosford Park (2001), Calendar Girls (2003), The Last Station (2009), Hitchcock (2012), and The Hundred-Foot Journey (2014). She also starred as Victoria Winslow in the action-comedy films Red and Red 2.');

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
('SHW001', 'ACT001', 'Peter Parker / Spider-Man'),
('SHW001', 'ACT002', 'Michelle \'MJ\' Jones'),
('SHW001', 'ACT003', 'Stephen Strange / Doctor Strange'),
('SHW001', 'ACT004', 'Ned Leeds'),
('SHW001', 'ACT005', 'Harold \'Happy\' Hogan'),
('SHW002', 'ACT006', 'Mirabel Madrigal (voice)'),
('SHW002', 'ACT007', 'Abuela Alma Madrigal (voice)'),
('SHW002', 'ACT008', 'Bruno Madrigal (voice)'),
('SHW002', 'ACT009', 'Félix Madrigal (voice)'),
('SHW002', 'ACT010', 'Luisa Madrigal (voice)'),
('SHW003', 'ACT011', 'Thomas A. Anderson / Neo'),
('SHW003', 'ACT012', 'Tiffany / Trinity'),
('SHW003', 'ACT013', 'Morpheus / Agent Smith'),
('SHW003', 'ACT014', 'Smith'),
('SHW003', 'ACT015', 'Bugs'),
('SHW004', 'ACT016', 'Eddie Brock / Venom'),
('SHW004', 'ACT017', 'Cletus Kasady / Carnage'),
('SHW004', 'ACT018', 'Anne Weying'),
('SHW004', 'ACT019', 'Frances Louise Barrison / Shriek'),
('SHW004', 'ACT020', 'Dr. Dan Lewis'),
('SHW005', 'ACT021', 'Claire Redfield'),
('SHW005', 'ACT022', 'Chris Redfield'),
('SHW005', 'ACT023', 'Jill Valentine'),
('SHW005', 'ACT024', 'Albert Wesker'),
('SHW005', 'ACT025', 'Leon S. Kennedy'),
('SHW006', 'ACT026', 'Emily Elizabeth'),
('SHW006', 'ACT027', 'Casey'),
('SHW006', 'ACT028', 'Owen Yu'),
('SHW006', 'ACT029', 'Mr. Bridwell'),
('SHW006', 'ACT030', 'Zack Tieran'),
('SHW007', 'ACT031', 'Malik Khan'),
('SHW007', 'ACT032', 'Hattie'),
('SHW007', 'ACT033', 'Shepard West'),
('SHW007', 'ACT034', 'Piya'),
('SHW007', 'ACT035', 'Dylan'),
('SHW008', 'ACT036', 'Buster Moon (voice)'),
('SHW008', 'ACT037', 'Rosita (voice)'),
('SHW008', 'ACT038', 'Ash (voice)'),
('SHW008', 'ACT039', 'Johnny (voice)'),
('SHW008', 'ACT040', 'Jimmy Crystal (voice)'),
('SHW009', 'ACT041', 'Sir Jean de Carrouges'),
('SHW009', 'ACT042', 'Jacques Le Gris'),
('SHW009', 'ACT043', 'Marguerite de Carrouges'),
('SHW009', 'ACT044', 'Nicole de Carrouges'),
('SHW009', 'ACT045', 'Pierre d\'Alençon'),
('SHW010', 'ACT046', 'Maddie (voice)'),
('SHW010', 'ACT047', 'Pretty Boy (voice)'),
('SHW010', 'ACT048', 'Chaz (voice)'),
('SHW010', 'ACT049', 'Frank (voice)'),
('SHW010', 'ACT050', 'Zoe (voice)'),
('SHW011', 'ACT051', 'Clint Barton / Hawkeye'),
('SHW011', 'ACT052', 'Kate Bishop'),
('SHW011', 'ACT053', 'Jack Duquesne'),
('SHW011', 'ACT054', 'Maya Lopez'),
('SHW011', 'ACT055', 'Kazimierz \'Kazi\' Kazimierczak'),
('SHW012', 'ACT056', 'Moiraine Damodred'),
('SHW012', 'ACT057', 'al\'Lan Mandragoran'),
('SHW012', 'ACT058', 'Nynaeve al\'Meara'),
('SHW012', 'ACT059', 'Egwene al\'Vere'),
('SHW012', 'ACT060', 'Rand al\'Thor'),
('SHW013', 'ACT061', 'Chucky (voice)'),
('SHW013', 'ACT062', 'Jake Wheeler'),
('SHW013', 'ACT063', 'Junior Wheeler'),
('SHW013', 'ACT064', 'Lexy Cross'),
('SHW013', 'ACT065', 'Devon Evans'),
('SHW014', 'ACT066', 'Geralt of Rivia'),
('SHW014', 'ACT067', 'Yennefer of Vengerberg'),
('SHW014', 'ACT068', 'Princess Cirilla of Cintra'),
('SHW014', 'ACT069', 'Fringilla Vigo'),
('SHW015', 'ACT070', 'Camille'),
('SHW015', 'ACT071', 'Andrei'),
('SHW015', 'ACT072', 'Paula'),
('SHW015', 'ACT073', 'Elvie'),
('SHW015', 'ACT074', 'Emilio'),
('SHW016', 'ACT075', 'Liu Xiaomin'),
('SHW016', 'ACT076', 'Chen Zhuo'),
('SHW016', 'ACT077', 'Liu Xiaojie'),
('SHW016', 'ACT078', 'Jin Bo'),
('SHW016', 'ACT079', 'Wang Sumin'),
('SHW017', 'ACT080', 'John Dutton'),
('SHW017', 'ACT081', 'Beth Dutton'),
('SHW017', 'ACT082', 'Kayce Dutton'),
('SHW017', 'ACT083', 'Jamie Dutton'),
('SHW017', 'ACT084', 'Monica Dutton'),
('SHW018', 'ACT085', 'Seong Gi-hun / \"No. 456\"'),
('SHW018', 'ACT086', 'Cho Sang-woo / \"No. 218\"'),
('SHW018', 'ACT087', 'Kang Sae-byeok / \"No. 067\"'),
('SHW018', 'ACT088', 'Hwang Jun-ho'),
('SHW018', 'ACT089', 'Oh Il-nam / \"No. 001\"'),
('SHW019', 'ACT090', 'Barry Allen / The Flash'),
('SHW019', 'ACT091', 'Iris West-Allen'),
('SHW019', 'ACT092', 'Caitlin Snow / Killer Frost / Frost'),
('SHW019', 'ACT093', 'Joe West'),
('SHW019', 'ACT094', 'Allegra Garcia'),
('SHW020', 'ACT095', 'Self - Host');

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
('GEN003', 'Action'),
('GEN009', 'Adventure'),
('GEN012', 'Animation'),
('GEN014', 'Comedy'),
('GEN004', 'Crime'),
('GEN002', 'Drama'),
('GEN010', 'Family'),
('GEN007', 'Fantasy'),
('GEN013', 'History'),
('GEN001', 'Horror'),
('GEN016', 'Music'),
('GEN011', 'Mystery'),
('GEN015', 'Reality'),
('GEN006', 'Science Fiction'),
('GEN005', 'Thriller'),
('GEN008', 'Western');

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
('SHW003', 'USR004', 6, 'Quite good', '2021-10-26'),
('SHW004', 'USR008', 3, 'This is a bad show', '2021-10-26'),
('SHW005', 'USR002', 10, 'I really like this show. It\'s very interesting', '2021-10-26'),
('SHW007', 'USR003', 8, 'Wow. Amazing show!', '2021-10-26'),
('SHW008', 'USR010', 5, 'Bad!', '2021-10-26'),
('SHW009', 'USR006', 6, 'Watching this show with your friends and family', '2021-10-26'),
('SHW010', 'USR001', 5, 'I don\'t like show like this', '2021-10-26'),
('SHW011', 'USR005', 4, 'What a bad show!', '2021-10-26'),
('SHW015', 'USR004', 7, 'You can watch this show. It\'s really cool', '2021-10-26');

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
('SHW001', 'SHC001', 'Spider-Man: No Way Home', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', 'Jon Watts', '2021-12-15', 'https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg', 'https://image.tmdb.org/t/p/w500/1Rr5SrvHxMXHu5RjKpaMba8VTzi.jpg'),
('SHW002', 'SHC001', 'Encanto', 'The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family\'s last hope.', 'Byron Howard', '2021-11-24', 'https://image.tmdb.org/t/p/w500/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', 'https://image.tmdb.org/t/p/w500/3G1Q5xF40HkUBJXxt2DQgQzKTp5.jpg'),
('SHW003', 'SHC001', 'The Matrix Resurrections', 'Plagued by strange memories, Neo\'s life takes an unexpected turn when he finds himself back inside the Matrix.', 'Lana Wachowski', '2021-12-16', 'https://image.tmdb.org/t/p/w500/8c4a8kE7PizaGQQnditMmI1xbRp.jpg', 'https://image.tmdb.org/t/p/w500/hv7o3VgfsairBoQFAawgaQ4cR1m.jpg'),
('SHW004', 'SHC001', 'Venom: Let There Be Carnage', 'After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.', 'Andy Serkis', '2021-09-30', 'https://image.tmdb.org/t/p/w500/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg', 'https://image.tmdb.org/t/p/w500/eENEf62tMXbhyVvdcXlnQz2wcuT.jpg'),
('SHW005', 'SHC001', 'Resident Evil: Welcome to Raccoon City', 'Once the booming home of pharmaceutical giant Umbrella Corporation, Raccoon City is now a dying Midwestern town. The company’s exodus left the city a wasteland…with great evil brewing below the surface. When that evil is unleashed, the townspeople are forever…changed…and a small group of survivors must work together to uncover the truth behind Umbrella and make it through the night.', 'Johannes Roberts', '2021-11-24', 'https://image.tmdb.org/t/p/w500/3eVpNCMoi3C8lA0F0n2retnwvCK.jpg', 'https://image.tmdb.org/t/p/w500/o76ZDm8PS9791XiuieNB93UZcRV.jpg'),
('SHW006', 'SHC001', 'Clifford the Big Red Dog', 'As Emily struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend. When Clifford magically undergoes one heck of a growth spurt, becomes a gigantic dog and attracts the attention of a genetics company, Emily and her Uncle Casey have to fight the forces of greed as they go on the run across New York City. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love.', 'Walt Becker', '2021-11-10', 'https://image.tmdb.org/t/p/w500/30ULVKdjBcQTsj2aOSThXXZNSxF.jpg', 'https://image.tmdb.org/t/p/w500/1Wlwnhn5sXUIwlxpJgWszT622PS.jpg'),
('SHW007', 'SHC001', 'Encounter', 'A decorated Marine goes on a rescue mission to save his two young sons from an unhuman threat. As their journey takes them in increasingly dangerous directions, the boys will need to leave their childhoods behind.', 'Michael Pearce', '2021-12-03', 'https://image.tmdb.org/t/p/w500/AjRUsn8m2znK4mQuYR5fUguBDQM.jpg', 'https://image.tmdb.org/t/p/w500/zlj0zHo67xXoj7hvwGtaKRkSdBV.jpg'),
('SHW008', 'SHC001', 'Sing 2', 'Buster and his new cast now have their sights set on debuting a new show at the Crystal Tower Theater in glamorous Redshore City. But with no connections, he and his singers must sneak into the Crystal Entertainment offices, run by the ruthless wolf mogul Jimmy Crystal, where the gang pitches the ridiculous idea of casting the lion rock legend Clay Calloway in their show. Buster must embark on a quest to find the now-isolated Clay and persuade him to return to the stage.', 'Garth Jennings', '2021-12-01', 'https://image.tmdb.org/t/p/w500/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', 'https://image.tmdb.org/t/p/w500/srFi3oLy8tBcpq07xusnAE5XhwE.jpg'),
('SHW009', 'SHC001', 'The Last Duel', 'King Charles VI declares that Knight Jean de Carrouges settle his dispute with his squire, Jacques Le Gris, by challenging him to a duel.', 'Ridley Scott', '2021-10-13', 'https://image.tmdb.org/t/p/w500/zjrJE0fpzPvX8saJXj8VNfcjBoU.jpg', 'https://image.tmdb.org/t/p/w500/mFbS5TwN95BcSEfiztdchLgTQ0v.jpg'),
('SHW010', 'SHC001', 'Back to the Outback', 'Tired of being locked in a reptile house where humans gawk at them like they are monsters, a ragtag group of Australia’s deadliest creatures plot an escape from their zoo to the Outback, a place where they’ll fit in without being judged.', 'Harry Cripps', '2021-12-03', 'https://image.tmdb.org/t/p/w500/zNXNRLH5wJprUG6B1olaBTNZOjy.jpg', 'https://image.tmdb.org/t/p/w500/5B22eed7ErxFiYAG4Ksb4eLwKNF.jpg'),
('SHW011', 'SHC002', 'Hawkeye', 'Former Avenger Clint Barton has a seemingly simple mission: get back to his family for Christmas. Possible? Maybe with the help of Kate Bishop, a 22-year-old archer with dreams of becoming a superhero. The two are forced to work together when a presence from Barton’s past threatens to derail far more than the festive spirit.', 'Jonathan Igla', '2021-11-24', 'https://image.tmdb.org/t/p/w500/pqzjCxPVc9TkVgGRWeAoMmyqkZV.jpg', 'https://image.tmdb.org/t/p/w500/1R68vl3d5s86JsS2NPjl8UoMqIS.jpg'),
('SHW012', 'SHC002', 'The Wheel of Time', 'Follow Moiraine, a member of the shadowy and influential all-female organization called the “Aes Sedai” as she embarks on a dangerous, world-spanning journey with five young men and women. Moiraine believes one of them might be the reincarnation of an incredibly powerful individual, whom prophecies say will either save humanity or destroy it.', 'Rafe Judkins', '2021-11-18', 'https://image.tmdb.org/t/p/w500/mpgDeLhl8HbhI03XLB7iKO6M6JE.jpg', 'https://image.tmdb.org/t/p/w500/1P3QtW1IkivqDrKbbwuR0zCYIf8.jpg'),
('SHW013', 'SHC002', 'Chucky', 'After a vintage Chucky doll turns up at a suburban yard sale, an idyllic American town is thrown into chaos as a series of horrifying murders begin to expose the town’s hypocrisies and secrets. Meanwhile, the arrival of enemies — and allies — from Chucky’s past threatens to expose the truth behind the killings, as well as the demon doll’s untold origins.', 'David Kirschner', '2021-10-12', 'https://image.tmdb.org/t/p/w500/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg', 'https://image.tmdb.org/t/p/w500/xAKMj134XHQVNHLC6rWsccLMenG.jpg'),
('SHW014', 'SHC002', 'The Witcher', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', 'Lauren Schmidt Hissrich', '2019-12-20', 'https://image.tmdb.org/t/p/w500/7vjaCdMw15FEbXyLQTVa04URsPm.jpg', 'https://image.tmdb.org/t/p/w500/jBJWaqoSCiARWtfV0GlqHrcdidd.jpg'),
('SHW015', 'SHC002', 'Marry Me, Marry You', 'It will center on a couple, portrayed by Gutierrez and Avelino, who navigates the traditional expectations attached to marriage — that it extends beyond one’s partner, and includes their friends and family, too.', '-', '2021-09-13', 'https://image.tmdb.org/t/p/w500/7qZUC0AQmSi7pxNP6cH3swkb8Is.jpg', 'https://image.tmdb.org/t/p/w500/eD2U2RwxQosUDwvu19n46KvJEf9.jpg'),
('SHW016', 'SHC002', 'A Little Mood For Love', 'The fourth installment of the \'Little\' franchise that focuses on the topics of divorce and remarriage, and finding love and happiness again with a new family.', '-', '2021-12-11', 'https://image.tmdb.org/t/p/w500/uYRmDMRm61p7BhLkXyybHUbguPJ.jpg', 'https://image.tmdb.org/t/p/w500/sjGDODYR0hpwkwIY3Y543Dc64na.jpg'),
('SHW017', 'SHC002', 'Yellowstone', 'Follow the violent world of the Dutton family, who controls the largest contiguous ranch in the United States. Led by their patriarch John Dutton, the family defends their property against constant attack by land developers, an Indian reservation, and America’s first National Park.', 'John Linson', '2018-06-20', 'https://image.tmdb.org/t/p/w500/iqWCUwLcjkVgtpsDLs8xx8kscg6.jpg', 'https://image.tmdb.org/t/p/w500/5YTM1bh3Jyfy9IP2eS64W3JDeGs.jpg'),
('SHW018', 'SHC002', 'Squid Game', 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games—with high stakes. But, a tempting prize awaits the victor.', 'Hwang Dong-hyuk', '2021-09-17', 'https://image.tmdb.org/t/p/w500/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg', 'https://image.tmdb.org/t/p/w500/qw3J9cNeLioOLoR68WX7z79aCdK.jpg'),
('SHW019', 'SHC002', 'The Flash', 'After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \"meta-human\" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash.', 'Greg Berlanti', '2014-10-07', 'https://image.tmdb.org/t/p/w500/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg', 'https://image.tmdb.org/t/p/w500/41yaWnIT8AjIHiULHtTbKNzZTjc.jpg'),
('SHW020', 'SHC002', 'Harry Potter: Hogwarts Tournament of Houses', 'Wizarding World fans put their Harry Potter knowledge to the test for the ultimate honor to be named House Cup champion.', '-', '2021-11-28', 'https://image.tmdb.org/t/p/w500/tEHHfzqHnfNJUp4L30wQeYl2xRo.jpg', 'https://image.tmdb.org/t/p/w500/6W8zEF5jE9ErdhzatZBVI7fkpsP.jpg');

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
('SHW001', 'GEN003'),
('SHW001', 'GEN006'),
('SHW001', 'GEN010'),
('SHW002', 'GEN007'),
('SHW002', 'GEN010'),
('SHW002', 'GEN012'),
('SHW002', 'GEN014'),
('SHW003', 'GEN003'),
('SHW003', 'GEN006'),
('SHW004', 'GEN003'),
('SHW004', 'GEN006'),
('SHW004', 'GEN009'),
('SHW005', 'GEN001'),
('SHW005', 'GEN003'),
('SHW005', 'GEN006'),
('SHW006', 'GEN010'),
('SHW006', 'GEN011'),
('SHW006', 'GEN014'),
('SHW007', 'GEN005'),
('SHW007', 'GEN006'),
('SHW007', 'GEN009'),
('SHW008', 'GEN010'),
('SHW008', 'GEN012'),
('SHW008', 'GEN014'),
('SHW008', 'GEN016'),
('SHW009', 'GEN002'),
('SHW009', 'GEN003'),
('SHW009', 'GEN013'),
('SHW010', 'GEN009'),
('SHW010', 'GEN010'),
('SHW010', 'GEN012'),
('SHW010', 'GEN014'),
('SHW011', 'GEN002'),
('SHW011', 'GEN003'),
('SHW011', 'GEN009'),
('SHW012', 'GEN002'),
('SHW012', 'GEN003'),
('SHW012', 'GEN006'),
('SHW012', 'GEN007'),
('SHW012', 'GEN009'),
('SHW013', 'GEN004'),
('SHW013', 'GEN006'),
('SHW013', 'GEN007'),
('SHW014', 'GEN002'),
('SHW014', 'GEN003'),
('SHW014', 'GEN006'),
('SHW014', 'GEN007'),
('SHW014', 'GEN009'),
('SHW015', 'GEN002'),
('SHW015', 'GEN014'),
('SHW016', 'GEN010'),
('SHW017', 'GEN002'),
('SHW017', 'GEN008'),
('SHW018', 'GEN002'),
('SHW018', 'GEN003'),
('SHW018', 'GEN009'),
('SHW018', 'GEN011'),
('SHW019', 'GEN002'),
('SHW019', 'GEN006'),
('SHW019', 'GEN007'),
('SHW020', 'GEN010'),
('SHW020', 'GEN015');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` char(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `date_joined` date NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `dob`, `date_joined`, `phone`, `image_url`, `id`) VALUES
('USR000', 'admin', 'admin@admin.com', '$2y$10$bM/J7oNz6TXeP/U0mEtGxOv4w91HYOL6pyynTrzUF8/lifygQwAjW', '1990-10-10', '2020-12-10', '084942916507', NULL, 0),
('USR001', 'Timothy Riley', 'timotheerailee@hotmail.com', '$2y$10$X2henCg3dJsURGr/xAgdhe.L3d3VXcLjJh/PluGTAl690.YqC8BS.', '1928-05-22', '2021-04-14', '0807609134', 'https://randomuser.me/api/portraits/men/74.jpg', 1),
('USR002', 'Dawn Allen', 'dawnhascome@allen.info', '$2y$10$lSCOzZYYbGajeODeeITFeOiBn3lkR3gEjX6dDfYRfisIP5Ceg7kXC', '1910-07-04', '2021-06-29', '08776174368', 'https://randomuser.me/api/portraits/women/72.jpg', 2),
('USR003', 'Sara Cox', 'saracox189@gmail.com', '$2y$10$Ixvz7k2TRZxoPeHGnaX6Pee7OxhDanN5zYjIohTEEA0jAeqhJN6xe', '2001-10-10', '2021-10-05', '0821504128', 'https://randomuser.me/api/portraits/women/4.jpg', 3),
('USR004', 'Matthew Miller', 'matthew125@miller.com', '$2y$10$TlOEu7CKJv.3OKPlP5AlJ.kWdomujM0GcMg4UMeX4elHsGaX3prEO', '1968-12-14', '2021-08-27', '081900569303', 'https://randomuser.me/api/portraits/men/11.jpg', 4),
('USR005', 'Sean Taylor', 'sean@taylor.biz', '$2y$10$.TWzZb8CHBRT8TPdkSf4reIco/pD86sxErMn42kzcTb7ZR7v3hBEO', '1994-04-26', '2021-01-12', '0866099825', 'https://randomuser.me/api/portraits/men/14.jpg', 5),
('USR006', 'Andrew Malone', 'andrewmalone@gmail.com', '$2y$10$OULB8.4fXk3Pjrgf/UocMe/meKRLsEpuxmvBocZwxla7MeRw4tPdy', '1978-04-23', '2021-02-22', '08545776862', 'https://randomuser.me/api/portraits/men/37.jpg', 6),
('USR007', 'Madeline Price', 'madeline@price.com', '$2y$10$a2sQghmdWYPWQiqkAYhMOOiROoGI1HmcMC5MCkTCxF4ZAXGqu7hvG', '1937-03-07', '2021-04-22', '0878943116', 'https://randomuser.me/api/portraits/women/24.jpg', 7),
('USR008', 'Tyler Thompson', 'tylerthompson@hotmail.com', '$2y$10$EhKnnGsrMzeyztXhETu1/.MMXFhlVaf2K.nVlqH/v020VVe3IyZia', '1987-02-24', '2021-08-31', '0845416381', 'https://randomuser.me/api/portraits/men/66.jpg', 8),
('USR009', 'Selena Jackson', 'selenajackson@hotmail.com', '$2y$10$hANfOe5qhNHNvNeScJm9cu2WWz826RSoC28QIqaj6AFE8svnDpKDi', '1996-12-27', '2021-01-25', '083605566316', 'https://randomuser.me/api/portraits/women/9.jpg', 9),
('USR010', 'Michael Williams', 'michael@williams.com', '$2y$10$D.2VDqk2mh2BPgzzZ1sVaeIVbE8aY0OL6NGfrVeYhEyiIUDs5FHR2', '1953-08-12', '2021-06-10', '0878348763', 'https://randomuser.me/api/portraits/men/10.jpg', 10),
('USR011', 'hans', 'hansandika70@gmail.com', '$2y$10$ZprCIYVV.kYFs/a5gOg.gut6280UGpKfzNz5xXEtq8i2LcR3H4hJ2', NULL, '2022-01-02', NULL, NULL, 11),
('USR012', 'ryne', 'rynef@mail.com', '$2y$10$JkvbjQH7/EhpFowiuYEpke87p/94RkZDSNej1rGlBijEAI507zmXq', NULL, '2022-01-02', NULL, NULL, 12);

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
('SHW002', 'USR011', 'Planning'),
('SHW003', 'USR002', 'Planning'),
('SHW003', 'USR008', 'Planning'),
('SHW003', 'USR011', 'Planning'),
('SHW004', 'USR005', 'Watching'),
('SHW005', 'USR003', 'Watching'),
('SHW005', 'USR004', 'Watching'),
('SHW006', 'USR004', 'Planning'),
('SHW007', 'USR007', 'Completed'),
('SHW007', 'USR011', 'Planning'),
('SHW008', 'USR006', 'Completed'),
('SHW008', 'USR009', 'Completed'),
('SHW009', 'USR004', 'Watching'),
('SHW010', 'USR002', 'Planning'),
('SHW011', 'USR003', 'Planning'),
('SHW012', 'USR001', 'Completed'),
('SHW014', 'USR002', 'Watching'),
('SHW016', 'USR004', 'Planning'),
('SHW018', 'USR009', 'Watching'),
('SHW019', 'USR005', 'Watching'),
('SHW019', 'USR011', 'Finished'),
('SHW020', 'USR010', 'Completed');

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
-- Indexes for table `user`
--
ALTER TABLE `user`
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
  ADD CONSTRAINT `FK_review_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

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
  ADD CONSTRAINT `FK_watchlist_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
