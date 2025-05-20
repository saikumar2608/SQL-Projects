# Global Health SQL Analysis: Disease Burden, Mortality Trends & Socioeconomic Impact

## 🧠 Project Overview
This SQL-based analytical project explores global health data to uncover patterns in disease mortality, recovery rates, healthcare access, and socioeconomic influence on health outcomes. Using advanced SQL techniques and visualized through Power BI, the project simulates real-world healthcare data storytelling—perfect for portfolios, resumes, and GitHub presentation.

**Data Source:** Kaggle Global Health Statistics Dataset  
**Tools Used:** BigQuery (SQL), Power BI

---

## 📂 Folder Structure
── queries/
│ ├── 01_Top_Deadliest_Diseases.sql
│ ├── 02_High_Recovery_Low_Access.sql
│ ├── 03_Mortality_Trend_Analysis.sql
│ ├── 04_Disease_Risk_Categorization.sql
│ └── 05_Correlation_Urbanization_Income.sql
├── data/
│ ├── top_deadliest_diseases.csv
│ ├── high_recovery_low_access.csv
│ ├── mortality_trend.csv
│ ├── disease_risk.csv
│ └── urbanization_correlation.csv
└── dashboard.pbix (Power BI file)

---

## 🧪 Use Cases & Insights

### 📌 1. **Top 5 Deadliest Diseases by Year and Country**
- **Goal:** Identify diseases with the highest average mortality.
- **Techniques:** CTEs, RANK(), Aggregation
- **Insight:** Diseases like Dengue, Malaria, and COVID-19 ranked consistently high across multiple countries.

### 📌 2. **High Recovery Rates Despite Low Healthcare Access**
- **Goal:** Identify countries achieving strong recovery outcomes despite poor healthcare infrastructure.
- **Techniques:** CASE statements, Grouping, Conditional Filtering
- **Insight:** Several countries showed above-average recovery despite access below global median.

### 📌 3. **Mortality Trend Analysis**
- **Goal:** Track whether mortality is improving year-over-year.
- **Techniques:** LAG(), Window Functions
- **Insight:** Slight decline over time in mortality for treatable diseases like Cholera, but stagnation for chronic ones.

### 📌 4. **Risk Categorization of Diseases**
- **Goal:** Categorize diseases as High, Medium, Low risk based on average mortality.
- **Techniques:** CASE, Aggregation
- **Insight:** Majority of diseases fall in Medium risk range, but a few clearly stand out with high mortality.

### 📌 5. **Correlation Between Socioeconomic Factors and Mortality**
- **Goal:** Understand how urbanization and income levels affect mortality.
- **Techniques:** CORR(), Table Views
- **Insight:** Weak correlation in some developed countries; stronger influence seen in middle-income countries.

---

## 📊 Power BI Dashboard Pages

### 🖼️ Page 1: Global Mortality Snapshot
- KPI Cards: Avg. Mortality, Avg. Recovery, Country Count
- Clustered Bar: Top Diseases by Avg. Mortality
- Slicer: Year range

### 🖼️ Page 2: Mortality Trends Over Time
- Line Chart: Year vs Mortality Rate by Disease
- Interactive: Slicers for country/disease

### 🖼️ Page 3: Recovery vs Healthcare Access
- Scatter Plot: Healthcare Access vs Recovery
- Bubble Size: Population Affected
- Legend: Country

### 🖼️ Page 4: Urbanization & Income Impact
- Scatter Plot: Urbanization vs Mortality
- Table: Correlation values for each country

---

## 💼 Resume-Worthy Skills Demonstrated
- Advanced SQL (CTEs, Window Functions, CASE, CORR)
- Healthcare data analysis
- Power BI dashboard design
- Data storytelling
- Exploratory and descriptive analysis

---

## 🚀 How to Use
1. Clone or download this repository.
2. Open SQL files in BigQuery or your SQL editor.
3. Open `dashboard.pbix` in Power BI Desktop.
4. Load the corresponding CSVs into the model.
5. Customize, publish, or export visuals as needed.

---

## 👨‍💻 Author
**Sai Kumar Chary Sripathi**  
Health Data Science | SQL | Power BI | BigQuery  
---

## 📎 License
Open-source for learning and non-commercial portfolio use.
