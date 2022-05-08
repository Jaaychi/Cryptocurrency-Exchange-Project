 SELECT *
FROM transactions;

-- What is the total money_in in the table?
SELECT
  SUM(money_in) AS total_money_in
FROM transactions;

-- What is the total money_out in the table?
SELECT
  SUM(money_out) AS total_money_out
FROM transactions;

-- How many money_in transactions are in this table?
-- How many money_in transactions are in this table where ‘BIT’ is the currency?
SELECT
  COUNT(money_in) AS num_of_money_in
FROM transactions;

SELECT
  COUNT(money_in) AS num_of_money_in
FROM transactions
WHERE currency = 'BIT';
-- What was the largest transaction in this whole table?
SELECT
  MAX(money_in) AS max_money_in,
  MAX(money_out) AS max_money_out
FROM transactions;

-- What is the average money_in in the table for the currency Ethereum (‘ETH’)?
SELECT
  AVG(money_in) AS avg_money_in
FROM transactions
WHERE currency = 'ETH';

-- Select date, average money_in, and average money_out from the table.

SELECT
  date,
  ROUND(AVG(money_in), 2) AS avg_money_in,
  ROUND(AVG(money_out), 2) AS avg_money_out
FROM transactions
GROUP BY date;


