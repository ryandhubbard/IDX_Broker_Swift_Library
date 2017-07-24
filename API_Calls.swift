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

    class func post(string: NSURL, data: Data) -> URLRequest {
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "POST"
        downloadTask.httpBody = data
        /******************** End Headers required for API CALL *************************************/

        return downloadTask
    }

    class func delete(string: NSURL, data: Data) -> URLRequest {
        var downloadTask = URLRequest(url: (url as URL?)!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 20)
        /******************** Add Headers required for API CALL *************************************/
        downloadTask.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        downloadTask.setValue(APICalls.getAccessKey(), forHTTPHeaderField: "accesskey")
        downloadTask.setValue("json", forHTTPHeaderField: "outputtype")
        downloadTask.httpMethod = "DELETE"
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
    class func getPropertyTypes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/partners/propertytypes"
        var downloadTask = get(urlString)
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
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// agents GET
    ///
    /// View agent information on a multi-user account.
    ///
    /// - Returns: URL Request
    class func getAgents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/agents"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// apiversion GET
    ///
    /// Get the default api version.
    ///
    /// - Returns: URL Request
    class func getApiVersion() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/apiversion"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// cities GET
    ///
    /// Returns the cities available in each of a client's city lists. Since a client can build any number of city lists this method requires the ID of which list you want to view. To get a list of all city lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func getCities() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/cities"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// citieslistname GET
    ///
    /// Returns the IDs and names for each of a client's city lists including MLS city lists. To get the list of all city lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func getCitiesListName() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/citieslistname"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// counties GET
    ///
    /// Returns the counties available in each of a client's county lists. Since a client can build any number of county lists this method requires the ID of which list you want to view. To get a list of all county lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS.
    ///
    /// - Returns: URL Request
    class func getCounties() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/counties"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// countieslistname GET
    ///
    /// Returns the IDs and names for each of a client's counties lists including MLS counties lists. To get the list of all counties lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func getCountiesListName() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/countieslistname"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// dynamicwrapperurl GET
    ///
    /// Returns the IDs and names for each of a client's counties lists including MLS counties lists. To get the list of all counties lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS
    ///
    /// - Returns: URL Request
    class func postDynamicWrapperUrl() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/dynamicwrapperurl"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// featured GET
    ///
    /// Returns a basic set of information for all of the client's featured (active) properties
    ///
    /// - Returns: URL Request
    class func getFeatured() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/featured"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// listallowedfields GET
    ///
    /// Returns the allowed returnable fields for a given listingID.
    ///
    /// - Returns: URL Request
    class func getListAllowedFields() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listallowedfields"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listcomponents"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// listing GET
    ///
    /// Returns the detailed information for a given listingID.
    ///
    /// - Returns: URL Request
    class func getListing() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listing"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// listingmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getListingMehtods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/listmethods"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// offices GET
    ///
    /// View all offices on a mutli-user account.
    ///
    /// - Returns: URL Request
    class func getOffices() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/offices"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// postalcodes GET
    ///
    /// Returns the postalcodes available in each of a client's postalcode lists. Since a client can build any number of postalcode lists this method requires the ID of which list you want to view. To get a list of all postalcode lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS. Note: This method was previously called as "zipcodes" but was changed to keep API format more international. Calls to "zipcodes" will be forwarded to "postalcodes" and "zipcodes" is listed as deprecated in the method list.
    ///
    /// - Returns: URL Request
    class func getPostalCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/postalcodes"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// postalcodeslistname GET
    ///
    /// Returns the IDs and names for each of a client's postalcode lists including MLS postalcode lists. To get the list of all postal code lists available do not send the primary request ID. The default list on each account has the ID combinedActiveMLS

    ///
    /// - Returns: URL Request
    class func getPostalCodesListName() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/postalcodeslistname"
        var downloadTask = get(urlString)
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
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// savedlinks DELETE
    ///
    /// Remove a new client saved link.
    ///
    /// - Returns: URL Request
    class func deleteSavedLinks() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/savedlinks"
        var downloadTask = delete(urlString)
        return downloadTask
    }

    /// savedlinks GET
    ///
    /// Get saved links for a given client account.
    ///
    /// - Returns: URL Request
    class func getSavedLinks() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/savedlinks"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// savedlinks POST
    ///
    /// Update an existing client's saved link. NOTE: This method is to be used at your own risk. We will NOT be held accountable for programmatic errors in your code or the improper use of search values or options within said values resulting in broken saved links.
    ///
    /// - Returns: URL Request
    class func postSavedLinks() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/savedlinks"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// searchquery GET
    ///
    /// Performs search and returns the results. Note: Valid ancillarykey is required in the request header.
    ///
    /// - Returns: URL Request
    class func getSearchQuery() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/searchquery"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// soldpending GET
    ///
    /// Returns a basic set of information for all of the client's sold and pending properties. That is, those that have been removed from their MLS data.
    ///
    /// - Returns: URL Request
    class func getSoldPending() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/soldpending"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// supplemental DELETE
    ///
    /// Remove a clients supplemental property. NOTE: This method is to be used at your own risk. We will NOT be held accountable for programmatic errors in your code or the improper use of search values or options within said values resulting in deletion of supplemental properties.
    ///
    /// - Returns: URL Request
    class func deleteSupplemental() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/soldpending"
        var downloadTask = delete(urlString)
        return downloadTask
    }

    /// supplemental GET
    ///
    /// Returns a basic set of information for all of the client's supplemental (non-MLS) properties.
    ///
    /// - Returns: URL Request
    class func getSupplemental() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/supplemental"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// supplemental POST
    ///
    /// Update an existing supplemental listing. Note: if updating images, existing images are deleted and the new images are inserted instead for the listing.
    ///
    /// - Returns: URL Request
    class func postSupplemental() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/supplemental"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// supplemental PUT
    ///
    /// Create a new supplemental listing. Note: likeIdxID and likeMlsPtID fields are required.
    ///
    /// - Returns: URL Request
    class func putSupplemental() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/supplemental"
        var downloadTask = put(urlString)
        return downloadTask
    }

    /// systemlinks GET
    ///
    /// Gathers all the pages system pages (search, featured, contact, etc) that can be directly linked to without additional property information being included in the URL.
    ///
    /// - Returns: URL Request
    class func getSystemLinks() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/systemlinks"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// widgetsrc GET
    ///
    /// Gather all the URLs for javascript widgets on the user's account. These widgets can then be placed on the user's main site via the included URLs.
    ///
    /// - Returns: URL Request
    class func getWidgetSrc() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/widgetsrc"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// wrappercache DELETE
    ///
    ///
    ///
    /// - Returns: URL Request
    class func deleteWrapperCache() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/wrappercache"
        var downloadTask = delete(urlString)
        return downloadTask
    }

    /// zipcodes GET
    ///
    /// Returns the zipcodes available in each of a client's zipcode lists. Since a client can build any number of zipcode lists this method requires the ID of which list you want to view. To get a list of all zipcode lists available do not send the primary request ID. The default list on each account has the id combinedActiveMLS.
    ///
    /// - Returns: URL Request
    class func getZipCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/clients/zipcodes"
        var downloadTask = get(urlString)
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
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - approvedMls GET
    ///
    /// This method provides all of the IDX IDs and names for all of the paperwork approved MLSs on the client's account. Note: This method was previously camelcased as "approvedMLS" but was made lower case to fit the API naming convention. Calls to "approvedMLS" will be forwarded to "approvedmls" and "approvedMLS" is listed as deprecated in the method list.
    ///
    /// - Returns: URL Request
    class func getMlsApprovedMls() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/approvedmls"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - cities GET
    ///
    /// All cities represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsCities() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/cities"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - counties GET
    ///
    /// All counties represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsCounties() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/counties"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getMlsListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/listcomponents"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - listmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getMlsListMethods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/listmethods"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - postalcodes GET
    ///
    /// All postal codes represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsPostalCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/postalcodes"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - prices GET
    ///
    /// The sum total of properties listed in a given MLS as well as sums for each property type in the MLS.
    ///
    /// - Returns: URL Request
    class func getMlsPrices() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/prices"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - propertycount GET
    ///
    /// Gives a total number of listings available for a given city, county, or zipcode.
    ///
    /// - Returns: URL Request
    class func getMlsPropertyCount() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/propertycount"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - propertytypes GET
    ///
    /// Gives the property type information for all types that are available on a given MLS.
    ///
    /// - Returns: URL Request
    class func getMlsPropertyTypes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/propertytypes"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - searchfields GET
    ///
    /// All the fields in a given MLS that are currently allowed to be searched according to MLS guidelines.
    ///
    /// - Returns: URL Request
    class func getMlsSearchFields() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/searchfields"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - searchfieldvalues GET
    ///
    /// Field values in a given MLS that are currently allowed to be searched according to MLS guidelines.
    ///
    /// - Returns: URL Request
    class func getMlsSearchFieldValues() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/searchfieldvalues"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// MLS - zipcodes GET
    ///
    /// All zip codes represented in the current set of MLS data are available from this method. The output can be filtered using additional GET parameters.
    ///
    /// - Returns: URL Request
    class func getMlsZipCodes() -> URLRequest {
        let urlString = "https://api.idxbroker.com/mls/zipcodes"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /* END MLS */

    /* LEADS */

    /// Leads - bulklead POST
    ///
    /// Update leads in batches of up to 100 per request.
    ///
    /// - Returns: URL Request
    class func postBulkLead() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/bulklead"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// Leads - bulklead PUT
    ///
    /// Add leads in batches of up to 100 per request.
    ///
    /// - Returns: URL Request
    class func putBulkLead() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/bulklead"
        var downloadTask = put(urlString)
        return downloadTask
    }

    /// Leads - lead DELETE
    ///
    /// Remove a lead system wide. NOTE: This method is to be used at your own risk. We will NOT be held accountable for programmatic errors in your code or the improper use of search values or options within said values resulting in deletion of leads.
    ///
    /// - Returns: URL Request
    class func deleteLead() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/lead"
        var downloadTask = delete(urlString)
        return downloadTask
    }

    /// Leads - lead GET
    ///
    /// Get information for one or multiple leads.
    ///
    /// - Returns: URL Request
    class func getLead() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/lead"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// Leads - lead POST
    ///
    /// Update the information for one lead specified by the primary request ID.
    ///
    /// - Returns: URL Request
    class func postLead() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/lead"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// Leads - lead PUT
    ///
    /// Create a new lead. Special Note: Currently the API cannot differentiate between a lead rejected due to server error or one rejected due to bad email address. The lead system requires email addresses that are correctly formatted to cut down on garbage accounts, and they need to have a valid MX record. Most 500 error from this method are a result of bad email addresses. In future versions we will differentiate the error and make the MX record requirement optional.
    ///
    /// - Returns: URL Request
    class func putLead() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/lead"
        var downloadTask = put(urlString)
        return downloadTask
    }

    /// Leads - leadtraffic GET
    ///
    /// Get traffic history for a specified lead. For bandwidth and memory considerations there is a limit of 5,000 on the number of lead traffics that can be returned in any single request.
    ///
    /// - Returns: URL Request
    class func getLeadTraffic() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/leadtraffic"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// Leads - listcomponents GET
    ///
    /// This is a simple, access anywhere, method for getting a list of all API components available.
    ///
    /// - Returns: URL Request
    class func getLeadsListComponents() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/listcomponents"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// Leads - listmethods GET
    ///
    /// A simple method for listing all available methods in the current API component. This method will also list which request methods (GET, PUT, POST, or DELETE) are supported by each method in addition to each method status.
    ///
    /// - Returns: URL Request
    class func getLeadsListMethods() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/listmethods"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// Leads - note DELETE
    ///
    /// Remove a lead note.
    ///
    /// - Returns: URL Request
    class func deleteNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/note"
        var downloadTask = delete(urlString)
        return downloadTask
    }

    /// Leads - note GET
    ///
    /// Get notes for a lead.
    ///
    /// - Returns: URL Request
    class func getNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/note"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// Leads - note POST
    ///
    /// Update the notes information for one lead specified by the primary request ID.
    ///
    /// - Returns: URL Request
    class func postNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/note"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// Leads - note PUT
    ///
    /// Create a new lead note.
    ///
    /// - Returns: URL Request
    class func putNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/note"
        var downloadTask = put(urlString)
        return downloadTask
    }

    /// Leads - property DELETE
    ///
    /// Remove a lead saved property.
    ///
    /// - Returns: URL Request
    class func deleteNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/property"
        var downloadTask = delete(urlString)
        return downloadTask
    }

    /// Leads - property GET
    ///
    /// Get saved properties for a lead.
    ///
    /// - Returns: URL Request
    class func getNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/property"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// Leads - property POST
    ///
    /// Update an existing lead's saved property.
    ///
    /// - Returns: URL Request
    class func postNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/property"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// Leads - property PUT
    ///
    /// Create a new lead saved property.
    ///
    /// - Returns: URL Request
    class func putNote() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/property"
        var downloadTask = put(urlString)
        return downloadTask
    }

    /// Leads - search DELETE
    ///
    /// Remove a lead saved search.
    ///
    /// - Returns: URL Request
    class func deleteSearch() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/search"
        var downloadTask = delete(urlString)
        return downloadTask
    }

    /// Leads - search GET
    ///
    /// Get notes for a lead.
    ///
    /// - Returns: URL Request
    class func getSearch() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/search"
        var downloadTask = get(urlString)
        return downloadTask
    }

    /// Leads - search POST
    ///
    /// Update the notes information for one lead specified by the primary request ID.
    ///
    /// - Returns: URL Request
    class func postSearch() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/search"
        var downloadTask = post(urlString)
        return downloadTask
    }

    /// Leads - search PUT
    ///
    /// Create a new lead note.
    ///
    /// - Returns: URL Request
    class func putSearch() -> URLRequest {
        let urlString = "https://api.idxbroker.com/leads/search"
        var downloadTask = put(urlString)
        return downloadTask
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
