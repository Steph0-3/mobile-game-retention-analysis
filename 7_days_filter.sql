SELECT user_pseudo_id,
  event_timestamp,
  user_first_touch_timestamp,
  event_name
FROM `software-product-analytics.analytics_153293282.level_filtered` 
WHERE event_timestamp >
  user_first_touch_timestamp + (24 * 60 * 60 * 1000000)
AND event_timestamp <=
  user_first_touch_timestamp + (7 * 24 * 60 * 60 * 1000000);