typealias InStock = Int

extension Int {
    func isAvailable() -> Bool {
        return self > 0
    }
}
