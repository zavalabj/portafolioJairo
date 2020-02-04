-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-01-2020 a las 16:31:02
-- Versión del servidor: 5.6.44-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `projectsJairo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id_project` int(11) NOT NULL,
  `title` text NOT NULL,
  `project_description` blob NOT NULL,
  `src_evidence_image` text NOT NULL,
  `code` blob NOT NULL,
  `conclusions` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id_project`, `title`, `project_description`, `src_evidence_image`, `code`, `conclusions`) VALUES
(1, 'PROYECTO DE PRUEBA #1', 0x45737461206573206c6120646573637269706369c3b36e2064656c2070726f796563746f206465207072756562612e20457374652070726f796563746f207365207265616c697ac3b320636f6e206c612066696e616c696461642064652068616365722076617269617320636f7361732c20636f6d6f20706f7220656a656d706c6f2c20656a656d706c696669636172206c6f20717565206120636f6e74696e75616369c3b36e20766120612070617361722c207061726120706f646572207265616c697a6172207072756562617320656e206e75657374726120706c617461666f726d61207765622064696e616d6963612070617261207375626972206e75657374726f732070726f796563746f73206465206c61206d617465726961204d696e6572c3ad61206465206461746f7320636f6e20656c2070726f6665736f72204a6169726f2041727475726f204179616c6120476f646f792c207369656e646f206e6f736f74726f73206c6f7320657374756469616e7465733a20726567696e612064656c2070696c61722c206a6f7365207a6176616c6120792062656c7472616e2e, '/views/images/evidencia.png', 0x2320507974686f6e3320636f646520746f20696d706c656d656e742048696c6c20436970686572200d0a0d0a6b65794d6174726978203d205b5b305d202a203320666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a6d657373616765566563746f72203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f722074686520636970686572200d0a6369706865724d6174726978203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e2067656e65726174657320746865200d0a23206b6579206d617472697820666f7220746865206b657920737472696e67200d0a646566206765744b65794d6174726978286b6579293a200d0a096b203d20300d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652833293a200d0a0909096b65794d61747269785b695d5b6a5d203d206f7264286b65795b6b5d2920252036350d0a0909096b202b3d20310d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e20656e63727970747320746865206d657373616765200d0a64656620656e6372797074286d657373616765566563746f72293a200d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652831293a200d0a0909096369706865724d61747269785b695d5b6a5d203d20300d0a090909666f72207820696e2072616e67652833293a200d0a090909096369706865724d61747269785b695d5b6a5d202b3d20286b65794d61747269785b695d5b785d202a0d0a0909090909090909096d657373616765566563746f725b785d5b6a5d29200d0a0909096369706865724d61747269785b695d5b6a5d203d206369706865724d61747269785b695d5b6a5d20252032360d0a0d0a6465662048696c6c436970686572286d6573736167652c206b6579293a200d0a0d0a092320476574206b6579206d61747269782066726f6d20746865206b657920737472696e67200d0a096765744b65794d6174726978286b657929200d0a0d0a09232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a09666f72206920696e2072616e67652833293a200d0a09096d657373616765566563746f725b695d5b305d203d206f7264286d6573736167655b695d2920252036350d0a0d0a092320466f6c6c6f77696e672066756e6374696f6e2067656e657261746573200d0a09232074686520656e6372797074656420766563746f72200d0a09656e6372797074286d657373616765566563746f7229200d0a0d0a09232047656e65726174652074686520656e637279707465642074657874200d0a09232066726f6d2074686520656e6372797074656420766563746f72200d0a0943697068657254657874203d205b5d200d0a09666f72206920696e2072616e67652833293a200d0a0909436970686572546578742e617070656e6428636872286369706865724d61747269785b695d5b305d202b2036352929200d0a0d0a09232046696e616c6c79207072696e74207468652063697068657274657874200d0a097072696e742822436970686572746578743a20222c2022222e6a6f696e28436970686572546578742929200d0a0d0a232044726976657220436f6465200d0a646566206d61696e28293a200d0a0d0a09232047657420746865206d65737361676520746f200d0a092320626520656e63727970746564200d0a096d657373616765203d2022414354220d0a0d0a09232047657420746865206b6579200d0a096b6579203d20224759424e514b555250220d0a0d0a0948696c6c436970686572286d6573736167652c206b657929200d0a0d0a6966205f5f6e616d655f5f203d3d20225f5f6d61696e5f5f223a200d0a096d61696e2829200d0a0d0a23205468697320636f646520697320636f6e7472696275746564200d0a232062792050726174696b20536f6d77616e736869200d0a, 0x42c3a1736963616d656e746520657374652070726f796563746f2065737475766f2062617374616e74652073656e63696c6c6f2079206e6f7320646976657274696d6f73206d7563686f206465736172726f6c6c616e646f6c6f2c206573706572616d6f73207175652070726f6e746f20706f64616d6f73206465736172726f6c6c617220616c67756e6f73206f74726f73206dc3a9746f646f73206465206369667261646f20616c676f206dc3a173206d6f6465726e6f73207061726120706f646572206d656a6f726172206c6120736567757269646164206465206e756573747261732061706c69636163696f6e6573);

INSERT INTO `projects` (`id_project`, `title`, `project_description`, `src_evidence_image`, `code`, `conclusions`) VALUES
(2, 'PROYECTO DE PRUEBA #2', 0x45737461206573206c6120646573637269706369c3b36e2064656c2070726f796563746f206465207072756562612e20457374652070726f796563746f207365207265616c697ac3b320636f6e206c612066696e616c696461642064652068616365722076617269617320636f7361732c20636f6d6f20706f7220656a656d706c6f2c20656a656d706c696669636172206c6f20717565206120636f6e74696e75616369c3b36e20766120612070617361722c207061726120706f646572207265616c697a6172207072756562617320656e206e75657374726120706c617461666f726d61207765622064696e616d6963612070617261207375626972206e75657374726f732070726f796563746f73206465206c61206d617465726961204d696e6572c3ad61206465206461746f7320636f6e20656c2070726f6665736f72204a6169726f2041727475726f204179616c6120476f646f792c207369656e646f206e6f736f74726f73206c6f7320657374756469616e7465733a20726567696e612064656c2070696c61722c206a6f7365207a6176616c6120792062656c7472616e2e, '/views/images/evidencia.png', 0x2320507974686f6e3320636f646520746f20696d706c656d656e742048696c6c20436970686572200d0a0d0a6b65794d6174726978203d205b5b305d202a203320666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a6d657373616765566563746f72203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f722074686520636970686572200d0a6369706865724d6174726978203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e2067656e65726174657320746865200d0a23206b6579206d617472697820666f7220746865206b657920737472696e67200d0a646566206765744b65794d6174726978286b6579293a200d0a096b203d20300d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652833293a200d0a0909096b65794d61747269785b695d5b6a5d203d206f7264286b65795b6b5d2920252036350d0a0909096b202b3d20310d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e20656e63727970747320746865206d657373616765200d0a64656620656e6372797074286d657373616765566563746f72293a200d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652831293a200d0a0909096369706865724d61747269785b695d5b6a5d203d20300d0a090909666f72207820696e2072616e67652833293a200d0a090909096369706865724d61747269785b695d5b6a5d202b3d20286b65794d61747269785b695d5b785d202a0d0a0909090909090909096d657373616765566563746f725b785d5b6a5d29200d0a0909096369706865724d61747269785b695d5b6a5d203d206369706865724d61747269785b695d5b6a5d20252032360d0a0d0a6465662048696c6c436970686572286d6573736167652c206b6579293a200d0a0d0a092320476574206b6579206d61747269782066726f6d20746865206b657920737472696e67200d0a096765744b65794d6174726978286b657929200d0a0d0a09232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a09666f72206920696e2072616e67652833293a200d0a09096d657373616765566563746f725b695d5b305d203d206f7264286d6573736167655b695d2920252036350d0a0d0a092320466f6c6c6f77696e672066756e6374696f6e2067656e657261746573200d0a09232074686520656e6372797074656420766563746f72200d0a09656e6372797074286d657373616765566563746f7229200d0a0d0a09232047656e65726174652074686520656e637279707465642074657874200d0a09232066726f6d2074686520656e6372797074656420766563746f72200d0a0943697068657254657874203d205b5d200d0a09666f72206920696e2072616e67652833293a200d0a0909436970686572546578742e617070656e6428636872286369706865724d61747269785b695d5b305d202b2036352929200d0a0d0a09232046696e616c6c79207072696e74207468652063697068657274657874200d0a097072696e742822436970686572746578743a20222c2022222e6a6f696e28436970686572546578742929200d0a0d0a232044726976657220436f6465200d0a646566206d61696e28293a200d0a0d0a09232047657420746865206d65737361676520746f200d0a092320626520656e63727970746564200d0a096d657373616765203d2022414354220d0a0d0a09232047657420746865206b6579200d0a096b6579203d20224759424e514b555250220d0a0d0a0948696c6c436970686572286d6573736167652c206b657929200d0a0d0a6966205f5f6e616d655f5f203d3d20225f5f6d61696e5f5f223a200d0a096d61696e2829200d0a0d0a23205468697320636f646520697320636f6e7472696275746564200d0a232062792050726174696b20536f6d77616e736869200d0a, 0x42c3a1736963616d656e746520657374652070726f796563746f2065737475766f2062617374616e74652073656e63696c6c6f2079206e6f7320646976657274696d6f73206d7563686f206465736172726f6c6c616e646f6c6f2c206573706572616d6f73207175652070726f6e746f20706f64616d6f73206465736172726f6c6c617220616c67756e6f73206f74726f73206dc3a9746f646f73206465206369667261646f20616c676f206dc3a173206d6f6465726e6f73207061726120706f646572206d656a6f726172206c6120736567757269646164206465206e756573747261732061706c69636163696f6e6573);

INSERT INTO `projects` (`id_project`, `title`, `project_description`, `src_evidence_image`, `code`, `conclusions`) VALUES
(3, 'PROYECTO DE PRUEBA #3', 0x45737461206573206c6120646573637269706369c3b36e2064656c2070726f796563746f206465207072756562612e20457374652070726f796563746f207365207265616c697ac3b320636f6e206c612066696e616c696461642064652068616365722076617269617320636f7361732c20636f6d6f20706f7220656a656d706c6f2c20656a656d706c696669636172206c6f20717565206120636f6e74696e75616369c3b36e20766120612070617361722c207061726120706f646572207265616c697a6172207072756562617320656e206e75657374726120706c617461666f726d61207765622064696e616d6963612070617261207375626972206e75657374726f732070726f796563746f73206465206c61206d617465726961204d696e6572c3ad61206465206461746f7320636f6e20656c2070726f6665736f72204a6169726f2041727475726f204179616c6120476f646f792c207369656e646f206e6f736f74726f73206c6f7320657374756469616e7465733a20726567696e612064656c2070696c61722c206a6f7365207a6176616c6120792062656c7472616e2e, '/views/images/evidencia.png', 0x2320507974686f6e3320636f646520746f20696d706c656d656e742048696c6c20436970686572200d0a0d0a6b65794d6174726978203d205b5b305d202a203320666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a6d657373616765566563746f72203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f722074686520636970686572200d0a6369706865724d6174726978203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e2067656e65726174657320746865200d0a23206b6579206d617472697820666f7220746865206b657920737472696e67200d0a646566206765744b65794d6174726978286b6579293a200d0a096b203d20300d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652833293a200d0a0909096b65794d61747269785b695d5b6a5d203d206f7264286b65795b6b5d2920252036350d0a0909096b202b3d20310d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e20656e63727970747320746865206d657373616765200d0a64656620656e6372797074286d657373616765566563746f72293a200d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652831293a200d0a0909096369706865724d61747269785b695d5b6a5d203d20300d0a090909666f72207820696e2072616e67652833293a200d0a090909096369706865724d61747269785b695d5b6a5d202b3d20286b65794d61747269785b695d5b785d202a0d0a0909090909090909096d657373616765566563746f725b785d5b6a5d29200d0a0909096369706865724d61747269785b695d5b6a5d203d206369706865724d61747269785b695d5b6a5d20252032360d0a0d0a6465662048696c6c436970686572286d6573736167652c206b6579293a200d0a0d0a092320476574206b6579206d61747269782066726f6d20746865206b657920737472696e67200d0a096765744b65794d6174726978286b657929200d0a0d0a09232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a09666f72206920696e2072616e67652833293a200d0a09096d657373616765566563746f725b695d5b305d203d206f7264286d6573736167655b695d2920252036350d0a0d0a092320466f6c6c6f77696e672066756e6374696f6e2067656e657261746573200d0a09232074686520656e6372797074656420766563746f72200d0a09656e6372797074286d657373616765566563746f7229200d0a0d0a09232047656e65726174652074686520656e637279707465642074657874200d0a09232066726f6d2074686520656e6372797074656420766563746f72200d0a0943697068657254657874203d205b5d200d0a09666f72206920696e2072616e67652833293a200d0a0909436970686572546578742e617070656e6428636872286369706865724d61747269785b695d5b305d202b2036352929200d0a0d0a09232046696e616c6c79207072696e74207468652063697068657274657874200d0a097072696e742822436970686572746578743a20222c2022222e6a6f696e28436970686572546578742929200d0a0d0a232044726976657220436f6465200d0a646566206d61696e28293a200d0a0d0a09232047657420746865206d65737361676520746f200d0a092320626520656e63727970746564200d0a096d657373616765203d2022414354220d0a0d0a09232047657420746865206b6579200d0a096b6579203d20224759424e514b555250220d0a0d0a0948696c6c436970686572286d6573736167652c206b657929200d0a0d0a6966205f5f6e616d655f5f203d3d20225f5f6d61696e5f5f223a200d0a096d61696e2829200d0a0d0a23205468697320636f646520697320636f6e7472696275746564200d0a232062792050726174696b20536f6d77616e736869200d0a, 0x42c3a1736963616d656e746520657374652070726f796563746f2065737475766f2062617374616e74652073656e63696c6c6f2079206e6f7320646976657274696d6f73206d7563686f206465736172726f6c6c616e646f6c6f2c206573706572616d6f73207175652070726f6e746f20706f64616d6f73206465736172726f6c6c617220616c67756e6f73206f74726f73206dc3a9746f646f73206465206369667261646f20616c676f206dc3a173206d6f6465726e6f73207061726120706f646572206d656a6f726172206c6120736567757269646164206465206e756573747261732061706c69636163696f6e6573);

INSERT INTO `projects` (`id_project`, `title`, `project_description`, `src_evidence_image`, `code`, `conclusions`) VALUES
(4, 'PROYECTO DE PRUEBA #4', 0x45737461206573206c6120646573637269706369c3b36e2064656c2070726f796563746f206465207072756562612e20457374652070726f796563746f207365207265616c697ac3b320636f6e206c612066696e616c696461642064652068616365722076617269617320636f7361732c20636f6d6f20706f7220656a656d706c6f2c20656a656d706c696669636172206c6f20717565206120636f6e74696e75616369c3b36e20766120612070617361722c207061726120706f646572207265616c697a6172207072756562617320656e206e75657374726120706c617461666f726d61207765622064696e616d6963612070617261207375626972206e75657374726f732070726f796563746f73206465206c61206d617465726961204d696e6572c3ad61206465206461746f7320636f6e20656c2070726f6665736f72204a6169726f2041727475726f204179616c6120476f646f792c207369656e646f206e6f736f74726f73206c6f7320657374756469616e7465733a20726567696e612064656c2070696c61722c206a6f7365207a6176616c6120792062656c7472616e2e, '/views/images/evidencia.png', 0x2320507974686f6e3320636f646520746f20696d706c656d656e742048696c6c20436970686572200d0a0d0a6b65794d6174726978203d205b5b305d202a203320666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a6d657373616765566563746f72203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f722074686520636970686572200d0a6369706865724d6174726978203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e2067656e65726174657320746865200d0a23206b6579206d617472697820666f7220746865206b657920737472696e67200d0a646566206765744b65794d6174726978286b6579293a200d0a096b203d20300d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652833293a200d0a0909096b65794d61747269785b695d5b6a5d203d206f7264286b65795b6b5d2920252036350d0a0909096b202b3d20310d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e20656e63727970747320746865206d657373616765200d0a64656620656e6372797074286d657373616765566563746f72293a200d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652831293a200d0a0909096369706865724d61747269785b695d5b6a5d203d20300d0a090909666f72207820696e2072616e67652833293a200d0a090909096369706865724d61747269785b695d5b6a5d202b3d20286b65794d61747269785b695d5b785d202a0d0a0909090909090909096d657373616765566563746f725b785d5b6a5d29200d0a0909096369706865724d61747269785b695d5b6a5d203d206369706865724d61747269785b695d5b6a5d20252032360d0a0d0a6465662048696c6c436970686572286d6573736167652c206b6579293a200d0a0d0a092320476574206b6579206d61747269782066726f6d20746865206b657920737472696e67200d0a096765744b65794d6174726978286b657929200d0a0d0a09232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a09666f72206920696e2072616e67652833293a200d0a09096d657373616765566563746f725b695d5b305d203d206f7264286d6573736167655b695d2920252036350d0a0d0a092320466f6c6c6f77696e672066756e6374696f6e2067656e657261746573200d0a09232074686520656e6372797074656420766563746f72200d0a09656e6372797074286d657373616765566563746f7229200d0a0d0a09232047656e65726174652074686520656e637279707465642074657874200d0a09232066726f6d2074686520656e6372797074656420766563746f72200d0a0943697068657254657874203d205b5d200d0a09666f72206920696e2072616e67652833293a200d0a0909436970686572546578742e617070656e6428636872286369706865724d61747269785b695d5b305d202b2036352929200d0a0d0a09232046696e616c6c79207072696e74207468652063697068657274657874200d0a097072696e742822436970686572746578743a20222c2022222e6a6f696e28436970686572546578742929200d0a0d0a232044726976657220436f6465200d0a646566206d61696e28293a200d0a0d0a09232047657420746865206d65737361676520746f200d0a092320626520656e63727970746564200d0a096d657373616765203d2022414354220d0a0d0a09232047657420746865206b6579200d0a096b6579203d20224759424e514b555250220d0a0d0a0948696c6c436970686572286d6573736167652c206b657929200d0a0d0a6966205f5f6e616d655f5f203d3d20225f5f6d61696e5f5f223a200d0a096d61696e2829200d0a0d0a23205468697320636f646520697320636f6e7472696275746564200d0a232062792050726174696b20536f6d77616e736869200d0a, 0x42c3a1736963616d656e746520657374652070726f796563746f2065737475766f2062617374616e74652073656e63696c6c6f2079206e6f7320646976657274696d6f73206d7563686f206465736172726f6c6c616e646f6c6f2c206573706572616d6f73207175652070726f6e746f20706f64616d6f73206465736172726f6c6c617220616c67756e6f73206f74726f73206dc3a9746f646f73206465206369667261646f20616c676f206dc3a173206d6f6465726e6f73207061726120706f646572206d656a6f726172206c6120736567757269646164206465206e756573747261732061706c69636163696f6e6573);

INSERT INTO `projects` (`id_project`, `title`, `project_description`, `src_evidence_image`, `code`, `conclusions`) VALUES
(5, 'PROYECTO DE PRUEBA #5', 0x45737461206573206c6120646573637269706369c3b36e2064656c2070726f796563746f206465207072756562612e20457374652070726f796563746f207365207265616c697ac3b320636f6e206c612066696e616c696461642064652068616365722076617269617320636f7361732c20636f6d6f20706f7220656a656d706c6f2c20656a656d706c696669636172206c6f20717565206120636f6e74696e75616369c3b36e20766120612070617361722c207061726120706f646572207265616c697a6172207072756562617320656e206e75657374726120706c617461666f726d61207765622064696e616d6963612070617261207375626972206e75657374726f732070726f796563746f73206465206c61206d617465726961204d696e6572c3ad61206465206461746f7320636f6e20656c2070726f6665736f72204a6169726f2041727475726f204179616c6120476f646f792c207369656e646f206e6f736f74726f73206c6f7320657374756469616e7465733a20726567696e612064656c2070696c61722c206a6f7365207a6176616c6120792062656c7472616e2e, '/views/images/evidencia.png', 0x2320507974686f6e3320636f646520746f20696d706c656d656e742048696c6c20436970686572200d0a0d0a6b65794d6174726978203d205b5b305d202a203320666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a6d657373616765566563746f72203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a232047656e657261746520766563746f7220666f722074686520636970686572200d0a6369706865724d6174726978203d205b5b305d20666f72206920696e2072616e67652833295d200d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e2067656e65726174657320746865200d0a23206b6579206d617472697820666f7220746865206b657920737472696e67200d0a646566206765744b65794d6174726978286b6579293a200d0a096b203d20300d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652833293a200d0a0909096b65794d61747269785b695d5b6a5d203d206f7264286b65795b6b5d2920252036350d0a0909096b202b3d20310d0a0d0a2320466f6c6c6f77696e672066756e6374696f6e20656e63727970747320746865206d657373616765200d0a64656620656e6372797074286d657373616765566563746f72293a200d0a09666f72206920696e2072616e67652833293a200d0a0909666f72206a20696e2072616e67652831293a200d0a0909096369706865724d61747269785b695d5b6a5d203d20300d0a090909666f72207820696e2072616e67652833293a200d0a090909096369706865724d61747269785b695d5b6a5d202b3d20286b65794d61747269785b695d5b785d202a0d0a0909090909090909096d657373616765566563746f725b785d5b6a5d29200d0a0909096369706865724d61747269785b695d5b6a5d203d206369706865724d61747269785b695d5b6a5d20252032360d0a0d0a6465662048696c6c436970686572286d6573736167652c206b6579293a200d0a0d0a092320476574206b6579206d61747269782066726f6d20746865206b657920737472696e67200d0a096765744b65794d6174726978286b657929200d0a0d0a09232047656e657261746520766563746f7220666f7220746865206d657373616765200d0a09666f72206920696e2072616e67652833293a200d0a09096d657373616765566563746f725b695d5b305d203d206f7264286d6573736167655b695d2920252036350d0a0d0a092320466f6c6c6f77696e672066756e6374696f6e2067656e657261746573200d0a09232074686520656e6372797074656420766563746f72200d0a09656e6372797074286d657373616765566563746f7229200d0a0d0a09232047656e65726174652074686520656e637279707465642074657874200d0a09232066726f6d2074686520656e6372797074656420766563746f72200d0a0943697068657254657874203d205b5d200d0a09666f72206920696e2072616e67652833293a200d0a0909436970686572546578742e617070656e6428636872286369706865724d61747269785b695d5b305d202b2036352929200d0a0d0a09232046696e616c6c79207072696e74207468652063697068657274657874200d0a097072696e742822436970686572746578743a20222c2022222e6a6f696e28436970686572546578742929200d0a0d0a232044726976657220436f6465200d0a646566206d61696e28293a200d0a0d0a09232047657420746865206d65737361676520746f200d0a092320626520656e63727970746564200d0a096d657373616765203d2022414354220d0a0d0a09232047657420746865206b6579200d0a096b6579203d20224759424e514b555250220d0a0d0a0948696c6c436970686572286d6573736167652c206b657929200d0a0d0a6966205f5f6e616d655f5f203d3d20225f5f6d61696e5f5f223a200d0a096d61696e2829200d0a0d0a23205468697320636f646520697320636f6e7472696275746564200d0a232062792050726174696b20536f6d77616e736869200d0a, 0x42c3a1736963616d656e746520657374652070726f796563746f2065737475766f2062617374616e74652073656e63696c6c6f2079206e6f7320646976657274696d6f73206d7563686f206465736172726f6c6c616e646f6c6f2c206573706572616d6f73207175652070726f6e746f20706f64616d6f73206465736172726f6c6c617220616c67756e6f73206f74726f73206dc3a9746f646f73206465206369667261646f20616c676f206dc3a173206d6f6465726e6f73207061726120706f646572206d656a6f726172206c6120736567757269646164206465206e756573747261732061706c69636163696f6e6573);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_project`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;