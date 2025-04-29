# 🏗️ Data Warehouse and Analytics Project

Welcome to my Data Warehouse and Analytics Portfolio Project! 🚀  
This project showcases the end-to-end development of a modern data warehousing solution, using best practices in data engineering, data modeling, and analytics. It’s designed as a portfolio piece to demonstrate practical skills with real-world relevance.

## 🔍 Project Summary

This project walks through building a scalable data warehouse solution using the **Medallion Architecture**, focusing on:

- **Data Ingestion (Bronze Layer):** Loading raw data directly from CSV files into SQL Server.
- **Data Transformation (Silver Layer):** Cleaning, standardizing, and preparing data for analysis.
- **Data Modeling (Gold Layer):** Creating a business-friendly star schema for analytical queries and reporting.
![Data Warehouse Architecture](Docs/DWH_Architecture.drawio.png)


## 📊 Key Features

- **Modern Data Architecture** based on the Medallion model.
- **ETL Pipelines** using SQL Server and structured scripting.
- **Fact & Dimension Tables** designed for efficient querying.
- **SQL-based Dashboards** and queries for insights on customer behavior, product performance, and sales trends.

## 🛠️ Tools & Technologies

- SQL Server Express + SSMS  
- DrawIO for diagrams and architecture planning  
- Git & GitHub for version control  
- Notion for project planning  
- CSV Datasets (ERP and CRM systems)

## 📁 Repository Structure


## 🎯 Project Objectives

### Data Engineering
- Consolidate and transform data from multiple source systems.
- Build a structured, analytical data warehouse on SQL Server.

### Data Analytics
- Generate actionable business insights using SQL queries.
- Provide stakeholders with clear visibility into key business metrics.

## ✅ Skills Demonstrated

- SQL Development  
- Data Engineering  
- ETL Design  
- Star Schema Modeling  
- Data Analytics & Reporting  
- Documentation & Best Practices  
## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── DWH_Architecture.drawio.png     # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── Data_Flow.drawio.png            # for the data flow diagram
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions

---
