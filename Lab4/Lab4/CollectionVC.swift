//
//  CollectionVC.swift
//  Lab4
//
//  Created by Mark-Anthony Octavius Meritt on 2020-03-03.
//  Copyright © 2020 Mark-Anthony Octavius Meritt. All rights reserved.
//

import Foundation
import UIKit

class CollectionVC: UICollectionViewController
{
    override func viewDidLoad() {
 
        self.collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        self.collectionView.backgroundColor = .white
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        return cell
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row > 0 {
            present(TableVC(), animated: true, completion: nil)
        }
    }
    
    
}
