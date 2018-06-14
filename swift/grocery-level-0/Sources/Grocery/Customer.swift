class Customer {
    var cart: [Product]

    init() {
        self.cart = [Product]()
    }

    func addToCart(_ product: Product) throws {
        guard product.inStock > 0 else {
            throw GroceryError.outOfStock(product: product)
        }
        
        product.inStock -= 1
        cart.append(product)
    }

    func buy() -> Float {
        var total: Float = 0.0
        for product in cart {
            total += product.price
        }

        emptyCart()

        return total
    }

    func emptyCart() {
        cart.removeAll()
    }
}
