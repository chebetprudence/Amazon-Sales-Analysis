# Amazon India Sales & Customer Sentiment Analysis

An end-to-end data analysis project exploring Amazon India's product catalog, 
pricing strategies, customer ratings and review sentiment.

---

## 📋 Project Overview

This project follows a complete data analytics pipeline:
- **Data Cleaning** — Python (pandas)
- **Data Storage** — MySQL
- **Data Visualization** — Power BI
- **Reporting** — Google Docs

---

## 📁 Repository Structure

```
Amazon-Sales-Analysis/
│
├── amazon.csv                          # Raw dataset
├── amazon_cleaned.csv                  # Cleaned dataset
├── Amazon_Sales_Analysis.ipynb         # Python notebook
├── Amazon_Analysis_Views               # MySQL views and queries
├── Amazon_Sales_Analysis_Dashboard.pbix # Power BI dashboard
├── amazon_sales_analysis_report.pdf    # Final report
└── README.md                           # Project documentation
```

---

## 📊 Dataset

- **Source:** Kaggle
- **Records:** 1,465 rows, 16 columns
- **Coverage:** 9 product categories, 1,351 unique products
- **Includes:** Product details, pricing, ratings, customer reviews

---

## 🔧 Tools Used

| Tool | Purpose |
|------|---------|
| Python (pandas, numpy) | Data cleaning & sentiment analysis |
| MySQL | Data storage & querying |
| Power BI | Interactive dashboard |
| Google Docs | Report writing |

---

## 🧹 Data Cleaning Steps

- Stripped ₹ symbols, commas and % signs from numeric columns
- Filled 2 missing values in `rating_count` with 0
- Resolved 1 corrupted `rating` value
- Split pipe-separated `category` into 3 levels
- Added calculated column `discount_amount`
- Applied keyword-based sentiment analysis on review content
- Dropped 12 rows with mismatched user_id/user_name counts

---

## 🗄️ MySQL Database Structure

**Tables:**
- `products` — 1,351 unique products
- `reviews` — 1,465 review records
- `sentiment_summary` — sentiment per product
- `user_summary` — 8,426 unique reviewers

**Views:**
- `category_performance`
- `discount_price_analysis`
- `top_rated_products`

---

## 📈 Key Findings

- **Electronics** dominates the catalog but **OfficeProducts** has the highest avg rating
- Average discount is **39.34%** — heavy discounting is common
- **94.11%** of products carry positive customer sentiment
- Correlation between price/discount and rating is weak (≤ ±0.13)
- Top reviewer: **Rajesh** with 22 reviews

---

## 📌 Recommendations

1. Expand OfficeProducts listings — high rating, low competition
2. Review Electronics pricing strategy — deep discounts may erode margins
3. Improve product quality in Car&Motorbike — lowest rated category
4. Monitor and respond to negative reviews proactively
5. Leverage 94% positive sentiment for marketing campaigns

---

## 👩‍💻 Author

**Prudence Chebet**  
Data Analyst | Python | MySQL | Power BI  
[LinkedIn](www.linkedin.com/in/prudence-chebet) | [GitHub](https://github.com/chebetprudence)