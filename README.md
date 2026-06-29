# World Layoffs Analysis (2020–2023)

This project demonstrates an end-to-end SQL workflow for cleaning and exploring a real-world dataset of company layoffs between March 2020 and March 2023. Using MySQL, I transformed the raw data into a clean and consistent dataset before performing exploratory data analysis (EDA) to uncover trends in layoffs across companies, industries, countries, and time periods.
The project highlights practical SQL skills commonly used for data analysis, including data cleaning, data transformation, aggregation, window functions, ranking, and trend analysis.

---

## Objectives

- Clean and standardize the raw dataset using SQL
- Remove duplicate and inconsistent records
- Handle missing and blank values appropriately
- Perform exploratory data analysis to identify patterns and trends in global layoffs
- Demonstrate SQL techniques used in real-world data analysis

---

## Tools & Technologies
- MySQL
- SQL
- MySQL Workbench
- Git & GitHub

---

## Project Structure

| Folder        | Description                                 |
|---------------|---------------------------------------------|
| `SQL scripts/`  | Data_Cleaning.sql & Exploratory_Data_Analysis.sql        |
| `data/`         | layoffs.csv                                              |
| `images/`       | Screenshots of sample queries                            |
| `README.md`     | Project overview, processess, and outcomes               |
| `LICENSE`       | MIT License file (permissions & usage)                   |

---

## Dataset

The dataset contains records of layoffs announced by companies worldwide from March 2020 to March 2023, including information such as company name, industry, country, funding stage, total employees laid off, percentage laid off, and announcement date.

### Dataset Source

- **Time Period:** March 2020 to March 2023
- [World_layoffs](https://www.kaggle.com/datasets/happyude/world-layoffs?select=layoffs.csv)

---

## Data Cleaning Process
The following data cleaning steps were performed using MySQL:

### 1. Create a Working Copy
- Created a duplicate table to preserve the original dataset from modification

### 2. Remove Duplicate Records
- Identified duplicate rows using window functions
- Removed duplicate records while preserving unique observations

### 3. Standardize Data
- Trimmed leading and trailing spaces
- Corrected inconsistent text values
- Standardized date formats
- Corrected data types where necessary

### 4. Handle Missing Values
- Replaced blank values with NULL where appropriate
- Filled missing values using available information
- Removed records with missing values that could not be recovered

### 5. Remove Unnecessary Data
- Deleted unnecessary rows and columns after completing the cleaning process

---

## Exploratory Data Analysis (EDA)
The cleaned dataset was analyzed to answer business-related questions, including:

- Total number of employees laid off worldwide
- Companies with the highest layoffs
- Industries most affected by layoffs
- Countries with the highest layoffs
- Layoffs by month and year
- Monthly rolling total of layoffs
- Company layoffs grouped by year
- Company rankings based on annual layoffs
- Companies that laid off 100% of their workforce
- Maximum layoffs recorded by a single company

---

## Skills Demonstrated
- SQL Data Cleaning
- Data Transformation
- Exploratory Data Analysis (EDA)
- Data Quality Management
- Window Functions
- Data Aggregation
- Trend Analysis
- Business Insight Generation

---

## Key Outcomes
- Companies like **Amazon**, **Google**, **Meta**, **Salesforce**, **Microsoft** have the most layoffs
- The highest number of layoffs occurred in **2022**, totaling **160,661**
- The **Consumer** industry laid off the highest number of workers, totaling **45,182**
- **United States** has about 67% of the total layoffs, totaling **256,559**
- In 2023 **Google** laid off **12,000** worker, and **Meta** laid off **11,000** worker in 2022

---

## License

This project is licensed under the [MIT License](LICENSE)

---

## Author

**Aymen Mohammed** — Data Analyst passionate about using data to tell stories and drive business decisions.

 [![Portfolio](https://img.shields.io/badge/Portfolio-000000?logo=about.me&logoColor=white&style=flat)](https://aymenmohammed.netlify.app/)
 [![Linkedin](https://img.shields.io/badge/LinkedIn-%230077B5.svg?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/aymen-mohammed-b1a646394) 
 [![GitHub](https://img.shields.io/badge/GitHub-black?logo=github&logoColor=white&style=flat)](https://github.com/Aymen-Mohammed7)


