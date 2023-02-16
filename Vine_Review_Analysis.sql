--filter for vines with > 20 reviews
create table good_vines
as
select * from vine_table
where total_votes > 20

--filter for vines where helpful votes > 50% of total votes
create table helpful_vines
as
select * from good_vines
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

--filter rows where paid review was written
create table paid_vines
as
select * from helpful_vines
WHERE vine = 'Y'

--filter rows where paid review was not written
create table unpaid_vines
as
select * from helpful_vines
WHERE vine = 'N'

--determine the total number of reviews, the number of 5-star reviews, 
--and the percentage of 5-star reviews for the two types of review (paid vs unpaid).
select count(*) as paid_review_count
from paid_vines

select count(*) as paid_review_count
from paid_vines
where star_rating >= 5;

SELECT (COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) * 1.0 / COUNT(*)) * 100 AS percent_5_star
FROM paid_vines;

--determine the total number of reviews, the number of 5-star reviews, 
--and the percentage of 5-star reviews for the two types of review (paid vs unpaid).
select count(*) as unpaid_review_count
from unpaid_vines

select count(*) as unpaid_review_count
from unpaid_vines
where star_rating >= 5;

SELECT (COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) * 1.0 / COUNT(*)) * 100 AS percent_5_star
FROM unpaid_vines;