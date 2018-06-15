//Solution goes in Sources
import Foundation

class Gigasecond {
    let description: String

    init?(from: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        guard var date = dateFormatter.date(from: from) else {
            return nil;
        }

        date.addTimeInterval(1_000_000_000)
        self.description = dateFormatter.string(from: date)        
    }
}
