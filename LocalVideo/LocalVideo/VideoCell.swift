//
//  VideoCell.swift
//  LocalVideo
//
//  Created by lizhang on 2018/7/6.
//  Copyright © 2018年 lizhang. All rights reserved.
//

import UIKit
import SnapKit

struct Video {
    let image: String
    let title: String
    let source: String
}

class VideoCell: UITableViewCell {
    
    var backImageView = UIImageView()
    var playIcon = UIImageView()
    var titleLabel = UILabel()
    var subtitleLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        
        backImageView.contentMode = .scaleAspectFill
        
        titleLabel.font = UIFont.systemFont(ofSize: 16)
        titleLabel.textColor = .white
        
        subtitleLabel.font = UIFont.systemFont(ofSize: 12)
        subtitleLabel.textColor = .gray
        
        playIcon.image = UIImage(named: "playBtn")
        
        addSubview(backImageView)
        addSubview(playIcon)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        backImageView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        playIcon.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-40)
        }
        
        subtitleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-20)
        }
    }
    
}
