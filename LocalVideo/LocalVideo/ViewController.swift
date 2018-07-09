//
//  ViewController.swift
//  LocalVideo
//
//  Created by lizhang on 2018/7/5.
//  Copyright © 2018年 lizhang. All rights reserved.
//

import UIKit

import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var data = [
        
        Video(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        Video(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        Video(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        Video(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        Video(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        Video(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
        
    ]
    
    var playView = AVPlayer()
    var playViewController = AVPlayerViewController()
    
    
    
    let screen_w = UIScreen.main.bounds.size.width
    let screen_h = UIScreen.main.bounds.size.height
    
    let IPHONEX = UIScreen.main.bounds.size.width == 375 && UIScreen.main.bounds.size.height == 812 ? true : false
    
    
    var tableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        title = "看看小视频呀"
        
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    private func setUpUI() {
        let tableViewTop = IPHONEX ? 84 : 64
        
        tableView = UITableView(frame: CGRect(x: 0, y: CGFloat(tableViewTop), width: screen_w, height: screen_h - CGFloat(tableViewTop)), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(VideoCell.classForCoder(), forCellReuseIdentifier: "videoCell")
        view.addSubview(tableView)
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = VideoCell(style: .default, reuseIdentifier: "videoCell")
        
        let video = data[indexPath.row]
        
        cell.imageView?.image = UIImage(named: video.image)
        cell.titleLabel.text = video.title
        cell.subtitleLabel.text = video.source
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let path = Bundle.main.path(forResource: "emoji zone", ofType: "mp4")
        playView = AVPlayer(url: URL(fileURLWithPath: path!))
        playViewController.player = playView
        present(playViewController, animated: true) {
            self.playViewController.player?.play()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
}

