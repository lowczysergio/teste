/* SQL Manager Lite for MySQL                              5.8.0.53936 */
/* ------------------------------------------------------------------- */
/* Host     : localhost                                                */
/* Port     : 3306                                                     */
/* Database : db_testes                                                */


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8mb4' */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `db_testes`;

CREATE DATABASE `db_testes`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `db_testes`;

/* Dropping database objects */

DROP TABLE IF EXISTS `pedidos_itens`;
DROP TABLE IF EXISTS `produtos`;
DROP TABLE IF EXISTS `pedidos`;
DROP TABLE IF EXISTS `clientes`;

/* Structure for the `clientes` table : */

CREATE TABLE `clientes` (
  `codigo` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) COLLATE utf8_general_ci NOT NULL,
  `uf` VARCHAR(2) COLLATE utf8_general_ci DEFAULT NULL,
  `cidade` VARCHAR(50) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`codigo`),
  KEY `clientes_idx1` USING BTREE (`nome`)
) ENGINE=InnoDB
AUTO_INCREMENT=21 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;

/* Structure for the `pedidos` table : */

CREATE TABLE `pedidos` (
  `pedido` INTEGER(11) NOT NULL,
  `emissao` DATE NOT NULL,
  `total` DOUBLE DEFAULT NULL,
  `codigo` INTEGER(11) NOT NULL,
  PRIMARY KEY USING BTREE (`pedido`),
  KEY `pedidos_fk1` USING BTREE (`codigo`),
  CONSTRAINT `pedidos_fk1` FOREIGN KEY (`codigo`) REFERENCES `clientes` (`codigo`)
) ENGINE=InnoDB
AUTO_INCREMENT=5 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;

/* Structure for the `produtos` table : */

CREATE TABLE `produtos` (
  `produto` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) COLLATE utf8_general_ci NOT NULL,
  `venda` DOUBLE DEFAULT NULL,
  PRIMARY KEY USING BTREE (`produto`)
) ENGINE=InnoDB
AUTO_INCREMENT=22 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;

/* Structure for the `pedidos_itens` table : */

CREATE TABLE `pedidos_itens` (
  `item` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `pedido` INTEGER(11) NOT NULL,
  `produto` INTEGER(11) NOT NULL,
  `qte` INTEGER(11) NOT NULL,
  `unitario` DOUBLE DEFAULT NULL,
  `subtotal` DOUBLE DEFAULT NULL,
  PRIMARY KEY USING BTREE (`item`),
  KEY `produtos_itens_fk1` USING BTREE (`pedido`),
  KEY `produtos_itens_fk2` USING BTREE (`produto`),
  CONSTRAINT `produtos_itens_fk2` FOREIGN KEY (`produto`) REFERENCES `produtos` (`produto`)
) ENGINE=InnoDB
AUTO_INCREMENT=7 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;

/* Data for the `clientes` table  (LIMIT 0,500) */

INSERT INTO `clientes` (`codigo`, `nome`, `uf`, `cidade`) VALUES
  (1,'cliente 1','SP','Sao Paulo'),
  (2,'cliente 2','SP','Sao Paulo'),
  (3,'cliente 3','SP','Sao Paulo'),
  (4,'cliente 4','SP','Sao Paulo'),
  (5,'cliente 5','SP','Sao Paulo'),
  (6,'cliente 6','SP','Sao Paulo'),
  (7,'cliente 7','SP','Sao Paulo'),
  (8,'cliente 8','SP','Sao Paulo'),
  (9,'cliente 8','RJ','Sao Paulo'),
  (10,'cliente 9','RJ','Sao Paulo'),
  (11,'cliente 10','RJ','Sao Paulo'),
  (12,'cliente 11','RJ','Sao Paulo'),
  (13,'cliente 12','RJ','Sao Paulo'),
  (14,'cliente 13','RJ','Sao Paulo'),
  (15,'cliente 13','RJ','Fortaleza'),
  (16,'cliente 14','RJ','Fortaleza'),
  (17,'cliente 15','RJ','Fortaleza'),
  (18,'cliente 16','RJ','Fortaleza'),
  (19,'cliente 17','RJ','Fortaleza'),
  (20,'Cliente 23','RJ','Fortaleza');
COMMIT;

/* Data for the `pedidos` table  (LIMIT 0,500) */

INSERT INTO `pedidos` (`pedido`, `emissao`, `total`, `codigo`) VALUES
  (1,'2022-08-30',3,3),
  (2,'2022-08-30',3,2),
  (3,'2022-08-30',2,2),
  (4,'2022-08-30',2,3);
COMMIT;

/* Data for the `produtos` table  (LIMIT 0,500) */

INSERT INTO `produtos` (`produto`, `descricao`, `venda`) VALUES
  (1,'Produto 1',1),
  (2,'Produto 2',1),
  (3,'Produto 4',1),
  (4,'Produto 5',1),
  (5,'Produto 6',1),
  (6,'Produto 7',1),
  (7,'Produto 8',1),
  (8,'Produto 9',1),
  (9,'Produto 10',1),
  (10,'Produto 11',1),
  (11,'Produto 12',1),
  (12,'Produto 13',1),
  (13,'Produto 16',1),
  (14,'Produto 176',1),
  (15,'Produto 18',1),
  (16,'Produto 19',1),
  (17,'Produto 21',1),
  (18,'Produto 2122',1),
  (19,'Produto 222',1),
  (20,'Produto 223',1),
  (21,'Produto 2234',1);
COMMIT;

/* Data for the `pedidos_itens` table  (LIMIT 0,500) */

INSERT INTO `pedidos_itens` (`item`, `pedido`, `produto`, `qte`, `unitario`, `subtotal`) VALUES
  (2,1,3,1,1,1),
  (3,1,2,3,1,3),
  (4,2,1,3,1,3),
  (5,3,1,2,1,2),
  (6,4,1,2,1,2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;