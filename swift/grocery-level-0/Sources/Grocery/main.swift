var egg = Product("Egg", 2.0, 50)
var milk = Product("Milk", 5.0, 20)
var outOfStock = Product("Out of Stock", 100_000_000)

var customer = Customer()

do {
    try customer.addToCart(egg)
    try customer.addToCart(egg)
    try customer.addToCart(egg)
    try customer.addToCart(milk)
    try customer.addToCart(outOfStock)
} catch GroceryError.outOfStock(let product) {
    print("`\(product.name)` is out of stock!")
}

print("Total: $\(customer.buy())")
print("Total (Empty Cart): $\(customer.buy())")
