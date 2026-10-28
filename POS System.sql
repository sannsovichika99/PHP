CREATE TABLE `users` (
  `id_user` int PRIMARY KEY AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` ENUM ('Admin', 'User') DEFAULT 'User',
  `status` ENUM ('Enable', 'Disable') DEFAULT 'Enable'
);

CREATE TABLE `categories` (
  `id_cate` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255)
);

CREATE TABLE `products` (
  `id_product` int PRIMARY KEY AUTO_INCREMENT,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cate_id` int NOT NULL,
  `quantity` varchar(10) DEFAULT '0',
  `price` varchar(10) DEFAULT '0.00',
  `status` ENUM ('Enable', 'Disable') DEFAULT 'Enable',
  `user_id` int NOT NULL
);

CREATE INDEX `products_index_0` ON `products` (`cate_id`);

ALTER TABLE `products` ADD FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id_cate`);

ALTER TABLE `products` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`);
