//Solution goes in Sources
class Year {
    let year: Int

    init(calendarYear: Int) {
        self.year = calendarYear
    }

    var isLeapYear: Bool {
        get {
            return (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
        }
    }
}