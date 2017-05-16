//
//  Config.swift
//  KuangKuang
//
//  Created by kitwee on 17/4/11.
//  Copyright © 2017年 ZhiYun Technology. All rights reserved.
//

import UIKit

open class AppColor: UIColor, HexColor{
    
    //背景颜色
    class func backgroundColor() -> UIColor{
        
//        return self.hexString("#333333", alpha: 0.7)!
        return self.RGBToColor(241, 242, 243, 1)!
    }
    

    
}
