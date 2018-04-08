//
//  ItemCell.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-28.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    //outlets
    @IBOutlet weak var collectionGearImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
       
    }
    
    func updateCollectionCell(specificCategory: SpecificCategory) {
        self.collectionGearImage.image = UIImage(named: specificCategory.image)
        
    }
    
}
