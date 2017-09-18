//
//  agentClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

/// IDB Broker JSON Class
class Agent: NSObject, NSCoding {

    var accountCreated: String?
    var address: String?
    var agentBioURL: String?
    var agentCategory: String?
    var agentCellPhone: String?
    var agentContactPhone: String?
    var agentDisplayName: String?
    var agentEmail: String?
    var agentFirstName: String!
    var agentHomeFax: String?
    var agentHomePhone: String?
    var agentID: Int?
    var agentLastName: String!
    var agentOfficeFax: String?
    var agentOfficePhone: String?
    var agentPager: String?
    var agentPhotoURL: String?
    var agentTitle: String?
    var agentURL: String?
    var agentURLdisplay: String?
    var bioDetails: String?
    var city: String?
    var country: String?
    var displayOnRoster: String?
    var featuredInWidget: String?
    var lastLoginDate: String?
    var lastUpdate: String?
    var linkOnRoster: String?
    var propUpdateSignature: String?
    var redirectToSite: String?
    var stateProvince: String?
    var zipCode: String?


    struct Keys {
        static let agentContactPhone = "agentContactPhone"
        static let agentDisplayName = "agentDisplayName"
        static let agentEmail = "agentEmail"
        static let agentFirstName = "agentFirstName"
        static let agentID = "agentID"
        static let agentLastName = "agentLastName"
        static let agentPhotoURL = "agentPhotoURL"
        static let bioDetails = "bioDetails"
        static let city = "city"
        static let stateProvince = "stateProvince"
        static let zipCode = "zipCode"

    }

    init(jsonDict: NSDictionary) {
        // if it's not there it would be nil
        accountCreated = (jsonDict["accountCreated"] as? String?)!
        address = (jsonDict["address"] as? String?)!
        agentBioURL = (jsonDict["agentBioURL"] as? String?)!
        agentCategory = (jsonDict["agentCategory"] as? String?)!
        agentCellPhone = (jsonDict["agentCellPhone"] as? String?)!
        agentContactPhone = (jsonDict["agentContactPhone"] as? String?)!
        agentDisplayName = (jsonDict["agentDisplayName"] as? String?)!
        agentEmail = (jsonDict["agentEmail"] as? String?)!
        agentFirstName = (jsonDict["agentFirstName"] as? String?)!
        agentHomeFax = (jsonDict["agentHomeFax"] as? String?)!
        agentHomePhone = (jsonDict["agentHomePhone"] as? String?)!
        agentID = (jsonDict["agentID"] as? Int?)!
        agentLastName = (jsonDict["agentLastName"] as? String?)!
        agentOfficeFax = (jsonDict["agentOfficeFax"] as? String?)!
        agentOfficePhone = (jsonDict["agentOfficePhone"] as? String?)!
        agentPager = (jsonDict["agentPager"] as? String?)!
        agentPhotoURL = (jsonDict["agentPhotoURL"] as? String?)!
        agentTitle = (jsonDict["agentTitle"] as? String?)!
        agentURL = (jsonDict["agentURL"] as? String?)!
        agentURLdisplay = (jsonDict["agentURLdisplay"] as? String?)!
        bioDetails = (jsonDict["bioDetails"] as? String?)!
        city = (jsonDict["city"] as? String?)!
        country = (jsonDict["country"] as? String?)!
        displayOnRoster = (jsonDict["displayOnRoster"] as? String?)!
        featuredInWidget = (jsonDict["featuredInWidget"] as? String?)!
        lastLoginDate = (jsonDict["lastLoginDate"] as? String?)!
        lastUpdate = (jsonDict["lastUpdate"] as? String?)!
        linkOnRoster = (jsonDict["linkOnRoster"] as? String?)!
        propUpdateSignature = (jsonDict["propUpdateSignature"] as? String?)!
        redirectToSite = (jsonDict["redirectToSite"] as? String?)!
        stateProvince = (jsonDict["stateProvince"] as? String?)!
        zipCode = (jsonDict["zipCode"] as? String?)!

        // Removes "<!!-- @code -->" from bioDetails
        if bioDetails?.range(of: "<!-- @code -->") != nil {
            bioDetails = bioDetails?.replacingOccurrences(of: "<!-- @code -->", with: "")
        }
    }

    required init(coder aDecoder: NSCoder) {

        if let agentContactPhoneObj = aDecoder.decodeObject(forKey: Keys.agentContactPhone) as? String {
            agentContactPhone = agentContactPhoneObj
        }
        if let agentDisplayNameObj = aDecoder.decodeObject(forKey: Keys.agentDisplayName) as? String {
            agentDisplayName = agentDisplayNameObj
        }
        if let agentEmailObj = aDecoder.decodeObject(forKey: Keys.agentEmail) as? String {
            agentEmail = agentEmailObj
        }
        if let agentEmailObj = aDecoder.decodeObject(forKey: Keys.agentEmail) as? String {
            agentEmail = agentEmailObj
        }
        if let agentEmailObj = aDecoder.decodeObject(forKey: Keys.agentEmail) as? String {
            agentEmail = agentEmailObj
        }
        if let agentFirstNameObj = aDecoder.decodeObject(forKey: Keys.agentFirstName) as? String {
            agentFirstName = agentFirstNameObj
        }
        if let agentIDObj = aDecoder.decodeObject(forKey: Keys.agentID) as? Int {
            agentID = agentIDObj
        }
        if let agentLastNameObj = aDecoder.decodeObject(forKey: Keys.agentLastName) as? String {
            agentLastName = agentLastNameObj
        }
        if let agentPhotoURLObj = aDecoder.decodeObject(forKey: Keys.agentPhotoURL) as? String {
            agentPhotoURL = agentPhotoURLObj
        }
        if let bioDetailsObj = aDecoder.decodeObject(forKey: Keys.bioDetails) as? String {
            bioDetails = bioDetailsObj
        }
        if let cityObj = aDecoder.decodeObject(forKey: Keys.city) as? String {
            city = cityObj
        }
        if let stateProvinceObj = aDecoder.decodeObject(forKey: Keys.stateProvince) as? String {
            stateProvince = stateProvinceObj
        }
        if let zipCodeObj = aDecoder.decodeObject(forKey: Keys.zipCode) as? String {
            zipCode = zipCodeObj
        }

    }

    func encode(with aCoder: NSCoder) {

        aCoder.encode(agentContactPhone, forKey: Keys.agentContactPhone)
        aCoder.encode(agentDisplayName, forKey: Keys.agentDisplayName)
        aCoder.encode(agentEmail, forKey: Keys.agentEmail)
        aCoder.encode(agentFirstName, forKey: Keys.agentFirstName)
        aCoder.encode(agentID, forKey: Keys.agentID)
        aCoder.encode(agentLastName, forKey: Keys.agentLastName)
        aCoder.encode(agentPhotoURL, forKey: Keys.agentPhotoURL)
        aCoder.encode(bioDetails, forKey: Keys.bioDetails)
        aCoder.encode(city, forKey: Keys.city)
        aCoder.encode(stateProvince, forKey: Keys.stateProvince)
        aCoder.encode(zipCode, forKey: Keys.zipCode)

    }

}
