import Foundation

extension Date {
    public func addWeek(week: Int) -> Date {
        return Calendar.current.date(byAdding: .weekOfYear, value: week, to: self) ?? Date()
    }
    
    public func addMonth(month: Int) -> Date {
        return Calendar.current.date(byAdding: .month, value: month, to: self) ?? Date()
    }
}
