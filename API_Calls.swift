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
    
    class func get(string: NSURL) -> URLRequest {
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(apiKey, forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
        
        return downloadTask
    }

    class func put(string: NSURL, data: Data) -> URLRequest {
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "PUT"
        downloadTask.httpBody = data
        /******************** End Headers required for API CALL *************************************/

        return downloadTask
    }


    /* PARTNERS */

    /// aggregatedagents GET
    ///
    /// Get a list of all agents for your clients.
    ///
    /// - Returns: URL Request
    class func getAggregatedAgents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedagents"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// aggregatedfeatured GET
    ///
    /// Get a list of featured MLS properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedfeatured"
        var downloadTask = get(urlString)
        return downloadTask
    }
    
    /// aggregatedleads GET
    ///
    /// Get a list of all leads.
    ///
    /// - Returns: URL Request
    class func getAggregatedLeads() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedleads"
        var downloadTask = get(urlString)
        return downloadTask
    }
    
    /// aggregatedleadtraffic GET
    ///
    /// Get a list of all leads traffic history.
    ///
    /// - Returns: URL Request
    class func getAggregatedLeadTraffic() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedleadtraffic"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// aggregatedlistingstatus GET
    ///
    /// This method gives the status for all MLS listings (not supplemental) broken down by client account ID. This includes sold/pending listings with an unknown status which are not usually returned by sold/pending api methods. This is helpful if you need to know when previously gathered featured properties have left the market.
    ///
    /// - Returns: URL Request
    class func getAggregatedListingStatus() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedlistingstatus"
        var downloadTask = get(urlString)
        return downloadTask
    }
    
    /// aggregatedproperties GET
    ///
    /// Get a list of all lead saved properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedProperties() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedproperties"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// aggregatedsearches GET
    ///
    /// Get a list of all lead saved searches.
    ///
    /// - Returns: URL Request
    class func getAggregatedSearches() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedsearches"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// aggregatedsoldpending GET
    ///
    /// Get a list of sold/pending MLS properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedSoldPending() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedsoldpending"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// aggregatedsupplemental GET
    ///
    /// Get a list of supplemental (non-MLS) properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedAgents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedsupplemental"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// apiversion GET
    ///
    /// Get the default api version.
    ///
    /// - Returns: URL Request
    class func getApiVersion() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/apiversion"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// availablemls GET
    ///
    /// List of available MLSs with their fees.
    ///
    /// - Returns: URL Request
    class func getAvailableMls() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/availablemls"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// clients GET
    ///
    /// A list of clients available to a given partner. The list of clients can be filtered by GET values.
    ///
    /// - Returns: URL Request
    class func getClients() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/clients"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/listcomponents"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// listmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getListMethods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/listmethods"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// propertytypes GET
    ///
    /// Gives the names and IDs of all available property types. This method differs from the property type lookup method in the client API component in that it can look up property types for any active Platinum MLS, not just those for which the client is a member.
    ///
    /// - Returns: URL Request
    class func getListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/propertytypes"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /* END PARTNERS */




    /* Specialty Partner */

    /// pricing GET
    ///
    /// Get IDX account and agent/office add-on pricing.
    ///
    /// - Returns: URL Request
    class func getPricing() -> URLRequest {
        let urlString = "https://api.idxbroker.com/specialtypartner/pricing"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// subscriber PUT
    ///
    /// Create IDX subscriber.
    ///
    /// - Returns: URL Request
    class func putSubscriber(data: Data) -> URLRequest {
        let urlString = "https://api.idxbroker.com/specialtypartner/subscriber"
        var downloadTask = put(urlString, data)
        return downloadTask
    }

    /* End Specialty Partner */


}
