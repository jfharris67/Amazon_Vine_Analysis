-- vine table
CREATE TABLE vine_table (
review_id TEXT PRIMARY KEY,
star_rating INTEGER,
helpful_votes INTEGER,
total_votes INTEGER,
vine TEXT,
verified_purchase TEXT
);

-- Filter the data and create a new DataFrame or table to retrieve all the rows where the total_votes count is equal to or greater than 20 to pick reviews that are more likely to be helpful and to avoid having division by zero errors later on.
CREATE TABLE vine_table_total_votes_greater_20 AS
SELECT *
FROM vine_table
WHERE total_votes >= 20;

SELECT COUNT(*) AS total_rows
FROM vine_table_total_votes_greater_20;

-- Filter the new DataFrame or table created in Step 1 and create a new DataFrame or table to retrieve all the rows where the number of helpful_votes divided by total_votes is equal to or greater than 50%.
CREATE TABLE vine_table_helpful_votes_ratio AS
SELECT *
FROM vine_table_total_votes_greater_20
WHERE CAST(helpful_votes AS FLOAT) / CAST(total_votes AS FLOAT) >= 0.5;

-- Filter the DataFrame or table created in Step 2, and create a new DataFrame or table that retrieves all the rows where a review was written as part of the Vine program (paid), vine == 'Y'.
CREATE TABLE vine_table_paid_reviews AS
SELECT *
FROM vine_table_helpful_votes_ratio
WHERE vine = 'Y';

SELECT COUNT(*) AS total_paid_reviews
FROM vine_table_paid_reviews;

-- Repeat Step 3, but this time retrieve all the rows where the review was not part of the Vine program (unpaid), vine == 'N'.
CREATE TABLE vine_table_unpaid_reviews AS
SELECT *
FROM vine_table_helpful_votes_ratio
WHERE vine = 'N';

SELECT COUNT(*) AS total_unpaid_reviews
FROM vine_table_unpaid_reviews;


-- Determine the total number of reviews, the number of 5-star reviews, and the percentage of 5-star reviews for the two types of review (paid vs unpaid).
SELECT
  COUNT(*) AS total_paid_reviews,
  COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) AS total_paid_5_star_reviews,
  100.0 * COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) / COUNT(*) AS percentage_paid_5_star_reviews
FROM vine_table_paid_reviews;

SELECT
  COUNT(*) AS total_unpaid_reviews,
  COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) AS total_unpaid_5_star_reviews,
  100.0 * COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) / COUNT(*) AS percentage_unpaid_5_star_reviews
FROM vine_table_unpaid_reviews;

