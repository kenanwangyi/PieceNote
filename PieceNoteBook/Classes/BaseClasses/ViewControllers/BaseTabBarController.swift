//
//  BaseTabBarController.swift
//  PieceNoteBook
//
//  Created by 伏董 on 2017/5/22.
//  Copyright © 2017年 伏董. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.selectedIndex = 0
        self.initTabBar()
        
    }
    
    func initTabBar() {
        
        let noteNVC = UINavigationController.init(rootViewController: NoteViewController())
        noteNVC.tabBarItem.title = "笔记"
        noteNVC.tabBarItem.selectedImage = UIImage.init(named: "note_tabbar_select")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        noteNVC.tabBarItem.image = UIImage.init(named: "note_tabbar_normal")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let findNVC = UINavigationController.init(rootViewController: FindViewController())
        findNVC.tabBarItem.title = "发现"
        findNVC.tabBarItem.selectedImage = UIImage.init(named: "find_tabbar_select")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        findNVC.tabBarItem.image = UIImage.init(named: "find_tabbar_normal")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let meNVC = UINavigationController.init(rootViewController: MeViewController())
        meNVC.tabBarItem.title = "我的"
        meNVC.tabBarItem.selectedImage = UIImage.init(named: "me_tabbar_select")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        meNVC.tabBarItem.image = UIImage.init(named: "me_tabbar_normal")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        self.viewControllers = [noteNVC,findNVC,meNVC]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
