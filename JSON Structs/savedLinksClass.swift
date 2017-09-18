//
//  savedLinksClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 5/11/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

class SavedLinks: NSObject, NSCoding {

    var id: String?
    var linkName: String!
    var linkTitle: String!
    var queryString: String?
    var timesViewed: String?
    var featured: String?
    var created: String?
    var category: String?
    var addedViaApi: String?
    var lastEdited: String?
    var url: String?
    var uid: String?


    init(linkDict: NSDictionary) {
        let myLine = linkDict as? [String: Any]

        // if it's not there it would be nil
        id = myLine?["id" ] as? String
        linkName = myLine?["linkName"] as? String
        linkTitle = myLine?["linkTitle"] as? String
        queryString = myLine?["queryString"] as? String
        timesViewed = myLine?["timesViewed"] as? String
        featured = myLine?["featured"] as? String
        created = myLine?["created"] as? String
        category = myLine?["category"] as? String
        addedViaApi = myLine?["addViaApi"] as? String
        lastEdited = myLine?["lastEdited"] as? String
        url = myLine?["url"] as? String
        uid = myLine?["uid"] as? String
    }


    struct Keys {
        static let id = "id"
        static let linkName = "linkName"
        static let linkTitle = "linkTitle"
        static let queryString = "queryString"
        static let timesViewed = "timesViewed"
        static let featured = "featured"
        static let created = "created"
        static let category = "category"
        static let addedViaApi = "addedViaApi"
        static let lastEdited = "lastEdited"
        static let url = "url"
        static let uid = "uid"
    }

    required init(coder aDecoder: NSCoder) {

        if let idObj = aDecoder.decodeObject(forKey: Keys.id) as? String {
            id = idObj
        }
        if let linkNameobj = aDecoder.decodeObject(forKey: Keys.linkName) as? String {
            linkName = linkNameobj
        }
        if let linkTitleObj = aDecoder.decodeObject(forKey: Keys.linkTitle) as? String {
            linkTitle = linkTitleObj
        }
        if let queryStringObj = aDecoder.decodeObject(forKey: Keys.queryString) as? String {
            queryString = queryStringObj
        }
        if let timesViewedObj = aDecoder.decodeObject(forKey: Keys.timesViewed) as? String {
            timesViewed = timesViewedObj
        }
        if let featuredObj = aDecoder.decodeObject(forKey: Keys.featured) as? String {
            featured = featuredObj
        }
        if let createdObj = aDecoder.decodeObject(forKey: Keys.created) as? String {
            created = createdObj
        }
        if let categoryObj = aDecoder.decodeObject(forKey: Keys.category) as? String {
            category = categoryObj
        }
        if let addedViaApiObj = aDecoder.decodeObject(forKey: Keys.addedViaApi) as? String {
            addedViaApi = addedViaApiObj
        }
        if let lastEditedObj = aDecoder.decodeObject(forKey: Keys.lastEdited) as? String {
            lastEdited = lastEditedObj
        }
        if let urlObj = aDecoder.decodeObject(forKey: Keys.url) as? String {
            url = urlObj
        }
        if let urlObj = aDecoder.decodeObject(forKey: Keys.uid) as? String {
            uid = urlObj
        }

    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: Keys.id)
        aCoder.encode(linkName, forKey: Keys.linkName)
        aCoder.encode(linkTitle, forKey: Keys.linkTitle)
        aCoder.encode(queryString, forKey: Keys.queryString)
        aCoder.encode(timesViewed, forKey: Keys.timesViewed)
        aCoder.encode(featured, forKey: Keys.featured)
        aCoder.encode(created, forKey: Keys.created)
        aCoder.encode(category, forKey: Keys.category)
        aCoder.encode(addedViaApi, forKey: Keys.addedViaApi)
        aCoder.encode(lastEdited, forKey: Keys.lastEdited)
        aCoder.encode(url, forKey: Keys.url)
        aCoder.encode(uid, forKey: Keys.uid)
    }

}
