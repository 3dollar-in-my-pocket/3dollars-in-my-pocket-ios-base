import Foundation

public struct JsonUtils {
    static public func decode<T: Decodable>(object: Any) -> T? {
        if let jsonData = try? JSONSerialization.data(withJSONObject: object) {
            let decoder = JSONDecoder()
            let result = try? decoder.decode(T.self, from: jsonData)
            
            return result
        } else {
            return nil
        }
    }
}
