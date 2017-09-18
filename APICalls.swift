//
//  APICalls.swift
//
// IDB Broker API Call Library
// @see http://middleware.idxbroker.com/docs/api/methods/index.html#api-
//
//  Created by Ryan Hubbard on 4/2/17.
//  Copyright © 2017 Ryan Hubbard. All rights reserved.
//

import Foundation

class APICalls {

    ///  Gets Users AccessKey
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


    class func get(url: String) -> URLRequest {
        let urlCall = NSURL(string: url)
        var downloadTask = URLRequest(url: (urlCall as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /* ******************* Add Headers required for API CALL ************************************ */
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "GET"
        /* ******************* End Headers required for API CALL ************************************ */

        return downloadTask
    }

    class func put(url: String, data: Data) {
        let urlCall = NSURL(string: url)
        var downloadTask = URLRequest(url: (urlCall as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /* ******************* Add Headers required for API CALL ************************************ */
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "PUT"
        downloadTask.httpBody = data
        /* ******************* End Headers required for API CALL ************************************ */

        URLSession.shared.dataTask(with: downloadTask, completionHandler: { (data, response, error) -> Void in

            /// Status Returned from API CALL
            if let httpResponse = response as? HTTPURLResponse {
                print("statusCode: \(httpResponse.statusCode)")
            }
            let jsonData = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as Any
            print(jsonData ?? "Error Print")
        }).resume()
        /* ******* End URL Session ********* */
    }

    class func post(url: String, data: Data) {
        let urlCall = NSURL(string: url)
        var downloadTask = URLRequest(url: (urlCall as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /* ******************* Add Headers required for API CALL ************************************ */
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "POST"
        downloadTask.httpBody = data
        /* ******************* End Headers required for API CALL ************************************ */

        URLSession.shared.dataTask(with: downloadTask, completionHandler: { (data, response, error) -> Void in

            /// Status Returned from API CALL
            if let httpResponse = response as? HTTPURLResponse {
                print("statusCode: \(httpResponse.statusCode)")
            }

        }).resume()
        /* ******* End URL Session ********* */
    }

    class func delete(url: String) {
        let urlCall = NSURL(string: url)
        var downloadTask = URLRequest(url: (urlCall as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /* ******************* Add Headers required for API CALL ************************************ */
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "DELETE"
        /* ******************* End Headers required for API CALL ************************************ */

        URLSession.shared.dataTask(with: downloadTask, completionHandler: { (data, response, error) -> Void in

            /// Status Returned from API CALL
            if let httpResponse = response as? HTTPURLResponse {
                print("statusCode: \(httpResponse.statusCode)")
            }

        }).resume()
        /* ******* End URL Session ********* */
    }


    /* PARTNERS */

    /// aggregatedagents GET
    ///
    /// Get a list of all agents for your clients.
    ///
    /// - Returns: URL Request
    class func getAggregatedAgents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedagents"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedfeatured GET
    ///
    /// Get a list of featured MLS properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedfeatured"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedleads GET
    ///
    /// Get a list of all leads.
    ///
    /// - Returns: URL Request
    class func getAggregatedLeads() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedleads"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedleadtraffic GET
    ///
    /// Get a list of all leads traffic history.
    ///
    /// - Returns: URL Request
    class func getAggregatedLeadTraffic() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedleadtraffic"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedlistingstatus GET
    ///
    /// This method gives the status for all MLS listings (not supplemental) broken down by client account ID. This includes sold/pending listings with an unknown status which are not usually returned by sold/pending api methods. This is helpful if you need to know when previously gathered featured properties have left the market.
    ///
    /// - Returns: URL Request
    class func getAggregatedListingStatus() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedlistingstatus"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedproperties GET
    ///
    /// Get a list of all lead saved properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedProperties() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedproperties"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedsearches GET
    ///
    /// Get a list of all lead saved searches.
    ///
    /// - Returns: URL Request
    class func getAggregatedSearches() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedsearches"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedsoldpending GET
    ///
    /// Get a list of sold/pending MLS properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedSoldPending() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedsoldpending"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// aggregatedsupplemental GET
    ///
    /// Get a list of supplemental (non-MLS) properties.
    ///
    /// - Returns: URL Request
    class func getAggregatedSupplemental() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/aggregatedsupplemental"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// apiversion GET
    ///
    /// Get the default api version.
    ///
    /// - Returns: URL Request
    class func getPartnersApiVersion() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/apiversion"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// availablemls GET
    ///
    /// List of available MLSs with their fees.
    ///
    /// - Returns: URL Request
    class func getAvailableMls() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/availablemls"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// clients GET
    ///
    /// A list of clients available to a given partner. The list of clients can be filtered by GET values.
    ///
    /// - Returns: URL Request
    class func getClients() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/clients"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getPartnersListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/listcomponents"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// listmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getListMethods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/listmethods"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// propertytypes GET
    ///
    /// Gives the names and IDs of all available property types. This method differs from the property type lookup method in the client API component in that it can look up property types for any active Platinum MLS, not just those for which the client is a member.
    ///
    /// - Returns: URL Request
    class func getPropertyTypes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/propertytypes"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /* END PARTNERS */

    /* Clients */

    /// accounttype GET
    ///
    /// Get your account type.
    ///
    /// - Returns: URL Request
    class func getAccountType() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/accounttype"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// agents GET
    ///
    /// View agent information on a multi-user account.
    ///
    /// - Returns: URL Request
    class func getAgents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/agents"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// apiversion GET
    ///
    /// Get the default api version.
    ///
    /// - Returns: URL Request
    class func getApiVersion() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/apiversion"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// cities GET
    ///
    /// Returns the cities available in each of a client's city lists. Since a client can build any number of city lists this method requires the ID of which list you want to view. To get a list of all city lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func getCities() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/cities"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// citieslistname GET
    ///
    /// Returns the IDs and names for each of a client's city lists including MLS city lists. To get the list of all city lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func getCitiesListName() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/citieslistname"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// counties GET
    ///
    /// Returns the counties available in each of a client's county lists. Since a client can build any number of county lists this method requires the ID of which list you want to view. To get a list of all county lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS.
    ///
    /// - Returns: URL Request
    class func getCounties() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/counties"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// countieslistname GET
    ///
    /// Returns the IDs and names for each of a client's counties lists including MLS counties lists. To get the list of all counties lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func getCountiesListName() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/countieslistname"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// dynamicwrapperurl GET
    ///
    /// Returns the IDs and names for each of a client's counties lists including MLS counties lists. To get the list of all counties lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func postDynamicWrapperUrl(data: Data) {
        let urlString = "https://api.idxbroker.com/clients/dynamicwrapperurl"
        post(url: urlString, data: data)
    }

    /// featured GET
    ///
    /// Returns a basic set of information for all of the client's featured (active) properties
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/featured"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// listallowedfields GET
    ///
    /// Returns the allowed returnable fields for a given listingID.
    ///
    /// - Returns: URL Request
    class func getListAllowedFields() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listallowedfields"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listcomponents"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// listing GET
    ///
    /// Returns the detailed information for a given listingID.
    ///
    /// - Returns: URL Request
    class func getListing(idxID: String, listingID: String) -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listing/" + idxID + "/" + listingID
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// listingmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getListingMehtods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listmethods"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// offices GET
    ///
    /// View all offices on a mutli-user account.
    ///
    /// - Returns: URL Request
    class func getOffices() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/offices"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// postalcodes GET
    ///
    /// Returns the postalcodes available in each of a client's postalcode lists. Since a client can build any number of postalcode lists this method requires the ID of which list you want to view. To get a list of all postalcode lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS. Note: This method was previously called as "zipcodes" but was changed to keep API format more international. Calls to "zipcodes" will be forwarded to "postalcodes" and "zipcodes" is listed as deprecated in the method list.
    ///
    /// - Returns: URL Request
    class func getPostalCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/postalcodes"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// postalcodeslistname GET
    ///
    /// Returns the IDs and names for each of a client's postalcode lists including MLS postalcode lists. To get the list of all postal code lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS

    ///
    /// - Returns: URL Request
    class func getPostalCodesListName() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/postalcodeslistname"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// properties GET
    ///
    /// Returns the search results for a provided saved link ID.
    /// Note: Valid ancillarykey is required in the request header.
    ///
    /// - Returns: URL Request
    class func getProperties() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/properties"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// savedlinks DELETE
    ///
    /// Remove a new client saved link.
    ///
    /// - Returns: URL Request
    class func deleteSavedLinks(linkID: String) {
        let urlString = "https://api.idxbroker.com/clients/savedlinks/" + linkID
        delete(url: urlString)
    }

    /// savedlinks GET
    ///
    /// Get saved links for a given client account.
    ///
    /// - Returns: URL Request
    class func getSavedLinks() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/savedlinks"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// savedlinks POST
    ///
    /// Update an existing client's saved link. NOTE: This method is to be used at your own risk. We will NOT be held accountable for programmatic errors in your code or the improper use of search values or options within said values resulting in broken saved links.
    ///
    /// - Returns: URL Request
    class func postSavedLinks(data: Data) {
        let urlString = "https://api.idxbroker.com/clients/savedlinks"
        post(url: urlString, data: data)
    }

    /// searchquery GET
    ///
    /// Performs search and returns the results. Note: Valid ancillarykey is required in the request header.
    ///
    /// - Returns: URL Request
    class func getSearchQuery() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/searchquery"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// soldpending GET
    ///
    /// Returns a basic set of information for all of the client's sold and pending properties. That is, those that have been removed from their MLS data.
    ///
    /// - Returns: URL Request
    class func getSoldPending() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/soldpending"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// supplemental DELETE
    ///
    /// Remove a clients supplemental property. NOTE: This method is to be used at your own risk. We will NOT be held accountable for programmatic errors in your code or the improper use of search values or options within said values resulting in deletion of supplemental properties.
    ///
    /// - Returns: URL Request
    class func deleteSupplemental(supplementalID: String) {
        let urlString = "https://api.idxbroker.com/clients/soldpending/" + supplementalID
        delete(url: urlString)
    }

    /// supplemental GET
    ///
    /// Returns a basic set of information for all of the client's supplemental (non-MLS) properties.
    ///
    /// - Returns: URL Request
    class func getSupplemental() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/supplemental"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// supplemental POST
    ///
    /// Update an existing supplemental listing. Note: if updating images, existing images are deleted and the new images are inserted instead for the listing.
    ///
    /// - Returns: URL Request
    class func postSupplemental(data: Data) {
        let urlString = "https://api.idxbroker.com/clients/supplemental"
        post(url: urlString, data: data)
    }

    /// supplemental PUT
    ///
    /// Create a new supplemental listing. Note: likeIdxID and likeMlsPtID fields are required.
    ///
    /// - Returns: URL Request
    class func putSupplemental(data: Data) {
        let urlString = "https://api.idxbroker.com/clients/supplemental"
        put(url: urlString, data: data)
    }

    /// systemlinks GET
    ///
    /// Gathers all the pages system pages (search, featured, contact, etc) that can be directly linked to without additional property information being included in the URL.
    ///
    /// - Returns: URL Request
    class func getSystemLinks() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/systemlinks"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// widgetsrc GET
    ///
    /// Gather all the URLs for javascript widgets on the user's account. These widgets can then be placed on the user's main site via the included URLs.
    ///
    /// - Returns: URL Request
    class func getWidgetSrc() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/widgetsrc"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// wrappercache DELETE
    ///
    ///
    ///
    /// - Returns: URL Request
    class func deleteWrapperCache() {
        let urlString = "https://api.idxbroker.com/clients/wrappercache"
        delete(url: urlString)
    }

    /// zipcodes GET
    ///
    /// Returns the zipcodes available in each of a client's zipcode lists. Since a client can build any number of zipcode lists this method requires the ID of which list you want to view. To get a list of all zipcode lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS.
    ///
    /// - Returns: URL Request
    class func getZipCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/zipcodes"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /* END CLIENTS */

    /* MLS */

    /// MLS - age GET
    ///
    /// Gives the date and time a particular MLS was last downloaded, processed and the last time images gathering was completed.
    ///
    /// - Returns: URL Request
    class func getMlsAge() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/age"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - approvedMls GET
    ///
    /// This method provides all of the IDX IDs and names for all of the paperwork approved MLSs on the client's account. Note: This method was previously camelcased as "approvedMLS" but was made lower case to fit the API naming convention. Calls to "approvedMLS" will be forwarded to "approvedmls" and "approvedMLS" is listed as deprecated in the method list.
    ///
    /// - Returns: URL Request
    class func getMlsApprovedMls() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/approvedmls"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - cities GET
    ///
    /// All cities represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsCities() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/cities"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - counties GET
    ///
    /// All counties represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsCounties() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/counties"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getMlsListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/listcomponents"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - listmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getMlsListMethods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/listmethods"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - postalcodes GET
    ///
    /// All postal codes represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsPostalCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/postalcodes"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - prices GET
    ///
    /// The sum total of properties listed in a given MLS as well as sums for each property type in the MLS.
    ///
    /// - Returns: URL Request
    class func getMlsPrices() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/prices"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - propertycount GET
    ///
    /// Gives a total number of listings available for a given city, county, or zipcode.
    ///
    /// - Returns: URL Request
    class func getMlsPropertyCount() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/propertycount"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - propertytypes GET
    ///
    /// Gives the property type information for all types that are available on a given MLS.
    ///
    /// - Returns: URL Request
    class func getMlsPropertyTypes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/propertytypes"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - searchfields GET
    ///
    /// All the fields in a given MLS that are currently allowed to be searched according to MLS guidelines.
    ///
    /// - Returns: URL Request
    class func getMlsSearchFields(mlsID: String) -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/searchfields/" + mlsID
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - searchfieldvalues GET
    ///
    /// Field values in a given MLS that are currently allowed to be searched according to MLS guidelines.
    ///
    /// - Returns: URL Request
    class func getMlsSearchFieldValues() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/searchfieldvalues"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// MLS - zipcodes GET
    ///
    /// All zip codes represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsZipCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/zipcodes"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /* END MLS */

    /* LEADS */

    /// Leads - bulklead POST
    ///
    /// Update leads in batches of up to 100 per request.
    ///
    /// - Returns: URL Request
    class func postBulkLead(data: Data) {
        let urlString = "https://api.idxbroker.com/leads/bulklead"
        post(url: urlString, data: data)
    }

    /// Leads - bulklead PUT
    ///
    /// Add leads in batches of up to 100 per request.
    ///
    /// - Returns: URL Request
    class func putBulkLead(data: Data) {
        let urlString = "https://api.idxbroker.com/leads/bulklead"
        put(url: urlString, data: data)
    }

    /// Leads - lead DELETE
    ///
    /// Remove a lead system wide. NOTE: This method is to be used at your own risk. We will NOT be held accountable for programmatic errors in your code or the improper use of search values or options within said values resulting in deletion of leads.
    ///
    /// - Returns: URL Request
    class func deleteLead(leadID: String) {
        let urlString = "https://api.idxbroker.com/leads/lead" + "/" + leadID
        delete(url: urlString)
    }

    /// Leads - lead GET
    ///
    /// Get information for one or multiple leads.
    ///
    /// - Returns: URL Request
    class func getLead() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/lead"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// Leads - lead POST
    ///
    /// Update the information for one lead specified by the primary request ID.
    ///
    /// - Returns: URL Request
    class func postLead(data: Data) {
        let urlString = "https://api.idxbroker.com/leads/lead"
        post(url: urlString, data: data)
    }

    /// Leads - lead PUT
    ///
    /// Create a new lead. Special Note: Currently the API cannot differentiate between a lead rejected due to server error or one rejected due to bad email address. The lead system requires email addresses that are correctly formatted to cut down on garbage accounts, and they need to have a valid MX record. Most 500 error from this method are a result of bad email addresses. In future versions we will differentiate the error and make the MX record requirement optional.
    ///
    /// - Returns: URL Request
    class func putLead(data: Data) {
        let urlString = "https://api.idxbroker.com/leads/lead"
        put(url: urlString, data: data)
    }

    /// Leads - leadtraffic GET
    ///
    /// Get traffic history for a specified lead. For bandwidth and memory considerations there is a limit of 5,000 on the number of lead traffics that can be returned in any single request.
    ///
    /// - Returns: URL Request
    class func getLeadTraffic() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/leadtraffic"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// Leads - listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getLeadsListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/listcomponents"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// Leads - listmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getLeadsListMethods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/listmethods"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// Leads - note DELETE
    ///
    /// Remove a lead note.
    ///
    /// - Returns: URL Request
    class func deleteNote(leadID: String, noteID: String) {
        let urlString = "https://api.idxbroker.com/leads/note" + "/" + leadID + "/" + noteID
        delete(url: urlString)
    }

    /// Leads - note GET
    ///
    /// Get notes for a lead.
    ///
    /// - Returns: URL Request
    class func getNote(leadID: String, noteID: String) -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/note" + "/" + leadID + "/" + noteID
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// Leads - note POST
    ///
    /// Update the notes information for one lead specified by the primary request ID.
    ///
    /// - Returns: URL Request
    class func postNote(leadID: String, noteID: String, data: Data) {
        let urlString = "https://api.idxbroker.com/leads/note/" + leadID + "/" + noteID
        post(url: urlString, data: data)
    }

    /// Leads - note PUT
    ///
    /// Create a new lead note.
    ///
    /// - Returns: URL Request
    class func putNote(leadID: String, data: Data) {
        let urlString = "https://api.idxbroker.com/leads/note/" + leadID
        put(url: urlString, data: data)
    }

    /// Leads - property DELETE
    ///
    /// Remove a lead saved property.
    ///
    /// - Returns: URL Request
    class func deleteProperty(leadID: String, propertyID: String) {
        let urlString = "https://api.idxbroker.com/leads/property" + "/" + leadID + "/" + propertyID
        delete(url: urlString)
    }

    /// Leads - property GET
    ///
    /// Get saved properties for a lead.
    ///
    /// - Returns: URL Request
    class func getProperty(leadID: String, propertyID: String) -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/property" + "/" + leadID + "/" + propertyID
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// Leads - property POST
    ///
    /// Update an existing lead's saved property.
    ///
    /// - Returns: URL Request
    class func postProperty(data: Data) {
        let urlString = "https://api.idxbroker.com/leads/property"
        post(url: urlString, data: data)
    }

    /// Leads - property PUT
    ///
    /// Create a new lead saved property.
    ///
    /// - Returns: URL Request
    class func putProperty(leadID: String, data: Data) {
        let urlString = "https://api.idxbroker.com/leads/property" + "/" + leadID
        put(url: urlString, data: data)
    }

    /// Leads - search DELETE
    ///
    /// Remove a lead saved search.
    ///
    /// - Returns: URL Request
    class func deleteSearch(leadID: String, searchID: String) {
        let urlString = "https://api.idxbroker.com/leads/search" + "/" + leadID + "/" + searchID
        delete(url: urlString)
    }

    /// Leads - search GET
    ///
    /// Get notes for a lead.
    ///
    /// - Returns: URL Request
    class func getSearch(leadID: String, searchID: String) -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/search" + "/" + leadID + "/" + searchID
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// Leads - search POST
    ///
    /// Update the notes information for one lead specified by the primary request ID.
    ///
    /// - Returns: URL Request
    class func postSearch(data: Data) {
        let urlString = "https://api.idxbroker.com/leads/search"
        post(url: urlString, data: data)
    }

    /// Leads - search PUT
    ///
    /// Create a new lead note.
    ///
    /// - Returns: URL Request
    class func putSearch(leadID: String, data: Data) {
        let urlString = "https://api.idxbroker.com/leads/search/" + leadID
        put(url: urlString, data: data)
    }

    /* END LEADS */

    /* Specialty Partner */

    /// pricing GET
    ///
    /// Get IDX account and agent/office add-on pricing.
    ///
    /// - Returns: URL Request
    class func getPricing() -> URLRequest {
        let urlString = "https://api.idxbroker.com/specialtypartner/pricing"
        let downloadTask = get(url: urlString)
        return downloadTask
    }

    /// subscriber PUT
    ///
    /// Create IDX subscriber.
    ///
    /// - Returns: URL Request
    class func putSubscriber(data: Data) {
        let urlString = "https://api.idxbroker.com/specialtypartner/subscriber"
        put(url: urlString, data: data)
    }

    /* End Specialty Partner */
}
