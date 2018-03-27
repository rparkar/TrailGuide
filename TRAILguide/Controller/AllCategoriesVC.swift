//
//  AllCategoriesVC.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-26.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class AllCategoriesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
        performSegue(withIdentifier: "specificCategoriesVC", sender: self)
    }

}
