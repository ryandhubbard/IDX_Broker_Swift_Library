//
//  leadsClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation


/// IDX Broker Leads JSON Struct
class leadsClass {
    
    struct lead {
        var address:String?
        var agentOwner:Int?
        var canLogin:String?
        var city:String!
        var country:String?
        var customRegistrationField:String?
        var disabled:String?
        var email:String!
        var email2:String?
        var firstName:String!
        var id:String?
        var lastActivityDate:String?
        var lastEdited:String?
        var lastName:String!
        var phone:String!
        var receiveUpdates:String?
        var savedProperties:Int?
        var savedSearches:Int?
        var stateProvince:String?
        var subscribeDate:String?
        var zipCode:String?

        init(leadDict:NSDictionary){
            let myLine = leadDict as! [String: Any];
            
            //if it's not there it would be nil
            address = myLine["address"] as? String
            agentOwner = myLine["agentOwner"] as? Int
            canLogin = myLine["canLogin"] as? String
            city = myLine["city"] as! String
            country = myLine["country"] as? String
            customRegistrationField = myLine["customRegistrationField"] as? String
            disabled = myLine["disabled"] as? String
            email = myLine["email"] as! String
            email2 = myLine["email2"] as? String
            firstName = myLine["firstName"] as! String
            id = (myLine["id"] as? String?)!
            lastActivityDate = myLine["lastActivityDate"] as? String
            lastEdited = myLine["lastEdited"] as? String
            lastName = myLine["lastName"] as! String
            phone = myLine["phone"] as? String
            receiveUpdates = myLine["receiveUpdates"] as? String
            savedProperties = myLine["savedProperties"] as? Int
            savedSearches = myLine["savedSearches"] as? Int
            stateProvince = myLine["stateProvince"] as? String
            subscribeDate = myLine["subscribeDate"] as? String
            zipCode = myLine["zipCode"] as? String

        }
    }
    
}
