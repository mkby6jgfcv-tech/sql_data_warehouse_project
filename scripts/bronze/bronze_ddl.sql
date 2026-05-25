USE bronze;

DROP TABLE IF EXISTS crm_cust_info; 
CREATE TABLE crm_cust_info (
	cst_id INT NULL,
	cst_key VARCHAR(50) NULL,
	cst_firstname VARCHAR(50) NULL,
	cst_lastname VARCHAR(50) NULL,
	cst_marital_status VARCHAR(50) NULL,
	cst_gndr VARCHAR(50) NULL,
	cst_create_date DATE NULL,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS crm_prd_info; 
CREATE TABLE crm_prd_info (
	prd_id INT,
	prd_key VARCHAR(50) NULL,
	prd_nm VARCHAR(50) NULL,
	prd_cost DECIMAL(10,2) NULL,
    prd_line VARCHAR(50) NULL,
	prd_start_dt DATE NULL,
    prd_end_dt DATE NULL,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS crm_sales_details; 
CREATE TABLE crm_sales_details (
	sls_ord_num VARCHAR(50) NULL,
	sls_prd_key VARCHAR(50) NULL,
	sls_cust_id INT,
	sls_order_dt DATE NULL,
    sls_ship_dt DATE NULL,
	sls_due_dt DATE NULL,
    sls_sales DECIMAL(10,2) NULL,
    sls_quantity INT,
    sls_price DECIMAL(10,2) NULL,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS erp_cust_az12; 
CREATE TABLE erp_cust_az12 (
	cid VARCHAR(50) NULL,
	bdate DATE NULL,
	gen VARCHAR(50) NULL,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS erp_loc_a101; 
CREATE TABLE erp_loc_a101 (
	cid VARCHAR(50) NULL,
	cntry VARCHAR(50) NULL,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS erp_px_cat_g1v2; 
CREATE TABLE erp_px_cat_g1v2 (
	id VARCHAR(50) NULL,
    cat VARCHAR(50) NULL,
	subcat VARCHAR(50) NULL,
    maintenance VARCHAR(50) NULL,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
