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
    
    // data, presentaion, layout
    // data - 어떤 데이터를 쓸 거야? -> stockList
    // presentation - 셀을 어떻게 표현할거야?
    // layout - 셀을 어떻게 배치할거야?
    
    // protocol -
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
        
        // 재사용 가능한 셀을 가져오겠다 : dequeueReusableCell ~
        
//        guard <dddd 꼭 참이어야 하는 조건> else {
//            return ....xx
//        }
//        xx xxx <- 참이면 이 코드 실행
        
//        casting
//
//        저는 남자 사람
//
//        남자 : 사람
//
//        let genius = Namja()
//        let genius = Saram()
//
//        genius as? Namja -> genius는 남자야?
//
//        guard let nam = genius as? Namja else {
//            오 .. 통지서 안 받겠구나 ,,,
//            return
//        }
//
//        nam .. send 통지서 군대가자 ,,,
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        return cell
    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // width == collectionView
        // height == 80
        
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
