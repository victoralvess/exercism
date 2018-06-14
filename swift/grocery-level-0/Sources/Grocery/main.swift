var egg = Product("Egg", 2.0, 50)
var milk = Product("Milk", 5.0, 20)
var outOfStock = Product("Out of Stock", 100_000_000)

var customer = Customer()

customer.addToCart(egg)
customer.addToCart(egg)
customer.addToCart(egg)
customer.addToCart(milk)

print("Total: $\(customer.buy())")