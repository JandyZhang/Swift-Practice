//
//  VideoCell.swift
//  Video
//
//  Created by lizhang on 2018/7/5.
//  Copyright © 2018年 lizhang. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    var backImageView = UIImageView()
    var titleLabel = UILabel()
    var playImageView = UIImageView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI() {
        
    }

}
