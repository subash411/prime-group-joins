-- Get all customers and their addresses.
SELECT * FROM "customers", "addresses"
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

    