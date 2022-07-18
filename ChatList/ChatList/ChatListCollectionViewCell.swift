//
//  ChatListCollectionViewCell.swift
//  ChatList
//
//  Created by 유영재 on 2022/07/18.
//

import UIKit

class ChatListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    // dequeueReuse하면 Storyboard에서 가져오는데 그 때 처음으로 호출되는 함수
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnail.layer.cornerRadius = 10
    }
    func configure(_ chat: Chat) {
        thumbnail.image = UIImage(named: chat.name)
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        dateLabel.text = formattedDateString(dateString: chat.date)
    }
    
    func formattedDateString(dateString : String) -> String {
        // String -> Date -> String
        // 2022-04-01 -> 4/1
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        // 문자열 -> date
        if let date = formatter.date(from: dateString) {
            formatter.dateFormat = "M/d"
            return formatter.string(from: date)
        } else {
            return ""
        }
    }
}
