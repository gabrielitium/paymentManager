/*
 Navicat Premium Data Transfer

 Source Server         : MysqlPaymentManager
 Source Server Type    : MySQL
 Source Server Version : 80029 (8.0.29)
 Source Host           : 192.168.100.54:3306
 Source Schema         : pagos-schema

 Target Server Type    : MySQL
 Target Server Version : 80029 (8.0.29)
 File Encoding         : 65001

 Date: 18/02/2025 01:20:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detalle_pago
-- ----------------------------
DROP TABLE IF EXISTS `detalle_pago`;
CREATE TABLE `detalle_pago`  (
  `id_detalle` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_pago` int UNSIGNED NULL DEFAULT NULL,
  `id_producto` int UNSIGNED NOT NULL,
  `cantidad` double(10, 2) NOT NULL,
  `importe` double(10, 2) NULL DEFAULT NULL,
  `fecha_creacion` datetime NULL DEFAULT NULL,
  `fecha_actualizacion` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_detalle`) USING BTREE,
  INDEX `fk_detalle_pago`(`id_pago` ASC) USING BTREE,
  CONSTRAINT `fk_detalle_pago` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id_pago`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detalle_pago
-- ----------------------------
INSERT INTO `detalle_pago` VALUES (1, 2, 1, 2.00, 100.00, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (2, 1, 0, 0.00, 0.00, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (3, 1, 5, 10.50, 17.50, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (4, 2, 5, 10.50, 17.50, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (5, 7, 5, 10.50, 17.50, NULL, NULL);

-- ----------------------------
-- Table structure for estados_pago
-- ----------------------------
DROP TABLE IF EXISTS `estados_pago`;
CREATE TABLE `estados_pago`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `descripcion`(`descripcion` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estados_pago
-- ----------------------------
INSERT INTO `estados_pago` VALUES (4, 'Cancelado');
INSERT INTO `estados_pago` VALUES (2, 'Completado');
INSERT INTO `estados_pago` VALUES (3, 'Fallido');
INSERT INTO `estados_pago` VALUES (1, 'Pendiente');
INSERT INTO `estados_pago` VALUES (5, 'Reembolsado');

-- ----------------------------
-- Table structure for pagos
-- ----------------------------
DROP TABLE IF EXISTS `pagos`;
CREATE TABLE `pagos`  (
  `id_pago` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cliente` int UNSIGNED NOT NULL,
  `id_proveedor` int UNSIGNED NOT NULL,
  `concepto` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `total` double(10, 2) NULL DEFAULT NULL,
  `estado_pago` int NULL DEFAULT NULL,
  `fecha_creacion` datetime NULL DEFAULT NULL,
  `fecha_actualizacion` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_pago`) USING BTREE,
  INDEX `fk_estados_pago`(`estado_pago` ASC) USING BTREE,
  CONSTRAINT `fk_estados_pago` FOREIGN KEY (`estado_pago`) REFERENCES `estados_pago` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pagos
-- ----------------------------
INSERT INTO `pagos` VALUES (1, 1, 1, 'Primer Pago', 0.00, 2, NULL, NULL);
INSERT INTO `pagos` VALUES (2, 0, 0, 'string', 19.50, 2, NULL, NULL);
INSERT INTO `pagos` VALUES (3, 0, 0, 'string', 0.00, 1, NULL, NULL);
INSERT INTO `pagos` VALUES (4, 1, 1, 'Segundo Pago', 15.50, 2, NULL, NULL);
INSERT INTO `pagos` VALUES (5, 0, 0, 'string', 0.00, 1, NULL, NULL);
INSERT INTO `pagos` VALUES (6, 0, 0, 'string', 0.00, 2, NULL, NULL);
INSERT INTO `pagos` VALUES (7, 0, 0, 'string', 100.00, 2, NULL, NULL);
INSERT INTO `pagos` VALUES (8, 0, 0, 'string', 0.00, 1, NULL, NULL);
INSERT INTO `pagos` VALUES (9, 0, 0, 'string', 0.00, 1, NULL, NULL);
INSERT INTO `pagos` VALUES (10, 0, 0, 'string', 0.00, 1, NULL, NULL);
INSERT INTO `pagos` VALUES (11, 0, 0, 'string', 0.00, 1, NULL, NULL);
INSERT INTO `pagos` VALUES (12, 0, 0, 'string', 0.00, 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
