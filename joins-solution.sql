-- Get all customers and their addresses.
SELECT 
	"customers"."first_name",
	"customers"."last_name",
	"addresses"."street",
	"addresses"."city",
	"addresses"."state",
	"addresses"."zip",
	"addresses"."address_type"
FROM
	"customers"
JOIN "addresses"
	ON "customers"."id" = "addresses"."customer_id";

--Get all orders and their line items (orders, quantity and product).
SELECT 
	"orders"."order_date",
	"line_items"."quantity",
	"products"."description",
	"products"."unit_price"
FROM "orders"
JOIN "line_items"
	ON "orders"."id" = "line_items"."order_id"
JOIN "products"
	ON "line_items"."product_id" = "products"."id";

--Which warehouses have cheetos?    


