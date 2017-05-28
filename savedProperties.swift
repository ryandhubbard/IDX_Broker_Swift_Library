//
//  savedProperties.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/18/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation


class savedProperty {
    
    struct property {
        var created:String?
        var id:String?
        var lastEdited:String?
        var property:NSDictionary?
        var propertyName:String?
        var receiveUpdates:String?
        
        init(propertyDict:NSDictionary){
            let myLine = propertyDict as! [String: Any];
            
            //if it's not there it would be nil
            created = myLine["created"] as? String
            id = myLine["id" ] as? String
            lastEdited = myLine["lastEdited"] as? String
            property = myLine["property"] as? NSDictionary
            propertyName = myLine["propertyName"] as? String
            receiveUpdates = myLine["receiveUpdates"] as? String!
        }
    }
}
