//
//  PicturesCollectionViewController.swift
//  VKApp
//
//  Created by Julie on 14.05.2020.
//  Copyright © 2020 YuliaShlaeva. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "PictureCell"

class PicturesCollectionViewController: UICollectionViewController {

    @IBOutlet var pictureCollection: UICollectionView!
    
    let allPictures: [String:[String]] = [
        "Water" : ["11", "12", "13", "14", "15"],
        "Space" : ["21", "22", "23", "24", "25"],
        "Earth" : ["31", "32", "33", "34"],
        "Sky" : ["41", "42", "43", "44"],
        "Fire": ["51", "52", "53"]]
    
    
    var key: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allPictures[key]!.count
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PictureCell", for: indexPath) as! PictureCollectionViewCell
        
        cell.picture.image = UIImage(named: allPictures[key]![indexPath.row])
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
