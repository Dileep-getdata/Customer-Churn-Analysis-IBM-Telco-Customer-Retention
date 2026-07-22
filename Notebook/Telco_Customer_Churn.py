import pandas as pd
import numpy as np
# import matplotlib as plt
# import seaborn as sns

data = pd.read_csv('../Data/Raw/Telco-Customer-Churn.csv')
print(data.head())
totalCount = (data['customerID']).nunique()
churnCount = (data['Churn']=='Yes').sum()
maleCount = (data['gender']=='Male').sum()
femaleCount = len(data[(data['gender']=='Female')])
data['SeniorCitizen'] =data['SeniorCitizen'].astype('category')
seniorsCount = data[['SeniorCitizen', 'gender']].value_counts()

data['TotalCharges'] = pd.to_numeric(data['TotalCharges'],errors='coerce').fillna(0).astype(int)
totalRevenue = data['TotalCharges'].sum()
print(data.duplicated().sum())
print('totalSubscribers:', totalCount, 'churnCount: ',churnCount, 'MaleCount',maleCount, 'FemaleCount',femaleCount, seniorsCount)
print('Revenue :', totalRevenue) 

# Tenure Group
bins=[0,12,24,48,60,72]

labels=[
"0-1 Year",
"1-2 Years",
"2-4 Years",
"4-5 Years",
"5+ Years"
]

data["TenureGroup"]=pd.cut(
data["tenure"],
bins=bins,
labels=labels
)

# Monthly Charge Category
data["ChargeCategory"] = pd.cut(
data["MonthlyCharges"],
bins=3,
labels=[
"Low",
"Medium",
"High"
]
)
# Revenue per Month
data["RevenuePerMonth"] = (
data["TotalCharges"]/data["tenure"]
)
data.to_csv('../Data/Cleaned/Telco_Customer_Churn.csv')
print(data.info())
