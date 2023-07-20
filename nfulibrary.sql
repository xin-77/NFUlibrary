/*
 Navicat Premium Data Transfer

 Source Server         : docker_100
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 192.168.91.100:3306
 Source Schema         : nfulibrary

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 15/12/2022 16:18:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` bigint(11) NOT NULL COMMENT '图书编号',
  `stock` int(11) NULL DEFAULT NULL COMMENT '库存',
  `residue` int(11) NULL DEFAULT NULL COMMENT '剩余量',
  `book_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名',
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者名',
  `publish` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `publish_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '印刷时间',
  `price` decimal(11, 2) NULL DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 5, 8, 'Lu Jiehong', 'k72LN4UZ9t', '广州南方出版社', '2010-04-20', 550.73);
INSERT INTO `book` VALUES (2, 5, 6, 'Lu Anqi', 'TlTKvpadoe', '广州南方出版社', '2019-08-14', 90.04);
INSERT INTO `book` VALUES (3, 4, 6, 'Kobayashi Tsubasa', 'XqDXFxRXiM', '广州南方出版社', '2014-06-10', 263.06);
INSERT INTO `book` VALUES (4, 4, 6, 'Dai Chi Ming', 'Ig6W53bBRj', '广州南方出版社', '2007-05-07', 41.97);
INSERT INTO `book` VALUES (5, 4, 7, 'Takeda Mai', '5F5s5GnShn', '广州南方出版社', '2007-09-27', 58.94);
INSERT INTO `book` VALUES (6, 5, 7, 'Ueda Kenta', '2dWFJxK19g', '广州南方出版社', '2021-03-05', 134.44);
INSERT INTO `book` VALUES (7, 5, 8, 'Yoshida Tsubasa', 'Dbv5bun8Jp', '广州南方出版社', '2015-03-22', 355.81);
INSERT INTO `book` VALUES (8, 5, 7, 'Tsang Tak Wah', 'E571wdswBe', '广州南方出版社', '2002-12-08', 995.44);
INSERT INTO `book` VALUES (9, 5, 6, 'Cui Yuning', 'mUYBqrU2gK', '广州南方出版社', '2007-07-27', 995.37);
INSERT INTO `book` VALUES (10, 4, 8, 'Peng Zhiyuan', 'gWFcqh2B2u', '广州南方出版社', '2018-06-05', 478.87);
INSERT INTO `book` VALUES (11, 4, 8, 'Pang Hiu Tung', 'zqPHbO03GU', '广州南方出版社', '2017-03-11', 619.06);
INSERT INTO `book` VALUES (12, 5, 6, 'Sakai Daichi', 'LEbrhveowZ', '广州南方出版社', '2021-09-12', 391.05);
INSERT INTO `book` VALUES (13, 4, 8, 'Connie Torres', 'AQEAt2niUS', '广州南方出版社', '2019-11-08', 521.61);
INSERT INTO `book` VALUES (14, 5, 7, 'Andrea Shaw', 'SK917Ed4Uj', '广州南方出版社', '2001-09-12', 470.76);
INSERT INTO `book` VALUES (15, 4, 8, 'Shimizu Yuito', '4NFcvgiktT', '广州南方出版社', '2017-03-02', 856.91);
INSERT INTO `book` VALUES (16, 4, 6, 'Chic On Kay', 'jw03UDARki', '广州南方出版社', '2020-07-09', 547.08);
INSERT INTO `book` VALUES (17, 5, 6, 'Han Siu Wai', 'Uw9hC6OANf', '广州南方出版社', '2007-01-06', 868.82);
INSERT INTO `book` VALUES (18, 5, 6, 'Wang Lu', '02YyTuXLrz', '广州南方出版社', '2011-02-06', 965.50);
INSERT INTO `book` VALUES (19, 4, 7, 'Imai Takuya', 'YqdgMarAtU', '广州南方出版社', '2010-08-18', 73.67);
INSERT INTO `book` VALUES (20, 5, 8, 'Dong Ziyi', 'kPuytFW6XJ', '广州南方出版社', '2014-04-20', 704.28);
INSERT INTO `book` VALUES (21, 4, 7, 'Dale Henry', '6yzMVbw537', '广州南方出版社', '2001-07-03', 553.73);
INSERT INTO `book` VALUES (22, 5, 6, 'Harada Seiko', 'ADZeZjmH35', '广州南方出版社', '2013-12-07', 196.09);
INSERT INTO `book` VALUES (23, 4, 6, 'Fong Tak Wah', 'eHkdIwyOnZ', '广州南方出版社', '2005-06-12', 383.05);
INSERT INTO `book` VALUES (24, 4, 6, 'Tsui Chi Ming', '7QKBSuVWer', '广州南方出版社', '2001-02-12', 622.23);
INSERT INTO `book` VALUES (25, 5, 6, 'Lo Kar Yan', 'XiZzNuK0lM', '广州南方出版社', '2007-01-03', 968.64);
INSERT INTO `book` VALUES (26, 5, 8, 'Luo Shihan', 'tGZtGkKB1u', '广州南方出版社', '2000-05-23', 417.73);
INSERT INTO `book` VALUES (27, 5, 7, 'Ma Sau Man', 'slIGpjbXvt', '广州南方出版社', '2005-01-08', 181.62);
INSERT INTO `book` VALUES (28, 5, 6, 'Qin Xiuying', 'wuKsaicVev', '广州南方出版社', '2020-05-03', 233.86);
INSERT INTO `book` VALUES (29, 4, 6, 'Yamashita Hina', 'OhS3RBdnLG', '广州南方出版社', '2018-08-13', 601.17);
INSERT INTO `book` VALUES (30, 4, 7, 'Siu Ho Yin', 'OVwQfeLTd1', '广州南方出版社', '2008-06-01', 262.54);
INSERT INTO `book` VALUES (31, 4, 8, 'Arai Yuito', 'UwpDtqjvGI', '广州南方出版社', '2004-03-31', 659.18);
INSERT INTO `book` VALUES (32, 5, 6, 'Shannon Grant', 'ocnmQRjSuY', '广州南方出版社', '2011-02-02', 727.86);
INSERT INTO `book` VALUES (33, 4, 7, 'Ma Hok Yau', 'DCLWhX5T9G', '广州南方出版社', '2015-12-07', 482.43);
INSERT INTO `book` VALUES (34, 4, 8, 'Ishikawa Hina', 'DuGHO9B8K1', '广州南方出版社', '2001-10-23', 379.62);
INSERT INTO `book` VALUES (35, 4, 6, 'Okamoto Hina', '72VPZJKPBo', '广州南方出版社', '2014-10-15', 916.64);
INSERT INTO `book` VALUES (36, 5, 6, 'Fan Lan', 'leserjMmQx', '广州南方出版社', '2009-05-20', 944.94);
INSERT INTO `book` VALUES (37, 4, 7, 'Thelma Cooper', 'FTj4QUY4K8', '广州南方出版社', '2001-03-26', 454.93);
INSERT INTO `book` VALUES (38, 4, 8, 'Ding Lu', 'qEI8NKNN0l', '广州南方出版社', '2000-09-23', 985.00);
INSERT INTO `book` VALUES (39, 5, 8, 'Andrew Brooks', 'psiUSOO41l', '广州南方出版社', '2011-05-22', 618.56);
INSERT INTO `book` VALUES (40, 4, 6, 'Ku Kar Yan', 'aofThAsGrs', '广州南方出版社', '2008-03-07', 80.75);
INSERT INTO `book` VALUES (41, 5, 8, 'Edwin Anderson', 'bgHsK0XA2B', '广州南方出版社', '2003-01-31', 855.16);
INSERT INTO `book` VALUES (42, 5, 8, 'Gregory James', 'zQeLy7D0tW', '广州南方出版社', '2013-01-05', 786.72);
INSERT INTO `book` VALUES (43, 4, 7, 'Takada Minato', 'GXeArgaamj', '广州南方出版社', '2021-07-28', 573.34);
INSERT INTO `book` VALUES (44, 4, 7, 'Zhou Zhiyuan', '9ZWav8smnc', '广州南方出版社', '2013-11-25', 987.92);
INSERT INTO `book` VALUES (45, 4, 6, 'Tong Wai Lam', 'Vn69L6GHMP', '广州南方出版社', '2016-11-18', 267.17);
INSERT INTO `book` VALUES (46, 5, 8, 'Yin Wing Kuen', 'F3Fg1Uxupk', '广州南方出版社', '2008-09-08', 175.06);
INSERT INTO `book` VALUES (47, 5, 7, 'Yoshida Shino', '4gAgkdBDxU', '广州南方出版社', '2003-08-03', 343.45);
INSERT INTO `book` VALUES (48, 5, 7, 'Nicole Salazar', 'tJvHm59dyC', '广州南方出版社', '2015-10-02', 668.09);
INSERT INTO `book` VALUES (49, 4, 7, 'Kwok Ka Man', 'CqONa3JB4U', '广州南方出版社', '2019-11-05', 850.32);
INSERT INTO `book` VALUES (50, 4, 6, 'Miguel Ramos', 'MLSUu8LoRj', '广州南方出版社', '2018-02-21', 150.90);
INSERT INTO `book` VALUES (51, 4, 7, 'Carol Guzman', 'dyUk2gw4R3', '广州南方出版社', '2011-11-14', 171.65);
INSERT INTO `book` VALUES (52, 5, 8, 'Fujita Yuto', 'dhoAFBZViM', '广州南方出版社', '2019-09-25', 847.13);
INSERT INTO `book` VALUES (53, 5, 6, 'Kao Chi Ming', '112JmMVuyz', '广州南方出版社', '2007-07-01', 995.48);
INSERT INTO `book` VALUES (54, 4, 6, 'Ying Siu Wai', 'OtEvBonecZ', '广州南方出版社', '2008-09-15', 480.26);
INSERT INTO `book` VALUES (55, 4, 7, 'Shing Tin Lok', 'KcWO8yZbmg', '广州南方出版社', '2017-09-14', 962.28);
INSERT INTO `book` VALUES (56, 4, 8, 'Michelle Daniels', 'DSsigGZlr4', '广州南方出版社', '2008-07-08', 756.76);
INSERT INTO `book` VALUES (57, 5, 6, 'Sun Anqi', 'CZVFCRMc5h', '广州南方出版社', '2018-12-27', 212.27);
INSERT INTO `book` VALUES (58, 4, 8, 'Gu Zhennan', 'PRdWb7xq9x', '广州南方出版社', '2017-01-03', 12.48);
INSERT INTO `book` VALUES (59, 4, 7, 'Terry Wallace', 'nSB6SY71j5', '广州南方出版社', '2009-11-14', 184.49);
INSERT INTO `book` VALUES (60, 5, 7, 'Andrea Lee', 'BYHSrWFyLT', '广州南方出版社', '2014-11-01', 570.67);
INSERT INTO `book` VALUES (61, 4, 7, 'Phyllis Griffin', 'cN8893UQHe', '广州南方出版社', '2002-09-02', 719.11);
INSERT INTO `book` VALUES (62, 4, 8, 'Watanabe Shino', 'VvV22XXkyV', '广州南方出版社', '2001-11-20', 738.94);
INSERT INTO `book` VALUES (63, 5, 7, 'Mok Wai Man', 'DYoNux2BAI', '广州南方出版社', '2019-04-14', 224.81);
INSERT INTO `book` VALUES (64, 5, 8, 'Cao Ziyi', 'cdHjSLzGn8', '广州南方出版社', '2006-09-24', 470.56);
INSERT INTO `book` VALUES (65, 5, 7, 'Lok Ting Fung', 'adCSAKnfDG', '广州南方出版社', '2002-11-22', 634.74);
INSERT INTO `book` VALUES (66, 4, 7, 'Mao Shihan', 'kQtjbYOTKv', '广州南方出版社', '2010-12-17', 919.65);
INSERT INTO `book` VALUES (67, 5, 7, 'Stanley Wallace', '5xgdCHAZdj', '广州南方出版社', '2022-04-11', 507.56);
INSERT INTO `book` VALUES (68, 5, 6, 'Xiao Jialun', 'IluE2M64kR', '广州南方出版社', '2019-03-11', 849.69);
INSERT INTO `book` VALUES (69, 4, 8, 'Shi Yuning', 'pGz5zOzktd', '广州南方出版社', '2015-05-18', 971.48);
INSERT INTO `book` VALUES (70, 4, 7, 'Pang Lik Sun', 'DTAfefgDx2', '广州南方出版社', '2014-02-22', 630.33);
INSERT INTO `book` VALUES (71, 4, 7, 'Saito Ryota', 'uaNbI7yiid', '广州南方出版社', '2011-04-02', 239.40);
INSERT INTO `book` VALUES (72, 5, 6, 'Dai Xiaoming', 'amJ8Vkd9Cb', '广州南方出版社', '2021-03-05', 252.82);
INSERT INTO `book` VALUES (73, 4, 7, 'Connie Snyder', '3fbzlhu0Px', '广州南方出版社', '2020-11-26', 935.00);
INSERT INTO `book` VALUES (74, 4, 8, 'Cheung Wing Sze', 'mfey9nooOY', '广州南方出版社', '2022-09-06', 112.30);
INSERT INTO `book` VALUES (75, 4, 7, 'Ku Wing Suen', 'm0JhJ1PEC2', '广州南方出版社', '2016-03-23', 536.80);
INSERT INTO `book` VALUES (76, 5, 6, 'Anthony West', 'KxYC9Zfk4X', '广州南方出版社', '2007-07-03', 13.40);
INSERT INTO `book` VALUES (77, 5, 7, 'Jane Moore', '2gXjZ2eKuJ', '广州南方出版社', '2014-11-22', 632.09);
INSERT INTO `book` VALUES (78, 4, 7, 'Hsuan Kwok Yin', 'YKOWHQngCk', '广州南方出版社', '2004-02-08', 576.49);
INSERT INTO `book` VALUES (79, 4, 8, 'Nakagawa Takuya', 'jGwZ0AUd01', '广州南方出版社', '2006-03-29', 935.95);
INSERT INTO `book` VALUES (80, 4, 7, 'Zhang Lan', '25NhdJzwSw', '广州南方出版社', '2004-05-23', 743.23);
INSERT INTO `book` VALUES (81, 4, 7, 'Ono Ikki', 'pmWXUMl6kC', '广州南方出版社', '2015-11-02', 782.70);
INSERT INTO `book` VALUES (82, 5, 8, 'Kong Zitao', 'g0kwhHkmc7', '广州南方出版社', '2022-04-05', 21.36);
INSERT INTO `book` VALUES (83, 4, 6, 'Zhu Ziyi', 'cjpIgpjI1D', '广州南方出版社', '2015-01-19', 31.00);
INSERT INTO `book` VALUES (84, 5, 7, 'Hsuan Suk Yee', '1bW6IgzjR0', '广州南方出版社', '2005-06-16', 182.17);
INSERT INTO `book` VALUES (85, 4, 6, 'Ishikawa Yuito', 'kanES3j1wA', '广州南方出版社', '2004-04-27', 772.98);
INSERT INTO `book` VALUES (86, 5, 8, 'Diane Rogers', 'c82otzF2xx', '广州南方出版社', '2000-08-06', 266.30);
INSERT INTO `book` VALUES (87, 4, 7, 'So Cho Yee', 'Wvp695Kkt2', '广州南方出版社', '2001-11-28', 527.03);
INSERT INTO `book` VALUES (88, 5, 6, 'Takahashi Mio', 'fAA5JMiek4', '广州南方出版社', '2004-09-03', 235.81);
INSERT INTO `book` VALUES (89, 5, 8, 'Yung Tin Lok', 'CRi2Sz22lM', '广州南方出版社', '2001-05-13', 89.15);
INSERT INTO `book` VALUES (90, 5, 6, 'Ogawa Tsubasa', 'LhKy4s3f2P', '广州南方出版社', '2016-04-13', 376.98);
INSERT INTO `book` VALUES (91, 4, 8, 'Ng Ting Fung', 'UnPATHnvbm', '广州南方出版社', '2019-07-25', 245.70);
INSERT INTO `book` VALUES (92, 5, 7, 'Emily Collins', 'CVlUY2TMBU', '广州南方出版社', '2009-07-27', 153.65);
INSERT INTO `book` VALUES (93, 5, 8, 'Qin Lu', 'YoGdvzKb3f', '广州南方出版社', '2014-09-03', 423.02);
INSERT INTO `book` VALUES (94, 4, 8, 'Ho Ka Fai', '7FEovfjNAW', '广州南方出版社', '2004-02-01', 873.45);
INSERT INTO `book` VALUES (95, 4, 6, 'Yan Jiehong', 'JjoDJnac2I', '广州南方出版社', '2012-04-09', 211.68);
INSERT INTO `book` VALUES (96, 4, 6, 'Pan Shihan', 'iTdGWq7b33', '广州南方出版社', '2022-07-22', 898.77);
INSERT INTO `book` VALUES (97, 4, 6, 'Han Zhennan', 'xymYkHefkV', '广州南方出版社', '2017-05-21', 523.28);
INSERT INTO `book` VALUES (98, 5, 7, 'Nishimura Aoshi', 'diGi0eLJO4', '广州南方出版社', '2006-01-29', 851.37);
INSERT INTO `book` VALUES (99, 4, 6, 'Diane Martin', 'Q26zkczHSZ', '广州南方出版社', '2000-02-23', 119.10);
INSERT INTO `book` VALUES (100, 5, 7, 'Hazel Rivera', '13PpT8H2k8', '广州南方出版社', '2012-05-05', 877.54);
INSERT INTO `book` VALUES (101, 5, 6, 'Crystal Gonzales', 'bi1WFMxMZO', '广州南方出版社', '2002-06-30', 657.20);
INSERT INTO `book` VALUES (102, 4, 8, 'Luo Lan', 'udR9JQg0sF', '广州南方出版社', '2016-01-26', 375.68);
INSERT INTO `book` VALUES (103, 4, 7, 'Chu Ka Keung', 'OybtXX76Wl', '广州南方出版社', '2013-04-16', 77.30);
INSERT INTO `book` VALUES (104, 4, 7, 'Sakurai Mitsuki', 'K9q6YamItF', '广州南方出版社', '2008-10-20', 841.95);
INSERT INTO `book` VALUES (105, 5, 6, 'Ishida Kasumi', 'v415ZtLJAH', '广州南方出版社', '2012-12-08', 891.97);
INSERT INTO `book` VALUES (106, 4, 6, 'Fred Ortiz', 'U9brQMe64D', '广州南方出版社', '2009-08-22', 104.74);
INSERT INTO `book` VALUES (107, 4, 6, 'Liu Yunxi', 'ZbhUWlcPKo', '广州南方出版社', '2018-05-23', 464.47);
INSERT INTO `book` VALUES (108, 4, 8, 'Hu Xiaoming', 'wEQIk2ztXB', '广州南方出版社', '2020-08-18', 38.92);
INSERT INTO `book` VALUES (109, 4, 6, 'Tang Chung Yin', 'NGGuNcS81d', '广州南方出版社', '2006-10-17', 376.39);
INSERT INTO `book` VALUES (110, 5, 6, 'Gong Xiaoming', 'xlEb0CBGiE', '广州南方出版社', '2021-03-09', 391.15);
INSERT INTO `book` VALUES (111, 4, 8, 'Harry Tran', 'eHZWPEknSo', '广州南方出版社', '2006-09-03', 995.80);
INSERT INTO `book` VALUES (112, 5, 7, 'Wang Zhennan', 'r0D0csmDkb', '广州南方出版社', '2005-12-07', 271.33);
INSERT INTO `book` VALUES (113, 5, 8, 'Miu Ling Ling', '4Kep7if753', '广州南方出版社', '2010-06-15', 879.03);
INSERT INTO `book` VALUES (114, 5, 6, 'Ichikawa Tsubasa', 'l0mKjker3h', '广州南方出版社', '2017-11-05', 855.21);
INSERT INTO `book` VALUES (115, 4, 6, 'Jesse Thompson', 'wVl4uwUH5Q', '广州南方出版社', '2014-12-13', 554.52);
INSERT INTO `book` VALUES (116, 4, 7, 'Wei Rui', 'EPnXUySj75', '广州南方出版社', '2011-10-04', 821.02);
INSERT INTO `book` VALUES (117, 5, 7, 'Janice Cox', 'ftT9d5t2NI', '广州南方出版社', '2018-10-30', 901.05);
INSERT INTO `book` VALUES (118, 4, 7, 'Wu On Kay', 'w1Nh4VhA19', '广州南方出版社', '2008-11-20', 313.13);
INSERT INTO `book` VALUES (119, 5, 6, 'Ding Jiehong', 'gy7XYHXNui', '广州南方出版社', '2012-11-30', 573.54);
INSERT INTO `book` VALUES (120, 4, 7, 'Theresa Ruiz', '20of2IMMgN', '广州南方出版社', '2011-11-25', 829.58);
INSERT INTO `book` VALUES (121, 4, 6, 'Ma Rui', 'wbBDv50G2x', '广州南方出版社', '2020-07-05', 599.08);
INSERT INTO `book` VALUES (122, 5, 7, 'Deng Anqi', 'oLtJTHLQYg', '广州南方出版社', '2006-08-06', 756.52);
INSERT INTO `book` VALUES (123, 20, 20, '软件测试444', 'test', '广州南方学院出版社', '2020-10-12', 2251.00);
INSERT INTO `book` VALUES (124, 10, 10, 'Koyama Hana', 'Koyama Hana', '广州南方学院出版社', '2008-07-02', 510.98);
INSERT INTO `book` VALUES (125, 9, 10, 'Xie Xiaoming', 'Xie Xiaoming', '广州南方学院出版社', '2001-06-15', 387.54);
INSERT INTO `book` VALUES (126, 8, 10, 'Brenda Harrison', 'Brenda Harrison', '广州南方学院出版社', '2012-10-24', 114.46);
INSERT INTO `book` VALUES (127, 9, 10, 'Kudo Yuto', 'Kudo Yuto', '广州南方学院出版社', '2001-08-12', 144.81);
INSERT INTO `book` VALUES (128, 10, 10, 'Daniel Johnson', 'Daniel Johnson', '广州南方学院出版社', '2013-11-01', 134.83);
INSERT INTO `book` VALUES (129, 10, 10, 'Phyllis Hamilton', 'Phyllis Hamilton', '广州南方学院出版社', '2008-02-08', 495.13);
INSERT INTO `book` VALUES (130, 10, 10, 'Clarence Reed', 'Clarence Reed', '广州南方学院出版社', '2015-04-15', 897.58);
INSERT INTO `book` VALUES (131, 10, 10, 'Ichikawa Aoi', 'Ichikawa Aoi', '广州南方学院出版社', '2004-02-20', 251.15);
INSERT INTO `book` VALUES (132, 10, 10, 'Jia Ziyi', 'Jia Ziyi', '广州南方学院出版社', '2018-08-30', 675.28);
INSERT INTO `book` VALUES (133, 10, 10, 'Shimizu Hazuki', 'Shimizu Hazuki', '广州南方学院出版社', '2013-12-17', 233.43);
INSERT INTO `book` VALUES (134, 10, 10, 'Cho Tsz Ching', 'Cho Tsz Ching', '广州南方学院出版社', '2013-11-20', 243.68);
INSERT INTO `book` VALUES (135, 10, 10, 'Mo Ming Sze', 'Mo Ming Sze', '广州南方学院出版社', '2017-02-02', 296.31);
INSERT INTO `book` VALUES (136, 10, 10, 'Wong Fat', 'Wong Fat', '广州南方学院出版社', '2012-10-19', 410.21);
INSERT INTO `book` VALUES (137, 10, 10, 'Jimmy Mitchell', 'Jimmy Mitchell', '广州南方学院出版社', '2003-11-06', 888.34);
INSERT INTO `book` VALUES (138, 10, 10, 'Cui Lu', 'Cui Lu', '广州南方学院出版社', '2014-07-25', 484.91);
INSERT INTO `book` VALUES (139, 10, 10, 'Joan Clark', 'Joan Clark', '广州南方学院出版社', '2003-12-14', 965.44);
INSERT INTO `book` VALUES (140, 10, 10, 'Kudo Misaki', 'Kudo Misaki', '广州南方学院出版社', '2019-08-19', 368.70);
INSERT INTO `book` VALUES (141, 10, 10, 'Chang Lan', 'Chang Lan', '广州南方学院出版社', '2006-01-03', 400.93);
INSERT INTO `book` VALUES (142, 10, 10, 'Beverly Mills', 'Beverly Mills', '广州南方学院出版社', '2011-05-01', 63.28);
INSERT INTO `book` VALUES (143, 10, 10, 'Ando Yuto', 'Ando Yuto', '广州南方学院出版社', '2009-04-16', 10.12);
INSERT INTO `book` VALUES (144, 10, 10, 'Albert Hamilton', 'Albert Hamilton', '广州南方学院出版社', '2006-03-25', 299.17);
INSERT INTO `book` VALUES (145, 10, 10, 'Miu Wai Man', 'Miu Wai Man', '广州南方学院出版社', '2016-01-06', 992.39);
INSERT INTO `book` VALUES (146, 10, 10, 'Au Ming', 'Au Ming', '广州南方学院出版社', '2000-10-17', 348.55);
INSERT INTO `book` VALUES (147, 10, 10, 'Connie Guzman', 'Connie Guzman', '广州南方学院出版社', '2019-12-27', 872.35);
INSERT INTO `book` VALUES (148, 10, 10, 'Fung Lai Yan', 'Fung Lai Yan', '广州南方学院出版社', '2010-06-21', 812.04);
INSERT INTO `book` VALUES (149, 10, 10, 'Carl Gonzalez', 'Carl Gonzalez', '广州南方学院出版社', '2002-07-05', 619.07);
INSERT INTO `book` VALUES (150, 10, 10, 'He Zitao', 'He Zitao', '广州南方学院出版社', '2014-03-20', 707.62);
INSERT INTO `book` VALUES (151, 10, 10, 'Luis Ward', 'Luis Ward', '广州南方学院出版社', '2009-11-08', 760.81);
INSERT INTO `book` VALUES (152, 10, 10, 'Yu Zitao', 'Yu Zitao', '广州南方学院出版社', '2016-02-23', 610.81);
INSERT INTO `book` VALUES (153, 10, 10, 'Kinoshita Kenta', 'Kinoshita Kenta', '广州南方学院出版社', '2004-07-19', 485.97);
INSERT INTO `book` VALUES (154, 10, 10, 'Jesse Palmer', 'Jesse Palmer', '广州南方学院出版社', '2012-05-04', 822.65);
INSERT INTO `book` VALUES (155, 10, 10, 'Yoshida Ryota', 'Yoshida Ryota', '广州南方学院出版社', '2005-12-17', 411.99);
INSERT INTO `book` VALUES (156, 10, 10, 'Takahashi Ryota', 'Takahashi Ryota', '广州南方学院出版社', '2014-04-22', 296.44);
INSERT INTO `book` VALUES (157, 10, 10, 'Christina Ellis', 'Christina Ellis', '广州南方学院出版社', '2022-04-27', 686.52);
INSERT INTO `book` VALUES (158, 10, 10, 'Ikeda Itsuki', 'Ikeda Itsuki', '广州南方学院出版社', '2019-01-23', 985.04);
INSERT INTO `book` VALUES (159, 10, 10, 'Zheng Lu', 'Zheng Lu', '广州南方学院出版社', '2003-03-08', 921.11);
INSERT INTO `book` VALUES (160, 10, 10, 'Doris Roberts', 'Doris Roberts', '广州南方学院出版社', '2006-01-03', 290.95);
INSERT INTO `book` VALUES (161, 10, 10, 'Nomura Minato', 'Nomura Minato', '广州南方学院出版社', '2003-05-30', 813.09);
INSERT INTO `book` VALUES (162, 10, 10, 'Brian Nguyen', 'Brian Nguyen', '广州南方学院出版社', '2011-01-01', 266.71);
INSERT INTO `book` VALUES (163, 10, 10, 'Ono Yuna', 'Ono Yuna', '广州南方学院出版社', '2013-06-18', 355.06);
INSERT INTO `book` VALUES (164, 10, 10, 'Pauline Brown', 'Pauline Brown', '广州南方学院出版社', '2009-05-26', 745.77);
INSERT INTO `book` VALUES (165, 10, 10, 'Fong Wai Yee', 'Fong Wai Yee', '广州南方学院出版社', '2014-12-04', 788.81);
INSERT INTO `book` VALUES (166, 10, 10, 'Fukuda Yamato', 'Fukuda Yamato', '广州南方学院出版社', '2007-08-09', 548.66);
INSERT INTO `book` VALUES (167, 10, 10, 'Doris Fisher', 'Doris Fisher', '广州南方学院出版社', '2005-04-12', 736.67);
INSERT INTO `book` VALUES (168, 10, 10, 'Phillip Guzman', 'Phillip Guzman', '广州南方学院出版社', '2022-01-06', 61.81);
INSERT INTO `book` VALUES (169, 10, 10, 'Nomura Ryota', 'Nomura Ryota', '广州南方学院出版社', '2014-10-07', 472.52);
INSERT INTO `book` VALUES (170, 10, 10, 'Richard Bell', 'Richard Bell', '广州南方学院出版社', '2010-12-25', 203.22);
INSERT INTO `book` VALUES (171, 10, 10, 'Hsuan Wai Man', 'Hsuan Wai Man', '广州南方学院出版社', '2014-07-24', 364.49);
INSERT INTO `book` VALUES (172, 10, 10, 'Uchida Yota', 'Uchida Yota', '广州南方学院出版社', '2003-07-10', 895.52);
INSERT INTO `book` VALUES (173, 10, 10, 'Ando Itsuki', 'Ando Itsuki', '广州南方学院出版社', '2001-02-09', 340.15);
INSERT INTO `book` VALUES (174, 10, 10, 'Jean Warren', 'Jean Warren', '广州南方学院出版社', '2003-06-13', 787.57);
INSERT INTO `book` VALUES (175, 10, 10, 'Lee Freeman', 'Lee Freeman', '广州南方学院出版社', '2010-02-15', 484.83);
INSERT INTO `book` VALUES (176, 10, 10, 'Su Lu', 'Su Lu', '广州南方学院出版社', '2016-09-18', 556.42);
INSERT INTO `book` VALUES (177, 10, 10, 'Aoki Mio', 'Aoki Mio', '广州南方学院出版社', '2016-07-12', 672.70);
INSERT INTO `book` VALUES (178, 10, 10, 'Gloria Ryan', 'Gloria Ryan', '广州南方学院出版社', '2022-05-26', 729.61);
INSERT INTO `book` VALUES (179, 10, 10, 'Zhong Zhiyuan', 'Zhong Zhiyuan', '广州南方学院出版社', '2019-12-04', 712.56);
INSERT INTO `book` VALUES (180, 10, 10, 'Marvin Olson', 'Marvin Olson', '广州南方学院出版社', '2019-07-04', 180.43);
INSERT INTO `book` VALUES (181, 10, 10, 'Ray Gutierrez', 'Ray Gutierrez', '广州南方学院出版社', '2004-09-13', 61.90);
INSERT INTO `book` VALUES (182, 10, 10, 'Sakai Rena', 'Sakai Rena', '广州南方学院出版社', '2010-01-27', 241.60);
INSERT INTO `book` VALUES (183, 10, 10, 'Ota Miu', 'Ota Miu', '广州南方学院出版社', '2014-02-17', 693.62);
INSERT INTO `book` VALUES (184, 10, 10, 'Song Rui', 'Song Rui', '广州南方学院出版社', '2011-10-31', 129.75);
INSERT INTO `book` VALUES (185, 10, 10, 'Yamamoto Mai', 'Yamamoto Mai', '广州南方学院出版社', '2008-09-14', 271.95);
INSERT INTO `book` VALUES (186, 10, 10, 'Kao Kwok Wing', 'Kao Kwok Wing', '广州南方学院出版社', '2017-02-08', 684.38);
INSERT INTO `book` VALUES (187, 10, 10, 'Lam Ka Fai', 'Lam Ka Fai', '广州南方学院出版社', '2011-02-17', 173.18);
INSERT INTO `book` VALUES (188, 10, 10, 'Tong Chun Yu', 'Tong Chun Yu', '广州南方学院出版社', '2013-06-01', 204.27);
INSERT INTO `book` VALUES (189, 10, 10, 'Cheryl Cook', 'Cheryl Cook', '广州南方学院出版社', '2006-12-26', 800.29);
INSERT INTO `book` VALUES (190, 10, 10, 'Siu Tin Lok', 'Siu Tin Lok', '广州南方学院出版社', '2008-09-17', 23.45);
INSERT INTO `book` VALUES (191, 10, 10, 'Yip Wai Lam', 'Yip Wai Lam', '广州南方学院出版社', '2021-09-26', 354.94);
INSERT INTO `book` VALUES (192, 10, 10, 'Xu Rui', 'Xu Rui', '广州南方学院出版社', '2013-11-16', 288.61);
INSERT INTO `book` VALUES (193, 10, 10, 'Jia Zhennan', 'Jia Zhennan', '广州南方学院出版社', '2014-03-07', 643.29);
INSERT INTO `book` VALUES (194, 10, 10, 'Iwasaki Hazuki', 'Iwasaki Hazuki', '广州南方学院出版社', '2005-12-10', 794.57);
INSERT INTO `book` VALUES (195, 10, 10, 'Barbara Bennett', 'Barbara Bennett', '广州南方学院出版社', '2018-08-19', 719.49);
INSERT INTO `book` VALUES (196, 10, 10, 'Miyazaki Misaki', 'Miyazaki Misaki', '广州南方学院出版社', '2019-12-08', 850.41);
INSERT INTO `book` VALUES (197, 10, 10, 'Ng Lai Yan', 'Ng Lai Yan', '广州南方学院出版社', '2021-03-28', 917.66);
INSERT INTO `book` VALUES (198, 10, 10, 'Yam Cho Yee', 'Yam Cho Yee', '广州南方学院出版社', '2021-08-16', 514.50);
INSERT INTO `book` VALUES (199, 10, 10, 'Long Jialun', 'Long Jialun', '广州南方学院出版社', '2020-09-20', 116.15);
INSERT INTO `book` VALUES (200, 10, 10, 'Yuen Siu Wai', 'Yuen Siu Wai', '广州南方学院出版社', '2013-06-19', 851.94);
INSERT INTO `book` VALUES (201, 10, 10, 'Peng Rui', 'Peng Rui', '广州南方学院出版社', '2011-06-12', 961.64);
INSERT INTO `book` VALUES (202, 10, 10, 'Timothy Patterson', 'Timothy Patterson', '广州南方学院出版社', '2012-03-29', 691.27);
INSERT INTO `book` VALUES (203, 10, 10, 'Cheng Zhiyuan', 'Cheng Zhiyuan', '广州南方学院出版社', '2009-06-07', 560.77);
INSERT INTO `book` VALUES (204, 10, 10, 'Tang Wing Suen', 'Tang Wing Suen', '广州南方学院出版社', '2016-01-17', 275.25);
INSERT INTO `book` VALUES (205, 10, 10, 'Shibata Ikki', 'Shibata Ikki', '广州南方学院出版社', '2008-12-03', 41.48);
INSERT INTO `book` VALUES (206, 10, 10, 'Zou Lan', 'Zou Lan', '广州南方学院出版社', '2011-08-01', 149.75);
INSERT INTO `book` VALUES (207, 10, 10, 'Loui Wai San', 'Loui Wai San', '广州南方学院出版社', '2009-10-24', 72.37);
INSERT INTO `book` VALUES (208, 10, 10, 'Ueno Kenta', 'Ueno Kenta', '广州南方学院出版社', '2001-07-09', 137.95);
INSERT INTO `book` VALUES (209, 10, 10, 'Shannon Bennett', 'Shannon Bennett', '广州南方学院出版社', '2019-04-21', 978.93);
INSERT INTO `book` VALUES (210, 10, 10, 'Deng Yunxi', 'Deng Yunxi', '广州南方学院出版社', '2013-04-20', 907.55);
INSERT INTO `book` VALUES (211, 10, 10, 'Miyazaki Eita', 'Miyazaki Eita', '广州南方学院出版社', '2004-04-29', 652.89);
INSERT INTO `book` VALUES (212, 10, 10, 'Nakagawa Mai', 'Nakagawa Mai', '广州南方学院出版社', '2007-06-04', 905.71);
INSERT INTO `book` VALUES (213, 10, 10, 'Lu Yunxi', 'Lu Yunxi', '广州南方学院出版社', '2015-07-19', 752.37);
INSERT INTO `book` VALUES (214, 10, 10, 'Benjamin Reyes', 'Benjamin Reyes', '广州南方学院出版社', '2022-06-28', 278.51);
INSERT INTO `book` VALUES (215, 10, 10, 'Zou Shihan', 'Zou Shihan', '广州南方学院出版社', '2016-05-07', 410.91);
INSERT INTO `book` VALUES (216, 10, 10, 'Debbie Thompson', 'Debbie Thompson', '广州南方学院出版社', '2010-07-04', 157.82);
INSERT INTO `book` VALUES (217, 10, 10, 'Lu Ziyi', 'Lu Ziyi', '广州南方学院出版社', '2002-08-20', 409.75);
INSERT INTO `book` VALUES (218, 10, 10, 'Takahashi Mio', 'Takahashi Mio', '广州南方学院出版社', '2011-09-02', 994.90);
INSERT INTO `book` VALUES (219, 10, 10, 'Yamaguchi Momoe', 'Yamaguchi Momoe', '广州南方学院出版社', '2001-09-10', 499.57);
INSERT INTO `book` VALUES (220, 10, 10, 'Alan Long', 'Alan Long', '广州南方学院出版社', '2019-09-06', 82.73);
INSERT INTO `book` VALUES (221, 10, 10, 'Wang Zhennan', 'Wang Zhennan', '广州南方学院出版社', '2002-05-03', 148.65);
INSERT INTO `book` VALUES (222, 10, 10, 'Cheng Wing Fat', 'Cheng Wing Fat', '广州南方学院出版社', '2016-10-31', 187.47);
INSERT INTO `book` VALUES (223, 10, 10, 'Han Zitao', 'Han Zitao', '广州南方学院出版社', '2001-05-22', 884.07);
INSERT INTO `book` VALUES (1000000000000000000, 10, 10, 'Vincent Coleman', 'Vincent Coleman', '广州南方学院出版社', '2012-05-09', 279.98);
INSERT INTO `book` VALUES (1000000000000000001, 10, 10, 'Lo Fu Shing', 'Lo Fu Shing', '广州南方学院出版社', '2009-09-25', 244.33);
INSERT INTO `book` VALUES (1000000000000000002, 10, 10, 'Tsang Yun Fat', 'Tsang Yun Fat', '广州南方学院出版社', '2002-04-27', 52.01);
INSERT INTO `book` VALUES (1000000000000000003, 10, 10, 'Marcus Silva', 'Marcus Silva', '广州南方学院出版社', '2007-11-14', 454.49);
INSERT INTO `book` VALUES (1000000000000000004, 10, 10, 'Murata Momoka', 'Murata Momoka', '广州南方学院出版社', '2002-11-28', 203.49);
INSERT INTO `book` VALUES (1000000000000000005, 10, 10, 'Edwin Simpson', 'Edwin Simpson', '广州南方学院出版社', '2008-12-16', 248.15);
INSERT INTO `book` VALUES (1000000000000000006, 10, 10, 'Florence Warren', 'Florence Warren', '广州南方学院出版社', '2016-03-12', 281.01);
INSERT INTO `book` VALUES (1000000000000000007, 10, 10, 'Tang Anqi', 'Tang Anqi', '广州南方学院出版社', '2017-09-26', 431.48);
INSERT INTO `book` VALUES (1000000000000000008, 10, 10, 'Nancy Warren', 'Nancy Warren', '广州南方学院出版社', '2022-06-09', 534.32);
INSERT INTO `book` VALUES (1000000000000000009, 10, 10, 'Ellen Howard', 'Ellen Howard', '广州南方学院出版社', '2006-12-19', 730.55);
INSERT INTO `book` VALUES (1000000000000000010, 10, 10, 'Han Ting Fung', 'Han Ting Fung', '广州南方学院出版社', '2007-03-18', 620.91);
INSERT INTO `book` VALUES (1000000000000000011, 10, 10, 'Tony Kelley', 'Tony Kelley', '广州南方学院出版社', '2011-06-22', 949.21);
INSERT INTO `book` VALUES (1000000000000000012, 10, 10, 'Du Shihan', 'Du Shihan', '广州南方学院出版社', '2009-07-14', 4.98);
INSERT INTO `book` VALUES (1000000000000000013, 10, 10, 'Fan Lan', 'Fan Lan', '广州南方学院出版社', '2021-09-30', 816.01);
INSERT INTO `book` VALUES (1000000000000000014, 10, 10, 'Takeuchi Mio', 'Takeuchi Mio', '广州南方学院出版社', '2021-01-04', 868.18);
INSERT INTO `book` VALUES (1000000000000000015, 10, 10, 'Cheng Wing Suen', 'Cheng Wing Suen', '广州南方学院出版社', '2004-09-29', 391.67);
INSERT INTO `book` VALUES (1000000000000000016, 10, 10, 'Micheal Washington', 'Micheal Washington', '广州南方学院出版社', '2007-12-24', 648.42);
INSERT INTO `book` VALUES (1000000000000000017, 10, 10, 'Tong Wing Fat', 'Tong Wing Fat', '广州南方学院出版社', '2020-10-06', 555.27);
INSERT INTO `book` VALUES (1000000000000000018, 10, 10, 'Hu Shihan', 'Hu Shihan', '广州南方学院出版社', '2011-01-01', 359.03);
INSERT INTO `book` VALUES (1000000000000000019, 10, 10, 'Jiang Xiaoming', 'Jiang Xiaoming', '广州南方学院出版社', '2012-11-15', 837.79);
INSERT INTO `book` VALUES (1000000000000000020, 10, 10, 'Ono Kasumi', 'Ono Kasumi', '广州南方学院出版社', '2013-02-15', 489.60);
INSERT INTO `book` VALUES (1000000000000000021, 10, 10, 'Cheng Lai Yan', 'Cheng Lai Yan', '广州南方学院出版社', '2015-05-06', 304.01);
INSERT INTO `book` VALUES (1000000000000000022, 10, 10, 'Cui Zitao', 'Cui Zitao', '广州南方学院出版社', '2020-06-07', 3.67);
INSERT INTO `book` VALUES (1000000000000000023, 10, 10, 'Hirano Kazuma', 'Hirano Kazuma', '广州南方学院出版社', '2004-08-22', 801.19);
INSERT INTO `book` VALUES (1000000000000000024, 10, 10, 'Long Lu', 'Long Lu', '广州南方学院出版社', '2013-12-02', 114.82);
INSERT INTO `book` VALUES (1000000000000000025, 10, 10, 'Janice Herrera', 'Janice Herrera', '广州南方学院出版社', '2009-11-01', 102.24);
INSERT INTO `book` VALUES (1000000000000000026, 10, 10, 'Tam Sze Kwan', 'Tam Sze Kwan', '广州南方学院出版社', '2002-12-27', 14.97);
INSERT INTO `book` VALUES (1000000000000000027, 10, 10, 'Takeuchi Momoe', 'Takeuchi Momoe', '广州南方学院出版社', '2020-06-14', 68.20);
INSERT INTO `book` VALUES (1000000000000000028, 10, 10, 'Wei Shihan', 'Wei Shihan', '广州南方学院出版社', '2011-03-18', 441.55);
INSERT INTO `book` VALUES (1000000000000000029, 10, 10, 'Cho Wai Han', 'Cho Wai Han', '广州南方学院出版社', '2016-12-31', 30.50);
INSERT INTO `book` VALUES (1000000000000000030, 10, 10, 'Wong Chung Yin', 'Wong Chung Yin', '广州南方学院出版社', '2011-01-06', 744.32);
INSERT INTO `book` VALUES (1000000000000000031, 10, 10, 'Glenn Cox', 'Glenn Cox', '广州南方学院出版社', '2005-01-19', 736.16);
INSERT INTO `book` VALUES (1000000000000000032, 10, 10, 'Nakamura Hina', 'Nakamura Hina', '广州南方学院出版社', '2021-03-06', 509.24);
INSERT INTO `book` VALUES (1000000000000000033, 10, 10, 'Melissa Alvarez', 'Melissa Alvarez', '广州南方学院出版社', '2020-01-10', 339.11);
INSERT INTO `book` VALUES (1000000000000000034, 10, 10, 'Juan Hernandez', 'Juan Hernandez', '广州南方学院出版社', '2021-11-27', 582.76);
INSERT INTO `book` VALUES (1000000000000000035, 10, 10, 'Fan Ziyi', 'Fan Ziyi', '广州南方学院出版社', '2020-05-19', 874.88);
INSERT INTO `book` VALUES (1000000000000000036, 10, 10, 'Ho Wing Sze', 'Ho Wing Sze', '广州南方学院出版社', '2021-04-22', 368.03);
INSERT INTO `book` VALUES (1000000000000000037, 10, 10, 'So Kwok Wing', 'So Kwok Wing', '广州南方学院出版社', '2001-12-28', 735.35);
INSERT INTO `book` VALUES (1000000000000000038, 10, 10, 'Jason Barnes', 'Jason Barnes', '广州南方学院出版社', '2001-07-14', 644.42);
INSERT INTO `book` VALUES (1000000000000000039, 10, 10, 'Zheng Xiuying', 'Zheng Xiuying', '广州南方学院出版社', '2021-02-07', 59.18);
INSERT INTO `book` VALUES (1000000000000000040, 10, 10, 'Katherine Kelley', 'Katherine Kelley', '广州南方学院出版社', '2007-03-02', 726.41);
INSERT INTO `book` VALUES (1000000000000000041, 10, 10, 'Yao Ziyi', 'Yao Ziyi', '广州南方学院出版社', '2002-03-09', 31.37);
INSERT INTO `book` VALUES (1000000000000000042, 10, 10, 'Yuan Yuning', 'Yuan Yuning', '广州南方学院出版社', '2008-01-09', 307.61);
INSERT INTO `book` VALUES (1000000000000000043, 10, 10, 'Kato Yamato', 'Kato Yamato', '广州南方学院出版社', '2007-10-04', 954.39);
INSERT INTO `book` VALUES (1000000000000000044, 10, 10, 'Ueda Ayato', 'Ueda Ayato', '广州南方学院出版社', '2009-11-12', 693.74);
INSERT INTO `book` VALUES (1000000000000000045, 10, 10, 'Yeung Suk Yee', 'Yeung Suk Yee', '广州南方学院出版社', '2016-01-14', 612.79);
INSERT INTO `book` VALUES (1000000000000000046, 10, 10, 'Mo Jialun', 'Mo Jialun', '广州南方学院出版社', '2006-02-19', 254.24);
INSERT INTO `book` VALUES (1000000000000000047, 10, 10, 'Hirano Ayano', 'Hirano Ayano', '广州南方学院出版社', '2014-12-16', 421.39);
INSERT INTO `book` VALUES (1000000000000000048, 10, 10, 'Ho Sai Wing', 'Ho Sai Wing', '广州南方学院出版社', '2005-03-12', 533.63);
INSERT INTO `book` VALUES (1000000000000000049, 10, 10, 'Yeow Kwok Yin', 'Yeow Kwok Yin', '广州南方学院出版社', '2018-11-08', 123.58);
INSERT INTO `book` VALUES (1584009305262759937, 0, 1, 'java程序设计', 'xxx', '南方出版社', '2020-10-11', 12.00);
INSERT INTO `book` VALUES (1584009309373177858, 29, 1, 'java程序设计', 'xxx', '南方出版社', '2020-10-11', 12.00);
INSERT INTO `book` VALUES (1598856684071661569, 11, 0, '软件测试12', 'test', '广州南方学院出版社', '2020-10-12', 110.00);
INSERT INTO `book` VALUES (1598856783577329665, 2, 0, '软件测试3', '小王', '广州南方学院出版社', NULL, 10.00);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `book_id` bigint(11) NOT NULL COMMENT '图书编号',
  `reader_id` bigint(11) NOT NULL COMMENT '读者编号',
  `borrow_card_id` bigint(11) NOT NULL COMMENT '借阅证编号',
  `borrow_date` datetime NULL DEFAULT NULL COMMENT '借书时间',
  `return_date` datetime NULL DEFAULT NULL COMMENT '还书时间',
  `is_renew` int(1) NULL DEFAULT NULL COMMENT '是否续借'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (123, 123, 2, '2022-12-07 19:53:37', '2022-12-07 20:05:08', 0);
INSERT INTO `borrow` VALUES (123, 123, 2, '2022-12-07 20:26:14', NULL, 0);
INSERT INTO `borrow` VALUES (125, 1585991051436908546, 1, '2022-12-07 20:27:02', NULL, 0);
INSERT INTO `borrow` VALUES (126, 1585991051436908546, 1, '2022-12-07 20:27:12', NULL, 0);
INSERT INTO `borrow` VALUES (126, 123, 2, '2022-12-15 16:09:47', NULL, 1);
INSERT INTO `borrow` VALUES (127, 1585991051436908546, 1, '2022-12-15 16:10:33', NULL, 1);

-- ----------------------------
-- Table structure for borrow_card
-- ----------------------------
DROP TABLE IF EXISTS `borrow_card`;
CREATE TABLE `borrow_card`  (
  `id` bigint(11) NOT NULL,
  `visa_date` date NULL DEFAULT NULL COMMENT '签证日期',
  `reader_id` bigint(11) NULL DEFAULT NULL COMMENT '读者id',
  `state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `borrow_number` int(4) NULL DEFAULT NULL COMMENT '可借数量',
  `is_borrow` int(2) NULL DEFAULT NULL COMMENT '是否可借',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow_card
-- ----------------------------
INSERT INTO `borrow_card` VALUES (1, '2022-11-09', 1585991051436908546, '1', 89, 1);
INSERT INTO `borrow_card` VALUES (2, '2022-11-29', 123, '1', 87, 1);

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader`  (
  `id` bigint(11) NOT NULL COMMENT '读者编号',
  `reader_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者姓名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者性别',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者密码',
  `auth` int(1) NULL DEFAULT 2 COMMENT '用户的权限，1为管理员，2为读者',
  `phone` int(11) NULL DEFAULT NULL COMMENT '读者电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES (123, 'test', '男', '123', 2, NULL);
INSERT INTO `reader` VALUES (124, 'aaa', '女', '123', 2, NULL);
INSERT INTO `reader` VALUES (1585991051436908546, 'xx', '女', '111222', 2, NULL);

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule`  (
  `book_id` bigint(11) NULL DEFAULT NULL COMMENT '图书ID',
  `borrow_card_id` bigint(11) NULL DEFAULT NULL COMMENT '借书证ID',
  `overdue_days` int(11) NULL DEFAULT NULL COMMENT '超期天数',
  `overdue_fine` decimal(11, 2) NULL DEFAULT NULL COMMENT '罚款',
  `overdue_num` int(11) NOT NULL DEFAULT 0 COMMENT '超期本数',
  PRIMARY KEY (`overdue_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES (1598856783577329665, 1, 296, 296.00, 1);
INSERT INTO `rule` VALUES (1584009309373177858, 1, 23, 64.00, 2);

SET FOREIGN_KEY_CHECKS = 1;
