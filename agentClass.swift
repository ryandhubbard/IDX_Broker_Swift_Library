//
//  agentClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation


class agentClass {
    
    struct agent{
        var accountCreated:String?
        var address:String?
        var agentBioURL:String?
        var agentCategory:String?
        var agentCellPhone:String?
        var agentContactPhone:String?
        var agentDisplayName:String?
        var agentEmail:String?
        var agentFirstName:String?
        var agentHomeFax:String?
        var agentHomePhone:String?
        var agentID:Int?
        var agentLastName:String?
        var agentOfficeFax:String?
        var agentOfficePhone:String?
        var agentPager:String?
        var agentPhotoURL:String?
        var agentTitle:String?
        var agentURL:String?
        var agentURLdisplay:String?
        var bioDetails:String?
        var city:String?
        var country:String?
        var displayOnRoster:String?
        var featuredInWidget:String?
        var lastLoginDate:String?
        var lastUpdate:String?
        var linkOnRoster:String?
        var propUpdateSignature:String?
        var redirectToSite:String?
        var stateProvince:String?
        var zipCode:String?
        


    
        init(jsonDict:NSDictionary){
            //if it's not there it would be nil
            accountCreated = jsonDict["accountCreated"] as! String?
            address = jsonDict["address"] as! String?
            agentBioURL = jsonDict["agentBioURL"] as! String?
            agentCategory = jsonDict["agentCategory"] as! String?
            agentCellPhone = jsonDict["agentCellPhone"] as! String?
            agentContactPhone = jsonDict["agentContactPhone"] as! String?
            agentDisplayName = jsonDict["agentDisplayName"] as! String?
            agentEmail = jsonDict["agentEmail"] as! String?
            agentFirstName = jsonDict["agentFirstName"] as! String?
            agentHomeFax = jsonDict["agentHomeFax"] as! String?
            agentHomePhone = jsonDict["agentHomePhone"] as! String?
            agentID = jsonDict["agentID"] as! Int?
            agentLastName = jsonDict["agentLastName"] as! String?
            agentOfficeFax = jsonDict["agentOfficeFax"] as! String?
            agentOfficePhone = jsonDict["agentOfficePhone"] as! String?
            agentPager = jsonDict["agentPager"] as! String?
            agentPhotoURL = jsonDict["agentPhotoURL"] as! String?
            agentTitle = jsonDict["agentTitle"] as! String?
            agentURL = jsonDict["agentURL"] as! String?
            agentURLdisplay = jsonDict["agentURLdisplay"] as! String?
            bioDetails = jsonDict["bioDetails"] as! String?
            city = jsonDict["city"] as! String?
            country = jsonDict["country"] as! String?
            displayOnRoster = jsonDict["displayOnRoster"] as! String?
            featuredInWidget = jsonDict["featuredInWidget"] as! String?
            lastLoginDate = jsonDict["lastLoginDate"] as! String?
            lastUpdate = jsonDict["lastUpdate"] as! String?
            linkOnRoster = jsonDict["linkOnRoster"] as! String?
            propUpdateSignature = jsonDict["propUpdateSignature"] as! String?
            redirectToSite = jsonDict["redirectToSite"] as! String?
            stateProvince = jsonDict["stateProvince"] as! String?
            zipCode = jsonDict["zipCode"] as! String?
        }
    }
}
