select 
      customers.CustomerName,
      Customers.Email,
      count(Orders.OrdersID) AS TotalNumberOfOrders
from Customers
left join orders
         on customers.customerID=Orders.CustomerID
Group By 
		Customers.CustomerName,
		customers.Email
Order BY 
	    Customers.CustomerName;

