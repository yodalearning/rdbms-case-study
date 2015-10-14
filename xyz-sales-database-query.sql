/*query to create branch master */
create table branch_master(
code text,
address text);

/*query to create merchandise master*/
create table merchandise_master(
mcode text,
mname text,
mcost money);

/*query to create sales table*/
create table sales(
order_id text,
order_date date,
dealer_code text,
dealer_name text,
merchandise_code text references merchandise_master(mcode),
merchandise_name text references merchandise_master(mname),
quantity int,
status text,
awb_no text,
courier_name text,
dispatch_date date,
requestor_id text,
lan text,
customer_name text,
customer_address text,
branch_code text references branch_master(code),
branch_address text references branch_master(address),
deposit_method text
);