//
//  APICalls.swift
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

/// IDB Broker API Call Library
class APICalls {
    
    let apiKey = "API_Key_Here"
    
    class func get(string: url) -> URLRequest {
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(apiKey, forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
        
        return downloadTask
    }
    
    /// aggregatedagents GET
    ///
    /// Get a list of all agents for your clients.
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedagents"
        let url = NSURL(string: urlString)
        var downloadTask = get(url)
        return downloadTask
    }

    /// aggregatedfeatured GET
    ///
    /// Get a list of featured MLS properties.
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedfeatured"
        let url = NSURL(string: urlString)
        var downloadTask = get(url)
        return downloadTask
    }
    
    /// aggregatedleads GET
    ///
    /// Get a list of all leads.
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedleads"
        let url = NSURL(string: urlString)
        var downloadTask = get(url)
        return downloadTask
    }
    
    /// aggregatedleadtraffic GET
    ///
    /// Get a list of all leads traffic history.
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedleadtraffic"
        let url = NSURL(string: urlString)
        var downloadTask = get(url)
        return downloadTask
    }

    /// aggregatedlistingstatus GET
    ///
    /// This method gives the status for all MLS listings (not supplemental) broken down by client account ID. This includes sold/pending listings with an unknown status which are not usually returned by sold/pending api methods. This is helpful if you need to know when previously gathered featured properties have left the market.
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedlistingstatus"
        let url = NSURL(string: urlString)
        var downloadTask = get(url)
        return downloadTask
    }
    
    /// aggregatedproperties GET
    ///
    /// Get a list of all lead saved properties.
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedproperties"
        let url = NSURL(string: urlString)
        var downloadTask = get(url)
        return downloadTask
    }

    /// aggregatedsearches GET
    ///
    /// Get a list of all lead saved searches.
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedsearches"
        let url = NSURL(string: urlString)
        var downloadTask = get(url)
        return downloadTask
    }


    

}
