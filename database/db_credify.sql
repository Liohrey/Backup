-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 08:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_credify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(42) NOT NULL,
  `admin_photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`admin_id`, `admin_email`, `admin_username`, `admin_password`, `admin_photo`) VALUES
(1, 'admin1@gordoncollege.edu.ph', 'admin1', 'qwert1234', 0x524946461e16000057454250565038201216000090a5009d012a580258023e2914894321a121124a2404180284b4b77e192ce2e18f5c5455f006ae695578dbfc4767bfe4ffb0ff84fd7ff73fadf7b01c782241f19fb79fc0ff01edb7b05f98fa817e2ffca3fd47dbafc62bdbdc05dd7ff75fdf3d8cfe83cccf9c5f700e061f3dfd71f800fce1e801f47f9fafd13fccfed27c097f38feede9a3ec6ff707ffffba37ed57fff0cc048090120240480901202404809012024048090120240480901202404809012024048090120240480901202404809012024048090120240480900ce1b0a29e7709dc2787922299196ccfbc39c738e71ce39c5c9e5f8890e1ff43685b83fe248e2403d6daff848a322c9d3659003fbc39c738e71ce39c7360791d2a0a5fff896050ebf2c46416f052b640f7351ed7232d99f78738e71c5b1be1e7af599071e9bc39c738e6c939ee03a53a4f1dde1ce39c738e71c5197b1b1b4f13d2cc809012024047e3f14bffe076b816bd272c480901202302cf84930b46c2da6465b33ef0e715ad924669f9ff8901202402ffd30e2eb5eb2ec7fbfa46bbe660b3dfc7fcebe2cab27a34a01f7920613fef0e6c247da872a58c231ce39c714b23e6983a13a5990d1853d4ed5283d968851d2cef9e5ef93dc8ca1dbb69235fd323c39c738e29b099ca48c8cb644d15f16fd409011838ccb2a27fc58900b9180bf3535d196ccf61293b0f0c265f9623225671a328b35f9594ed9c341a6465a5615876e7512c47e4d1ff59de3ef0e6c949e2ce39c71743cdd31ce38c4ae56d890120188d1277c89196ccf54f64fbbebbfbc38c31361784201d2c25af1c9f71998462cc82dd5d232d99e951f7d759d465a66441e5644e47de1ce2cd15fd9ce39b4c3623c6e65c074b35ae6581479f2a96c9796f6139cfb7be6465b33d4a8aefbc39b247e1333ef0e6c807fc4e8fff1eb5555bed2db736f75bd02404808fc8179e1c47e40fc29afcb12023235f4b1f17f5d719f494dfbf0164ffe2404808fc8179e1c47e40fc29afcb1189d376006dd946bdff070a4fd3a2802bb3297e30024ee5b7940769db4d0ce6f59afcb0c2812ea258613dfc75f9617f84bd37fade8dee5f962402ecf45e77057e5dd367e588fc8196438901011f22b3dde0e7160b3ad663fcb5504809011f8b7b29af760613a5993fb835184639c59f2ea6410e465049ac0520b91f78738e7166af7879e428f4efeee426cc9ab624047e525b3afa011f8fab1d25150e2404809011827abea21ad32a37597c45fa373308c58438930b8080179dcc9d28a32d99f787363b84b1964effb97f3f836381bf2c4805d6dac7f24b0a7a66ef2d1274b35f9624030f78414a29ac16292afc403a59ad834f6c6527068e2e3ce63232d99f78738e2fcfac5f47be6d9623eaa2589011f81d2b6ed989ddfe93cdb514c35f3b1ba6240480900bf941fecc1d24e4ea7babca75a925bc403a59afcac1fc8bd02a81d50b09eb26911919559e1044675a2fcd4b606452e6e240712a16979a1a70b5f6b0a6488782ee35948301d9ddd3724c887c44a8738e71ce39b2c93f3a6be4af4afcb1202404ffaf8d30a673cf40cf835480901202404627924fe8fcf1f9ffcbbfbc39c738e7161dbac59def22f9afcb1202404808fc27b313da0f6f1ccafde1ce39c716b66ce888dc189596624048090120240480610d046eb8ff03f8b0ff8eac38900c014225cfa6c5e79ef32a32d99f78738e71ce39c7365af47744a8fe98c3a7c5123b485346a1bb2bf84897ae5bcb7e4e3a6db1f78738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e280000feff0db0000006460360a0ca75901b30965724a8e1e0f0c92ba2e4085828ca47118c37e3b20a7ee5d8e6c77b9296e15b75b90f7ab19d5683f2a25070c7206e5f5c377f5d115a2bec0e9d8022a01f8101a7b2ff1e324f26e3e640cab77ea645b861e150c1e2f53b3d7426b03a6bd42c616b8e5e633d897dab4b2ff2077bf32db88e3e59552883b745169051cbf6da3364f1517073872f115ad286b29564bfe96d044d42d2992c4093c8242ebe14fe17b67a971c8b293f7b40370ff8edfdebbbcffc476bdf0f6f8795ff542a05568b8b875364f30b144257e2c54d6cd7be8e6f77a8215c22cfeb0e8e581c01650553c542811abdb4446efd8a7c914c01237f22e3951d2afac87439a377743aa1c5acbef799c7f843141fd13cf152ab9d515fed7c9bf51c3560f50c33b6ff7121f6143a00a30ff11262674247cb25e582c677d1e51f4b570d451f0fd49d5e776fb40ec4367630079b4855095fa5e9ce09a4592fcfc3b36958f3027572f65c14ec2666347ed9a6c170a3d272876005f0fcc5dce6fcd9f2d63917ad5fe76a06428a3ee14f3f15786b2c9ad9ab8d693a0c430b9b6dfec8dad1da7dc5695df8b53e257495f7cec228a3bd79cf5bd3461c2660ce70a62c7a483259abef7a6f9603d0d72532a8c1cecefeb0cabc8102b71fb40f2ce1841f6bf8afa4f40756bc99248eb73dda5fdd1025945205cf36b78b7637f7ddd1ad5e60b5d6665856fff9160b9f9dbb2652a409ecfe4c611adbf8ccb787a2f3d96656aa6738e1c2ce84f466249489e5fc8b2eab3e539a5525ca5346751e1fa27f5f98275a21db9a47106c1a1bedffea7a10f0b64b0d21a94a3aebd484ab34a6afa743fbfebeb305d436da7a4e361ca595211692e0f95168cb414519ef83ba4c42aa05509dd43cbc2d435e58a06946e47da26b07e14f3f07679a8d6e065dbda37c8655c5361f044365422309c50c83b550b033390ae7e9036196959a5565858faafef867e198a0e1adce0424653a207cee46554cc52780079a29e417685033e3e73176c07cdebd6a857dff50ec06b691c9417888aa095256937ab8a816ea920424d0ecea45d367af93e197df37efab27f15ea7845325476abcb59dae6389b8898cb8627563ea3a8e3ff9a22910137c47d91affbcdb97a813f8fcba1d1d0d02f5561b698a3f6ebc3f4dc5e232363528cb3ccecac3bc972ff54a04af0700bf70710235e2d33a9e6522609d69f4676150822b123171d08183ece9d2d9a3c3e217fe14737debb920582326918c0fdb8fbff6a047c8050967f84bc0b632d2496cd806c4065ed0e39a2645c2584bf03b35a36db7374322160616488fb02cbb7e2de73980e32a4ec3bd178dee9477a2b4d468384e688e98ceac0151f2ffb8d5fa99c2559ca64bdcfd72b5c3ef913051d2bd0fb1d9016670740cf683a4bbd6baa045d1974eef96abc05f51571acd1e7bafb6d2bc2ae02309a0e567b6fe3d795a99004a98e1f44f1d471e97d82fed5fcb5b9709914fd275b0065b436e0348768b65185fb50437208358af5e96743628187e4f645d557af54473ac7640f8a99ffe10631cbf2b62160b97f179a454da680b07ec0ee927b0fbe1b467e0874dfa7fe0e45f46ebad21a4056dda1098f41dd2ea7c5e06b0f5265df4422151ebb2c63228bad99f2398ff76d05ffad6f0ef2e15897602de51039a662cd6ed35ca61d11c46a92e854d4685f5bebabe104ccb61c2db876c6fc90cafb7f284913513071cc4fa85f3e69085cf4c5cc1476222d5f497d1c9f62282d434ce0d156f39f68e83c678485c4882c1afa39753f480c5ddca872eda4f36810ad229c003d334943448a790e995c7f0eea7f9118812d1f68dd162bfcba6bccccec4bb3c858167299b78fab4e97293735897d58ed14b86e1f15e6cca405ad1b9a3b04cc37d4585e0a7766818eb2f653bdbb22706be8e5159e63a7270f6a74f50942c9cd661d36d1960c99e9affe03e892dd52de1f0cfc4038cc2c0304416d6e76fd68ba9b60da20f67c8048699096473e579621275e849c8c1e2ed509c35a73d901fd4fad34212c59673e81afbcf6f3798ce47a693590536bc24d656edaa6a140cad0eff64b8d407a50c9ed22fcaf03185e733e6aaad47989b8fddc544084c32c7c43fe670d5e7df8c044bb9231af9edbcdf750ac95dff7ee61c2eb4362a8e8efbd11319b7a0fa735f4cf3abd56afd40edd5ad0f6a7d4f58eda1fc684dcb48ac734980903d813f76e91be9f82e9fe1c17764b024657d45b81b72783c0772cc368878f896c09ee435233a7cc1c31fb229ca883511f7dde42eb1892566b669864a7b7312b9e44b803215093b2f37982c7cfee94c078f0f74912073efdc3ab545273be8ce4213f4101bfa3bac6951eef237a5692ff7d8c2b9aa3d2afccf88921b3baf89def95b8c42ba6d7f714ea26e808a7f71bf48286082295ba80a221c69559e6e1c949cb3b6aa4962769b1f941134c0fbdc07efbbf76bef930588d100be7e0ca9f62a524c957a12e18db5773a83391556b6bf4a41d2fa4d48659178c44f217dca747f9d971f744be64325947198ed79767e8b09004ae609ae1f67466c9a5450f1f0fb4478ca21e8c028abad842addd2409c5fff120ea0807754640f0063cdbe90a3d6ccf6c5e3bbad20c9cbeba3b657b4be0f25ebb215862caecca32d87a1cccfa73cc32f34839455191eb5feffea59c63d7a0234a3b81125395ee67aa9b8d03090514e89fa03aa3ff5e313b61167919ad405966c85e9d6382b6081a1e379a9e342c49da64f3b04c3094b349816410036878800f5a532600535095739a5b8fb17b52d37c2e19976636b16567599e6360dc3961d3e77e30f884b3ff2ac4c9a73f8c2f2430ffdce4ebb47ea1cfdbeb6d92be464613123e14b9f5ddeded5b882cc92a34da0c6aa9030cd38e923e40a2ec3615daa6adc07ab76211e7012f924c90e3bf769b11470eb874f63a0edf0f64409c0206fbb89d079cc7218abdcb1df8977343999277d99e36e79c55952f7adafa400fa92e21e2b3ef9bb6aba3761c52be8d8bd28f194aa9aadd83c7e3167e85d49ab3757ab75c83ce516549c9158f0eabd03850a75584506ca15ccf525d41890ae98803b1d575e2c660cba70919327b36097024c5fd9d959cda26055c293ec8902cfe4deba7858913e3a2e0d50baea35d70e4393f645da0fbdc10f8a5b5aacf52e75ae7a0fa0cb90fae2213f08f4d2c349cbdf1270f640a9456828945a5c58457a61351687e1da24c4ddd282c564c95d7a168abd1654af7f024ed5b522c22b6eab6f0b40a3a0eb6517d6305e55c3562ec75455d88800ea25f4946f8e4364689814654805396e3b9397d1618d9d3ffedde7ff427c0acc2a90ba6c4029eed5846e82135d0d293c3c93b1875dcf504dd15275b5c7b98cb60c567ffd5a783a36a81557f024303ae13b28470a5a930b7fa6d07ef789dc50a4ea2b1afa486ee0aabad6cff6b7070b05b57e79821ec5422864c797f64bd37823366ff1c3addec1c52de73692374ecebea4d15ba9eef702b1378090d8be5f5c1693daa416cf7693d082521092d588b2a77503fb6f19d1d7ecb5e914c40a1873d5628521cc9d059d134e3d8081da85852c4c72665c56041c6ff045a1253f18b6c1923aa86035395247901a0973ba706b85c3648ae2ef10c56c59d0edba46a994f94c5dd70ca552552db063221db13e388a1f3bd70812e6709cf3d6b910a76fe905e329812242440416885bab7958de1077b4d3ae864c8b8afd7fd02c0cfdfccec33d2bf9d9b330aa3e53056b5dbbb5c76e9573ae192d143d926d16b50a8c259334484443fe6ffc7d6372a6d52dee2221f65434ed583df9c48af3c0d2a5f3a0809fd6fab3909b01d74db08852058b86d9cff6ba5008424ba2d12fccf7bd7a579a14e9c25cdbb9f4831559473ad698fe08f961c20aedf2311d0db3fbba4f9ea3805ef2385aee47a8bafd8f43c8ac0a63eaa31c888f2cc65a5863927550f88feaf29c8404f0eca93708a3da71dbe98da6ecc5652d05871edb60571a12cf09fa43383cdbb627324878e5ce896b64bfc50b0dc122226479296470d7d6eee370a0538d7d981ab1c7d9fc54f988cacc0cf4db0ed71351a9ea0237c904175cd56b2768d3c9862aa797ddf2e5d558b16d8d86210a549fa4c9f55f85fb8aaa78bf1b27802a40c348208c10cc34dfab16572bc6e5348483a2a8634bf6ad9f807708d5327506a5a19441b10c1139d7272f7e6519cf19e48d7034b43a6516fa892862e14a364242b3e0d82eb3b8bfefe4ecd781e1d4572f96e62cf697e13cc5eb48f29e932efaff7350ee0f4a84f6073f5e5102bb80f3b8e6ded5869b1f237834f120bbb06d74b83d87d7f1a74b6ea50bef890757224a652be65d5e06315a7f87f34dff8a52c791cf44ec18ea37d1a2c7ea3e1894e8309ae32e4947b776d33256daed32016b482ad7ad2753f5624f7949a2ceec10f2ec2b8a3c68b514c6e1f8591a0f8697c2f1eedba5b3fd4850371e998a4bb961dd1a024bfe63bbf78029ef6b5d3825bb9422159bd60a2e28f67768ca545a41fe27d18dd43c40e116864ace0520af94e7f5fd06a8e3e209ac397e4cbae1b5ca9a89785518a9605d77b796141f0321b4d9a12af14a7b96dac50ad69ed1b58b4bf36fe9e96fce181943c0a8692bd5c4db902f1a6f82a4add5eb178ec19fc69e5aeaffc7005e6167155aaab1662a875c9e95df4aca3a5b95afd3ff3f904eecba3e422e630a24bcdad7c9569810d9a930ca5d55717f413d2d1c9142bfb1228000b3de1cfc5740033a45623ca98f5707cdd6cd763ff484b6aa9126d2b18590f6871a11b92a137b9e1e0815e957ffe69dd1497c5a785f8ca777a68f8d70595c1ab6df3340a3d91a929f29e4a15bc0dd533e7852aa7e0fac54233baf61b6ed1e51c7279412be465804a94b15df1e20e856128e946c6a09061586e7535d611d84beb67687e5c88cbf42f085bd812a5eb110d58303c6d7f34aa88124b852134c14b260a3206c59bbf21348caacf2da25cc35f0eb39a350ccfd385367821cfd3c79c635a0a167081dfcafc33928b951e20a041c8387cefbc0a2b7d40f6ce983cf8c82819992b4c979c52e8c7b6092a33684383f7918ddbcfbce30755cc800ca04be3768a9b9490cfbfd6363d0a5e742e63eb463d0984322f02452c8d48ac26e4715fe54c12d39d967736a215ef6069aa72ca7c54942897a0b6265b33db86ad6f8d81786bfdd1b47379b8b8767696dc5689ddc5020d4f903893e3f2ac6ea5fc0da13baeb59adb1debce8a5c1a0f1507a66dedd2b25ee7cbb4138c7dd4c4b69d0ab43c847d1ef0ae56de4ec06c5919b3ac5f8f6b87792ecb75013ed4066750d232009c373a5423c0690a27c4ea3fcab119b970b9faab7f2aec2680ec26a421a83d7aefd5e7d7b7ce544c66a0ef538e787938051f6ff72b0094aaa2c0440e4a224bb623542e11154954fb1db419c1274db764b7cb0f53d416dc3c1bbcdc1e4be90f68431056d3d04524e276e0da5c49019ed6ff41b5f5252e0de7652261995904f63b8c0af6b9b99a3b608a5f1e0f61cccf1b844a6dbea44f5098467f579ed798802dfde18006af946f79b005515dabcaa9cee8efb18c0014dfa6067827cf08b52878218e23820f7a3811defaa7a19c693f8ce24732d6c75431fab09a760df13605cadf5c9f983b4dbb13e1c230c73b423bc6301c54d6f9cac7111e9a946e8f96ba2f8cf4236052cc42cb6215baae397e05e0f76ed86b5dd5974e9a483407a7fe0aa11289db085587f3fc8c5254e79796eb2835519ecb2660141d2d6cc4122892a28f8278f75e67eeac67860b323861253e5184d89d277154d91ca623b7aaa6c184e901d1d0adea51cb8d71c7272318ec7075cc5aa4b04d3b9b3d87fe56e287dfe1c6efadf732bf0d5c1c2c2b74e6d0548f0b179aca961862b307e18cce172d5d7e26ee749a698fc549113173c5b129c7143e5177d064f984dd3d03e9c488efa35104b60b2b8009d4680c511d77f2fd4b69877eb00c66587d416f0a5a1e8a3d1ef8b604714a1aebbc36a4848fd44e2fb2a7d2db113520cc1f17132800000000000000000);

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(11) NOT NULL,
  `admin_fname` varchar(30) NOT NULL,
  `admin_lname` varchar(30) NOT NULL,
  `admin_birthday` date NOT NULL,
  `admin_age` int(3) NOT NULL,
  `admin_address` varchar(100) NOT NULL,
  `admin_contactno` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_fname`, `admin_lname`, `admin_birthday`, `admin_age`, `admin_address`, `admin_contactno`) VALUES
(1, 'John', 'Doe', '1990-02-02', 34, '#123 1st street, barangay, olongapo city', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `awards_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `awards_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `certification_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `certification_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coursehandled`
--

CREATE TABLE `coursehandled` (
  `coursehandled_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `department_acronym` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_acronym`) VALUES
(1, 'College of Allied Health Studies', 'CAHS'),
(2, 'College of Business and Accountancy', 'CBA'),
(3, 'College of Computer Studies', 'CCS'),
(4, 'College of Education, Arts, and Sciences', 'CEAS'),
(5, 'College of Hospitality and Tourism Management', 'CHTM');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `education_degree` varchar(50) NOT NULL,
  `education_school` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `experience_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `experience_company` varchar(50) NOT NULL,
  `experience_position` varchar(50) NOT NULL,
  `experience_start` date NOT NULL,
  `experience_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expertise`
--

CREATE TABLE `expertise` (
  `expertise_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `expertise_premiere` enum('Beginner','Intermediate','Advanced','Expert') NOT NULL,
  `expertise_effects` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_illustrator` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_photoshop` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_msoffice` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_googleapps` enum('Beginner','Intermediate','Advance','Expert') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `extension_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `extension_title` varchar(255) NOT NULL,
  `extension_org` varchar(150) NOT NULL,
  `extension_year` date NOT NULL,
  `extension_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_account`
--

CREATE TABLE `faculty_account` (
  `faculty_id` int(11) NOT NULL,
  `faculty_email` varchar(50) NOT NULL,
  `faculty_username` varchar(50) NOT NULL,
  `faculty_password` varchar(50) NOT NULL,
  `faculty_photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_account`
--

INSERT INTO `faculty_account` (`faculty_id`, `faculty_email`, `faculty_username`, `faculty_password`, `faculty_photo`) VALUES
(1, '12345@gordoncollege.edu.ph', '12345', 'qwert1234', 0x524946461e16000057454250565038201216000090a5009d012a580258023e2914894321a121124a2404180284b4b77e192ce2e18f5c5455f006ae695578dbfc4767bfe4ffb0ff84fd7ff73fadf7b01c782241f19fb79fc0ff01edb7b05f98fa817e2ffca3fd47dbafc62bdbdc05dd7ff75fdf3d8cfe83cccf9c5f700e061f3dfd71f800fce1e801f47f9fafd13fccfed27c097f38feede9a3ec6ff707ffffba37ed57fff0cc048090120240480901202404809012024048090120240480901202404809012024048090120240480901202404809012024048090120240480900ce1b0a29e7709dc2787922299196ccfbc39c738e71ce39c5c9e5f8890e1ff43685b83fe248e2403d6daff848a322c9d3659003fbc39c738e71ce39c7360791d2a0a5fff896050ebf2c46416f052b640f7351ed7232d99f78738e71c5b1be1e7af599071e9bc39c738e6c939ee03a53a4f1dde1ce39c738e71c5197b1b1b4f13d2cc809012024047e3f14bffe076b816bd272c480901202302cf84930b46c2da6465b33ef0e715ad924669f9ff8901202402ffd30e2eb5eb2ec7fbfa46bbe660b3dfc7fcebe2cab27a34a01f7920613fef0e6c247da872a58c231ce39c714b23e6983a13a5990d1853d4ed5283d968851d2cef9e5ef93dc8ca1dbb69235fd323c39c738e29b099ca48c8cb644d15f16fd409011838ccb2a27fc58900b9180bf3535d196ccf61293b0f0c265f9623225671a328b35f9594ed9c341a6465a5615876e7512c47e4d1ff59de3ef0e6c949e2ce39c71743cdd31ce38c4ae56d890120188d1277c89196ccf54f64fbbebbfbc38c31361784201d2c25af1c9f71998462cc82dd5d232d99e951f7d759d465a66441e5644e47de1ce2cd15fd9ce39b4c3623c6e65c074b35ae6581479f2a96c9796f6139cfb7be6465b33d4a8aefbc39b247e1333ef0e6c807fc4e8fff1eb5555bed2db736f75bd02404808fc8179e1c47e40fc29afcb12023235f4b1f17f5d719f494dfbf0164ffe2404808fc8179e1c47e40fc29afcb1189d376006dd946bdff070a4fd3a2802bb3297e30024ee5b7940769db4d0ce6f59afcb0c2812ea258613dfc75f9617f84bd37fade8dee5f962402ecf45e77057e5dd367e588fc8196438901011f22b3dde0e7160b3ad663fcb5504809011f8b7b29af760613a5993fb835184639c59f2ea6410e465049ac0520b91f78738e7166af7879e428f4efeee426cc9ab624047e525b3afa011f8fab1d25150e2404809011827abea21ad32a37597c45fa373308c58438930b8080179dcc9d28a32d99f787363b84b1964effb97f3f836381bf2c4805d6dac7f24b0a7a66ef2d1274b35f9624030f78414a29ac16292afc403a59ad834f6c6527068e2e3ce63232d99f78738e2fcfac5f47be6d9623eaa2589011f81d2b6ed989ddfe93cdb514c35f3b1ba6240480900bf941fecc1d24e4ea7babca75a925bc403a59afcac1fc8bd02a81d50b09eb26911919559e1044675a2fcd4b606452e6e240712a16979a1a70b5f6b0a6488782ee35948301d9ddd3724c887c44a8738e71ce39b2c93f3a6be4af4afcb1202404ffaf8d30a673cf40cf835480901202404627924fe8fcf1f9ffcbbfbc39c738e7161dbac59def22f9afcb1202404808fc27b313da0f6f1ccafde1ce39c716b66ce888dc189596624048090120240480610d046eb8ff03f8b0ff8eac38900c014225cfa6c5e79ef32a32d99f78738e71ce39c7365af47744a8fe98c3a7c5123b485346a1bb2bf84897ae5bcb7e4e3a6db1f78738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e71ce39c738e280000feff0db0000006460360a0ca75901b30965724a8e1e0f0c92ba2e4085828ca47118c37e3b20a7ee5d8e6c77b9296e15b75b90f7ab19d5683f2a25070c7206e5f5c377f5d115a2bec0e9d8022a01f8101a7b2ff1e324f26e3e640cab77ea645b861e150c1e2f53b3d7426b03a6bd42c616b8e5e633d897dab4b2ff2077bf32db88e3e59552883b745169051cbf6da3364f1517073872f115ad286b29564bfe96d044d42d2992c4093c8242ebe14fe17b67a971c8b293f7b40370ff8edfdebbbcffc476bdf0f6f8795ff542a05568b8b875364f30b144257e2c54d6cd7be8e6f77a8215c22cfeb0e8e581c01650553c542811abdb4446efd8a7c914c01237f22e3951d2afac87439a377743aa1c5acbef799c7f843141fd13cf152ab9d515fed7c9bf51c3560f50c33b6ff7121f6143a00a30ff11262674247cb25e582c677d1e51f4b570d451f0fd49d5e776fb40ec4367630079b4855095fa5e9ce09a4592fcfc3b36958f3027572f65c14ec2666347ed9a6c170a3d272876005f0fcc5dce6fcd9f2d63917ad5fe76a06428a3ee14f3f15786b2c9ad9ab8d693a0c430b9b6dfec8dad1da7dc5695df8b53e257495f7cec228a3bd79cf5bd3461c2660ce70a62c7a483259abef7a6f9603d0d72532a8c1cecefeb0cabc8102b71fb40f2ce1841f6bf8afa4f40756bc99248eb73dda5fdd1025945205cf36b78b7637f7ddd1ad5e60b5d6665856fff9160b9f9dbb2652a409ecfe4c611adbf8ccb787a2f3d96656aa6738e1c2ce84f466249489e5fc8b2eab3e539a5525ca5346751e1fa27f5f98275a21db9a47106c1a1bedffea7a10f0b64b0d21a94a3aebd484ab34a6afa743fbfebeb305d436da7a4e361ca595211692e0f95168cb414519ef83ba4c42aa05509dd43cbc2d435e58a06946e47da26b07e14f3f07679a8d6e065dbda37c8655c5361f044365422309c50c83b550b033390ae7e9036196959a5565858faafef867e198a0e1adce0424653a207cee46554cc52780079a29e417685033e3e73176c07cdebd6a857dff50ec06b691c9417888aa095256937ab8a816ea920424d0ecea45d367af93e197df37efab27f15ea7845325476abcb59dae6389b8898cb8627563ea3a8e3ff9a22910137c47d91affbcdb97a813f8fcba1d1d0d02f5561b698a3f6ebc3f4dc5e232363528cb3ccecac3bc972ff54a04af0700bf70710235e2d33a9e6522609d69f4676150822b123171d08183ece9d2d9a3c3e217fe14737debb920582326918c0fdb8fbff6a047c8050967f84bc0b632d2496cd806c4065ed0e39a2645c2584bf03b35a36db7374322160616488fb02cbb7e2de73980e32a4ec3bd178dee9477a2b4d468384e688e98ceac0151f2ffb8d5fa99c2559ca64bdcfd72b5c3ef913051d2bd0fb1d9016670740cf683a4bbd6baa045d1974eef96abc05f51571acd1e7bafb6d2bc2ae02309a0e567b6fe3d795a99004a98e1f44f1d471e97d82fed5fcb5b9709914fd275b0065b436e0348768b65185fb50437208358af5e96743628187e4f645d557af54473ac7640f8a99ffe10631cbf2b62160b97f179a454da680b07ec0ee927b0fbe1b467e0874dfa7fe0e45f46ebad21a4056dda1098f41dd2ea7c5e06b0f5265df4422151ebb2c63228bad99f2398ff76d05ffad6f0ef2e15897602de51039a662cd6ed35ca61d11c46a92e854d4685f5bebabe104ccb61c2db876c6fc90cafb7f284913513071cc4fa85f3e69085cf4c5cc1476222d5f497d1c9f62282d434ce0d156f39f68e83c678485c4882c1afa39753f480c5ddca872eda4f36810ad229c003d334943448a790e995c7f0eea7f9118812d1f68dd162bfcba6bccccec4bb3c858167299b78fab4e97293735897d58ed14b86e1f15e6cca405ad1b9a3b04cc37d4585e0a7766818eb2f653bdbb22706be8e5159e63a7270f6a74f50942c9cd661d36d1960c99e9affe03e892dd52de1f0cfc4038cc2c0304416d6e76fd68ba9b60da20f67c8048699096473e579621275e849c8c1e2ed509c35a73d901fd4fad34212c59673e81afbcf6f3798ce47a693590536bc24d656edaa6a140cad0eff64b8d407a50c9ed22fcaf03185e733e6aaad47989b8fddc544084c32c7c43fe670d5e7df8c044bb9231af9edbcdf750ac95dff7ee61c2eb4362a8e8efbd11319b7a0fa735f4cf3abd56afd40edd5ad0f6a7d4f58eda1fc684dcb48ac734980903d813f76e91be9f82e9fe1c17764b024657d45b81b72783c0772cc368878f896c09ee435233a7cc1c31fb229ca883511f7dde42eb1892566b669864a7b7312b9e44b803215093b2f37982c7cfee94c078f0f74912073efdc3ab545273be8ce4213f4101bfa3bac6951eef237a5692ff7d8c2b9aa3d2afccf88921b3baf89def95b8c42ba6d7f714ea26e808a7f71bf48286082295ba80a221c69559e6e1c949cb3b6aa4962769b1f941134c0fbdc07efbbf76bef930588d100be7e0ca9f62a524c957a12e18db5773a83391556b6bf4a41d2fa4d48659178c44f217dca747f9d971f744be64325947198ed79767e8b09004ae609ae1f67466c9a5450f1f0fb4478ca21e8c028abad842addd2409c5fff120ea0807754640f0063cdbe90a3d6ccf6c5e3bbad20c9cbeba3b657b4be0f25ebb215862caecca32d87a1cccfa73cc32f34839455191eb5feffea59c63d7a0234a3b81125395ee67aa9b8d03090514e89fa03aa3ff5e313b61167919ad405966c85e9d6382b6081a1e379a9e342c49da64f3b04c3094b349816410036878800f5a532600535095739a5b8fb17b52d37c2e19976636b16567599e6360dc3961d3e77e30f884b3ff2ac4c9a73f8c2f2430ffdce4ebb47ea1cfdbeb6d92be464613123e14b9f5ddeded5b882cc92a34da0c6aa9030cd38e923e40a2ec3615daa6adc07ab76211e7012f924c90e3bf769b11470eb874f63a0edf0f64409c0206fbb89d079cc7218abdcb1df8977343999277d99e36e79c55952f7adafa400fa92e21e2b3ef9bb6aba3761c52be8d8bd28f194aa9aadd83c7e3167e85d49ab3757ab75c83ce516549c9158f0eabd03850a75584506ca15ccf525d41890ae98803b1d575e2c660cba70919327b36097024c5fd9d959cda26055c293ec8902cfe4deba7858913e3a2e0d50baea35d70e4393f645da0fbdc10f8a5b5aacf52e75ae7a0fa0cb90fae2213f08f4d2c349cbdf1270f640a9456828945a5c58457a61351687e1da24c4ddd282c564c95d7a168abd1654af7f024ed5b522c22b6eab6f0b40a3a0eb6517d6305e55c3562ec75455d88800ea25f4946f8e4364689814654805396e3b9397d1618d9d3ffedde7ff427c0acc2a90ba6c4029eed5846e82135d0d293c3c93b1875dcf504dd15275b5c7b98cb60c567ffd5a783a36a81557f024303ae13b28470a5a930b7fa6d07ef789dc50a4ea2b1afa486ee0aabad6cff6b7070b05b57e79821ec5422864c797f64bd37823366ff1c3addec1c52de73692374ecebea4d15ba9eef702b1378090d8be5f5c1693daa416cf7693d082521092d588b2a77503fb6f19d1d7ecb5e914c40a1873d5628521cc9d059d134e3d8081da85852c4c72665c56041c6ff045a1253f18b6c1923aa86035395247901a0973ba706b85c3648ae2ef10c56c59d0edba46a994f94c5dd70ca552552db063221db13e388a1f3bd70812e6709cf3d6b910a76fe905e329812242440416885bab7958de1077b4d3ae864c8b8afd7fd02c0cfdfccec33d2bf9d9b330aa3e53056b5dbbb5c76e9573ae192d143d926d16b50a8c259334484443fe6ffc7d6372a6d52dee2221f65434ed583df9c48af3c0d2a5f3a0809fd6fab3909b01d74db08852058b86d9cff6ba5008424ba2d12fccf7bd7a579a14e9c25cdbb9f4831559473ad698fe08f961c20aedf2311d0db3fbba4f9ea3805ef2385aee47a8bafd8f43c8ac0a63eaa31c888f2cc65a5863927550f88feaf29c8404f0eca93708a3da71dbe98da6ecc5652d05871edb60571a12cf09fa43383cdbb627324878e5ce896b64bfc50b0dc122226479296470d7d6eee370a0538d7d981ab1c7d9fc54f988cacc0cf4db0ed71351a9ea0237c904175cd56b2768d3c9862aa797ddf2e5d558b16d8d86210a549fa4c9f55f85fb8aaa78bf1b27802a40c348208c10cc34dfab16572bc6e5348483a2a8634bf6ad9f807708d5327506a5a19441b10c1139d7272f7e6519cf19e48d7034b43a6516fa892862e14a364242b3e0d82eb3b8bfefe4ecd781e1d4572f96e62cf697e13cc5eb48f29e932efaff7350ee0f4a84f6073f5e5102bb80f3b8e6ded5869b1f237834f120bbb06d74b83d87d7f1a74b6ea50bef890757224a652be65d5e06315a7f87f34dff8a52c791cf44ec18ea37d1a2c7ea3e1894e8309ae32e4947b776d33256daed32016b482ad7ad2753f5624f7949a2ceec10f2ec2b8a3c68b514c6e1f8591a0f8697c2f1eedba5b3fd4850371e998a4bb961dd1a024bfe63bbf78029ef6b5d3825bb9422159bd60a2e28f67768ca545a41fe27d18dd43c40e116864ace0520af94e7f5fd06a8e3e209ac397e4cbae1b5ca9a89785518a9605d77b796141f0321b4d9a12af14a7b96dac50ad69ed1b58b4bf36fe9e96fce181943c0a8692bd5c4db902f1a6f82a4add5eb178ec19fc69e5aeaffc7005e6167155aaab1662a875c9e95df4aca3a5b95afd3ff3f904eecba3e422e630a24bcdad7c9569810d9a930ca5d55717f413d2d1c9142bfb1228000b3de1cfc5740033a45623ca98f5707cdd6cd763ff484b6aa9126d2b18590f6871a11b92a137b9e1e0815e957ffe69dd1497c5a785f8ca777a68f8d70595c1ab6df3340a3d91a929f29e4a15bc0dd533e7852aa7e0fac54233baf61b6ed1e51c7279412be465804a94b15df1e20e856128e946c6a09061586e7535d611d84beb67687e5c88cbf42f085bd812a5eb110d58303c6d7f34aa88124b852134c14b260a3206c59bbf21348caacf2da25cc35f0eb39a350ccfd385367821cfd3c79c635a0a167081dfcafc33928b951e20a041c8387cefbc0a2b7d40f6ce983cf8c82819992b4c979c52e8c7b6092a33684383f7918ddbcfbce30755cc800ca04be3768a9b9490cfbfd6363d0a5e742e63eb463d0984322f02452c8d48ac26e4715fe54c12d39d967736a215ef6069aa72ca7c54942897a0b6265b33db86ad6f8d81786bfdd1b47379b8b8767696dc5689ddc5020d4f903893e3f2ac6ea5fc0da13baeb59adb1debce8a5c1a0f1507a66dedd2b25ee7cbb4138c7dd4c4b69d0ab43c847d1ef0ae56de4ec06c5919b3ac5f8f6b87792ecb75013ed4066750d232009c373a5423c0690a27c4ea3fcab119b970b9faab7f2aec2680ec26a421a83d7aefd5e7d7b7ce544c66a0ef538e787938051f6ff72b0094aaa2c0440e4a224bb623542e11154954fb1db419c1274db764b7cb0f53d416dc3c1bbcdc1e4be90f68431056d3d04524e276e0da5c49019ed6ff41b5f5252e0de7652261995904f63b8c0af6b9b99a3b608a5f1e0f61cccf1b844a6dbea44f5098467f579ed798802dfde18006af946f79b005515dabcaa9cee8efb18c0014dfa6067827cf08b52878218e23820f7a3811defaa7a19c693f8ce24732d6c75431fab09a760df13605cadf5c9f983b4dbb13e1c230c73b423bc6301c54d6f9cac7111e9a946e8f96ba2f8cf4236052cc42cb6215baae397e05e0f76ed86b5dd5974e9a483407a7fe0aa11289db085587f3fc8c5254e79796eb2835519ecb2660141d2d6cc4122892a28f8278f75e67eeac67860b323861253e5184d89d277154d91ca623b7aaa6c184e901d1d0adea51cb8d71c7272318ec7075cc5aa4b04d3b9b3d87fe56e287dfe1c6efadf732bf0d5c1c2c2b74e6d0548f0b179aca961862b307e18cce172d5d7e26ee749a698fc549113173c5b129c7143e5177d064f984dd3d03e9c488efa35104b60b2b8009d4680c511d77f2fd4b69877eb00c66587d416f0a5a1e8a3d1ef8b604714a1aebbc36a4848fd44e2fb2a7d2db113520cc1f17132800000000000000000);

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `faculty_id` int(11) NOT NULL,
  `faculty_fname` varchar(30) NOT NULL,
  `faculty_lname` varchar(30) NOT NULL,
  `faculty_birthday` date NOT NULL,
  `faculty_address` varchar(100) NOT NULL,
  `faculty_contactno` int(12) NOT NULL,
  `faculty_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `faculty_id` int(11) NOT NULL,
  `highest_degree` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `tenure` int(50) NOT NULL,
  `status` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_username` (`admin_username`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`awards_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`certification_id`);

--
-- Indexes for table `coursehandled`
--
ALTER TABLE `coursehandled`
  ADD PRIMARY KEY (`coursehandled_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`expertise_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `faculty_account`
--
ALTER TABLE `faculty_account`
  ADD PRIMARY KEY (`faculty_id`),
  ADD UNIQUE KEY `faculty_username` (`faculty_username`);

--
-- Indexes for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `awards_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `certification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coursehandled`
--
ALTER TABLE `coursehandled`
  MODIFY `coursehandled_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `expertise_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty_account`
--
ALTER TABLE `faculty_account`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD CONSTRAINT `admin_info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_account` (`admin_id`);

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);

--
-- Constraints for table `coursehandled`
--
ALTER TABLE `coursehandled`
  ADD CONSTRAINT `coursehandled_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);

--
-- Constraints for table `expertise`
--
ALTER TABLE `expertise`
  ADD CONSTRAINT `expertise_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);

--
-- Constraints for table `extensions`
--
ALTER TABLE `extensions`
  ADD CONSTRAINT `extensions_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);

--
-- Constraints for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD CONSTRAINT `personalinfo_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`),
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
