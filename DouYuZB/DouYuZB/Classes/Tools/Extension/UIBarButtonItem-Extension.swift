//
//  UIBarButtonItem-Extension.swift
//  DouYuZB
//
//  Created by 周泉龙 on 17/2/5.
//  Copyright © 2017年 love阿木蛋花. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
// 扩展一个类方法
    class func creatItem(imgaeName :String ,highImageName : String, size : CGSize) ->UIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named:imgaeName), for: .normal)
        btn.setImage(UIImage(named:highImageName), for: .highlighted)
        
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
// 扩展一个构造方法 需要两个条件1.只能在extention中构造便利构造函数,以convenience开头 
//                        2.在构造函数中必须明确调用一个设计的构造函数(self)
     convenience init(imgaeName :String ,highImageName: String = "", size: CGSize = CGSize.zero) {
        
        let btn = UIButton()
        // 设置button图片
        btn.setImage(UIImage(named:imgaeName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named:highImageName), for: .highlighted)
        }
        // 设置button尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        }else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        self.init(customView : btn)
    }
}
