import Foundation
import SwiftyJSON

// sourcery: SwiftyJSONRepresentable
class CopyrightInfo {
    var licence: String
    var name: String
    var year: Int

    // sourcery:inline:auto:CopyrightInfo.SwiftyJSONRepresentable
    init(_ json: JSON) {
        licence = json["licence"].stringValue
        name = json["name"].stringValue
        year = json["year"].intValue
    }
    // sourcery:end
}
