//
//  propertyImageClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 5/8/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

/// IDB Broker JSON Class
class ImageClass {

    struct Image {

        var caption: String?
        var image: String!

        init(jsonDict: NSDictionary) {
            let myLine = jsonDict as? [String: Any]

            // if it's not there it would be nil
            caption = myLine?["caption"] as? String
            image = myLine?["url"] as? String
        }
    }
}
