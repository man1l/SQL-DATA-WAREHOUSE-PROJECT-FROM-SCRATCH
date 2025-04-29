# 📒 Data Catalog: Gold Layer

Welcome to the Data Catalog for the **Gold Layer** of the Data Warehouse!  
This layer represents the **business-facing** view of the data, designed for **analytics, reporting, and decision-making**. It follows a **Star Schema** structure with dimension and fact views for optimal performance and clarity.

---

## 🌟 Overview

The **Gold Layer** provides clean, enriched, and aggregated data, ready for consumption by BI tools and analysts. This catalog outlines each view, its purpose, and detailed schema information including column names, data types, and descriptions.

---

## 📘 Dimension Tables

### 1. `gold.dim_customers`

> **Purpose:**  
> Stores enriched customer information including personal, geographic, and demographic details.

| Column Name      | Data Type     | Description                                                                                   |
|------------------|---------------|-----------------------------------------------------------------------------------------------|
| `customer_key`     | INT           | Surrogate key uniquely identifying each customer.                                             |
| `customer_id`      | INT           | Natural key from source systems.                                                              |
| `customer_number`  | NVARCHAR(50)  | Alphanumeric ID used for customer tracking.                                                   |
| `first_name`       | NVARCHAR(50)  | First name of the customer.                                                                   |
| `last_name`        | NVARCHAR(50)  | Last name (surname) of the customer.                                                          |
| `country`          | NVARCHAR(50)  | Customer’s country of residence (e.g., 'Australia').                                          |
| `marital_status`   | NVARCHAR(50)  | Marital status (e.g., 'Single', 'Married').                                                   |
| `gender`           | NVARCHAR(50)  | Gender value (e.g., 'Male', 'Female', 'n/a').                                                 |
| `birthdate`        | DATE          | Date of birth in `YYYY-MM-DD` format.                                                         |
| `create_date`      | DATE          | Date the customer record was created.                                                         |

---

### 2. `gold.dim_products`

> **Purpose:**  
> Contains detailed product metadata including hierarchy, pricing, and maintenance needs.

| Column Name         | Data Type     | Description                                                                                         |
|---------------------|---------------|-----------------------------------------------------------------------------------------------------|
| `product_key`         | INT           | Surrogate key for each product.                                                                      |
| `product_id`          | INT           | Natural key from product source system.                                                              |
| `product_number`      | NVARCHAR(50)  | Product code used for inventory tracking.                                                            |
| `product_name`        | NVARCHAR(50)  | Full product name including relevant attributes (e.g., model, color).                               |
| `category_id`         | NVARCHAR(50)  | ID representing the product’s high-level category.                                                   |
| `category`            | NVARCHAR(50)  | High-level classification (e.g., 'Bikes', 'Components').                                             |
| `subcategory`         | NVARCHAR(50)  | More specific grouping under the main category.                                                      |
| `maintenance_required`| NVARCHAR(50)  | Indicates if the product needs maintenance ('Yes' or 'No').                                          |
| `cost`                | INT           | Cost or base price in standard currency.                                                             |
| `product_line`        | NVARCHAR(50)  | Product line/series classification (e.g., 'Road', 'Mountain').                                       |
| `start_date`          | DATE          | Date product became available for sale.                                                              |

---

## 📗 Fact Tables

### 3. `gold.fact_sales`

> **Purpose:**  
> Central fact table capturing sales transactions including quantities, amounts, and related dates.

| Column Name     | Data Type     | Description                                                                                   |
|-----------------|---------------|-----------------------------------------------------------------------------------------------|
| `order_number`    | NVARCHAR(50)  | Unique ID for each sales order (e.g., 'SO54496').                                             |
| `product_key`     | INT           | Foreign key to `dim_products`.                                                                |
| `customer_key`    | INT           | Foreign key to `dim_customers`.                                                               |
| `order_date`      | DATE          | Date when the order was placed.                                                               |
| `shipping_date`   | DATE          | Date the order was shipped to the customer.                                                   |
| `due_date`        | DATE          | Expected payment due date.                                                                    |
| `sales_amount`    | INT           | Total revenue from the sale (price × quantity).                                               |
| `quantity`        | INT           | Number of product units sold.                                                                 |
| `price`           | INT           | Price per unit at the time of sale.                                                           |

