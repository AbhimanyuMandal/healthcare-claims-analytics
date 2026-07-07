<p align="center">
  <img src="assets/banner_1.png" width="100%" alt="Healthcare Claims Analytics Banner"/>
</p>

<h1 align="center">🏥 Healthcare Claims Analytics</h1>

<h3 align="center">
End-to-End Healthcare Analytics with R and Tableau
</h3>

<p align="center">
Transforming healthcare claims data into actionable business intelligence through statistical analysis, interactive dashboards, and data-driven decision making.
</p>

<p align="center">

<a href="https://public.tableau.com/app/profile/abhimanyu.mandal/viz/HealthcareClaimsAnalyticsStory/HealthcareClaimsAnalyticsStory">
<img src="https://img.shields.io/badge/Live%20Dashboard-Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white"/>
</a>

<a href="LICENSE">
<img src="https://img.shields.io/badge/License-MIT-success?style=for-the-badge"/>
</a>

<img src="https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white"/>

<img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>

<img src="https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white"/>

</p>

---

# 📌 Overview

Healthcare insurance companies process thousands of claims every day. Efficient claim management requires understanding approval trends, rejection reasons, fraud risks, settlement performance, and hospital efficiency.

This project presents an **end-to-end healthcare claims analytics pipeline** that integrates **R**, **SQL**, and **Tableau** to transform raw insurance claims data into meaningful business intelligence. The workflow covers data cleaning, feature engineering, statistical analysis, and interactive dashboard development to support operational and strategic decision-making.

---

# 🚀 Project Highlights

- 📄 Analysed **15,000+ healthcare insurance claims**
- 💰 Analysed claims worth over **₹2.30 Billion**
- 📊 Designed **4 interactive Tableau dashboards**
- 🚨 Identified **469 potential fraudulent claims**
- 📈 Achieved an overall claim approval rate of **49.4%**
- 🏥 Benchmarked provider performance across hospitals
- ⏱ Evaluated turnaround time and SLA compliance
- 📉 Investigated rejection patterns and underwriting risks

---

# 📊 Executive Summary

| Metric | Value |
|:-------|------:|
| Total Claims | **15,000** |
| Total Claim Amount | **₹2.30 Billion** |
| Total Settled Amount | **₹760.67 Million** |
| Approval Rate | **49.4%** |
| Fraud Rate | **3.13%** |
| Fraud Cases | **469** |
| Claims Within SLA | **30.53%** |
| Average Processing Time | **21 Days** |

---

# 🎯 Business Objectives

The project was designed to answer several important business questions:

- How efficiently are healthcare insurance claims processed?
- What factors contribute to claim rejection?
- Which hospitals demonstrate the strongest operational performance?
- Can potential fraudulent claims be identified?
- Which diagnosis categories have the highest risk?
- How effective is the current claim settlement process?
- Where can insurers improve operational efficiency?

---

# 🏗 Analytics Workflow

```
Raw Healthcare Claims Dataset
              │
              ▼
      Data Cleaning (R)
              │
              ▼
     Feature Engineering
              │
              ▼
 Exploratory Data Analysis
              │
              ▼
 Statistical Analysis (R)
              │
              ▼
 Processed Analytical Dataset
              │
              ▼
     Interactive Tableau
         Dashboards
              │
              ▼
      Business Insights
```

---

# 🧭 Dashboard Architecture

The analytics platform is organized into four interconnected dashboards, each focusing on a different aspect of healthcare claims management.

| Dashboard | Purpose |
|------------|---------|
| 📊 Claims Overview & Settlement | Executive KPIs, approvals, settlements, claim trends |
| ❌ Rejection & Underwriting Risk | Rejection reasons, diagnosis analysis, underwriting risk |
| 🚨 Fraud & Risk Intelligence | Fraud monitoring, investigations, provider risk |
| 🏥 Hospital Performance & TAT | Operational efficiency, SLA compliance, turnaround time |

---

# 📊 Interactive Dashboard Suite

The project consists of four interactive Tableau dashboards designed to support healthcare insurance operations, fraud monitoring, underwriting, and executive decision-making.

Each dashboard focuses on a specific business objective while allowing users to filter results by gender, hospitalization type, provider network, and policy zone.

---

# 1️⃣ Claims Overview & Settlement

<p align="center">
<img src="assets/dashboard-overview.png" width="100%">
</p>

## Overview

This executive dashboard provides a high-level summary of healthcare claim performance, settlement efficiency, and operational trends.

### Key KPIs

| KPI | Value |
|------|------:|
| Total Claims | **15,000** |
| Approval Rate | **49.4%** |
| Total Claim Amount | **₹2.30 Billion** |
| Total Settled Amount | **₹760.67 Million** |
| Average Settlement Ratio | **34.5%** |

### Dashboard Components

- Claim Status Distribution
- Settlement Type Breakdown
- Claims by Delay Bucket
- Interactive Filters

### Business Insights

- Nearly half of all submitted claims were approved.
- More than **₹2.3 Billion** in healthcare claims were analysed.
- Settlement ratios indicate opportunities to improve claim reimbursement efficiency.
- Delay bucket analysis highlights operational bottlenecks affecting turnaround time.

---

# 2️⃣ Claims Rejection & Underwriting Risk

<p align="center">
<img src="assets/dashboard-rejection.png" width="100%">
</p>

## Overview

This dashboard investigates why healthcare claims are rejected and identifies underwriting risks that contribute to financial losses.

### Key KPIs

| KPI | Value |
|------|------:|
| Total Rejections | **7,595** |
| Fraud-driven Rejections | **469** |
| Average Rejected Claim | **₹154.7K** |

### Dashboard Components

- Top Rejection Reasons
- Rejections by Policy Zone
- Rejections by Gender
- Diagnosis-wise Rejection Analysis

### Business Insights

- **PED Waiting Period** emerged as the leading rejection reason.
- Documentation issues and policy lapses contributed substantially to claim denials.
- Rejection patterns differed across policy zones.
- Diagnosis-specific analysis supports improvements in underwriting policies.

---

# 3️⃣ Fraud & Risk Intelligence

<p align="center">
<img src="assets/dashboard-fraud.png" width="100%">
</p>

## Overview

This dashboard focuses on fraud detection by analysing suspicious claims, investigation outcomes, and provider risk profiles.

### Key KPIs

| KPI | Value |
|------|------:|
| Fraud Cases | **469** |
| Fraud Rate | **3.13%** |
| Investigations Triggered | **1,672** |
| High-Risk Providers | **451** |
| Blacklisted Providers | **175** |

### Dashboard Components

- Fraud Cases by Diagnosis
- Investigation Outcomes
- Fraud Rate by Risk Group
- Fraud Rate by Gender
- Fraud Rate by Hospitalization Type

### Business Insights

- Approximately **3.13%** of claims were flagged for potential fraud.
- Cardiac and Orthopedic claims showed the highest number of suspected fraud cases.
- High-risk providers accounted for the majority of fraudulent activity.
- Investigation outcomes provide transparency into fraud resolution effectiveness.

---

# 4️⃣ Hospital Performance & Turnaround Time

<p align="center">
<img src="assets/dashboard-provider.png" width="100%">
</p>

## Overview

This operational dashboard evaluates hospital performance, claim processing efficiency, and turnaround time across healthcare providers.

### Key KPIs

| KPI | Value |
|------|------:|
| Average Processing Time | **21 Days** |
| Claims Within SLA | **30.53%** |
| Delayed Claims (>15 Days) | **6,074** |
| Critical Delays (>30 Days) | **2,709** |
| Average Coverage Ratio | **46.3%** |

### Dashboard Components

- Claims by Delay Bucket
- Delay Distribution by Claim Status
- Delayed Claims by Hospital Accreditation
- Operational Performance Metrics

### Business Insights

- Less than one-third of claims met the defined SLA.
- Over **2,700** claims experienced delays exceeding 30 days.
- Hospital accreditation level influenced turnaround performance.
- Operational dashboards highlight opportunities to reduce claim processing delays.

---

# 💡 Key Business Insights

## Claims Management

- Analysed over **15,000 healthcare insurance claims**.
- Overall approval rate remained below **50%**, indicating opportunities to improve operational efficiency.
- Settlement performance suggests potential for optimizing reimbursement workflows.

## Underwriting

- **PED Waiting Period** was the most common reason for claim rejection.
- Documentation quality remains a major contributor to denied claims.
- Risk profiles varied across diagnosis categories and policy zones.

## Fraud Analytics

- Fraud rate remained relatively low (**3.13%**) but represented significant financial exposure.
- High-risk providers accounted for a disproportionate share of suspicious claims.
- Investigation dashboards improve fraud monitoring and decision support.

## Operational Performance

- Average processing time reached **21 days**.
- Only **30.53%** of claims satisfied SLA targets.
- Hospital accreditation influenced turnaround time and operational performance.

---

---

# 🛠️ Technology Stack

| Category | Technologies |
|-----------|--------------|
| **Programming** | R, SQL |
| **Data Wrangling** | dplyr, tidyr, tidyverse |
| **Data Visualization** | Tableau, ggplot2 |
| **Analytics** | Exploratory Data Analysis (EDA), Statistical Analysis, KPI Development |
| **Business Intelligence** | Interactive Dashboards, Executive Reporting |
| **Domain** | Healthcare Analytics, Health Insurance Claims, Fraud Detection |

---

# 📁 Repository Structure

```text
healthcare-claims-analytics/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── assets/
│   ├── banner.png
│   ├── workflow.png
│   ├── dashboard-overview.png
│   ├── dashboard-rejection.png
│   ├── dashboard-fraud.png
│   └── dashboard-provider.png
│
├── data/
│   ├── raw/
│   └── processed/
│
├── scripts/
│   ├── 01_data_cleaning.R
│   ├── 02_feature_engineering.R
│   ├── 03_exploratory_analysis.R
│   ├── 04_statistical_analysis.R
│   └── 05_export_for_tableau.R
│
├── tableau/
│   └── Healthcare_Claims_Analytics.twbx
│
├── outputs/
│   ├── figures/
│   └── tables/
│
└── docs/
```

---

# ⚙️ Project Workflow

The project follows an end-to-end analytics pipeline:

1. **Data Collection**
   - Load healthcare insurance claims dataset.

2. **Data Cleaning**
   - Handle missing values.
   - Standardize variables.
   - Remove inconsistencies.

3. **Feature Engineering**
   - Generate KPIs.
   - Create analytical features.
   - Prepare reporting tables.

4. **Exploratory Data Analysis**
   - Understand claim distributions.
   - Identify trends and anomalies.
   - Explore operational performance.

5. **Statistical Analysis**
   - Analyze claim approvals.
   - Investigate rejection patterns.
   - Evaluate provider performance.

6. **Dashboard Development**
   - Build interactive Tableau dashboards.
   - Design executive KPIs.
   - Create dynamic filters and drill-downs.

7. **Business Intelligence**
   - Generate actionable insights.
   - Support operational decision-making.
   - Identify opportunities for process optimization.

---

# 🚀 Getting Started

## Clone the Repository

```bash
git clone https://github.com/AbhimanyuMandal/healthcare-claims-analytics.git
```

Move into the project directory:

```bash
cd healthcare-claims-analytics
```

---

## Running the Analysis

Run the R scripts sequentially:

```text
01_data_cleaning.R

↓

02_feature_engineering.R

↓

03_exploratory_analysis.R

↓

04_statistical_analysis.R

↓

05_export_for_tableau.R
```

Finally, open the Tableau workbook located in:

```text
tableau/Healthcare_Claims_Analytics.twbx
```

---

# 📈 Project Outcomes

This project demonstrates practical experience in:

- Healthcare Analytics
- Business Intelligence
- Statistical Analysis
- Data Cleaning
- Feature Engineering
- Interactive Dashboard Design
- Fraud Detection Analytics
- Operational Performance Analysis
- Executive Reporting
- Data Storytelling

---

# 🔮 Future Improvements

Future enhancements may include:

- 🤖 Machine Learning models for claim approval prediction
- 🚨 Real-time fraud detection using anomaly detection techniques
- 📈 Time-series forecasting of healthcare claims
- ☁️ Deployment using Tableau Cloud or Tableau Server
- 🌐 Interactive web application using Shiny or Streamlit
- 🔄 Automated ETL pipeline for dashboard refresh

---

# 📚 Dataset

This project uses a publicly available healthcare insurance claims dataset for educational and portfolio purposes.

If you use your own dataset, ensure that all personally identifiable information (PII) is removed before sharing.

---

# 📬 Connect With Me

<p align="center">

<a href="https://abhimanyumandal.github.io/Personal-Portfolio/">
🌐 Portfolio
</a>
&nbsp;&nbsp;•&nbsp;&nbsp;

<a href="https://www.linkedin.com/in/abhimanyu-mandal/">
💼 LinkedIn
</a>
&nbsp;&nbsp;•&nbsp;&nbsp;

<a href="mailto:abhimanyumandal0810@gmail.com">
📧 Email
</a>

</p>

---

# 📄 License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.

---

<p align="center">

### ⭐ If you found this project interesting, consider giving it a star!

</p>

<p align="center">

*"Transforming healthcare data into actionable insights through analytics, visualization, and evidence-based decision-making."*

</p>
