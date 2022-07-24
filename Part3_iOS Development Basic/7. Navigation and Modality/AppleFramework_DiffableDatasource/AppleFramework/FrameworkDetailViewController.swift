//
//  FrameworkDetailViewController.swift
//  AppleFramework
//
//  Created by 유영재 on 2022/07/24.
//

import UIKit
import SafariServices

class FrameworkDetailViewController: UIViewController {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var framework :AppleFramework = AppleFramework(name: "Unknown", imageName: "", urlString: "", description: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    func update() {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        titleLabel.text = framework.name
        descriptionLabel.text = framework.description
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        guard let url = URL(string: framework.urlString) else {
            return
        }
        let safari = SFSafariViewController(url: url)
        present(safari, animated: true)
        
        
    }
    
}


 


