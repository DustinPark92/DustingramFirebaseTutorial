//
//  MainViewTabController.swift
//  DustingramFirebaseTutorial
//
//  Created by Dustin on 2021/02/22.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewController()
    }
    

    func configureViewController() {
        
        //tab bar 박기
        let layout = UICollectionViewFlowLayout()

        let feed = FeedController(collectionViewLayout: layout)
        let search = SerachController()
        let imageSelector = ImageSelectorController()
        let profile = ProfileController()
        let notification = NotificationController()
  
        
        let nav1 = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_unselected"), rootViewController: feed)
        let nav2 = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "search_selected"), selectedImage: #imageLiteral(resourceName: "search_selected"), rootViewController: search)
        let nav3 = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage: #imageLiteral(resourceName: "plus_unselected"), rootViewController: imageSelector)
        let nav4 = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "like_unselected"), selectedImage: #imageLiteral(resourceName: "like_selected"), rootViewController: notification)
        let nav5 = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "profile_selected"), selectedImage: #imageLiteral(resourceName: "profile_unselected"), rootViewController: profile)
        

        viewControllers = [nav1,nav2,nav3,nav4,nav5]
        
        
    }
    
    func templateNavigationController(unselectedImage: UIImage?,selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.barTintColor = .black
        nav.navigationBar.tintColor = .black
        
        
        return nav
    }
    

}
