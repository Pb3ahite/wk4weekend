CREATE TABLE customer(
   customer_id SERIAL PRIMARY KEY,
   first_name VARCHAR(25) NOT NULL,
   last_name VARCHAR(25) NOT NULL,
   drivers_license_number VARCHAR(25),
   credit_score INTEGER
);

CREATE TABLE Car(
    vin SERIAL PRIMARY KEY,
    year INTEGER,
    make VARCHAR(25),
    model VARCHAR(25),
    color VARCHAR(25),
    price NUMERIC(8,2),
    type VARCHAR(4)

);

CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    vin INTEGER,
    customer_id INTEGER, 
    FOREIGN KEY (vin) REFERENCES car(vin),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE

);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_history_id INTEGER ,
    price NUMERIC(8,2),
    service VARCHAR(50),
    service_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (service_history_id) REFERENCES service_history(service_history_id)
);

CREATE TABLE service_ticket_mechanic(
    service_ticket_mechanic_id SERIAL PRIMARY KEY,
    service_ticket_id INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)

);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25)

);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    total_car_sales INTEGER,
    monthly_sales_average NUMERIC(8,2)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    vin INTEGER,
    sale_date DATETIME,
    total_price NUMERIC(8,2),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (vin) REFERENCES car(vin)
);