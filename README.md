# Regional Retail Intelligence Pipeline

## Project Overview

This project demonstrates an end-to-end retail analytics pipeline using SQL, Python, and Power BI.

The objective of this project is to clean, transform, analyze, and visualize over 12,000 retail sales transactions across multiple regions including Singapore, Thailand, and Dubai.

The dataset contains intentionally messy and inconsistent data, making it ideal for practicing real-world ETL and business intelligence workflows.

---

# Business Objective

Build a complete BI workflow that includes:

* Data ingestion
* SQL staging and ETL processing
* Data cleaning and transformation
* Exploratory Data Analysis (EDA)
* KPI generation
* Dashboard creation and visualization

---

# Dataset Information

**Source:** Kaggle – Dirty Retail Store Sales Dataset

### Dataset Features

* 12,575 retail transactions
* Multiple regional markets
* 8 product categories
* Static pricing structure
* Dirty and inconsistent data for cleaning practice

---

# Tools & Technologies

| Tool            | Purpose                        |
| --------------- | ------------------------------ |
| MySQL Workbench | Data ingestion, staging, ETL   |
| SQL             | Data cleaning & transformation |
| Python          | EDA & KPI analysis             |
| Pandas          | Data manipulation              |
| NumPy           | Numerical analysis             |
| Matplotlib      | Visualization                  |
| Power BI        | Dashboard creation             |

---

# Project Workflow

## 1. Data Ingestion & SQL Staging

### Tasks Performed

* Created staging database
* Created production database
* Imported raw retail dataset into staging tables

### SQL Skills Used

* Database creation
* Table design
* Data import process
* Staging workflow implementation

---

## 2. ETL Process (SQL Transformation)

The raw dataset contained multiple formatting inconsistencies and dirty values.

### Data Cleaning & Transformation Steps

* Converted text values into numeric data types
* Transformed monetary columns into DECIMAL(10,2)
* Converted date strings into SQL DATE format
* Cleaned invalid and inconsistent records
* Prepared production-ready analytical tables

### SQL Functions Used

```sql
CAST(... AS UNSIGNED)
CAST(... AS DECIMAL(10,2))
STR_TO_DATE(...,'%Y-%m-%d')
```

---

## 3. Exploratory Data Analysis (Python)

Python was used for exploratory data analysis and KPI generation.

### Python Libraries Used

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
```

### Analysis Performed

* Revenue analysis
* Monthly sales trend analysis
* Category performance analysis
* Customer analysis
* Quantity sold analysis

---

## 4. KPI Generation

### Business KPIs Created

* Total Revenue
* Total Transactions
* Total Customers
* Average Customer Value
* Revenue by Category
* Monthly Revenue Trends
* Top Customers
* Quantity Sold by Category

---

## 5. Power BI Dashboard

An interactive Power BI dashboard was created to visualize business insights.
![dashboard](https://github.com/Hsuei/regional-retail-intelligence-pipeline/blob/main/image/dashboard.png) 

### Dashboard Features

* KPI cards
* Monthly sales trends
* Category revenue analysis
* Customer performance analysis
* Product quantity insights
* Interactive filtering

---

# Project Structure

```text
regional-retail-intelligence-pipeline/
│
├── data/
│   ├── sales_data_clean.csv
│   └── cleaned_mnc_retail.csv
│
├── sql/
│   └── mnc_sales_advance.sql
│
├── notebooks/
│   └── retail_analysis.ipynb
│
├── dashboards/
│   └── retail_dashboard.pbix
│
├── images/
│   └── dashboard-preview.png
│
├── docs/
│   └── Project Documentation.docx
│
└── README.md
```

---

# Key Insights

* High-performing categories contributed the majority of total revenue
* Monthly sales trends showed seasonal business patterns
* A small group of customers contributed a large percentage of sales
* Product category demand varied significantly by region

---

# Skills Demonstrated

## Technical Skills

* SQL ETL Development
* Data Cleaning
* Data Transformation
* Data Modeling
* Exploratory Data Analysis
* Business Intelligence
* Data Visualization
* Dashboard Design

## Analytical Skills

* KPI Development
* Trend Analysis
* Customer Analysis
* Revenue Analysis
* Business Reporting

---

# Future Improvements

Potential future enhancements:

* Add advanced statistical analysis
* Create predictive sales forecasting
* Build automated ETL pipelines
* Add advanced Power BI DAX measures
* Deploy dashboard online

---

# Author

Hsu Ei Ei Nu

Aspiring Data Analyst with experience in SQL, Python, Power BI, and business intelligence analytics.
