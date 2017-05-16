//
//  Nibloadable.swift
//  KuangKuang
//
//  Created by kitwee on 17/4/11.
//  Copyright © 2017年 ZhiYun Technology. All rights reserved.
//

import UIKit

protocol Nibloadable {
    
}

extension Nibloadable where Self :UIView {
    //协议或者结构体的类方法,使用static
    static func loadFromNib(_ nibName:String? = nil) -> Self {
        // 空合运算符,如果 为空取后面的值,如果不为空,则取强制解包的值
        let nib = nibName ?? "\(self)"
        
        return Bundle.main.loadNibNamed(nib, owner: nil, options: nil)?.first as! Self
        
    }
    
}
