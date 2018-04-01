//
//  DataService.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-31.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Categories(title: "HIKING", image: "hikingBG"),
        Categories(title: "CAMPING", image: "campingBG"),
        Categories(title: "DIVING", image: "divingBG"),
        Categories(title: "RV LIFE", image: "rvBG"),
        Categories(title: "FISHING", image: "fishingBG"),
        Categories(title: "BACKPACKS", image: "backpackingBG")
    ]
    
    func getCategories() -> [Categories] {
        
        return categories
    }
    
    
}
