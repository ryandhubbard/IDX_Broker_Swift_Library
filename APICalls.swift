//
//  APICalls.swift
//  IDX_Broker
//
//  Created by Ryan Hubbard on 4/1/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

class APICalls {
    
    /* Gets Users AccessKey */
    /// A method to get the users unique api key stored in the users defaults
    ///
    /// - Returns: A String
    class func getAccessKey() -> String {
        var key = String()
        let textFieldKeyConstant = "AccessKey"
        
        let defaults = UserDefaults.standard
        if let textFieldValue = defaults.string(forKey: textFieldKeyConstant) {
            key = textFieldValue
        }
        return key
    }
    
    
    class func getFeatured() -> URLRequest {
        
        let urlString = "https://api.idxbroker.com/clients/featured?offset=0&limit=5"
        let url = NSURL(string: urlString)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
    
        return downloadTask
    }
    
    class func getAgents() -> URLRequest {
        
        let urlString = "https://api.idxbroker.com/clients/agents"
        let url = NSURL(string: urlString)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
        
        return downloadTask
    }

    class func getLeads() -> URLRequest {
        
        let urlString = "https://api.idxbroker.com/leads/lead"
        let url = NSURL(string: urlString)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
        
        return downloadTask
    }
    
    class func getLeadSaved(id: String, searchID: String) -> URLRequest {
        
        let urlString = "https://api.idxbroker.com/leads/property/"
        let newStr:String = urlString + String(id) + String("/") + String(searchID)
        let url = NSURL(string: newStr)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
        
        return downloadTask
    }
    
    class func getLeadSearches(id: String, searchID: String) -> URLRequest {
        
        let urlString = "https://api.idxbroker.com/leads/searches/"
        let newStr:String = urlString + String(id) + String("/") + String(searchID)
        let url = NSURL(string: newStr)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
        
        return downloadTask
    }
    
    
    /// Send Lead to IDX Broker
    ///
    /// - Parameter lead: new Lead data fields
    class func putLead(lead: Data){
        
        let urlString = "https://api.idxbroker.com/leads/lead"
        let url = NSURL(string: urlString)
        print(lead)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "PUT"
        downloadTask.httpBody = lead
        /******************** End Headers required for API CALL *************************************/

        URLSession.shared.dataTask(with: downloadTask, completionHandler: {(data, response, error) -> Void in
            
            /// Status Returned from API CALL
            if let httpResponse = response as? HTTPURLResponse {
                print("statusCode: \(httpResponse.statusCode)")
            }
            
            let jsonData = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) 
            print(jsonData ?? "No Return")
            
        }).resume()
        /******** End URL Session **********/
        
    
    }

    
    /// get Properties for Lead
    ///
    /// - Parameters:
    ///   - idxID: String
    ///   - listingID: String
    /// - Returns: DownloadTask
    class func getListing(idxID: String, listingID: String) -> URLRequest {
        
        let urlString = "https://api.idxbroker.com/clients/listing/"
        let newStr:String = urlString + "/" + String(idxID) + "/" + listingID
        let url = NSURL(string: newStr)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /******************** End Headers required for API CALL *************************************/
        
        return downloadTask
    }
    
    
    /// Deletes the lead by ID Passed
    ///
    /// - Parameter leadID: String ex.("23")
    class func deleteLead(leadID: String){
        
        let urlString = "https://api.idxbroker.com/leads/lead/"
        let newString = urlString + leadID
        let url = NSURL(string: newString)
        
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "DELETE"
        /******************** End Headers required for API CALL *************************************/
        
        URLSession.shared.dataTask(with: downloadTask, completionHandler: {(data, response, error) -> Void in
            
            /// Status Returned from API CALL
            if let httpResponse = response as? HTTPURLResponse {
                print("statusCode: \(httpResponse.statusCode)")
            }
            
            let jsonData = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
            print(jsonData ?? "No Return")
            
        }).resume()
        /******** End URL Session **********/
    }

}
