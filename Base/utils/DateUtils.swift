import Foundation

public struct DateUtils {
    private static let defaultFormat = "yyyy-MM-dd'T'HH:mm:ss"
    
    static public func toString(dateString: String, format: String?) -> String {
        let date = Self.toDate(dateString: dateString)
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = format ?? Self.defaultFormat
        dateFormatter.locale = Locale(identifier: "ko")
        return dateFormatter.string(from: date)
    }
    
    static public func todayString(format: String = "yyyy-MM-dd") -> String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?
        return dateFormatter.string(from: Date())
    }
    
    static public func toDate(dateString: String) -> Date {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = Self.defaultFormat
        dateFormatter.locale = Locale(identifier: "ko")
        
        return dateFormatter.date(from: dateString)!
    }
}
