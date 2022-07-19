//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by 유영재 on 2022/07/19.
//

import UIKit

class ResultCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    //재사용 전에 호출되는 함수
    override func prepareForReuse() {
        super.prepareForReuse()
        
        thumbnailImageView.image = nil // 재사용 전 이미지 리셋
    }
    
    func configure(_ imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
