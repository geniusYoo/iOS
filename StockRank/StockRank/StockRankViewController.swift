//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 유영재 on 2022/07/14.
//

import UIKit

class StockRankViewController: UIViewController {

    let stockList : [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dataSource, delegate는 protocol
        // 이런 걸 알려주는 건 self, 즉 StockRankViewController가 알려줄거야
        collectionView.dataSource = self // data, presentation
        collectionView.delegate = self // layout, sell-size
       
    }
}

extension StockRankViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        return cell
    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{ 
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
