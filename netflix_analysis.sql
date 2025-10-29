create database netflix_data;
use  netflix_data;
select * from netflix_;
# click double click on tables in which database you want to create a table then go to (table data import wizard) then click next and copy your file path (eg.csv file ) then click next muliple times

# to rename the table name from  netflix_ to netflix_data 
alter table netflix_ rename to  netflix_data ;
select * from netflix_data;
desc netflix_data;
# QUESTIONS:-
--1. What is the count the total number of records in the netflix_data table.
select count(*) from netflix_data;#'97'

select * from netflix_data;
--2.  What is the count the number of TV shows and movies separately
select count(*) from netflix_data where type="movie";#55
select count(*) from netflix_data where type="TV show";#42

-- 3. Find the top director with the most content on Netflix
select * from netflix_data ;
SELECT  director, count(title) as no_titles from netflix_data where director is not null group by director order by no_titles desc ;#Toshiya Shinohara

-- 4. Find the most recently added title.
select title ,date_added  from netflix_data where min(date_added);
-- 5. What is  the Minimum release year for TV shows and movies
select min(release_year) from netflix_data where type="TV show";#'1994'
select min(release_year) from netflix_data where type="Movie";#'1975'
select * from netflix_data;
-- 6. Find the top country with the most content on Netflix. 
SELECT  country, count(title) as no_titles from netflix_data where country is not null group by country order by no_titles desc ;#United States
select country from netflix_data where max(count(country)) group by country;
-- 7. Find the longest duration movie
SELECT *
FROM netflix_data
WHERE type = 'Movie'
ORDER BY CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC#SUBSTRING_INDEX(duration, ' ', 1) → picks the number before the space.#CAST(... AS UNSIGNED) → converts that text "120" into a number so we can sort by it.
LIMIT 1;#  CAST is used to convert datatype from string to int ans as singned means numerical
-- 8. Find the longest duration movie/tv show
SELECT *,
  CASE 
    WHEN duration LIKE '%Season%' THEN 
      CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) * 45
    ELSE 
      CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)
  END AS duration_in_min
FROM netflix_data
ORDER BY duration_in_min DESC
LIMIT 1;#The Great British Baking Show















