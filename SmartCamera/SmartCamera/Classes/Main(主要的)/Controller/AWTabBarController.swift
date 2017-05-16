//
//  AWTabBarController.swift
//  SmartCamera
//
//  Created by kitwee on 17/5/16.
//  Copyright © 2017年 Alexwong. All rights reserved.
//

import UIKit

class AWTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1.添加子控制器
        self.addChildeVC()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK:-自定义方法
extension AWTabBarController {
    
    // MARK:-1.添加子控制器
    func addChildeVC (){
        
        let cameraVC = AWCameraVC()
        self.addChildViewController(cameraVC)
        
        
        let videoVC = AWVideoPlayVC()
        self.addChildViewController(videoVC)
        

        let filmInfoVC = AWFilmInfoVC()
        self.addChildViewController(filmInfoVC)
    }
    
    
}

