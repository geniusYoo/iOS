//
//  HomeCell.swift
//  InstaSearchView
//
//  Created by 유영재 on 2022/07/19.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageIconView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
    
    func configure(_ imageName: String) {
        nameLabel.text = "National Geographic"
        imageView.image = UIImage(named: imageName)
    }
}


