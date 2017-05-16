//
//  Colorable.swift
//  KuangKuang
//
//  Created by kitwee on 17/4/11.
//  Copyright © 2017年 ZhiYun Technology. All rights reserved.
//

import UIKit

protocol HexColor {}

//扩展将Swift的string类型转化为OC的NSString类型
private extension String{
    
    var NS: NSString {
        return self as NSString
    }
    
}

//当遵守该协议的类是UIColor的子类的时候可以使用该协议中的方法
extension HexColor where Self: UIColor{
    /**
     16进制字符串 -> UIColor
     
     - parameter hexString: 16进制颜色值字符串
     
     - returns: UIColor?
     */
    
    //static 类方法 也可以用class
    static func hexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor?{
        
        if hexString.characters.count < 6 { return nil }
        var tempString = hexString.lowercased()
        
        if tempString.hasPrefix("0x") {
            
            tempString = tempString.NS.substring(from: 2)
            
        }else if tempString.hasPrefix("#") {
            tempString = tempString.NS.substring(from: 1)
        }
        
        if tempString.characters.count != 6 { return nil }
        
        var range = NSRange(location: 0, length: 2)
        
        let rString = tempString.NS.substring(with: range)
        range.location = 2
        let gString = tempString.NS.substring(with: range)
        range.location = 4
        let bString = tempString.NS.substring(with: range)
        
        var r: CUnsignedInt = 0, g: CUnsignedInt = 0, b: CUnsignedInt = 0
        
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }

    
    
    static func RGBToColor(_ r: CGFloat = 0, _ g:CGFloat = 0,_ b:CGFloat = 0,_ alpha:CGFloat = 1) ->UIColor?{
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
}
