//
//  ViewController.swift
//  ChangFont
//
//  Created by lizhang on 2018/7/5.
//  Copyright © 2018年 lizhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular", "Zapfino", "Gaspar Regular"]
    
    var textLabel = UILabel.init()
    
    let screen_w = UIScreen.main.bounds.size.width
    let screen_h = UIScreen.main.bounds.size.height
    
    
    var changeButton = UIButton(type: .custom)
    
    var fontIndex = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .black
        
        textLabel.textColor = .red
        textLabel.frame = CGRect(x: 0, y: 0, width: screen_w, height: screen_h-50)
        textLabel.text = "30 Days Swift, 这些字体特别适合打「奋斗」和「理想」, 谢谢「造字工房」，本案例不涉及商业使用, 使用到造字工房劲黑体，致黑体，童心体, 呵呵，再见🤗 See you next Project,测试测试测试测试测试测试,123"
        textLabel.font = UIFont(name: fontNames[fontIndex], size: 16)
        textLabel.numberOfLines = 0
        view.addSubview(textLabel)
        
        changeButton.setTitle("换个颜色", for: .normal)
        changeButton.setTitleColor(.yellow, for: .normal)
        
        changeButton.titleLabel?.font = UIFont(name: fontNames[fontIndex], size: 16)
        changeButton.backgroundColor = .white
        changeButton.frame = CGRect(x: 0, y: screen_h-50, width: screen_w, height: 50)
        changeButton.addTarget(self, action: Selector(("changeButtonClicked:")), for: .touchUpInside)
        view.addSubview(changeButton)
        
    }

    func changeButtonClicked(_sender: UIButton)  {
        fontIndex = (fontIndex + 1) % 5
        textLabel.font = UIFont(name: fontNames[fontIndex], size: 16)
        changeButton.titleLabel?.font = UIFont(name: fontNames[fontIndex], size: 16)
    }

}

