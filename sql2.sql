-- 定義部分
CREATE TABLE Products
    (
        id     INTEGER NOT NULL,
        name   CHAR(32),
        category CHAR(32),
        selling_price INTEGER,
        cost_price INTEGER,
        registration_date DATE,
        PRIMARY KEY (id)
    )
;


-- 入力部分
INSERT
    INTO Products(id, name, category, selling_price, cost_price, registration_date)
    VALUES
        (1, 'Tシャツ', '衣類', 1500, 500, '2018-04-05'),
        (2, 'ボールペン', '事務用品', 100, 30, '2018-06-03'),
        (3, '包丁', 'キッチン用品', 1200, 400, '2018-03-30'),
        (4, 'Yシャツ', '衣類', 2300, 300, '2018-07-23'),
        (5, 'コピー用紙', '事務用品', 500, 200, '2018-02-19'),
        (6, '圧力鍋', 'キッチン用品', 5900, 2000, '2018-11-26'),
        (7, 'カッター', '事務用品', 130, 50, '2018-05-11'),
        (8, 'プリンター', '事務用品', 9800, 2800, '2019-01-12')
;

-- SELECT name, selling_price, category FROM Products WHERE category LIKE '%用品' ORDER BY selling_price DESC;
-- SELECT name, selling_price FROM Products WHERE selling_price BETWEEN 500 AND 2000;
-- SELECT name, selling_price FROM Products WHERE selling_price BETWEEN 101 AND 499;
-- SELECT name, selling_price FROM Products WHERE selling_price NOT IN (100, 2300, 9800);
-- SELECT name, selling_price FROM Products WHERE selling_price IN (100, 2300, 9800);
-- SELECT name, selling_price FROM Products WHERE selling_price NOT IN (100, 500, 1500);
-- SELECT category, COUNT(*) FROM Products GROUP BY category

-- CREATE VIEW Prouctsum (category, count_product)
-- AS
-- SELECT category, COUNT(*) FROM Products GROUP BY category;
-- SELECT category, count_product FROM Prouctsum;

-- CREATE VIEW SelectedProduct (name, selling_price, registration_date)
-- AS
-- SELECT name, selling_price, registration_date FROM Products WHERE selling_price >= 1000 AND registration_date >= 2018-07-01;
-- SELECT * FROM SelectedProduct;

-- SELECT category, count_product FROM (SELECT category, COUNT(*) AS count_product FROM Products GROUP BY category) AS ProductSum;

-- SELECT AVG(count_product) FROM (SELECT category, COUNT(*) AS count_product FROM Products GROUP BY category) AS ProductSum;

-- SELECT name, selling_price FROM Products
-- WHERE selling_price > (SELECT AVG(selling_price) FROM Products);
-- SELECT name, selling_price, cost_price / selling_price FROM Products
-- WHERE cost_price / selling_price < (SELECT AVG(cost_price / selling_price) FROM Products);

-- SELECT name,
--     case WHEN selling_price >= 5000 THEN selling_price*0.8
--          WHEN selling_price >= 1000 THEN selling_price*0.9
--          else selling_price
--     END AS "セール時の価格"
-- FROM Products

-- SELECT
-- SUM(CASE WHEN category = 'キッチン用品' THEN selling_price
--     ELSE 0 END) AS "キッチン用品",
-- SUM(CASE WHEN category = '事務用品' THEN selling_price
--     ELSE 0 END) AS "事務用品",
-- SUM(CASE WHEN category = '衣類' THEN selling_price
--     ELSE 0 END) AS "衣類"
-- FROM Products;

SELECT
SUM(CASE WHEN selling_price < 1000
    THEN 1 ELSE 0 END) AS "低額商品",
SUM(CASE WHEN selling_price >= 1000 AND selling_price < 5000
    THEN 1 ELSE 0 END) AS "中額商品",
SUM(CASE WHEN selling_price >= 5000
    THEN 1 ELSE 0 END) AS "高額商品"
FROM Products;
