# mobile-game-retention-analysis

### Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Recommendations](#recommendations)
### Project Overview

This project explores how a player's first 24 hours of gameplay may relate to whether they return around Day 7. It focuses on level_complete and level_fail events, using SQL and Python to clean and analyze player behavior, along with a basic Logistic Regression model to explore whether these early behaviors can help predict retention. The goal is to better understand early player engagement and identify potential areas for improving player retention.

### Data Sources

Mobile Game Event Data: The primary dataset comes from the Public Firebase Analytics mobile game dataset available through Google BigQuery. It contains event-level gameplay data, including player IDs, event timestamps, event names, platform information, and other player and device attributes.

For this analysis, the original event data was filtered into two analysis datasets: a first 24-hour dataset containing level_complete and level_fail events occurring within the player's first 24 hours, and a 7-day dataset used to determine whether players returned during the Day 7 retention window.

### Tools

Google BigQuery / SQL: Used to query the Firebase Analytics dataset, filter event data into the first-24-hour and 7-day windows, and prepare the data for analysis.

Python: Used for data cleaning, feature creation, exploratory data analysis, visualizations, and preparing the data for the machine learning model.

Pandas: Used within Python to manipulate, combine, and analyze player-level data.

Matplotlib: Used to create visualizations comparing retained and non-retained players.

Scikit-learn: Used to build and evaluate a basic Logistic Regression model for predicting 7-day retention.

### Data Cleaning/Preparation

In the initial data preparation phase, I performed the following tasks:

1. Loaded and filtered data to get the first 24-hour gameplay and 7-day gameplay retention
2. Cleaned and transformed the data in Python by converting timestamps to datetime format
3. Aggregated player-level gameplay metrics and retention labels using level_complete, level_fail, and 7-day retention status to prepare the dataset for analysis and machine learning.

### Exploratory Data Analysis

To answer game retention questions such as:

- How active are players during their first 24 hours?
- How common is 7-day retention?
- Do retained players behave differently?

### Results/Findings
- Retained players generally completed more levels during their first 24 hours, suggesting that early gameplay activity may be associated with retention.
- The findings suggest that early level activity is related to retention, but level completions and failures alone are not sufficient to reliably predict Day 7 retention.
- Players who've been retained around day 7 showed different early game behavior in the first 24-hours than non-retained players

### Recommendations
- Continue to observe and investigate early-game activity since level completion and level failure had limited predictive findings, other first-day behaviors such as session activity, level starts, retries can be examined to identify strong retention indicators
- Use player data to compare to the player's progression or gameplay approaches and determine which changes are associated with better retention

### Limitations
- The analysis focused only on level_complete and level_fail during the first 24 hours, so other player behaviors that may influence retention were not included.
- The dataset represents observed player behavior so further testing would be needed to determine whether gameplay changes would improve retention
