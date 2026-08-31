SELECT *
FROM `software-product-analytics.analytics_153293282.level_filtered` 
WHERE event_timestamp
BETWEEN user_first_touch_timestamp
AND user_first_touch_timestamp + (24 * 60 * 60 * 1000000);