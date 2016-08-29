//
//  ViewController.swift
//  CJBAttritStr
//
//  Created by 炳神 on 16/8/29.
//  Copyright © 2016年 as2482199. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lable : UILabel = UILabel()
    
    var att : CJBAttritString = CJBAttritString()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lable.frame = CGRectMake(30, 100, 200, 400)
        lable.numberOfLines = 0
        self.view.addSubview(lable)
        
        let img : UIImage = UIImage(named: "弹幕开@2x")!
        
        let img2 : UIImage = UIImage(named: "youhuiquan@3x")!
        
        let cgre : CGRect = CGRectMake(0, 0, 140, 40)
        
        let cgre2 : CGRect = CGRectMake(0, 0, 40, 140)
        
        let te : String = "上大大开发卡号凤凰卡复活号凤凰是看得见后是否看见爱喝咖啡哈哈发货快加厚款减肥和空间按回复化开发和撒谎的空间哈哈哈返回的爽肤水可视电话杀进去饭好好考和肺结核或回复坚实的回复很符合回复是否恢复健康和房间我家客户为何物会唔会刚好维护个杀进去饭好好考和肺结核或回复坚实的回复很符合回复是否恢复健康和房间我家客户为何物会唔会刚好维护个"
        
        let ss : String = "杀进去饭好好考和肺结核或回复坚实的回复很符合回复是否恢复健康和房间我家客户为何物会唔会刚好维护个"
        
        let ra : NSRange = NSRange(location: 35, length: 10)
        
        let ra1 : NSRange = NSRange(location: 50, length: 10)
        
        
        //一句代码
        //调用封装好的方法
        lable.attributedText = att.createdAttritString([te,img,ss,img2], imgFont: [cgre,cgre2], textColor: [UIColor.blueColor(),UIColor.blackColor()],range: [ra,ra1])
        
    }

   


}

