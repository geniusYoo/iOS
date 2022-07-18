//
//  ChatListViewController.swift
//  ChatList
//
//  Created by 유영재 on 2022/07/18.
//

import UIKit

class ChatListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let chatList: [Chat] = Chat.list.sorted(by: {$0.date > $1.date})
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // date, presentation, layout
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
//        chatList를 정렬하는 방법 (강의에서 설명한 방법), 이렇게 하면 var로 써야함!
//        chatList = chatList.sorted(by: { chat1, chat2 in
//            return chat1.date > chat2.date
//        })
        
    }
}

// protocol의 내용들을 준수하는 과정, conforming
extension ChatListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatListCollectionViewCell", for: indexPath) as? ChatListCollectionViewCell else {
            return UICollectionViewCell()
        }
                    
        let chat = chatList[indexPath.item]
        cell.configure(chat)
        
        return cell
        
    }
}

extension ChatListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 100)
    }
}


