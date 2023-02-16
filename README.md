# Amazon_Vine_Analysis

## Overview
The purpose of this analysis is to determine if there is any bias toward favorable reviews from Vine members in my dataset.

## Results
- How many Vine reviews and non-Vine reviews were there?

Using the below code in SQL, we're able to determine 585 paid (vine) reviews and 61,139 unpaid (non-vine) reviews.

```
select count(*) as paid_review_count 
from paid_vines
```

```
select count(*) as unpaid_review_count 
from unpaid_vines
```

- How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
 
Using the below code in SQL, we're able to determine 213 paid (vine) 5-star reviews and 28,839 unpaid (non-vine) 5-star reviews.

```
select count(*) as paid_review_count
from paid_vines
where star_rating >= 5;
```

```
select count(*) as unpaid_review_count
from unpaid_vines
where star_rating >= 5;
```

- What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?
 
Using the below code in SQL, we're able to determine 36.4% of paid (vine) reviews were 5-star and 47.2% unpaid (non-vine) reviews were 5-stars.

```
SELECT (COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) * 1.0 / COUNT(*)) * 100 AS percent_5_star
FROM paid_vines;
```

```
SELECT (COUNT(CASE WHEN star_rating = 5 THEN 1 ELSE NULL END) * 1.0 / COUNT(*)) * 100 AS percent_5_star
FROM unpaid_vines;
```

## Summary
Our analysis is able to confirm that no bias exists from paid (vine) reviewers in regards to boosting 5-star ratings. 

A final analysis could check these results against the "verified purchases" column, to confirm whether or not people who haven't purchased the vine are artificially lowering its rating.
