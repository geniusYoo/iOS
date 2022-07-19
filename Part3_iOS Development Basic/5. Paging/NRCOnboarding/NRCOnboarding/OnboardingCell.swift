//
//  OnboardingCell.swift
//  NRCOnboarding
//
//  Created by 유영재 on 2022/07/19.
//

import UIKit

class OnboardingCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(_ message: OnboardingMessage) {
        thumbnailImageView.image = UIImage(named: message.imageName)
        titleLabel.text = message.title
        descriptionLabel.text = message.description
    }
}
