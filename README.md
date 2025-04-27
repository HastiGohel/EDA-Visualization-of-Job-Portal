# 🧠 Job Scraper – Analyzing Data Roles & Trends 

## 📌 Overview
This project scrapes remote job listings, cleans and stores the data in a CSV file, performs Exploratory Data Analysis (EDA), creates visualizations, and runs SQL queries for insights.

---

## ❗ Problem Statement

1. There is a growing demand for insights into **remote job opportunities**, but job listings are scattered across multiple platforms.
2. Manually analyzing job data is time-consuming, especially when trying to track **salary trends and hiring patterns**.
3. Job descriptions often contain **inconsistent formats**, making it hard to perform structured data analysis.
4. There's a need to **visualize job trends** (location, salary, keywords) to guide job seekers and analysts.
5. Without structured querying (e.g., SQL), it's difficult to extract meaningful patterns from the job market data.

## 🧰 Tech Stack & Tools

**Languages & Frameworks:**
- Python
- SQL (MySQL)

**Libraries:**
- `requests` – For HTTP requests and web scraping
- `BeautifulSoup` – HTML parsing
- `pandas` – Data manipulation
- `matplotlib` & `seaborn` – Visualizations
- `wordcloud` – Text visualization

**Tools:**
- Jupyter Notebook 
- Git & GitHub
- SQL Workbench 


## 🔍 Project Workflow

### 1. Web Scraping
- Scraped job data from a selected job website.
- Extracted fields:
  - `Title`, `Company`, `Location`, `Salary ($)`, `Posted_date`
  - `Expected_salary`, `Min_salary`, `Max_salary`

### 2. Data Cleaning
- Handled missing values
- Formatted salary fields
- Parsed date fields
- Removed unnecessary characters/whitespace

### 3. Data Storage
- Saved cleaned data as: `remote_jobs_clean.csv`

### 4. Exploratory Data Analysis (EDA)
- Location-wise job counts
- Salary stats (mean, median, min, max)
- Top 20 keywords in job titles

### 5. Visualizations
- 📊 Bar Chart: Top 10 job locations  
- ☁️ Word Cloud: Common keywords in titles  
- 📦 Box Plot: Expected salary distribution  
- 📈 Trend Line: Jobs over time

### 6. SQL Analysis

## 💡 Key Insights

- 📍 **Top Hiring Locations:** like Probably worldwide,WorldwideUnited StatesMadrid HQ,ESToronto and Remote positions dominate the job market.
- 💰 **High-Paying Jobs:** Most roles offering over $23,0000+ are Senior React Full stack Developer,Full Stack Engineer.
- 🧠 **Keyword Trends:** Popular keywords in job titles include "Software Engineer,","Engineer,","Senior fullstack," and “Developer.”
- 📈 **Time-Based Trends:** There’s a clear rise in job postings during specific year after Covid.

## Links:
  **Group Explanation:** https://drive.google.com/file/d/1cui8e4fSTBukP9zESIOsa-zhDFnZp23G/view?usp=sharing
  
  **Quention Answer:** https://drive.google.com/file/d/1bbXECO7PgUC4UAhwXdHO2ZBMmgjiQp6R/view?usp=sharing
  
## 👥 Project Members

- **HASTI GOHEL** – Data Scraping, , Visualizations, Documentation and SQL Analysis  
- **AMAN PAL** – Cleaning, EDA and Deployment



