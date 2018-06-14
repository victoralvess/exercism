class Customer {
    var cart: [Product]

    init() {
        self.cart = [Product]()
    }

    func addToCart(_ product: Product) {
        Product.inStock -= 1
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
