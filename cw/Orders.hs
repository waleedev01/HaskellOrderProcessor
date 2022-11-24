module Orders where
import Data.List
import Data.List (group, sort)
import Control.Arrow ((&&&))
import Data.List (partition)

type Customer = String
type Product = String

-- An order of some positive quantity of a product by a customer
data Order = Order Customer Product Double
    deriving (Show)

-- A delivery to the supplier of some quantity quantity of a product
data Delivery = Delivery Product Double
    deriving (Show)

-- All customers who submitted an order, with the number of different
-- products each of them ordered.
numProducts :: [Order] -> [(Customer, Int)]
numProducts [] = []
numProducts orders = countOccurences (filterCustomers (nub (zip (map getCustomerName orders) (map getProduct orders))))


filterCustomers :: [(Customer, Product)] -> [Customer]
filterCustomers lst = [fst x | x <- lst]

getCustomerName :: Order -> Customer
getCustomerName (Order name _ _ ) = name

getProduct :: Order -> Product
getProduct (Order _ product _  ) = product

countOccurences :: [Customer] -> [(Customer, Int)]
countOccurences = map (head &&& length) . group . sort

-- All products that have been ordered, with the total quantity of each.
productQuantities :: [Order] -> [(Product, Double)]
productQuantities orders = undefined

-- The customers and products for which the customer has ordered
-- more than half the total quantity for that product.
majority :: [Order] -> [(Customer, Product)]
majority orders = undefined

-- Products for which the total quantity ordered exceeds the
-- total quantity delivered, with the difference in quantity.
shortfall :: [Order] -> [Delivery] -> [(Product, Double)]
shortfall [][] = []
shortfall orders deliveries =   subQuantity (sumByQuantity (zip (map getProduct orders) (map getQuantity orders))) (sumByQuantity (zip (map getProductDelivery deliveries) (map getQuantityDelivery deliveries)))

subQuantity :: [(Product, Double)] -> [(Product, Double)] -> [(Product, Double)]
subQuantity [][] = []
subQuantity ((x, y):xs) ((u, v):ys) = if (x == u) && (y-v>0) then [(x, y-v)] ++ subQuantity xs ys else []

getQuantity :: Order -> Double
getQuantity (Order _ _ quantity  ) = quantity

getProductDelivery :: Delivery -> Product
getProductDelivery (Delivery product _  ) = product

getQuantityDelivery :: Delivery -> Double
getQuantityDelivery (Delivery _ quantity  ) = quantity

sumByQuantity :: (Eq product, Num quantity) => [(product, quantity)] -> [(product, quantity)]
sumByQuantity [] = []
sumByQuantity ((product,quantity):xs) = (product,quantity + sum vs) : sumByQuantity bs where
    vs = map snd ks
    (ks, bs) = partition ((product ==) . fst) xs



-- Allocation of quantities of products to customers.
--
-- No customer should be allocated more of a given product than they have
-- ordered.  If a sufficient quantity of a product has been delivered to
-- satisfy all orders, each customer should receive the total quantity
-- they ordered.  If not, the available quantity of the product should
-- be shared between customers in proportion to the amount ordered.
-- For example, if the delivered quantity of a product is half the the
-- total ordered quantity of that product, each customer would receive
-- half of what they ordered.
share :: [Order] -> [Delivery] -> [(Customer, Product, Double)]
share orders deliveries = undefined
