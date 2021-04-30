~~ Neutral Reviewers

SELECT DISTINCT reviewer_name FROM reviewers
INNER JOIN ratings ON
reviewers.reviewer_id = ratings.reviewer_id
WHERE (reviewer_stars IS NULL)
