### Computer Store Data Warehouse Pipeline Project

#### Project Overview

In this project I demonstrated my ability to build a basic data pipeline and design a data warehouse using SQL. I worked with raw data, cleaned and structured it, and transformed it into a star schema model to support reporting and analysis.

#### Project Objectives
* Transform raw data into a structured, analysis-ready format.
* Design a simple and efficient data warehouse
* Apply ETL (Extract, Transform, Load) processes
* Practice SQL development and data modeling

#### Data Model (Star Schema)
The project follows a Star Schema Design:
#### Fact Table
##### Fact_Sales (Contains measurable business data) such as:
* Cost Price
* Total Sales
* Sale Price
* Discount Amount
* PC Market Price
* Cost of Repairs
* Finance Amoun

#### Dimension Tables (tables provide descriptive context for analysis)
* Dim_Customer
* Dim_Product
* Dim_Date
* Dim_Location
* Dim_Payment
* Dim_Channel
* Dim_Priority
* Dim_Deparment
* Dim_store

#### ETL Pipeline Process
1. Extract
* Raw data loaded into a staging table
2. Transform
* Removed duplicates
* Handled missing values
* Standardized formats
* Grouped related data into dimensions
3. Load
* Loaded cleaned data into:
* Dimension tables
* Fact table
  
### Tools & Technologies used
* SQL Server
* Draw.io (for schema design)
* Git & GitHub

#### Skills Demonstrated
* Data Cleaning
* Data Transformation
* Dimensional Modeling
* Star Schema Design
* Primary & Foreign Key Relationships
* Writing SQL Queries

#### Key Learnings
* How to structure raw data into a usable format
* Importance of separating facts and dimensions
* How relationships improve data analysis
* Basics of building a data pipeline

#### Skills demonstrated:

* Data engineering fundamentals
* SQL development
* Data warehouse design
* Building scalable data pipelines

#### Remarks
This beginner-friendly project strengthened my understanding of data engineering and data warehousing concepts, including data cleaning, transformation, and dimensional modeling.
