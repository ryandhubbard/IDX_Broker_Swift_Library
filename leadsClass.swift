//
//  leadsClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

class leadsClass {
    
    struct property {
        var address:String?
        var agentOwner:Int?
        var canLogin:String?
        var city:String?
        var country:String?
        var customRegistrationField:String?
        var disabled:String?
        var email:String?
        var email2:String?
        var firstName:String?
        var id:Int?
        var lastActivityDate:String?
        var lastEdited:String?
        var lastName:String?
        var phone:String?
        var receiveUpdates:String?
        var savedProperties:Int?
        var savedSearches:Int?
        var stateProvince:String?
        var subscribeDate:String?
        var zipCode:String?

        init(jsonDict:NSDictionary){
            //if it's not there it would be nil
            address = jsonDict["address"] as? String
            agentOwner = jsonDict["agentOwner"] as? Int
            canLogin = jsonDict["canLogin"] as? String
            city = jsonDict["city"] as? String
            country = jsonDict["country"] as? String
            customRegistrationField = jsonDict["customRegistrationField"] as? String
            disabled = jsonDict["disabled"] as? String
            email = jsonDict["email"] as? String
            email2 = jsonDict["email2"] as? String
            firstName = jsonDict["firstName"] as? String
            id = jsonDict["id"] as? Int
            lastActivityDate = jsonDict["lastActivityDate"] as? String
            lastEdited = jsonDict["lastEdited"] as? String
            lastName = jsonDict["lastName"] as? String
            phone = jsonDict["phone"] as? String
            receiveUpdates = jsonDict["receiveUpdates"] as? String
            savedProperties = jsonDict["savedProperties"] as? Int
            savedSearches = jsonDict["savedSearches"] as? Int
            stateProvince = jsonDict["stateProvince"] as? String
            subscribeDate = jsonDict["subscribeDate"] as? String
            zipCode = jsonDict["zipCode"] as? String

        }
    }

    
}
