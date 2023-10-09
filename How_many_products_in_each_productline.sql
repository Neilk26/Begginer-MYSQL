#How many products in each product line?
SELECT productline, COUNT(*) AS num_products                        # THE COUNT (*) Will take the information the AS call will store it under a alias column in this case Num_products.
FROM products
GROUP BY productline;                                               # The GROUP BY call will group together all the products in each ProductLine.