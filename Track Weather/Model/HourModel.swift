//
//  HourModel.swift
//  Track Weather
//
//  Created by Md. Mahinur Rahman on 2/21/24.
//

import Foundation

struct HourModel:Identifiable{
    var id:String{
        return time
    }
    let time:String
    let icon:String
    let percentage:String?
    let temperature:String
}
