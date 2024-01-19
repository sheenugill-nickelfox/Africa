//
//  VideoModel.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct Video :Identifiable,Codable{
    let id: String
    let name: String
    let headline:String
    
    // Computed Property
    var thumbnail:String{
        "video-\(id)"
    }
}
