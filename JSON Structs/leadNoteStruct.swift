//
//  leadNoteStruct.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 7/25/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

struct LeadNote {
    var created: String?
    var id: String?
    var lastAltered: String?
    var note: String?

    init(noteDict: NSDictionary) {
        let myLine = noteDict as? [String: Any]

        // if it's not there it would be nil
        created = myLine?["created"] as? String
        id = myLine?["id" ] as? String
        lastAltered = myLine?["lastAltered"] as? String
        note = myLine?["note"] as? String

        // Converts html to text
        note = String(htmlEncodedString: note!)
        let htmlString = note
        do {
            let attributed = try NSAttributedString(data: (htmlString?.data(using: .utf8)!)!, options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType], documentAttributes: nil)
            note = attributed.string
        } catch {
                note = htmlString
        }

    }
}

struct ApprovedMLS {
    var id: String?
    var name: String?

    init(noteDict: NSDictionary) {
        let myLine = noteDict as? [String: Any]

        // if it's not there it would be nil
        id = myLine?["id" ] as? String
        name = myLine?["name"] as? String
    }
}

struct SystemLinksDict {
    var category: String?
    var name: String?
    var systemresults: String?
    var uid: String?
    var url: String?

    init(systemDict: NSDictionary) {
        let myLine = systemDict as? [String: Any]

        // if it's not there it would be nil
        category = myLine?["category"] as? String
        name = myLine?["name" ] as? String
        systemresults = myLine?["systemresults"] as? String
        uid = myLine?["uid"] as? String
        url = myLine?["url"] as? String

    }

}
