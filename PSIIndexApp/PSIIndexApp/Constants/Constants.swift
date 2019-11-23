//
//  Constants.swift
//  PSIIndexApp
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

import Foundation
import Alamofire

struct Constants {
    //Google map key
    static let GOOGLE_MAP_KEY = "AIzaSyByFUQqvImR4HWyj1hRBTUmlNu1I0jx_x0"
    
    //base api url
    static let BASE_URL = "https://api.data.gov.sg/v1/"
    
    //psi api key for headers
    static let PSI_KEY = "0rjazBufPGUAd2gAK24KOFmQToETrR8m"
    
}

class Helper: NSObject {
    static let sharedInstance = Helper()
    private override init() {}
    
    func getHeaders() -> HTTPHeaders{
        
        let headers: HTTPHeaders = [
            "api-key": Constants.PSI_KEY
        ]
        
        return headers
    }
}
