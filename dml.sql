INSERT INTO customer(
    first_name,
    last_name,
    drivers_license_number,
    credit_score
) VALUES(   
    'Igor',
    'Petrovich',
    'A00456789',
    '842'
);



INSERT INTO car(
vin,
year,
make,
model,
color,
price,
type
) VALUES(
    '123434565',
    '2015',
    'Dodge',
    'Challenger',
    'Blue',
    '42000.00',
    'sprt'
);



INSERT INTO service_history(
    service_history_id,
    vin,
    customer_id
) VALUES();



INSERT INTO service_ticket(
    service_ticket_id,
    service_history_id,
    price,
    service,
    service_date
) VALUES();


INSERT INTO service_ticket_mechanic(
    service_ticket_mechanic_id,
    service_ticket_id,
    mechanic_id
) VALUES();


INSERT INTO mechanic(
    mechanic_id,
    first_name,
    last_name
) VALUES(
    '54355',
    'Ivan',
    'Ural'
);
SELECT * FROM mechanic

INSERT INTO salesperson(
    salesperson_id,
    first_name,
    last_name,
    total_car_sales,
    monthly_sales_average
) VALUES();


INSERT INTO invoice(
    invoice_id,
    salesperson_id,
    customer_id,
    vin,
    sale_date,
    total_price
) VALUES();


