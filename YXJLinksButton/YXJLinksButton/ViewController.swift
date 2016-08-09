//
//  ViewController.swift
//  YXJLinksButton
//
//  Created by yuanxiaojun on 16/8/9.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

import UIKit
import YXJLinksButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let btn = YXJLinksButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        btn.setTitle("用户协议", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        // 设置下划线颜色
        btn.setLinksColor(UIColor.redColor())

        self.view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

