CREATE TABLE `genres`  (
  `genre_id` int NOT NULL,
  `genre_name` varchar(255) NULL
);

CREATE TABLE `ratings`  (
  `tconst` varchar(45) NOT NULL,
  `average_rating` int NULL,
  `number_of_votes` int NULL
);

CREATE TABLE `title_basics`  (
  `tconst` varchar(45) NOT NULL,
  `primary_title` varchar(255) NULL,
  `start_year` int NULL,
  `runtime` int NULL
);

CREATE TABLE `title_genres`  (
  `tconst` varchar(45) NULL,
  `genre_id` int NULL
);

ALTER TABLE `genres` ADD CONSTRAINT `fk_genres_title_genres_1` FOREIGN KEY (`genre_id`) REFERENCES `title_genres` (`genre_id`);
ALTER TABLE `title_basics` ADD CONSTRAINT `fk_title_basics_ratings_1` FOREIGN KEY (`tconst`) REFERENCES `ratings` (`tconst`);
ALTER TABLE `title_basics` ADD CONSTRAINT `fk_title_basics_title_genres_1` FOREIGN KEY (`tconst`) REFERENCES `title_genres` (`tconst`);

