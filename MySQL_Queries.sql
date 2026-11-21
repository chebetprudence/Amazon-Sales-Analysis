-- ================================================
-- Amazon Sales Analysis — MySQL Views
-- Author: Prudence Chebet
-- Database: amazon_sales
-- Description: Analytical views created for 
--              Power BI dashboard and reporting
-- ================================================


-- ---- Category Performance ----
CREATE VIEW category_performance AS 
    SELECT 
        main_category,
        COUNT(*) AS total_products,
        ROUND(AVG(rating), 2) AS avg_rating,
        ROUND(AVG(discount_percentage), 2) AS avg_discount_pct,
        ROUND(AVG(actual_price), 2) AS avg_actual_price,
        ROUND(AVG(discounted_price), 2) AS avg_discounted_price,
        ROUND(AVG(discount_amount), 2) AS avg_discount_amount,
        SUM(rating_count) AS total_reviews
    FROM products
    GROUP BY main_category;


-- ---- Price and Discount Analysis ----
CREATE VIEW discount_price_analysis AS
    SELECT 
        product_id,		
        product_name,
        main_category,
        sub_category,
        actual_price,
        discounted_price,
        discount_percentage,
        discount_amount,
        CASE
            WHEN discount_percentage >= 75 THEN 'High (75%+)'
            WHEN discount_percentage >= 50 THEN 'Medium (50-74%)'
            WHEN discount_percentage >= 25 THEN 'Low (25-49%)'
            ELSE 'Minimal (0-24%)'
        END AS discount_tier
    FROM products;


-- ---- Top Rated Products ----
CREATE VIEW top_rated_products AS
    SELECT
        product_id,
        product_name,
        main_category,
        sub_category,
        rating,
        rating_count,
        actual_price,
        discounted_price,
        discount_percentage
    FROM products
    WHERE rating >= 4.0 AND rating_count >= 1000
    ORDER BY rating DESC, rating_count DESC;