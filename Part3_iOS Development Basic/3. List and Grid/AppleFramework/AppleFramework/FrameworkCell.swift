//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by 유영재 on 2022/07/18.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.numberOfLines = 1 // 1줄로 표현해라
        nameLabel.adjustsFontSizeToFitWidth = true // fontsize를 맞게 조정해라
    }
    func configure(_ framework: AppleFramework) {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        nameLabel.text = framework.name
        
    }
}
