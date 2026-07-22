CREATE DATABASE IF NOT EXISTS Telco_Customer_Churn;
USE Telco_Customer_Churn;
CREATE TABLE customer_churn (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen TINYINT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(25),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(25),
    OnlineBackup VARCHAR(25),
    DeviceProtection VARCHAR(25),
    TechSupport VARCHAR(25),
    StreamingTV VARCHAR(25),
    StreamingMovies VARCHAR(25),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5),
    TenureGroup VARCHAR(30),
    ChargeCategory VARCHAR(30),
    RevenuePerMonth DECIMAL(10,2)
);
DESCRIBE customer_churn;
SELECT * FROM customer_churn;
SELECT
COUNT(*) TotalCustomers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) ChurnCustomers,
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/
COUNT(*),2
) ChurnRate
FROM customer_churn;

SELECT
tenure,
COUNT(*) Customers,
SUM(
CASE WHEN Churn='Yes'
THEN 1 ELSE 0 END
) ChurnCustomers
FROM customer_churn
GROUP BY tenure order by Customers;

SELECT
PaymentMethod,
COUNT(*)
FROM customer_churn
WHERE Churn='Yes'
GROUP BY PaymentMethod;
