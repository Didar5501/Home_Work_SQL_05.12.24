-- 1. Найти заказчиков, не сделавших ни одного заказа. Вывести имя заказчика и order_id.

SELECT c.company_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id not in (SELECT customer_id FROM orders)

-- 2. Переписать предыдущий запрос, использовав симметричный вид джойна (подсказка: речь о LEFT и RIGHT).

SELECT c.company_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;