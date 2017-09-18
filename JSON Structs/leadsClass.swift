//
//  leadsClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation


/// IDX Broker Leads JSON Struct
class LeadsClass: NSObject, NSCoding {

    var address: String?
    var agentOwner: Int?
    var canLogin: String?
    var city: String?
    var country: String?
    var customRegistrationField: String?
    var disabled: String?
    var email: String!
    var email2: String?
    var firstName: String!
    var id: String?
    var lastActivityDate: String?
    var lastEdited: String?
    var lastName: String!
    var phone: String!
    var receiveUpdates: String?
    var savedProperties: Int?
    var savedSearches: Int?
    var stateProvince: String?
    var subscribeDate: String?
    var zipCode: String?

    init(leadDict: NSDictionary) {
        let myLine = leadDict as? [String: Any]

        // if it's not there it would be nil
        address = myLine?["address"] as? String
        agentOwner = myLine?["agentOwner"] as? Int
        canLogin = myLine?["canLogin"] as? String
        city = myLine?["city"] as? String
        country = myLine?["country"] as? String
        customRegistrationField = myLine?["customRegistrationField"] as? String
        disabled = myLine?["disabled"] as? String
        email = myLine?["email"] as? String
        email2 = myLine?["email2"] as? String
        firstName = myLine?["firstName"] as? String
        id = (myLine?["id"] as? String?)!
        lastActivityDate = myLine?["lastActivityDate"] as? String
        lastEdited = myLine?["lastEdited"] as? String
        lastName = myLine?["lastName"] as? String
        phone = myLine?["phone"] as? String
        receiveUpdates = myLine?["receiveUpdates"] as? String
        savedProperties = myLine?["savedProperties"] as? Int
        savedSearches = myLine?["savedSearches"] as? Int
        stateProvince = myLine?["stateProvince"] as? String
        subscribeDate = myLine?["subscribeDate"] as? String
        zipCode = myLine?["zipCode"] as? String

        // Removes "Optional(\""\)" from city
        if city?.range(of: "Optional") != nil {
            city = city?.replacingOccurrences(of: "Optional(\"", with: "")
            city = city?.replacingOccurrences(of: "\")", with: "")
        }
    }

    struct Keys {
        static let address = "address"
        static let agentOwner = "agentOwner"
        static let canLogin = "canLogin"
        static let city = "city"
        static let country = "country"
        static let customRegistrationField = "customRegistrationField"
        static let disabled = "disabled"
        static let email = "email"
        static let email2 = "email2"
        static let firstName = "firstName"
        static let id = "id"
        static let lastActivityDate = "lastActivityDate"
        static let lastEdited = "lastEdited"
        static let lastName = "lastName"
        static let phone = "phone"
        static let receiveUpdates = "receiveUpdates"
        static let savedProperties = "savedProperties"
        static let savedSearches = "savedSearches"
        static let stateProvince = "stateProvince"
        static let subscribeDate = "subscribeDate"
        static let zipCode = "zipCode"
    }

    required init(coder aDecoder: NSCoder) {

        if let addressObj = aDecoder.decodeObject(forKey: Keys.address) as? String {
            address = addressObj
        }
        if let agentOwnerObj = aDecoder.decodeObject(forKey: Keys.agentOwner) as? Int {
            agentOwner = agentOwnerObj
        }
        if let canLoginObj = aDecoder.decodeObject(forKey: Keys.canLogin) as? String {
            canLogin = canLoginObj
        }
        if let cityObj = aDecoder.decodeObject(forKey: Keys.city) as? String {
            city = cityObj
        }
        if let countryObj = aDecoder.decodeObject(forKey: Keys.country) as? String {
            country = countryObj
        }
        if let customRegistrationFieldObj = aDecoder.decodeObject(forKey: Keys.customRegistrationField) as? String {
            customRegistrationField = customRegistrationFieldObj
        }
        if let disabledObj = aDecoder.decodeObject(forKey: Keys.disabled) as? String {
            disabled = disabledObj
        }
        if let emailObj = aDecoder.decodeObject(forKey: Keys.email) as? String {
            email = emailObj
        }
        if let email2Obj = aDecoder.decodeObject(forKey: Keys.email2) as? String {
            email2 = email2Obj
        }
        if let firstNameObj = aDecoder.decodeObject(forKey: Keys.firstName) as? String {
            firstName = firstNameObj
        }
        if let idObj = aDecoder.decodeObject(forKey: Keys.id) as? String {
            id = idObj
        }
        if let lastActivityDateObj = aDecoder.decodeObject(forKey: Keys.lastActivityDate) as? String {
            lastActivityDate = lastActivityDateObj
        }
        if let lastEditedObj = aDecoder.decodeObject(forKey: Keys.lastEdited) as? String {
            lastEdited = lastEditedObj
        }
        if let lastNameObj = aDecoder.decodeObject(forKey: Keys.lastName) as? String {
            lastName = lastNameObj
        }
        if let phoneObj = aDecoder.decodeObject(forKey: Keys.phone) as? String {
            phone = phoneObj
        }
        if let receiveUpdatesObj = aDecoder.decodeObject(forKey: Keys.receiveUpdates) as? String {
            receiveUpdates = receiveUpdatesObj
        }
        if let savedPropertiesObj = aDecoder.decodeObject(forKey: Keys.savedProperties) as? Int {
            savedProperties = savedPropertiesObj
        }
        if let savedSearchesObj = aDecoder.decodeObject(forKey: Keys.savedSearches) as? Int {
            savedSearches = savedSearchesObj
        }
        if let stateProvinceObj = aDecoder.decodeObject(forKey: Keys.stateProvince) as? String {
            stateProvince = stateProvinceObj
        }
        if let subscribeDateObj = aDecoder.decodeObject(forKey: Keys.subscribeDate) as? String {
            subscribeDate = subscribeDateObj
        }
        if let zipCodeObj = aDecoder.decodeObject(forKey: Keys.zipCode) as? String {
            zipCode = zipCodeObj
        }

    }

    func encode(with aCoder: NSCoder) {

        aCoder.encode(address, forKey: Keys.address)
        aCoder.encode(agentOwner, forKey: Keys.agentOwner)
        aCoder.encode(canLogin, forKey: Keys.canLogin)
        aCoder.encode(city, forKey: Keys.city)
        aCoder.encode(country, forKey: Keys.country)
        aCoder.encode(customRegistrationField, forKey: Keys.customRegistrationField)
        aCoder.encode(disabled, forKey: Keys.disabled)
        aCoder.encode(email, forKey: Keys.email)
        aCoder.encode(email2, forKey: Keys.email2)
        aCoder.encode(firstName, forKey: Keys.firstName)
        aCoder.encode(id, forKey: Keys.id)
        aCoder.encode(lastActivityDate, forKey: Keys.lastActivityDate)
        aCoder.encode(lastEdited, forKey: Keys.lastEdited)
        aCoder.encode(lastName, forKey: Keys.lastName)
        aCoder.encode(phone, forKey: Keys.phone)
        aCoder.encode(receiveUpdates, forKey: Keys.receiveUpdates)
        aCoder.encode(savedProperties, forKey: Keys.savedProperties)
        aCoder.encode(savedSearches, forKey: Keys.savedSearches)
        aCoder.encode(stateProvince, forKey: Keys.stateProvince)
        aCoder.encode(subscribeDate, forKey: Keys.subscribeDate)
        aCoder.encode(zipCode, forKey: Keys.zipCode)

    }

}
