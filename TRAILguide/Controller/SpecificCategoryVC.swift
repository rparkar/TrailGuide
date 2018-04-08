//
//  SpecificCategoryVC.swift
//  TRAILguide
//
//  Created by Rehan Parkar on 2018-03-26.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class SpecificCategoryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    //outlets
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var categoryBGImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //variables
    public private (set) var specificCategoryGearArray = [SpecificCategory]()
    public private (set) var category: Categories! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
  
        setUpView()
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    func initData(category: Categories) {
        
        self.category = category
        specificCategoryGearArray = DataService.instance.getSpecificCategories(forCategoryTitle: category.title)

    }
    
    func setUpView() {

        mainTitleLabel.text = "\(category.title) GEAR"
        categoryBGImage.image = UIImage(named: category.image)

        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as? ItemCell else {return UICollectionViewCell()}
        
        let gear = specificCategoryGearArray[indexPath.row]
        cell.updateCollectionCell(specificCategory: gear)
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return specificCategoryGearArray.count
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  
        let gear = DataService.instance.getSpecificCategories(forCategoryTitle: category.title)[indexPath.row]
        performSegue(withIdentifier: "detailVC", sender: gear)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfColumns: CGFloat = 2
        let spaceBetweenCells: CGFloat = 20
        let padding: CGFloat = 40 // 20 on both sides
        let cellDimension = ((collectionView.bounds.width - padding) - (numberOfColumns - 1) * spaceBetweenCells ) / numberOfColumns
        
        return CGSize(width: cellDimension, height: cellDimension)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailVC {
            
            if let specCat = sender as? SpecificCategory {
                
                destination.initData(gear: specCat)
                
            }
        }
    }
    
    
}
