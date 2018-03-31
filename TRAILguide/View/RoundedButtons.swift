//
//  RoundedButtons.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-30.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit
import Foundation
@IBDesignable

class RoundedButton: UIButton {
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        layer.cornerRadius = 10
        
    }
    
}
