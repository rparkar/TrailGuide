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
       SpecificCategory(categoryName: "HIKING", categoryBackground: "hikingBG", specificImage: "drone", description: "futuristic drone"),
       SpecificCategory(categoryName: "HIKING", categoryBackground: "hikingBG", specificImage: "camera", description: "amazing camera"),
       SpecificCategory(categoryName: "HIKING", categoryBackground: "hikingBG", specificImage: "backpack", description: "best backpack ever"),
        SpecificCategory(categoryName: "HIKING", categoryBackground: "hikingBG", specificImage: "tacticalKnife", description: "The paracord bracelet is amazing"),
        SpecificCategory(categoryName: "HIKING", categoryBackground: "hikingBG", specificImage: "multi", description: "The complete package")
        
    ]
    
    private let camping = [
        SpecificCategory(categoryName: "CAMPING", categoryBackground: "campingBG", specificImage: "sleepingBag", description: "This is an amazing sleeping bag"),
        SpecificCategory(categoryName: "CAMPING", categoryBackground: "campingBG", specificImage: "tacticalKnife", description: "The knife can be used for many things"),
        SpecificCategory(categoryName: "CAMPING", categoryBackground: "campingBG", specificImage: "camera", description: "Tbest camera ever"),
        SpecificCategory(categoryName: "CAMPING", categoryBackground: "campingBG", specificImage: "drone", description: "drone protects you from nearby dangers"),
        SpecificCategory(categoryName: "CAMPING", categoryBackground: "campingBG", specificImage: "campingStove", description: "cook while you sit hungry"),
        SpecificCategory(categoryName: "CAMPING", categoryBackground: "campingBG", specificImage: "paracordBracelet", description: "The paracord bracelet is amazing"),
        SpecificCategory(categoryName: "CAMPING", categoryBackground: "campingBG", specificImage: "backpack", description: "The paracord bracelet is amazing"),
    ]
    
    private let diving = [SpecificCategory(categoryName: "DIVING", categoryBackground: "divingBG", specificImage: "sleepingBag", description: "This is an amazing sleeping bag"),
        SpecificCategory(categoryName: "DIVING", categoryBackground: "divingBG", specificImage: "bikini", description: "This is an amazing bikini to wear"),
        SpecificCategory(categoryName: "DIVING", categoryBackground: "divingBG", specificImage: "backpack", description: "This is an amazing  bag"),
        SpecificCategory(categoryName: "DIVING", categoryBackground: "divingBG", specificImage: "camera", description: "good camera"),
        SpecificCategory(categoryName: "DIVING", categoryBackground: "divingBG", specificImage: "multi", description: "this is all in one package"),
                        
    ]
    
    private let fishing = [SpecificCategory(categoryName: "FISHING", categoryBackground: "fishingBG", specificImage: "sleepingBag", description: "This is an amazing sleeping bag")]
    
    private let rvLife = [SpecificCategory(categoryName: "RV LIFE", categoryBackground: "rvBG", specificImage: "sleepingBag", description: "This is an amazing sleeping bag")]
    
    private let backpacks = [SpecificCategory(categoryName: "BACKPACKS", categoryBackground: "backpackingBG", specificImage: "", description: "This is an amazing sleeping bag")
    ]
    
    
    func getCategories() -> [Categories] {
        
        return categories
    }
    
    func getSpecificCategories(forCategoryTitle title: String) -> [SpecificCategory] {
        
        switch title {
        case "HIKING": return getHikingData()
        case "DIVING": return getDivingData()
        case "RV LIFE": return getRVLifeData()
        case "FISHING": return getFishingData()
        case "BACKPACKS": return getBackpacksData()
        default: return getCampingData()
        }
        
    }
    
    func getHikingData() -> [SpecificCategory] {
        return hiking
    }
    
    func getCampingData() -> [SpecificCategory] {
        return camping
    }
    
    func getDivingData() -> [SpecificCategory] {
        return diving
    }
    
    func getFishingData() -> [SpecificCategory] {
        return fishing
    }
    
    func getRVLifeData() -> [SpecificCategory] {
        return rvLife
    }
    
    func getBackpacksData() -> [SpecificCategory] {
        return backpacks
    }
}
