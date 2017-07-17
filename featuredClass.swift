//
//  featuredClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation


/// IDK Broker Featured JSON Struct
class featuredClass {
    
    struct property {
        var address:String!
        var streetName:String?
        var streetNumber:String?
        var unitNumber:String?
        var cityName:String!
        var countyName:String?
        var state:String!
        var zipcode:String!
        var listingPrice:String?
        var listingID:String?
        var remarksConcat:String?
        var rnLse:String?
        var propStatus:String?
        var bedrooms:String?
        var totalBaths:String?
        var latitude:String?
        var longitude:String?
        var acres:String?
        var sqFT:String?
        var displayAddress:String?
        var listingAgentID:String?
        var listingOfficeID:String?
        var sample_mlsPtID:String?
        var sample_mlsPhotoCount:String?
        var parentPtID:String?
        var detailsURL:String?
        var idxID:String?
        var idxPropType:String?
        var idxStatus:String?
        var viewCount:String?
        var mediaData:[NSData]?
        var ohCount:String?
        var vtCount:String?
        var featured:String?
        var image:NSDictionary? // maybe UIImage or smthg.
        var fullDetailsURL:String?
    
    
        init(jsonDict:NSDictionary){
            let myLine = jsonDict as! [String: Any];
        
            //if it's not there it would be nil
            address = myLine["address"] as? String
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
            sample_mlsPtID = jsonDict["sample_mlsPtID"] as? String
            sample_mlsPhotoCount = jsonDict["sample_mlsPhotoCount"] as? String
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
        }
    }
}
