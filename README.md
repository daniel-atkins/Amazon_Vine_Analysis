# Amazon_Vine_Analysis

## Overview
The purpose of this analysis is to determine if there is any bias toward favorable reviews from Vine members in my dataset.

## Results
-How many Vine reviews and non-Vine reviews were there?
Using the below code in SQL, we're able to determine 585 paid (vine) reviews and 61,139 unpaid (non-vine) reviews.

`select count(*) as paid_review_count 
 from paid_vines

select count(*) as unpaid_review_count 
  from unpaid_vines`

-How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
Using the below code in SQL, we're able to determine 213 paid (vine) 5-star reviews and 28,839 unpaid (non-vine) 5-star reviews.

`select count(*) as paid_review_count
  from paid_vines
  where star_rating >= 5;


select count(*) as unpaid_review_count
  from unpaid_vines
  where star_rating >= 5;



-What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?
