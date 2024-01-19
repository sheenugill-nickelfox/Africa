//
//  LocationModel.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI
import MapKit

struct NationalParkLocation : Identifiable,Codable{
    let id:String
    let name:String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location :CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude)
    }
}
