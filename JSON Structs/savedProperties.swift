//
//  savedProperties.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/18/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation


class SavedProperty {

    struct Property {
        var created: String?
        var id: String?
        var lastEdited: String?
        var property: String?
        var propertyName: String?
        var receiveUpdates: String?
        var detailsURL: String?
        var fullDetailsURL: String?


        init(propertyDict: NSDictionary) {
            let myLine = propertyDict as? [String: Any]

            // if it's not there it would be nil
            created = myLine?["created"] as? String
            id = myLine?["id" ] as? String
            lastEdited = myLine?["lastEdited"] as? String
            property = myLine?["property"] as? String
            propertyName = myLine?["propertyName"] as? String
            receiveUpdates = (myLine?["receiveUpdates"] as? String?)!
            detailsURL = myLine?["propertyName"] as? String
            fullDetailsURL = myLine?["fullDetailsURL"] as? String
        }
    }
}
