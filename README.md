# Amazon_Vine_Analysis

## Overview
The purpose of this analysis is to determine if there is any bias toward favorable reviews from Vine members in my dataset.

## Results
-How many Vine reviews and non-Vine reviews were there?
Using the below code in SQL, we determing 585 paid (vine) reviews and 61,139 unpaid (non-vine) reviews.

`select count(*) as paid_review_count
`from paid_vines

`select count(*) as unpaid_review_count
`from unpaid_vines

-How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
-What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?
