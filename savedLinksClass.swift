//
//  savedLinksClass.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 5/11/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

class savedLinks {
    
    struct link {
        var id:String?
        var linkName:String!
        var linkTitle:String!
        var queryString:String?
        var timesViewed:String?
        var featured:String?
        var created:String?
        var category:String?
        var addedViaApi:String?
        var lastEdited:String?
        var url:String?
        var uid:String?

        
        init(linkDict:NSDictionary){
            let myLine = linkDict as! [String: Any];
            
            //if it's not there it would be nil
            id = myLine["id" ] as? String
            linkName = myLine["linkName"] as? String
            linkTitle = myLine["linkTitle"] as? String
            queryString = myLine["queryString"] as? String
            timesViewed = myLine["timesViewed"] as? String
            featured = myLine["featured"] as? String
            created = myLine["created"] as? String
            category = myLine["category"] as? String
            addedViaApi = myLine["addViaApi"] as? String
            lastEdited = myLine["lastEdited"] as? String
            url = myLine["url"] as? String
            uid = myLine["uid"] as? String
        }
    }
}
