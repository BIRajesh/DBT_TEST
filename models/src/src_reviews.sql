WITH RAW_REVIEWS AS (
 SELECT 
 *
 FROM {{source('airbnb','reviews')}}
)
SELECT
LISTING_ID
,DATE AS review_date
,REVIEWER_NAME
,COMMENTS as review_text
,SENTIMENT as review_sentiment

FROM
 RAW_REVIEWS
