//
//  ViewController.swift
//  Video
//
//  Created by lizhang on 2018/7/5.
//  Copyright © 2018年 lizhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let screen_w = UIScreen.main.bounds.size.width
    let screen_h = UIScreen.main.bounds.size.height
    
    let IPHONEX = UIScreen.main.bounds.size.width == 375 && UIScreen.main.bounds.size.height == 812 ? true : false
    
    var tableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        title = "看看小视频呀"
        
        let tableViewTop = IPHONEX ? 84 : 64
        
        tableView = UITableView(frame: CGRect(x: 0, y: tableViewTop, width: Int(screen_w), height: (Int(screen_h)-tableViewTop)), style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(VideoCell.classForCoder(), forCellReuseIdentifier: "videoCell")
        view.addSubview(tableView)
    }
}


extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = VideoCell(style: .default, reuseIdentifier: "videoCell")
        return cell
    }
}

