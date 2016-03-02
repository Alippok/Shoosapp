CREATE TABLE shoe_pre_orders(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  first_address_line VARCHAR(255),
  city VARCHAR(255),
  postcode VARCHAR(255),
  quantity INT2,
  size INT2
)