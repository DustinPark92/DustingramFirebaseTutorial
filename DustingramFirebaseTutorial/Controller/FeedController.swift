//
//  FeedController.swift
//  DustingramFirebaseTutorial
//
//  Created by Dustin on 2021/02/22.
//

import UIKit

private let reuseIdentifier = "FeedCell"

class FeedController: UICollectionViewController {

    
    //MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        configureUI()
    }
    
    //MARK: - Helpers
    func configureUI() {
        collectionView.backgroundColor = .white
        
        
        
        
    }
    
    
    


}


//MARK: - UIcollectionViewDataSource

extension FeedController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCell
        
        return cell
    }
}


extension FeedController : UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        var height = width + 8 + 40 + 8
        height += 50
        height += 60
        
        
        return CGSize(width: width, height: height)
    }
    
}
