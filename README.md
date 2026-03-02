# 📊 E-Commerce Customer & Revenue Analytics

**Tooling:** Google BigQuery (SQL) | **Dataset:** `thelook_ecommerce` | **Focus:** Growth, Retention, & RFM Modeling

## 1️⃣ Executive Summary

This project conducts a deep-dive analysis of the **theLook** e-commerce dataset to evaluate business health, customer retention, and purchasing behavior. By transitioning from raw data to actionable insights, I identified that while the business enjoys a **36% CAGR**, growth is heavily acquisition-dependent due to a **379-day median repurchase gap**.

---

## 2️⃣ Project Architecture

The analysis is partitioned into six strategic modules:

| Stage | Focus Area | Key SQL Techniques |
| --- | --- | --- |
| **I** | Data Engineering | CTEs, Data Cleaning, Schema Standardization |
| **II** | Revenue Growth | Window Functions (`LAG`), `DATE_TRUNC`, CAGR Calculation |
| **III** | Retention Dynamics | Repeat Purchase Rate (RPR), Revenue Contribution % |
| **IV** | Behavioral Analysis | Percentiles, `TIMESTAMP_DIFF`, Inter-purchase intervals |
| **V** | Cohort Analysis | Self-joins, Longitudinal Retention Tracking |
| **VI** | RFM Segmentation | `NTILE(5)` Scoring, Customer Tiering, CLV Modeling |

---

## 3️⃣ Deep Dive: Analysis & Insights

### 📈 Revenue & Growth Trends

* **Performance:** Achieved a consistent **36% Compound Annual Growth Rate (CAGR)** across 2023–2025.
* **The Volatility Factor:** While YoY growth is strong, month-over-month (MoM) data shows seasonal fluctuations, suggesting a need for more stable promotional calendars.

### 🔄 Retention & Repeat Behavior

* **The Pareto Effect:** Only **13.89%** of customers are repeat buyers, yet they generate **25.83%** of total revenue.
* **The Gap:** The average time between the first and second purchase is **379 days**.
* **Critical Threshold:** 25% of repeaters return within **71 days**. This "Golden Window" is the prime target for re-engagement.

### 🎯 RFM Customer Segmentation

Using the **Recency, Frequency, and Monetary** model, I segmented the user base into actionable tiers:

* **Champions:** High-value, frequent, recent shoppers. (Strategy: Reward & Referral)
* **At Risk:** High-value but haven't purchased recently. (Strategy: Win-back discounts)
* **Churned:** One-time shoppers from >1 year ago. (Strategy: Low-cost re-engagement)

---

## 4️⃣ Strategic Business Recommendations

Based on the data, I propose the following interventions:

1. **Narrow the Repurchase Window:** Implement an automated email sequence triggered 45 days post-purchase to capture the "Golden Window" (under 71 days).
2. **Loyalty Tiering:** Formalize a "VIP Program" for the *Champions* segment identified in the RFM model to protect the 26% of revenue driven by repeaters.
3. **Cohort-Based Acquisition:** Reallocate marketing spend toward the acquisition channels that produced the highest Month-3 retention cohorts.

---

## 5️⃣ Technical Skills Demonstrated

* **Advanced SQL:** Window functions, complex joins, subqueries, and `DATE` manipulation.
* **Statistical Analysis:** Calculating medians, quartiles, and growth rates (CAGR).
* **Business Intelligence:** Developing RFM frameworks and Lifetime Value (CLV) formulas.
* **Data Storytelling:** Translating SQL outputs into executive-level recommendations.

---

## 6️⃣ Repository Structure

```bash
sql-analytics-project/
│
├─ 1_cleaning/
│   └─ clean_orders.sql
├─ 2_revenue_trend/
│   └─ monthly_revenue.sql
├─ 3_customer_retention/
│   └─ repeat_purchase_rate.sql
├─ 4_cohort_analysis/
│   └─ cohort_analysis.sql
├─ 5_rfm_clv/
│   └─ rfm_clv.sql
└─ README.md

```

---

## 7️⃣ Future Roadmap

* [ ] **Dashboarding:** Connect BigQuery to Looker Studio for real-time KPI tracking.
* [ ] **Predictive Modeling:** Use BigQuery ML to predict churn probability for the "At Risk" segment.
* [ ] **Product Affinity:** Conduct Market Basket Analysis to identify "Frequently Bought Together" items.

---

**Author:** Suraj Kumar

**Role:** Aspiring Data Analyst


---

### What should we do next?

To make this repo truly "internship-ready," would you like me to **write the actual SQL code for the Cohort Analysis** (Stage 5) so you can include it in the `SQL_Queries/` folder?
