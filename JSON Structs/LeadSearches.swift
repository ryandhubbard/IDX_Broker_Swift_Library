//
//  LeadSearches.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 7/27/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

struct LeadSearches {
    var created: String?
    var id: String?
    var lastEdited: String?
    var receiveUpdates: String?
    var resultsURL: String?

    init(dict: NSDictionary) {
        let myLine = dict as? [String: Any]

        // if it's not there it would be nil
        created = myLine?["created"] as? String
        id = myLine?["id" ] as? String
        lastEdited = myLine?["lastEdited"] as? String
        receiveUpdates = myLine?["receiveUpdates"] as? String
        resultsURL = myLine?["resultsURL"] as? String
    }
}
