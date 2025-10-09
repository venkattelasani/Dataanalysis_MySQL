# Netflix Data Analysis using SQL

## 📊 Project Overview

A comprehensive SQL analysis of Netflix's content catalog to uncover insights about content distribution, durations, directors, and geographical trends using raw Netflix data.

**Dataset Source:** [Netflix Shows Dataset on Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows?resource=download)

## 🛠️ Technical Stack

*   **Database:** MySQL
*   **Tool:** MySQL Workbench
*   **Data Import:** Table Data Import Wizard
*   **Analysis:** SQL Queries & Functions

## 📈 Key Analysis Performed

### 🔍 Basic Metrics
- Total records in dataset: **97 titles**
- Content type distribution: **55 Movies** vs **42 TV Shows**
- Most content-rich country: **United States**
- Top director: **Toshiya Shinohara**

### 📅 Temporal Analysis
- Oldest TV show release year: **1994**
- Oldest movie release year: **1975**
- Identification of most recently added titles

### ⏱️ Duration Analysis
- Found longest movie using `CAST` and `SUBSTRING_INDEX` functions
- Created unified duration comparison across movies and TV shows
- Converted TV show seasons to equivalent minutes for fair comparison
- Longest content: **The Great British Baking Show**

## 💡 SQL Skills Demonstrated

```sql
-- Data type conversion and string manipulation
CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)

-- Conditional logic with CASE statements
CASE WHEN duration LIKE '%Season%' THEN ... END

-- Aggregation and grouping
GROUP BY, COUNT(), ORDER BY, LIMIT

-- Data filtering and conditional queries
WHERE, IS NOT NULL, MIN(), MAX()
