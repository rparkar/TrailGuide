//
//  SpecificCategory.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-31.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import Foundation

class SpecificCategory {
    
    public private (set) var categoryName: String
    public private (set) var categoryBackGround: String
    public private (set) var image: String
    private (set) public var description: String
    
    init(categoryName: String, categoryBackground: String, specificImage: String, description: String) {
        
        self.categoryName = categoryName
       self.categoryBackGround = categoryBackground
        self.image = specificImage
        self.description = description
        
    }
    
}
