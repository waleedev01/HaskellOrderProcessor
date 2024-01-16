# Orders Module - Coursework Project

## Module Overview

This module, named `Orders`, is part of a coursework project designed to handle and analyze customer orders and product deliveries. It provides a series of functions to process and extract meaningful information from orders and deliveries data.

---

## Structure and Functions

The module is structured around two main data types:
- `Order`: Represents an order made by a customer for a specific product and quantity.
- `Delivery`: Represents a delivery of a specific product and its quantity to the supplier.

### Key Functions:

1. **numProducts**: Returns a list of customers along with the count of different products they have ordered.

2. **productQuantities**: Provides the total quantity ordered for each product. (Function to be implemented)

3. **majority**: Identifies customers who have ordered more than half the total quantity of a product. (Function to be implemented)

4. **shortfall**: Determines the products for which the total quantity ordered exceeds the total quantity delivered, along with the difference in quantity.

5. **share**: Allocates quantities of products to customers based on their orders and the available delivery quantities. (Function to be implemented)

---

## Implementation Details

- **Data Analysis Functions**: Functions like `numProducts` and `shortfall` are implemented to analyze the data from orders and deliveries, providing insights into customer behavior and inventory needs.

- **Utility Functions**: Functions such as `filterCustomers`, `getCustomerName`, `getProduct`, `countOccurrences`, `getQuantity`, `getProductDelivery`, `getQuantityDelivery`, and `sumByQuantity` are utility functions that support the main analytical functions by processing and organizing data.

---

## Usage

To use this module, import it into your Haskell environment. You can then call any of the provided functions with appropriate Order and Delivery data to perform analysis and obtain the desired information.

---

## Note

- The functions `productQuantities`, `majority`, and `share` are placeholders and require implementation to meet specific project requirements.

---

## Contributing

This module is part of a coursework project, and contributions are welcome to enhance its functionality or to implement the uncompleted features.

