//
//  AllCategoriesVC.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-26.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class AllCategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        

        // Do any additional setup after loading the view.
    }

    @IBAction func appInfoButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "trailCell", for: indexPath) as? TrailCell else {return UITableViewCell()}
        
        let category = DataService.instance.getCategories()[indexPath.row]
        cell.updateCell(category: category)
       
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return CGFloat(tableView.frame.height / CGFloat(DataService.instance.getCategories().count))
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "specificCategoryVC", sender: category)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? SpecificCategoryVC {
            
            
            if let category = sender as? Categories {
                
                destination.initData(category: category)
                

                
            }
           
        }
    }
    
}
