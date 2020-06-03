CREATE DATABASE if not exists ratings
DEFAULT CHARACTER SET 'utf8';

USE ratings;

DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
    sku varchar(80) NOT NULL,
    avg_rating DECIMAL(3, 2) NOT NULL,
    rating_count INT NOT NULL,
    PRIMARY KEY (sku)
) ENGINE=InnoDB;


GRANT ALL ON ratings.* TO 'ratings'@'%' IDENTIFIED BY 'iloveit';

