import Foundation
import SwiftyJSON

// 1. primitive types + snake_case
// 2. optionals
// 3. other types
// 4. arrays
// 5. enums
// 6. ignore in json

class BookWithBoilerplate {
    var name: String
    var pagesCount: Int
    var authorName: String
    var description: String?
    var copyrightInfo: Copyright
    var quotes: [String]
    var genre: Genre
    
    var isAvailableInStore = false

    init(_ json: JSON) {
        name = json["name"].stringValue
        pagesCount = json["pages_count"].intValue
        authorName = json["author_name"].stringValue
        description = json["description"].string
        copyrightInfo = Copyright(json["copyright_info"])
        quotes = json["quotes"].arrayValue.map(String.init)
        genre = Genre(rawValue: json["genre"].stringValue) ?? .pop
    }
}

// In order to compile example above
class Copyright {
    init(_ json: JSON) {}
}

