SELECT  * 
FROM `software-product-analytics.analytics_153293282.selected_columns` 
WHERE event_name IN (
  'level_start',
  'level_complete',
  'level_up',
  'completed_5_levels',
  'level_fail',
  'level_retry',
  'level_reset',
  'level_start_quickplay',
  'level_complete_quickplay',
  'level_fail_quickplay',
  'level_retry_quickplay',
  'level_reset_quickplay',
  'use_extra_steps',
  'spend_virtual_currency',
  'ad_reward'
)