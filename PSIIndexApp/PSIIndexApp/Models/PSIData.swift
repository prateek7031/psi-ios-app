//
//  PSIData.swift
//  PSI App
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

import Foundation

class PSIData: NSObject {
    var name: String
    var lat: Double
    var lon: Double
    var reading = [PSIReading]()
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.lat = latitude
        self.lon = longitude
    }
}
