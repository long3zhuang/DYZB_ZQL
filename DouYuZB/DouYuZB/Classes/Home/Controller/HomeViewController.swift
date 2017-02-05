//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by 周泉龙 on 17/2/4.
//  Copyright © 2017年 love阿木蛋花. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

// MARK:- 设置UI界面
extension HomeViewController {
    
     func setupUI() {
    
        setUpNavagationBar()
    }
    
    // 创建导航栏上子控件
    private func setUpNavagationBar() {
        

        // 左侧logo
        /*
        // 原始方法
        let btn = UIButton()
        btn.setImage(UIImage(named: "logo"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
 */
//        构造函数
        navigationItem.leftBarButtonItem = UIBarButtonItem(imgaeName: "logo")
        
        // 封装的类方法
        let size = CGSize(width: 40, height: 40)
        
//        let historyButton = UIBarButtonItem.creatItem(imgaeName: "image_my_history", highImageName: "Image_my_history_click", size: size)
//        let searchButton = UIBarButtonItem.creatItem(imgaeName: "btn_search", highImageName: "btn_search_clicked", size: size)
//        let qrcodeButton = UIBarButtonItem.creatItem(imgaeName: "Image_scan", highImageName: "Image_scan_click", size: size)

        // 封装的构造方法
        let historyButton = UIBarButtonItem(imgaeName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchButton = UIBarButtonItem(imgaeName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeButton = UIBarButtonItem(imgaeName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyButton, searchButton, qrcodeButton]
    }
}
