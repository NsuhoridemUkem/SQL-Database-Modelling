# Database Modeling Project: Retail Inventory Management

## Project Overview
This project focuses on designing and implementing a **relational database** to manage inventory for a retail business. The database accommodates **250 products across 7 categories**, ensuring efficient data storage, retrieval, and reporting. Additionally, I explored the dataset to uncover key insights that can aid in inventory management and business decision-making.

## Objectives
- **Design a relational database schema** for structured and efficient inventory management.
- **Create tables** with appropriate data types, constraints, and relationships.
- **Establish foreign key relationships** to ensure data integrity and reduce redundancy.
- **Automate inventory reports** for better tracking and decision-making.
- **Analyze the dataset** to uncover trends and insights for business optimization.

## Database Schema Design
The database schema was designed following **normalization principles** to ensure scalability and efficiency. Below are the key tables and their purposes:

### **1. Product Category**
- Stores details about product categories.
- **Primary Key:** category_id
- **Columns:** category_id, category_name

### **2. Product**
- Stores product details.
- **Primary Key:** product_id
- **Foreign Key:** category_id (linked to Product Category table)
- **Columns:** product_id, product_name, price, stock_qty, category_id

### **3. Supplier**
- Stores supplier details.
- **Primary Key:** supplier_id
- **Columns:** supplier_id, supplier_name, contact_info

### **4. Product Supplier (Many-to-Many Relationship)**
- Handles the relationship between Products and Suppliers.
- **Primary Keys:** product_id, supplier_id

### **5. Orders**
- Stores customer order details.
- **Primary Key:** order_id
- **Columns:** order_id, order_date, order_amount

### **6. Order Details (Many-to-Many Relationship)**
- Handles the relationship between Orders and Products.
- **Primary Keys:** order_id, product_id

## Challenges Faced & Solutions
### **Schema Design Challenges**
- Ensuring that the schema was **normalized** while still being **query-efficient** required several iterations.
- **Solution:** Used **Entity-Relationship Diagrams (ERD)** to visualize relationships before creating tables.

### **Handling Relationships**
- Deciding between **one-to-many** and **many-to-many** relationships was complex.
- **Solution:** Carefully analyzed business requirements and created **junction tables** where necessary.

### **Query Optimization Issues**
- Some **complex queries ran slowly**, affecting report generation.
- **Solution:** Implemented **indexes** on frequently queried columns and used **EXPLAIN ANALYZE** to optimize queries.

## Key Insights from Data Exploration
By analyzing the dataset, I was able to uncover the following insights:
- **Best-Selling Products:** Identified top-selling products and their seasonal demand trends.
- **Stock Replenishment Patterns:** Detected low-stock alerts and optimized reorder points for different categories.
- **Supplier Performance:** Analyzed supplier delivery times and identified bottlenecks.
- **Customer Behavior Trends:** Explored customer purchase frequency and product preferences.

## Future Enhancements
- Implementing **stored procedures** for automated inventory management.
- Creating a **dashboard** for real-time inventory monitoring.
- Integrating **predictive analytics** to forecast inventory demand.

## Technologies Used
- **SQL:** PostgreSQL/MySQL for database implementation.
- **Python:** Pandas, SQLAlchemy for data analysis.
- **Tableau/Power BI:** For visualization and reporting.
- **Jupyter Notebook:** For exploratory data analysis (EDA).

## Conclusion
This project helped reinforce key database design concepts, query optimization techniques, and data analysis skills. Effective inventory management is crucial for any retail business, and a well-designed relational database plays a fundamental role in achieving operational efficiency.

---
### 💡 Feel free to explore the repository, suggest improvements, or reach out for discussions!

📌 **Let's connect on LinkedIn:** www.linkedin.com/in/nsuhoridem-ukem  
📧 **Contact:** basseynsuhoridem@gmail.com

