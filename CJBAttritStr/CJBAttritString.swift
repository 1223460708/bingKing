//
//  CJBAttritString.swift
//  CJBAttritStr
//
//  Created by 炳神 on 16/8/29.
//  Copyright © 2016年 as2482199. All rights reserved.
//

import UIKit

class CJBAttritString: NSAttributedString {

    
    var colorIndex = 0
    
    var imgFontIndex = 0
 
    var rangeIndex = 0
    /**
     
     - parameter some:      存字符串或者图片
     - parameter imgFont:   图片的大小  和图片一一对应
     - parameter textColor: 字体颜色   和字符串一一对应
     - parameter range:     图文混排 图片的从哪个位置开始
     - returns: 返回 NSAttributedString
     */
    func createdAttritString(some : [AnyObject] , imgFont : [CGRect] , textColor : [UIColor] , range : [NSRange]) -> NSAttributedString {
        
        let mutaAtt : NSMutableAttributedString = NSMutableAttributedString()
        
        if some.count == 0 {
    
            
        }else {
            
            for item in some {
          
                if item.isKindOfClass(NSString) {
                    
                    let textColor : UIColor = textColor[colorIndex]
                    
                    let attStr : NSAttributedString = NSAttributedString(string: item as! String, attributes: [NSForegroundColorAttributeName : textColor])
          
                    mutaAtt.appendAttributedString(attStr)
                    
                    colorIndex += 1
                    
                }
                if item.isKindOfClass(UIImage) {
                    
                    let imgAtt : NSTextAttachment = NSTextAttachment()
                    
                    imgAtt.image = item as? UIImage
                    
                    imgAtt.bounds = imgFont[imgFontIndex]
                    
                    let imgStr : NSAttributedString = NSAttributedString(attachment: imgAtt)
                    
                    if range != [] {
                        
                        mutaAtt.replaceCharactersInRange(range[rangeIndex], withAttributedString: imgStr)
                        
                        rangeIndex += 1
                    }else {
                         mutaAtt.appendAttributedString(imgStr)
                        
                        imgFontIndex += 1
                    }
  
                }
                
            }
            
        }
        
       return mutaAtt
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
