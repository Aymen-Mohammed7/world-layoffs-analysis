-- Exploratory Data Analysis


-- Max & Min layoffs
SELECT MAX(total_laid_off), MAX(percentage_laid_off), MAX(funds_raised_millions)
FROM layoffs_staging2;


-- Companies with 100% layoffs
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;


-- Total layoffs by company
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY SUM(total_laid_off) DESC;


-- Data boundries
SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;


-- Total layoffs by industry
SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY SUM(total_laid_off) DESC;


-- All data
SELECT *
FROM layoffs_staging2;


-- Total layoffs by country
SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY SUM(total_laid_off) DESC;


-- Total layoffs by year
SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY YEAR(`date`) DESC;


-- Total layoffs
SELECT SUM(total_laid_off)
FROM layoffs_staging2;


-- -- Total layoffs by stage
SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY SUM(total_laid_off) DESC;


-- Total layoffs by month/year
SELECT SUBSTRING(`date`,1,7) AS `Month`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY `Month`
HAVING `Month` IS NOT NULL
ORDER BY `Month` ASC;


-- Total rolling layoffs by month/year
WITH Total_Rolling AS(
SELECT SUBSTRING(`date`,1,7) AS `Month`, SUM(total_laid_off) AS total_offs
FROM layoffs_staging2
GROUP BY `Month`
HAVING `Month` IS NOT NULL
ORDER BY `Month` ASC)
SELECT `Month`, total_offs
, SUM(total_offs) OVER(ORDER BY `Month`) AS total_rolling
FROM Total_Rolling; 


-- Total layoffs by company & year
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
ORDER BY SUM(total_laid_off) DESC;


-- Rank of top 5 laid off companies by year
WITH Company_Year (Company, `Year`, Total_laid_off) AS
(
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
), Company_Rank AS
(
SELECT *, DENSE_RANK() OVER(PARTITION BY `Year` ORDER BY Total_laid_off DESC) AS Rank_by_total
FROM Company_Year
WHERE `Year` IS NOT NULL
AND Total_laid_off IS NOT NULL
)
SELECT *
FROM Company_Rank
WHERE Rank_by_total <= 5;


-- Total percentage of layoffs by company
SELECT company, SUM(percentage_laid_off)
FROM layoffs_staging2
GROUP BY company;













