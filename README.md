# Customer Churn Analysis | IBM Telco Customer Retention 
## Project Overview:
Customer retention is one of the most critical challenges for subscription-based businesses. Acquiring a new customer is significantly more expensive than retaining an existing one. This project analyzes customer behavior using the IBM Telco Customer Churn dataset to identify the key factors contributing to customer churn and provide actionable business recommendations.

The project demonstrates an end-to-end data analytics workflow using Python, SQL, Excel, and Power BI, including data cleaning, exploratory data analysis (EDA), KPI development, visualization, and business insights.

## Business Problem:

The telecom company is experiencing customer churn and wants to understand:

.Why are customers leaving?
.Which customer segments are most likely to churn?
.Which services or payment methods are associated with higher churn?
.What strategies can improve customer retention?

## Objectives:
.Analyze customer demographics and subscription behavior.
.Calculate key business KPIs.
.Identify churn patterns across customer segments.
.Build an interactive Power BI dashboard.
.Recommend data-driven retention strategies.

## Dataset Information:

Source: IBM Sample Dataset

Each record represents one telecom customer and includes:
.Customer Demographics
.Account Information
.Service Subscriptions
.Payment Details
.Customer Churn Status

## Dataset Size:

Metric	Value
Total Customers	7,043
Total Columns	21+
Target Variable	Churn

## Tools & Technologies:

Tool	Purpose
Python	(ETL, Data Cleaning, EDA)
Pandas	(Data Manipulation)
NumPy	(Numerical Analysis)
Matplotlib	(Data Visualization)
SQL	(Business Queries)
Excel	(Pivot Tables & Validation)
Power BI	(Interactive Dashboard)
Git & GitHub	(Version Control)

## Project Workflow:

Business Understanding
        ↓
Data Collection
        ↓
Data Cleaning (ETL)
        ↓
Exploratory Data Analysis
        ↓
Feature Engineering
        ↓
KPI Development
        ↓
SQL Business Analysis
        ↓
Power BI Dashboard
        ↓
Business Insights
        ↓
Recommendations


## Key Performance Indicators (KPIs):

KPI	 Value
Total Customers	| 7,043
Churn Customers	1,869
Retained Customers	5,174
Churn Rate	26.58%
Total Revenue	$16,052,864
Male Customers	3,555
Female Customers	3,488

## Exploratory Data Analysis Highlights:
Customer Demographics
.Male Customers: 3,555
.Female Customers: 3,488
.Gender distribution is almost equal, indicating     gender alone is not a major churn driver.


## Senior Citizen Distribution:
Senior Citizen	Male	Female
No	2,981	2,920
Yes	574	568

Most customers are non-senior citizens, while senior citizens represent a smaller but important customer segment for targeted retention analysis.

## Customer Tenure Analysis:
The highest churn occurs during the initial months of the customer lifecycle.

Tenure	Customers	Churned
1 Month	613	380
2 Months	238	123
3 Months	200	94
7 Months	362	6

Observation:
Customer churn is significantly higher during the first three months, suggesting that early customer onboarding and engagement play a crucial role in retention.


## Payment Method Analysis:
    Customers using Electronic Check show the highest churn.
Payment Method	Churn_Customers
Electronic Check	1,071
Mailed Check	308

Observation:
Electronic Check users contribute to more than half of all churn cases, indicating a potential relationship between payment experience and customer retention.


## Business Insights:

1. Early Customer Churn
    More than half of customers with a tenure of one month discontinue the service.
This indicates:
.Weak onboarding process
.Poor first-month customer experience
.Lack of customer engagement

2. Payment Method Risk
    Electronic Check customers have the highest churn among all payment methods.

Possible reasons include:
.Payment inconvenience
.Billing dissatisfaction
.Lack of automatic payment options

3. Stable Gender Distribution
    Male and female customers are nearly equally represented, suggesting gender is not a primary factor influencing churn.

4. Customer Retention Opportunity
    Customers who remain beyond the initial months tend to stay longer, highlighting the importance of improving the early customer journey.


## Recommendations:
Improve First 90 Days Experience
.Welcome campaigns
.Customer onboarding emails
.Product tutorials
.Dedicated customer success support


## Promote Automatic Payments:
Encourage Electronic Check users to switch to:

.Credit Card
.Bank Transfer
.Auto Pay

Offer incentives such as:
.Cashback
.Discounts
.Loyalty Rewards


## Identify High-Risk Customers:
Build retention campaigns targeting customers with:
.Low tenure
.Electronic Check payment method
.High monthly charges (if applicable)
.Month-to-month contracts (if applicable)

## Customer Loyalty Program:
Reward customers completing:
.6 months
.12 months
.24 months
to improve long-term retention.


## Power BI Dashboard:
The dashboard includes:

.Executive KPI Cards
.Customer Churn Overview
.Customer Demographics
.Tenure Analysis
.Payment Method Analysis
.Interactive Filters
.Customer Segmentation
.Business Insights


## Project Structure:
Customer-Churn-Analysis/
│
├── Data/
│   ├── Raw_Data.csv
│   └── Cleaned_Data.csv
│
├── Python/
│   ├── ETL.ipynb
│   ├── EDA.ipynb
│   └── Feature_Engineering.ipynb
│
├── SQL/
│   └── Business_Queries.sql
│
├── Excel/
│   └── Customer_Churn.xlsx
│
├── PowerBI/
│   └── Customer_Churn.pbix
│
├── Dashboard/
│   └── Dashboard.png
│
├── Presentation/
│   └── Customer_Churn_Analysis.pptx
│
└── README.md


## Key Skills Demonstrated:
.Data Cleaning (ETL)
.Exploratory Data Analysis (EDA)
.Business KPI Development
.SQL Query Writing
.Data Visualization
.Power BI Dashboard Design
.Business Storytelling
.Customer Segmentation
.Analytical Thinking
.Business Recommendations


## Conclusion:
This project provides an end-to-end customer churn analysis using the IBM Telco dataset. By combining Python, SQL, Excel, and Power BI, it uncovers customer behavior patterns and identifies actionable opportunities to improve retention. The analysis shows that early-tenure customers and those using Electronic Check are at significantly higher risk of churn, enabling businesses to prioritize onboarding improvements, optimize payment experiences, and implement targeted retention campaigns to reduce customer attrition and improve long-term revenue.
