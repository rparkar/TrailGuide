//
//  TrailCell.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-28.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class TrailCell: UITableViewCell {

    //outlets
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    func updateCell(category: Categories){
        
        categoryName.text = category.title
        backgroundImage.image = UIImage(named: category.image)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
