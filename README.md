### Computer Store Data Warehouse Pipeline Project

#### Project Overview
In this project I demonstrated my ability to design and implementation of a basic data pipeline and data warehouse using SQL. Raw data was extracted, cleaned, and transformed into a structured star schema model to support efficient reporting and analysis.

#### Project Objectives
* Transform raw data into a structured, analysis-ready format.
* Design a simple and efficient data warehouse
* Apply ETL (Extract, Transform, Load) processes
* Practice SQL development and data modeling

#### Data Model (Star Schema)
The project follows a Star Schema Design:
#### Fact Table (Stores quantitative business metrics and includes foreign keys to related dimension tables).
##### Fact_Sales (Contains measurable business data) such as:
* Cost Price
* Total Sales
* Sale Price
* Discount Amount
* PC Market Price
* Cost of Repairs
* Finance Amoun

#### Dimension Tables (Store descriptive attributes that provide context for analysis and are linked to fact tables via keys)
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

Loaded raw data into a staging database

2. Transform

* Removed duplicates and handled missing values
* Standardized data formats for consistency
* Structured data into dimension tables

3. Load

* Loaded transformed data into:
  * Dimension tables
  * Fact table with appropriate foreign key relationships
  
#### Tools & Technologies Used
* SQL Server – Data storage and querying
* Draw.io – Schema and data model design
* Git & GitHub – Version control and project management

#### Skills Demonstrated
* Data cleaning and transformation
* Dimensional modeling (star schema design)
* Designing primary and foreign key relationships
* Writing and optimizing SQL queries

#### Key Learnings
* Structuring raw data into an analysis-ready format
* Understanding the importance of fact and dimension table separation
* Designing relationships to improve data analysis and query efficiency
* Fundamentals of building an end-to-end data pipeline

#### Remarks
This beginner-friendly project strengthened my understanding of data engineering and data warehousing concepts, including data cleaning, transformation, and dimensional modeling.
