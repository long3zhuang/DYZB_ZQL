//
//  MainViewController.swift
//  DouYuZB
//
//  Created by 周泉龙 on 17/2/4.
//  Copyright © 2017年 love阿木蛋花. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC(storyBoard: "Home")
        addChildVC(storyBoard: "Live")
        addChildVC(storyBoard: "Follow")
        addChildVC(storyBoard: "Profile")
        
    }
    
    private func addChildVC(storyBoard: String){
        
        let childVC = UIStoryboard(name: storyBoard, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }
}
