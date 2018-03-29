//
//  AppInfoVC.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-26.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class AppInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goIntoApp(_ sender: Any) {
        
        performSegue(withIdentifier: "allCategoriesVC", sender: self)
    }
    
}
