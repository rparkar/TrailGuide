//
//  DetailVC.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-26.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    //outlets
    @IBOutlet weak var gearImage: UIImageView!
    @IBOutlet weak var categoryBackgroundImage: UIImageView!
    @IBOutlet weak var gearNameLabel: UILabel!
    @IBOutlet weak var gearDescription: UILabel!
    
    //variables
    private (set) public var gear : SpecificCategory! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
    }

    func initData (gear: SpecificCategory) {
        
        self.gear = gear
        
    }
    
    func setUpView() {

        categoryBackgroundImage.image = UIImage(named: gear.categoryBackGround)
        gearNameLabel.text = gear.image
        gearImage.image = UIImage(named: gear.image)
        gearDescription.text = gear.description
        
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
