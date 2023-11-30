// Require necessary modules
   const express = require('express');
   const bodyParser = require('body-parser');
   
   const app = express();
   
   // Use body-parser middleware
   app.use(bodyParser.json());
   
   // Endpoint to detect fraud transactions
   app.post('/detectFraud', (req, res) => {
       // Retrieve transaction data from request body
       const transactionData = req.body;
       
       // Perform fraud detection logic (simplified example)
       const isFraudulent = checkForFraud(transactionData);
       
       // Send response with fraud detection result
       res.json({ isFraudulent });
   });
   
   // Example function for fraud detection (to be expanded)
   function checkForFraud(transactionData) {
       // Perform checks and analysis here (e.g., based on transaction amount, frequency, etc.)
       // This is a simplified example
       if (transactionData.amount > 1000) {
           return true; // Consider transactions above $1000 as potentially fraudulent
       }
       return false;
   }
   
   // Start the server on port 3000
   app.listen(3000, () => {
       console.log('Server is running on port 3000');
   });
