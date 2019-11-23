//
//  PSI.swift
//  PSI App
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

import Foundation
import SwiftyJSON

class PSI: NSObject {
    var regionMetadata: [JSON]!
    var items: [JSON]!
    
    init(json: JSON) {
        self.regionMetadata = json["region_metadata"].array
        self.items = json["items"].array
    }
}
