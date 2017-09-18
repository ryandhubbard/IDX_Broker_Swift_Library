//
//  featuredClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation


/// IDK Broker Featured JSON Struct
class FeaturedClass: NSObject, NSCoding {

    // struct Property {
    var address: String!
    var streetName: String?
    var streetNumber: String?
    var unitNumber: String?
    var cityName: String!
    var countyName: String?
    var state: String!
    var zipcode: String!
    var listingPrice: String?
    var listingID: String?
    var remarksConcat: String?
    var rnLse: String?
    var propStatus: String?
    var bedrooms: String?
    var totalBaths: String?
    var latitude: String?
    var longitude: String?
    var acres: String?
    var sqFT: String?
    var displayAddress: String?
    var listingAgentID: String?
    var listingOfficeID: String?
    var samplemlsPtID: String?
    var samplemlsPhotoCount: String?
    var parentPtID: String?
    var detailsURL: String?
    var idxID: String?
    var idxPropType: String?
    var idxStatus: String?
    var viewCount: String?
    var mediaData: [NSData]?
    var ohCount: String?
    var vtCount: String?
    var featured: String?
    var image: NSDictionary? // maybe UIImage or smthg.
    var cachedImageArray: [String]?
    var fullDetailsURL: String?

    struct Keys {
        static let address = "address"
        static let cityName = "cityName"
        static let state = "state"
        static let zipcode = "zipCode"
        static let listingPrice = "listingPrice"
        static let remarksConcat = "remarksConcat"
        static let countyName = "countyName"
        static let bedrooms = "bedrooms"
        static let totalBaths = "totalBaths"
        static let sqFT = "sqFt"
        static let fullDetailsURL = "fullDetailsURL"
        static let cachedImageArray = "cachedImageArray"

        // for images arrays https://stackoverflow.com/questions/32032380/saving-array-with-nscoding
    }


    init(jsonDict: NSDictionary) {
        let myLine = jsonDict as? [String: Any]

        // if it's not there it would be nil
        address = myLine?["address"] as? String
        streetName = jsonDict["streetName"] as? String
        streetNumber = jsonDict["streetNumer"] as? String
        unitNumber = jsonDict["unitNumer"] as? String
        cityName = jsonDict["cityName"] as? String
        countyName = jsonDict["countyName"] as? String
        state = jsonDict["state"] as? String
        zipcode = jsonDict["zipcode"] as? String
        listingPrice = jsonDict["listingPrice"] as? String
        listingID = jsonDict["listingID"] as? String
        remarksConcat = jsonDict["remarksConcat"] as? String
        rnLse = jsonDict["rnLse"] as? String
        propStatus = jsonDict["propStatus"] as? String
        bedrooms = jsonDict["bedrooms"] as? String
        totalBaths = jsonDict["totalBaths"] as? String
        latitude = jsonDict["latitude"] as? String
        longitude = jsonDict["longitude"] as? String
        acres = jsonDict["acres"] as? String
        sqFT = jsonDict["sqFT"] as? String
        displayAddress = jsonDict["displayAddress"] as? String
        listingAgentID = jsonDict["listingAgentID"] as? String
        listingOfficeID = jsonDict["listingOfficeID"] as? String
        samplemlsPtID = jsonDict["sample_mlsPtID"] as? String
        samplemlsPhotoCount = jsonDict["sample_mlsPhotoCount"] as? String
        parentPtID = jsonDict["parentPtID"] as? String
        detailsURL = jsonDict["detailsURL"] as? String
        idxID = jsonDict["idxID"] as? String
        idxPropType = jsonDict["idxPropType"] as? String
        idxStatus = jsonDict["idxStatus"] as? String
        viewCount = jsonDict["viewCount"] as? String
        mediaData = jsonDict["mediaData "] as? NSArray as? [NSData]
        ohCount = jsonDict["ohCount"] as? String
        vtCount = jsonDict["vtCount"] as? String
        featured = jsonDict["featured"] as? String
        image = jsonDict["image"] as? NSDictionary
        fullDetailsURL = jsonDict["fullDetailsURL"] as? String
        cachedImageArray = []
    }

    required init(coder aDecoder: NSCoder) {

        if let addressObj = aDecoder.decodeObject(forKey: Keys.address) as? String {
            address = addressObj
        }
        if let cityNameObj = aDecoder.decodeObject(forKey: Keys.cityName) as? String {
            cityName = cityNameObj
        }
        if let stateObj = aDecoder.decodeObject(forKey: Keys.state) as? String {
            state = stateObj
        }
        if let zipcodeObj = aDecoder.decodeObject(forKey: Keys.zipcode) as? String {
            zipcode = zipcodeObj
        }
        if let listingPriceObj = aDecoder.decodeObject(forKey: Keys.listingPrice) as? String {
            listingPrice = listingPriceObj
        }
        if let remarksConcatObj = aDecoder.decodeObject(forKey: Keys.remarksConcat) as? String {
            remarksConcat = remarksConcatObj
        }
        if let countyNameObj = aDecoder.decodeObject(forKey: Keys.countyName) as? String {
            countyName = countyNameObj
        }
        if let bedroomsObj = aDecoder.decodeObject(forKey: Keys.bedrooms) as? String {
            bedrooms = bedroomsObj
        }
        if let totalBathsObj = aDecoder.decodeObject(forKey: Keys.totalBaths) as? String {
            totalBaths = totalBathsObj
        }
        if let sqFtObj = aDecoder.decodeObject(forKey: Keys.sqFT) as? String {
            sqFT = sqFtObj
        }
        if let fullDetailsURLObj = aDecoder.decodeObject(forKey: Keys.fullDetailsURL) as? String {
            fullDetailsURL = fullDetailsURLObj
        }
        if let cachedImageArrayObj = aDecoder.decodeObject(forKey: Keys.cachedImageArray) as? [String] {
            cachedImageArray = cachedImageArrayObj  // Convert Dictionary
        }
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(address, forKey: Keys.address)
        aCoder.encode(cityName, forKey: Keys.cityName)
        aCoder.encode(state, forKey: Keys.state)
        aCoder.encode(zipcode, forKey: Keys.zipcode)
        aCoder.encode(listingPrice, forKey: Keys.listingPrice)
        aCoder.encode(remarksConcat, forKey: Keys.remarksConcat)
        aCoder.encode(countyName, forKey: Keys.countyName)
        aCoder.encode(bedrooms, forKey: Keys.bedrooms)
        aCoder.encode(totalBaths, forKey: Keys.totalBaths)
        aCoder.encode(sqFT, forKey: Keys.sqFT)
        aCoder.encode(fullDetailsURL, forKey: Keys.fullDetailsURL)
        aCoder.encode(cachedImageArray, forKey: Keys.cachedImageArray)
    }

}
