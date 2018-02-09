import Foundation
import SwiftyJSON

// sourcery: SwiftyJSONRepresentable
class Book {
    var name: String
    var pagesCount: Int
    var authorName: String
    var description: String?
    var copyrightInfo: CopyrightInfo
    var quotes: [String]
    var genre: Genre = .pop
    
    // sourcery: skip
    var isAvailableInStore = false
    
    // sourcery:inline:auto:Book.SwiftyJSONRepresentable
    init(_ json: JSON) {
        name = json["name"].stringValue
        pagesCount = json["pages_count"].intValue
        authorName = json["author_name"].stringValue
        description = json["description"].string
        copyrightInfo = CopyrightInfo(json["copyright_info"])
        quotes = json["quotes"].arrayValue.map(String.init)
        genre = Genre(rawValue: json["genre"].stringValue) ?? .pop
    }
    // sourcery:end
}
