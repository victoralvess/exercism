enum GroceryError: Error {
    case outOfStock(product: Product)
}