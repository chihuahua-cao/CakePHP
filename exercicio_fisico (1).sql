-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 16-Jan-2020 às 23:17
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercicio_fisico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimento`
--

DROP TABLE IF EXISTS `alimento`;
CREATE TABLE IF NOT EXISTS `alimento` (
  `cod_alimento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(60) DEFAULT NULL,
  `calorias` int(11) DEFAULT NULL,
  `cod_genero` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_alimento`),
  KEY `cod_genero` (`cod_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alimento`
--

INSERT INTO `alimento` (`cod_alimento`, `nome`, `calorias`, `cod_genero`) VALUES
(1, 'banana', 3, 2),
(3, 'Laura', 0, 3),
(5, 'Laura', 33, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimento_vitaminas`
--

DROP TABLE IF EXISTS `alimento_vitaminas`;
CREATE TABLE IF NOT EXISTS `alimento_vitaminas` (
  `cod_vitaminas` int(11) DEFAULT NULL,
  `cod_alimento` int(11) DEFAULT NULL,
  KEY `cod_alimento` (`cod_alimento`),
  KEY `cod_vitaminas` (`cod_vitaminas`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `calorias`
--

DROP TABLE IF EXISTS `calorias`;
CREATE TABLE IF NOT EXISTS `calorias` (
  `cod_calorias` int(11) NOT NULL AUTO_INCREMENT,
  `peso` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_calorias`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `calorias`
--

INSERT INTO `calorias` (`cod_calorias`, `peso`, `valor`) VALUES
(1, 50, 47),
(2, 50, 52),
(3, 50, 74),
(4, 50, 79),
(5, 50, 84),
(6, 50, 105),
(7, 50, 105),
(8, 50, 105),
(9, 50, 105),
(10, 50, 105),
(11, 50, 105),
(12, 50, 105),
(13, 50, 105),
(14, 50, 105),
(15, 50, 105),
(16, 50, 105),
(17, 50, 105),
(18, 50, 105),
(19, 50, 105),
(20, 50, 105),
(21, 50, 105),
(22, 50, 105),
(23, 50, 105),
(24, 50, 105),
(25, 50, 121),
(26, 50, 131),
(27, 50, 131),
(28, 50, 158),
(29, 50, 158),
(30, 50, 158),
(31, 50, 158),
(32, 50, 158),
(33, 50, 158),
(34, 50, 158),
(35, 50, 158),
(36, 50, 158),
(37, 50, 158),
(38, 50, 158),
(39, 50, 158),
(40, 50, 158),
(41, 50, 158),
(42, 50, 158),
(43, 50, 158),
(44, 50, 158),
(45, 50, 163),
(46, 50, 173),
(47, 50, 184),
(48, 50, 200),
(49, 50, 210),
(50, 50, 210),
(51, 50, 210),
(52, 50, 210),
(53, 50, 210),
(54, 50, 210),
(55, 50, 210),
(56, 50, 210),
(57, 50, 210),
(58, 50, 210),
(59, 50, 210),
(60, 50, 210),
(61, 50, 210),
(62, 50, 210),
(63, 50, 262),
(64, 50, 262),
(65, 50, 262),
(66, 50, 262),
(67, 50, 262),
(68, 50, 262),
(69, 50, 262),
(70, 50, 262),
(71, 50, 262),
(72, 50, 262),
(73, 50, 262),
(74, 50, 262),
(75, 50, 262),
(76, 50, 289),
(77, 50, 315),
(78, 50, 315),
(79, 50, 315),
(80, 50, 315),
(81, 50, 315),
(82, 50, 315),
(83, 50, 315),
(84, 50, 315),
(85, 51, 48),
(86, 51, 54),
(87, 51, 75),
(88, 51, 80),
(89, 51, 86),
(90, 51, 107),
(91, 51, 107),
(92, 51, 107),
(93, 51, 107),
(94, 51, 107),
(95, 51, 107),
(96, 51, 107),
(97, 51, 107),
(98, 51, 107),
(99, 51, 107),
(100, 51, 107),
(101, 51, 107),
(102, 51, 107),
(103, 51, 107),
(104, 51, 107),
(105, 51, 107),
(106, 51, 107),
(107, 51, 107),
(108, 51, 107),
(109, 51, 123),
(110, 51, 134),
(111, 51, 134),
(112, 51, 161),
(113, 51, 161),
(114, 51, 161),
(115, 51, 161),
(116, 51, 161),
(117, 51, 161),
(118, 51, 161),
(119, 51, 161),
(120, 51, 161),
(121, 51, 161),
(122, 51, 161),
(123, 51, 161),
(124, 51, 161),
(125, 51, 161),
(126, 51, 161),
(127, 51, 161),
(128, 51, 161),
(129, 51, 166),
(130, 51, 177),
(131, 51, 187),
(132, 51, 203),
(133, 51, 214),
(134, 51, 214),
(135, 51, 214),
(136, 51, 214),
(137, 51, 214),
(138, 51, 214),
(139, 51, 214),
(140, 51, 214),
(141, 51, 214),
(142, 51, 214),
(143, 51, 214),
(144, 51, 214),
(145, 51, 214),
(146, 51, 214),
(147, 51, 268),
(148, 51, 268),
(149, 51, 268),
(150, 51, 268),
(151, 51, 268),
(152, 51, 268),
(153, 51, 268),
(154, 51, 268),
(155, 51, 268),
(156, 51, 268),
(157, 51, 268),
(158, 51, 268),
(159, 51, 268),
(160, 51, 295),
(161, 51, 321),
(162, 51, 321),
(163, 51, 321),
(164, 51, 321),
(165, 51, 321),
(166, 51, 321),
(167, 51, 321),
(168, 51, 321),
(169, 53, 50),
(170, 53, 56),
(171, 53, 78),
(172, 53, 83),
(173, 53, 89),
(174, 53, 111),
(175, 53, 111),
(176, 53, 111),
(177, 53, 111),
(178, 53, 111),
(179, 53, 111),
(180, 53, 111),
(181, 53, 111),
(182, 53, 111),
(183, 53, 111),
(184, 53, 111),
(185, 53, 111),
(186, 53, 111),
(187, 53, 111),
(188, 53, 111),
(189, 53, 111),
(190, 53, 111),
(191, 53, 111),
(192, 53, 111),
(193, 53, 128),
(194, 53, 139),
(195, 53, 139),
(196, 53, 167),
(197, 53, 167),
(198, 53, 167),
(199, 53, 167),
(200, 53, 167),
(201, 53, 167),
(202, 53, 167),
(203, 53, 167),
(204, 53, 167),
(205, 53, 167),
(206, 53, 167),
(207, 53, 167),
(208, 53, 167),
(209, 53, 167),
(210, 53, 167),
(211, 53, 167),
(212, 53, 167),
(213, 53, 173),
(214, 53, 184),
(215, 53, 195),
(216, 53, 211),
(217, 53, 223),
(218, 53, 223),
(219, 53, 223),
(220, 53, 223),
(221, 53, 223),
(222, 53, 223),
(223, 53, 223),
(224, 53, 223),
(225, 53, 223),
(226, 53, 223),
(227, 53, 223),
(228, 53, 223),
(229, 53, 223),
(230, 53, 223),
(231, 53, 278),
(232, 53, 278),
(233, 53, 278),
(234, 53, 278),
(235, 53, 278),
(236, 53, 278),
(237, 53, 278),
(238, 53, 278),
(239, 53, 278),
(240, 53, 278),
(241, 53, 278),
(242, 53, 278),
(243, 53, 278),
(244, 53, 306),
(245, 53, 334),
(246, 53, 334),
(247, 53, 334),
(248, 53, 334),
(249, 53, 334),
(250, 53, 334),
(251, 53, 334),
(252, 53, 334),
(253, 52, 49),
(254, 52, 55),
(255, 52, 76),
(256, 52, 82),
(257, 52, 87),
(258, 52, 109),
(259, 52, 109),
(260, 52, 109),
(261, 52, 109),
(262, 52, 109),
(263, 52, 109),
(264, 52, 109),
(265, 52, 109),
(266, 52, 109),
(267, 52, 109),
(268, 52, 109),
(269, 52, 109),
(270, 52, 109),
(271, 52, 109),
(272, 52, 109),
(273, 52, 109),
(274, 52, 109),
(275, 52, 109),
(276, 52, 109),
(277, 52, 126),
(278, 52, 136),
(279, 52, 136),
(280, 52, 164),
(281, 52, 164),
(282, 52, 164),
(283, 52, 164),
(284, 52, 164),
(285, 52, 164),
(286, 52, 164),
(287, 52, 164),
(288, 52, 164),
(289, 52, 164),
(290, 52, 164),
(291, 52, 164),
(292, 52, 164),
(293, 52, 164),
(294, 52, 164),
(295, 52, 164),
(296, 52, 164),
(297, 52, 169),
(298, 52, 180),
(299, 52, 191),
(300, 52, 207),
(301, 52, 218),
(302, 52, 218),
(303, 52, 218),
(304, 52, 218),
(305, 52, 218),
(306, 52, 218),
(307, 52, 218),
(308, 52, 218),
(309, 52, 218),
(310, 52, 218),
(311, 52, 218),
(312, 52, 218),
(313, 52, 218),
(314, 52, 218),
(315, 52, 273),
(316, 52, 273),
(317, 52, 273),
(318, 52, 273),
(319, 52, 273),
(320, 52, 273),
(321, 52, 273),
(322, 52, 273),
(323, 52, 273),
(324, 52, 273),
(325, 52, 273),
(326, 52, 273),
(327, 52, 273),
(328, 52, 300),
(329, 52, 328),
(330, 52, 328),
(331, 52, 328),
(332, 52, 328),
(333, 52, 328),
(334, 52, 328),
(335, 52, 328),
(336, 52, 328);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

DROP TABLE IF EXISTS `exercicio`;
CREATE TABLE IF NOT EXISTS `exercicio` (
  `cod_exercicio` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designacao` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`cod_exercicio`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `exercicio`
--

INSERT INTO `exercicio` (`cod_exercicio`, `nome`, `designacao`) VALUES
(1, 'Dormir', 'Ainda por definir\r\n'),
(2, 'Descançar', 'Ainda por definir'),
(3, 'Estar Sentado', 'Permanecer Sentado\r\n'),
(4, 'Trabalho de Escritório', 'Trabalhar sentado numa secretária ou numa mesa\r\n'),
(5, 'Conduzir', 'Guiar ou dirigir um veículo\r\n'),
(6, 'Massagem', 'A massagem é um método de tratamento manual que consiste em submeter a pele a diversos tipos de manipulação (beliscar, percutir, friccionar, amassar, fazer vibrar, etc.). A massagem pode ser utilizada para relaxar, para combater as dores e os espasmos, para ajudar a reabsorção de derrames ou para combater a celulite ou simplesmente para relaxar o corpo.\r\n'),
(7, 'Tocar um Instrumento Musical', 'Fazer com que um instrumento musical dê sons, de preferencia harmoniosos\r\n'),
(8, 'Spa', 'Spa é um estabelecimento comercial que dispõe de tratamentos de saúde, beleza e bem-estar.\r\n'),
(9, 'Estudar', 'Procurar adquirir o conhecimento de algo: estudar uma lição. Normalmente isso é feito enquanto se lê ou escreve matéria. \r\n'),
(10, 'Golfe (de Carrinho)', 'Golfe é um desporto no qual os jogadores usam diversos tipos de tacos para bater numa bola com o objetivo, da mesma entrar numa série de buracos numa vasta extensão de terreno, usando o menor número de tacadas possível. Neste caso a maneira dos jogadores deslocarem-se é de carrinho.\r\n'),
(11, 'Trabalho', 'Ainda por definir\r\n'),
(12, 'Tomando Banho', 'Ato de lavar-se sentado ou deitado\r\n'),
(13, 'Karaoke', 'Esta atividade é um passatempo de origem japonesa no qual as pessoas cantam acompanhando versões instrumentais de músicas.\r\n'),
(14, 'Leitura', 'Leitura é a ação de ler algo. É o hábito de ler. A palavra deriva do Latim \"lectura\", originalmente com o significado de eleição/escolha.\r\n\r\n'),
(15, 'Caminhar (Lento) - 3/kph', 'Uma caminhada é uma actividade, geralmente desportiva, não competitiva, praticada essencialmente em ambientes naturais\r\n'),
(16, 'Cantar', 'Emitir sons musicais com a voz\r\n'),
(17, 'Assistir TV', 'Ainda por definir\r\n'),
(18, 'em Pé', 'Permanecer em Pé\r\n'),
(19, 'Amamentar', 'Alimentar/nutrir um bebe apartir do próprio peito\r\n'),
(20, 'Chuveiro', 'Chuveiro também chamado de ducha ou duche é o ato de lavar-se de pé\r\n'),
(22, 'Ensino', 'Ato de ensinar, transmissão de conhecimentos e competências para outras pessoas.\r\n'),
(23, 'Cozinhar', 'Arte ou modo de preparar os alimentos\r\n'),
(24, 'Costura', 'Ato de coser, de unir por meio de pontos dados com agulha enfiada em linha\r\n'),
(25, 'Ir às Compras', 'Percorrer lojas em bosca de um ou varios artigos para compra\r\n'),
(26, 'Trabalho Doméstico', 'Ainda por definir\r\n'),
(27, 'Alongar (Yoga)', 'Alongamento é um tipo de exercício físico orientado para a manutenção ou melhora da flexibilidade. Os exercícios de alongamento devem ser realizados preferencialmente após um aquecimento, como corrida leve ou exercícios calistênicos, pois a temperatura muscular geral ou específica afeta a flexibilidade.\r\n'),
(28, 'Lavar Loiça', 'Limpar a loiça normalmente com água e á mão\r\n'),
(29, 'Yoga', 'A Yoga é um conceito que se refere às tradicionais atividades fisicas originárias da Índia. A palavra está associada com práticas meditativas que costumam ser associadas tipicamente com a hata-ioga e as suas posturas. Os principais ramos da ioga incluem a raja-ioga, carma-ioga, jnana-ioga, bacti-ioga, tantra ioga, tao yoga e hata-ioga.\r\n'),
(30, 'Compras de Supermercado', 'Ir a um supermercado em bosca de um ou varios artigos para compra dos mesmos.\r\n'),
(31, 'Lavar Roupa', 'Limpar a roupa normalmente com água e á mão\r\n'),
(32, 'Sauna', 'A sauna consiste em uma sala ou casa com um ambiente muito aquecido, a fim de propiciar relaxamento e promover o convívio social entre os frequentadores do recinto. Há basicamente dois tipo de saunas: a \'sauna a vapor\' (sauna húmida ou banho turco) e a \'sauna seca\', que utiliza pedras ou outro material que é aquecido, sem libertar vapor.\r\n'),
(33, 'Scooter', 'Um Scooter é um veículo de duas rodas, accionado por um pequeno motor, de forma análoga à motocicleta, mas provido de um assento em lugar de selim de montar, e com rodas de menor diâmetro. Esta atividade nada mais é que andar nesse meio de transporte.\r\n'),
(34, 'Motociclistas', 'O motociclismo é uma modalidade desportiva que envolve o uso de motos em diversas formas competitivas como velocidade, motocross, enduro e outras.\r\n'),
(35, 'Passar a Ferro', 'É o ato de passar com um ferro (geralmente quente) por cima de roupas ou tecidos com o objetivo de alisar as roupas.\r\n'),
(36, 'Pescar', 'Apanhar (peixe) com rede, anzol, fisga, etc.\r\n'),
(37, 'Limpeza', 'Ainda por definir\r\n'),
(38, 'Reparação', 'Acto ou efeito de reparar ou consertar.\r\n'),
(39, 'Surf', 'O surf é desporto náutico que consiste em acompanhar o rebentar das ondas mantendo-se em equilíbrio sobre uma prancha\r\n'),
(40, 'Velejar', 'Navegar a vela, normalmente num veleiro\r\n'),
(41, 'Wii Fit', 'Wii Fit é um videogame desenvolvido para o Wii. O jogo vem acompanhado pelo acessório Wii Balance Board e visa a permitir que a família se exercite junta. \r\n'),
(42, 'Andar de Barco ou Canoagem', 'A canoagem é um desporto náutico, praticado com uma canoa ou um caiaque, sendo uma modalidade olímpica desde 1936. Ou conduzir/viajar de barco.\r\n'),
(43, 'Aspiração', 'Acção de aspirar o chão.\r\n'),
(44, 'Lavagem de Carro', 'Limpar o carro normalmente com água e sabão ou detergente\r\n'),
(45, 'Pilates', 'Pilates é um conjunto de exercícios criados pelo alemão chamado Joseph Pilates, em meados de 1920, que são realizados nos Solo ou em Equipamentos exclusivos. Este método de exercício físico visa desenvolver a força e a flexibilidade musculares e estimular o equilíbrio entre a mente e o corpo, através da execução de movimentos controlados, coordenados e precisos.\r\n'),
(46, 'Caminhar (Moderado) - 5/kph', 'Uma caminhada é uma actividade não competitiva, praticada essencialmente em ambientes naturais.\r\n'),
(47, 'Ginástica (Leve, p.e. Exercícios em Casa)', 'A ginástica é um conceito que engloba modalidades competitivas e não competitivas e envolve a prática de uma série de movimentos exigentes de força, flexibilidade e coordenação motora para fins únicos de aperfeiçoamento físico e mental.\r\n'),
(48, 'Caminhar (Rápido) - 5,5/kph', 'Uma caminhada é uma actividade não competitiva, praticada essencialmente em ambientes naturais.\r\n'),
(49, 'Andar a Cavalo', 'Sentar sobre o dorso do cavalo enquanto o mesmo caminha.\r\n'),
(50, 'Jardinagem', 'Atividade que consiste em tratar de um jardim, cultivando plantas e ocupar-se da sua manutenção\r\n'),
(51, 'Ténis de Mesa', 'O tênis de mesa, também conhecido como pingue-pongue, é um jogo que pode ser jogado em pares ou individualmente e este consiste em bater numa bola com raquetes, com o objetivo da mesma passar de um lado ao outro da mesa por cima de uma rede instalada a meio da mesma. O nome pingue-pongue deve-se ao barulho que a bola faz ao bater na raquete e na mesa.\r\n'),
(52, 'Golfe (a Pé)', 'Golfe é um desporto no qual os jogadores usam diversos tipos de tacos para bater numa bola com o objetivo, da mesma entrar numa série de buracos numa vasta extensão de terreno, usando o menor número de tacadas possível. Neste caso a maneira dos jogadores deslocarem-se é a pé.\r\n'),
(53, 'Voleibol', 'Jogo que consiste em atirar uma bola por cima duma rede horizontal, batendo-lhe com a mão ou punho, e sem deixar que a mesma caia no chão. As duas equipas são compostas por 6 jogadores.\r\n'),
(54, 'Nadar (Lento)', 'Flutuar e mover-se na água (lentamente)\r\n'),
(55, 'Tiro com Arco', 'O tiro com arco é a prática de utilizar um arco e flechas para atingir um alvo\r\n'),
(56, 'Varrer', 'Limpar o chão com uma vassoura.\r\n'),
(57, 'Motor-Cross', 'O motocross é uma forma de motociclismo que ocorre em circuitos não pavimentados com grandes saltos, nos quais os diferentes participantes competem para acabar a corrida em primeiro lugar.\r\n'),
(58, 'Bowling', ' Jogo que consiste em lançar uma bola pesada por um corredor com o intuito de derrubar um conjunto de pinos no final desse corredor.\r\n'),
(59, 'Dançar (Passo Lento)', 'A dança lenta é geralmente executada por pares que dançam perto um do outro ao ritmo da musica.\r\n'),
(60, 'Correr na Água', 'Ainda por definir\r\n'),
(61, 'Bikram Yoga', 'A Bikram Yoga é uma modalidade que consiste em várias posições 26 que são realizadas de modo contínuo, como uma série.Esta modalidade tem uma peculiaridade, é realizada a mais de 40 graus de temperatura.\r\n'),
(62, 'Ciclismo (Passeio) - <16/kph', 'Ciclismo é um desporto praticado com uma bicicleta cujo objetivo dos participantes é chegar primeiro a uma determinada meta ou cumprir determinado percurso no menor tempo possível\r\n'),
(63, 'Trabalhos Pesados', 'Ainda por definir\r\n'),
(64, 'Caminhar (Rápido) - 6,5/kph', 'Uma caminhada é uma actividade, geralmente desportiva, não competitiva, praticada essencialmente em ambientes naturais\r\n'),
(65, 'Pintura', 'A pintura refere-se genericamente à técnica de aplicar pigmento em forma pastosa, líquida ou em pó a uma superfície, a fim de colori-la, atribuindo-lhe matizes, tons e texturas.\r\n'),
(66, 'Roçada do Gramado', 'Ainda por definir\r\n'),
(67, 'Caiaque', 'Andar de caiaque é um desporto praticado numa canoa longa e estreita, propulsionada por uma pagaia, destinada a um ou mais tripulantes, utilizada em canoagem de lazer ou de competição.\r\n'),
(68, 'Softball', 'O softbol é um desporto muito parecido com o beisebol, sendo as regras praticamente as mesmas. As principais diferenças entre o softbol e o beisebol são as dimensões da bola (maiores no softbol), as dimensões do campo (menor do que o de beisebol) e a duração do jogo (que é de sete entradas no softbol, em vez de nove).\r\n'),
(69, 'Skating - 16/kph', 'É um desporto que consiste em deslizar sobre o solo e obstáculos equilibrando-se numa prancha, chamada de skate\r\n'),
(71, 'Hula Hoop', 'Um hula hoop é um arco que gira em torno da cintura, membros ou pescoço. A atividade consiste em não deixar que o mesmo toque no chão\r\n'),
(72, 'Dançar (Dança Popular)', 'Dança é a arte de movimentar expressivamente o corpo seguindo movimentos ritmados, em geral ao som de música.\r\n'),
(73, 'Cricket', 'O Cricket é um jogo de origem inglesa, que se joga , geralmente com duas equipas de 11 jogadores, com tacos e bolas de cortiça e couro, num campo relvado de grandes dimensões.\r\n'),
(74, 'Caçar', 'Ainda por definir\r\n'),
(75, 'Baseball', 'Desporto praticado com um bastão e uma pequena bola maciça coberta de couro, que se disputa entre duas equipas de nove jogadores cada, num campo com quatro bases ou posições que os jogadores ocupam alternadamente, e cujo objetivo é realizar um circuito completo em torno do campo\r\n'),
(76, 'Exercícios de Manutenção (Health Club ou Ginásio) ', 'Ainda por definir\r\n'),
(77, 'Treino em Circuito', 'O treinamento em circuito consiste na integração de diferentes exercícios, feitos em sequência. O grupo de exercícios pode ser apenas muscular ou intercalado com actividades aeróbicas leves.\r\n'),
(78, 'Basquetebol', 'O basquetebol é um desporto no qual competem duas equipas constituídas por cinco jogadores cada. O objetivo é fazer com que a bola  acerte dentro do cesto da equipa adversária\r\n'),
(79, 'Arvorismo', 'O Arvorismo é uma atividade que consiste na travessia de um percurso suspenso entre plataformas montadas nas árvores. Esses caminhos normalmente são feitos de madeira e cordas.\r\n'),
(80, 'Esqui Aquático', 'Desporto ou actividade em que o praticante, puxado por um barco a motor, desliza na água mantendo-se num ou dois patins de madeira.\r\n'),
(81, 'Jump', 'O jump é uma atividade onde as pessoas realizam saltos em mini camas elásticas. Pode ser também chamado de powerjump e de aerojump, com algumas poucas variações quanto aos exercícios. Esta atividade é bastante praticada em academias/ginásios\r\n'),
(82, 'Máquina de Exercício (Lento)', 'Ainda por definir\r\n'),
(83, 'Mergulho', 'Mergulho é a prática de submergir, ou utilizando um aparato de respiração ( mergulho autônomo, mergulho dependente ou semi-dependente) ou segurando a sua respiração, denominada mergulho livre.\r\n'),
(84, 'Floorball', 'O floorball é um desporto de equipa, praticado no interior de um recinto. As duas equipas são compostas por seis jogadores e um guarda-redes. O objetivo deste jogo é com o auxilio de um stick meter a bola na baliza da outra equipa.\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exerciciocaloria`
--

DROP TABLE IF EXISTS `exerciciocaloria`;
CREATE TABLE IF NOT EXISTS `exerciciocaloria` (
  `cod_caloria` int(11) DEFAULT NULL,
  `cod_exercicio` int(11) DEFAULT NULL,
  KEY `cod_caloria` (`cod_caloria`),
  KEY `cod_exercicio` (`cod_exercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `exerciciocaloria`
--

INSERT INTO `exerciciocaloria` (`cod_caloria`, `cod_exercicio`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 1),
(86, 2),
(87, 3),
(88, 4),
(89, 5),
(90, 6),
(91, 7),
(92, 8),
(93, 9),
(94, 10),
(95, 11),
(96, 12),
(97, 13),
(98, 14),
(99, 15),
(100, 16),
(101, 17),
(102, 18),
(103, 19),
(104, 20),
(105, 21),
(106, 22),
(107, 23),
(108, 24),
(109, 25),
(110, 26),
(111, 27),
(112, 28),
(113, 29),
(114, 30),
(115, 31),
(116, 32),
(117, 33),
(118, 34),
(119, 35),
(120, 36),
(121, 37),
(122, 38),
(123, 39),
(124, 40),
(125, 41),
(126, 42),
(127, 43),
(128, 44),
(129, 45),
(130, 46),
(131, 47),
(132, 48),
(133, 49),
(134, 50),
(135, 51),
(136, 52),
(137, 53),
(138, 54),
(139, 55),
(140, 56),
(141, 57),
(142, 58),
(143, 59),
(144, 60),
(145, 61),
(146, 62),
(147, 63),
(148, 64),
(149, 65),
(150, 66),
(151, 67),
(152, 68),
(153, 69),
(154, 70),
(155, 71),
(156, 72),
(157, 73),
(158, 74),
(159, 75),
(160, 76),
(161, 77),
(162, 78),
(163, 79),
(164, 80),
(165, 81),
(166, 82),
(167, 83),
(168, 84),
(253, 1),
(254, 2),
(255, 3),
(256, 4),
(257, 5),
(258, 6),
(259, 7),
(260, 8),
(261, 9),
(262, 10),
(263, 11),
(264, 12),
(265, 13),
(266, 14),
(267, 15),
(268, 16),
(269, 17),
(270, 18),
(271, 19),
(272, 20),
(273, 21),
(274, 22),
(275, 23),
(276, 24),
(277, 25),
(278, 26),
(279, 27),
(280, 28),
(281, 29),
(282, 30),
(283, 31),
(284, 32),
(285, 33),
(286, 34),
(287, 35),
(288, 36),
(289, 37),
(290, 38),
(291, 39),
(292, 40),
(293, 41),
(294, 42),
(295, 43),
(296, 44),
(297, 45),
(298, 46),
(299, 47),
(300, 48),
(301, 49),
(302, 50),
(303, 51),
(304, 52),
(305, 53),
(306, 54),
(307, 55),
(308, 56),
(309, 57),
(310, 58),
(311, 59),
(312, 60),
(313, 61),
(314, 62),
(315, 63),
(316, 64),
(317, 65),
(318, 66),
(319, 67),
(320, 68),
(321, 69),
(322, 70),
(323, 71),
(324, 72),
(325, 73),
(326, 74),
(327, 75),
(328, 76),
(329, 77),
(330, 78),
(331, 79),
(332, 80),
(333, 81),
(334, 82),
(335, 83),
(336, 84),
(169, 1),
(170, 2),
(171, 3),
(172, 4),
(173, 5),
(174, 6),
(175, 7),
(176, 8),
(177, 9),
(178, 10),
(179, 11),
(180, 12),
(181, 13),
(182, 14),
(183, 15),
(184, 16),
(185, 17),
(186, 18),
(187, 19),
(188, 20),
(189, 21),
(190, 22),
(191, 23),
(192, 24),
(193, 25),
(194, 26),
(195, 27),
(196, 28),
(197, 29),
(198, 30),
(199, 31),
(200, 32),
(201, 33),
(202, 34),
(203, 35),
(204, 36),
(205, 37),
(206, 38),
(207, 39),
(208, 40),
(209, 41),
(210, 42),
(211, 43),
(212, 44),
(213, 45),
(214, 46),
(215, 47),
(216, 48),
(217, 49),
(218, 50),
(219, 51),
(220, 52),
(221, 53),
(222, 54),
(223, 55),
(224, 56),
(225, 57),
(226, 58),
(227, 59),
(228, 60),
(229, 61),
(230, 62),
(231, 63),
(232, 64),
(233, 65),
(234, 66),
(235, 67),
(236, 68),
(237, 69),
(238, 70),
(239, 71),
(240, 72),
(241, 73),
(242, 74),
(243, 75),
(244, 76),
(245, 77),
(246, 78),
(247, 79),
(248, 80),
(249, 81),
(250, 82),
(251, 83),
(252, 84);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio_musculo`
--

DROP TABLE IF EXISTS `exercicio_musculo`;
CREATE TABLE IF NOT EXISTS `exercicio_musculo` (
  `cod_exercicio` int(11) DEFAULT NULL,
  `cod_musculo` int(11) DEFAULT NULL,
  KEY `cod_exercicio` (`cod_exercicio`),
  KEY `cod_musculo` (`cod_musculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE IF NOT EXISTS `genero` (
  `cod_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nome_genero` char(60) DEFAULT NULL,
  PRIMARY KEY (`cod_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`cod_genero`, `nome_genero`) VALUES
(1, 'Fruta'),
(2, 'Carne'),
(3, 'Vegetais');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musculo`
--

DROP TABLE IF EXISTS `musculo`;
CREATE TABLE IF NOT EXISTS `musculo` (
  `cod_musculo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(60) DEFAULT NULL,
  `designacao` char(200) DEFAULT NULL,
  PRIMARY KEY (`cod_musculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

DROP TABLE IF EXISTS `utilizador`;
CREATE TABLE IF NOT EXISTS `utilizador` (
  `cod_utilizador` int(11) NOT NULL AUTO_INCREMENT,
  `Password` char(60) NOT NULL,
  `genero` enum('feminino','masculino','outro') DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nome` char(60) DEFAULT NULL,
  `nome_utlizador` char(60) DEFAULT NULL,
  PRIMARY KEY (`cod_utilizador`),
  UNIQUE KEY `PASSWORD` (`Password`),
  UNIQUE KEY `utilizador` (`nome_utlizador`),
  UNIQUE KEY `nome_utlizador` (`nome_utlizador`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `utilizador`
--

INSERT INTO `utilizador` (`cod_utilizador`, `Password`, `genero`, `altura`, `data_nascimento`, `nome`, `nome_utlizador`) VALUES
(1, '123', 'feminino', 150, '2002-07-09', 'Laura', 'LauraV_V');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador_alimento`
--

DROP TABLE IF EXISTS `utilizador_alimento`;
CREATE TABLE IF NOT EXISTS `utilizador_alimento` (
  `cod_utilizador` int(11) DEFAULT NULL,
  `cod_alimento` int(11) DEFAULT NULL,
  `quantidade` char(60) DEFAULT NULL,
  KEY `cod_utilizador` (`cod_utilizador`),
  KEY `cod_alimento` (`cod_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `utilizador_alimento`
--

INSERT INTO `utilizador_alimento` (`cod_utilizador`, `cod_alimento`, `quantidade`) VALUES
(1, 1, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador_exercicio`
--

DROP TABLE IF EXISTS `utilizador_exercicio`;
CREATE TABLE IF NOT EXISTS `utilizador_exercicio` (
  `cod_utilizador` int(11) DEFAULT NULL,
  `cod_exercicio` int(11) DEFAULT NULL,
  `imc` float DEFAULT NULL,
  `data_treino` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `peso_inicial` float DEFAULT NULL,
  `peso_final` float DEFAULT NULL,
  `calorias_perdidas` float DEFAULT NULL,
  `fc_frc` float DEFAULT NULL,
  `tempo_execucao` time DEFAULT NULL,
  KEY `cod_exercicio` (`cod_exercicio`),
  KEY `cod_utilizador` (`cod_utilizador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vitaminas`
--

DROP TABLE IF EXISTS `vitaminas`;
CREATE TABLE IF NOT EXISTS `vitaminas` (
  `cod_vitaminas` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(60) DEFAULT NULL,
  `designacao` char(200) DEFAULT NULL,
  PRIMARY KEY (`cod_vitaminas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alimento`
--
ALTER TABLE `alimento`
  ADD CONSTRAINT `alimento_ibfk_1` FOREIGN KEY (`cod_genero`) REFERENCES `genero` (`cod_genero`);

--
-- Limitadores para a tabela `exercicio_musculo`
--
ALTER TABLE `exercicio_musculo`
  ADD CONSTRAINT `exercicio_musculo_ibfk_1` FOREIGN KEY (`cod_musculo`) REFERENCES `musculo` (`cod_musculo`);

--
-- Limitadores para a tabela `utilizador_alimento`
--
ALTER TABLE `utilizador_alimento`
  ADD CONSTRAINT `utilizador_alimento_ibfk_1` FOREIGN KEY (`cod_utilizador`) REFERENCES `utilizador` (`cod_utilizador`),
  ADD CONSTRAINT `utilizador_alimento_ibfk_2` FOREIGN KEY (`cod_alimento`) REFERENCES `alimento` (`cod_alimento`);

--
-- Limitadores para a tabela `utilizador_exercicio`
--
ALTER TABLE `utilizador_exercicio`
  ADD CONSTRAINT `utilizador_exercicio_ibfk_1` FOREIGN KEY (`cod_utilizador`) REFERENCES `utilizador` (`cod_utilizador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
