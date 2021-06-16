//
//  MainViewController.swift
//  WeiboSwift
//
//  Created by Apple13 on 16/7/9.
//  Copyright © 2016年 yupeng. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.brownColor()
        
        //添加子控制器
        tabBar.tintColor = UIColor.orangeColor()
        
        addChildViewController(HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverTableViewController(), title: "发现", imageName:  "tabbar_discover")
        addChildViewController(ProfileTableViewController(), title: "我", imageName: "tabbar_profile")
    }
    
    
    
//MARK: -  ①添加子控制器
    
    private  func addChildViewController() {
        tabBar.tintColor = UIColor.orangeColor()
        
        let vc = HomeTableViewController()
        vc.title = "首页"
        vc.tabBarItem.image = UIImage(named: "tabbar_home")
        
        let nav = UINavigationController(rootViewController:vc)
        
        addChildViewController(nav)
    }

///Users/yp-apple/Documents/代码/2016年7月代码/WeiboSwift/WeiboSwift/WeiboSwift/Assets.xcassets/TabBar/allproducts.imageset/allproducts@2x.png
   
    
//MARK: - ②抽象出一个方法添加多个控制器
    
    
    private func addChildViewController(vc: UIViewController,title:String,imageName:String) {
      
        //设置标题
        vc.title = title
        
        //设置背景图片
        vc.tabBarItem.image = UIImage(named: imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "\(imageName)_selected")
        
        //设置选中文字的颜色
        let textColorAttr = [
            NSForegroundColorAttributeName: UIColor.orangeColor()
        ]
        vc.tabBarItem.setTitleTextAttributes(textColorAttr, forState: UIControlState.Selected)
        
        
        
        //设置字体大小属性
        let textFontAttr = [
            NSFontAttributeName :UIFont.systemFontOfSize(13)
        ]
        
        vc.tabBarItem.setTitleTextAttributes(textFontAttr, forState: UIControlState.Normal)
        
        
        let nav = UINavigationController(rootViewController:vc)
        addChildViewController(nav)
        
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

  
    
}
