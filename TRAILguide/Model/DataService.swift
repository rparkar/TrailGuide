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
    
    private let hiking = [
        SpecificCategory(categoryName: "HIKING", categoryBackground: "hikingBG", specificImage: "foodCooler", description: "the food cooler helps store yummy food you would love to eat on your run or hike or just on the bike"),
        SpecificCategory(categoryName: "HIKING", categoryBackground: "hikingBG", specificImage: "tacticalKnife", description: "The paracord bracelet is amazing"),
//        SpecificCategory(categoryName: <#T##String#>, categoryBackground: <#T##String#>, specificImage: <#T##String#>, description: <#T##String#>),
//        SpecificCategory(categoryName: <#T##String#>, categoryBackground: <#T##String#>, specificImage: <#T##String#>, description: <#T##String#>),
//        SpecificCategory(categoryName: <#T##String#>, categoryBackground: <#T##String#>, specificImage: <#T##String#>, description: <#T##String#>),
//        SpecificCategory(categoryName: <#T##String#>, categoryBackground: <#T##String#>, specificImage: <#T##String#>, description: <#T##String#>),
        
    ]
    
    private let camping = [
        SpecificCategory(categoryName: "Camping", categoryBackground: "campingBG", specificImage: "sleepingBag", description: "This is an amazing sleeping bag")
    ]
    
    func getCategories() -> [Categories] {
        
        return categories
    }
    
    func getSpecificCategories(forCategoryTitle title: String) -> [SpecificCategory] {
        
        switch title {
        case "HIKING":
            return getHikingData()
        default:
            return getCampingData()
        }
        
    }
    
    func getHikingData() -> [SpecificCategory] {
        return hiking
    }
    
    func getCampingData() -> [SpecificCategory] {
        return camping
    }
}
