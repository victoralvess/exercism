class Product {
    var name: String
    static var inStock: Int = 0
    var price: Float

    init(_ name: String, _ price: Float, _ inStock: Int = 0) {
        self.name = name;
        self.price = price;
        Product.inStock = inStock;
    }
}
