//
//  AnimalModel.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct Animal: Identifiable,Codable{
    let id:String
    let name:String
    let headline:String
    let description:String
    let link:String
    let image:String
    let gallery:[String]
    let fact:[String]
}
