-- Create a table to store transaction data
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    amount DECIMAL(10, 2),
    merchant VARCHAR(100),
    card_number VARCHAR(16),
    transaction_date DATE,
    is_fraud BOOLEAN
);

-- Insert sample transaction data
INSERT INTO transactions (transaction_id, amount, merchant, card_number, transaction_date, is_fraud)
VALUES
    (1, 100.50, 'OnlineRetailer1', '1234567890123456', '2023-11-01', FALSE),
    (2, 500.20, 'LocalStore2', '9876543210987654', '2023-11-03', FALSE),
    (3, 1000.00, 'SuspiciousMerchant', '1111222233334444', '2023-11-05', TRUE),
    (4, 300.75, 'OnlineRetailer2', '5555666677778888', '2023-11-07', FALSE),
    -- Add more sample data here...
    ;

-- Query to retrieve potential fraud transactions
SELECT *
FROM transactions
WHERE is_fraud = TRUE;
