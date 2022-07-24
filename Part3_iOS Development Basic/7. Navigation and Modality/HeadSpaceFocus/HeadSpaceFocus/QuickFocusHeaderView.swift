//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by 유영재 on 2022/07/24.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
    
}
