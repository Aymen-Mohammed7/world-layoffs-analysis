-- Exploratory Data Analysis


SELECT MAX(total_laid_off), MAX(percentage_laid_off), MAX(funds_raised_millions)
FROM layoffs_staging2;


SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;


SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY SUM(total_laid_off) DESC;


SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;


SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY SUM(total_laid_off) DESC;


SELECT *
FROM layoffs_staging2;


SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY SUM(total_laid_off) DESC;


SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY YEAR(`date`) DESC;


SELECT SUM(total_laid_off)
FROM layoffs_staging2;


SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY SUM(total_laid_off) DESC;


SELECT SUBSTRING(`date`,1,7) AS `Month`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY `Month`
HAVING `Month` IS NOT NULL
ORDER BY `Month` ASC;


WITH Total_Rolling AS(
SELECT SUBSTRING(`date`,1,7) AS `Month`, SUM(total_laid_off) AS total_offs
FROM layoffs_staging2
GROUP BY `Month`
HAVING `Month` IS NOT NULL
ORDER BY `Month` ASC)
SELECT `Month`, total_offs
, SUM(total_offs) OVER(ORDER BY `Month`) AS total_rolling
FROM Total_Rolling; 


SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
ORDER BY SUM(total_laid_off) DESC;


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


SELECT company, SUM(percentage_laid_off)
FROM layoffs_staging2
GROUP BY company;













