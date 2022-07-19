//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 유영재 on 2022/07/14.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    // UI Component 연결하자
    // UI Component에 데이터를 업데이트하는 코드를 넣자
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companyIconImageView: UIImageView!
    @IBOutlet weak var companyPriceLabel: UILabel!
    
    @IBOutlet weak var diffLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = "\(convertToCurrencyFormat(price : stock.price)) 원"
        diffLabel.text = "\(stock.diff)"
        //changeColor(diff: stock.diff)
        diffLabel.textColor = stock.diff>0 ? UIColor.systemRed : UIColor.systemBlue
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? "" // 강제 unwrapping은 crash 발생 우려 -> Nil인 경우 "" 리턴, Elvis연산자
        return result
    }
    
    func changeColor(diff : Double) {
        if(diff < 0.0) {
             diffLabel.textColor = UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1.0)
        }
        else {
             diffLabel.textColor = UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 1.0)
        }
    }
}
